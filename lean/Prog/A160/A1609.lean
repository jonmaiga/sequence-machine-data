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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A160902: Square array read by antidiagonals: a(m,n) = the smallest prime >= m*n.

The programs for A160902, there is no canonical definition to state claims against.
-/

/-! ## A160902.P12712690451972606145

`A007918((1-C(∑[char[∑[n]]], 2)+n)*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A160902.P12712690451972606145
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A160902.P12712690451972606145

/-! ## A160902.P9925420928123522708

`A007918(∑[∑[char[∑[n]]]²]%(n+1)+1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A160902.P9925420928123522708
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) 2 : ℤ) + (n : ℤ))).toNat

end

end A160902.P9925420928123522708

/-! ## A160902.P3791591552011286148

`A151800(A059036(n))`
-/

namespace A160902.P3791591552011286148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A059036 n).toNat

end

end A160902.P3791591552011286148

/-! ## A160902.P16495302926906186821

`A007918(A003991(n+1))`
-/

namespace A160902.P16495302926906186821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A003991 (n + 1)).toNat

end

end A160902.P16495302926906186821

/-! ## A160902.P11085897183337856585

`A007918(A059036(n)+1)`
-/

namespace A160902.P11085897183337856585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A059036 n + 1).toNat

end

end A160902.P11085897183337856585

/-! ## A160902.P2160864547495560533

`A230775(A098359(n+1))`
-/

namespace A160902.P2160864547495560533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A098359 (n + 1)).toNat

end

end A160902.P2160864547495560533

/-! ## A160902.P7790119838935024439

`A151800(A003991(n+1)-1)`
-/

namespace A160902.P7790119838935024439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A003991 (n + 1) - 1).toNat

end

end A160902.P7790119838935024439

/-! ## A160902.P9192414825775529615

`A007918(A000005(A036561(n)))`
-/

namespace A160902.P9192414825775529615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000005 (A036561 n).toNat).toNat

end

end A160902.P9192414825775529615

/-! ## A160902.P11914578467517412496

`A230775(A000005(A036561(n))²)`
-/

namespace A160902.P11914578467517412496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A000005 (A036561 n).toNat ^ 2).toNat

end

end A160902.P11914578467517412496

/-!
# A160903: Square array read by antidiagonals: a(m,n) = the largest noncomposite <= m*n.

The programs for A160903, there is no canonical definition to state claims against.
-/

/-! ## A160903.P15512531545351184471

`A056813(A098359(n+1))`
-/

namespace A160903.P15512531545351184471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A098359 (n + 1)).toNat

end

end A160903.P15512531545351184471

/-! ## A160903.P14174248290966674973

`A136548(A059036(n)+2)`
-/

namespace A160903.P14174248290966674973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A059036 n + 2).toNat

end

end A160903.P14174248290966674973

/-! ## A160903.P17176083111567739391

`A056813(A003991(n+1)²)`
-/

namespace A160903.P17176083111567739391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A003991 (n + 1) ^ 2).toNat

end

end A160903.P17176083111567739391

/-! ## A160903.P12791860401351009831

`A056813((A059036(n)+1)²)`
-/

namespace A160903.P12791860401351009831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 ((A059036 n + 1) ^ 2).toNat

end

end A160903.P12791860401351009831

/-! ## A160903.P10456967337879263618

`A136548(A003991(n+1)+1)`
-/

namespace A160903.P10456967337879263618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A003991 (n + 1) + 1).toNat

end

end A160903.P10456967337879263618

/-! ## A160903.P13031069778268787146

`A056813(A003991(n+1)^2)`
-/

namespace A160903.P13031069778268787146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A003991 (n + 1) ^ 2).toNat

end

end A160903.P13031069778268787146

/-! ## A160903.P5621514333054168281

`A079068(A151800(A003991(n+1))²)`
-/

namespace A160903.P5621514333054168281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A151800 (A003991 (n + 1)).toNat ^ 2).toNat

end

end A160903.P5621514333054168281

/-! ## A160903.P10998734661569188340

`A056813((A002260(n+1)*A004736(n+1))²)`
-/

namespace A160903.P10998734661569188340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 ((A002260 (n + 1) * A004736 (n + 1)) ^ 2).toNat

end

end A160903.P10998734661569188340

/-! ## A160903.P5333561770748698322

`A056813((A003991(n+1)+1)*A003991(n+1))`
-/

namespace A160903.P5333561770748698322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 ((A003991 (n + 1) + 1) * A003991 (n + 1)).toNat

end

end A160903.P5333561770748698322

/-! ## A160903.P7451637209717859863

`A056813(A000005(A036561(n))²)`
-/

namespace A160903.P7451637209717859863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A000005 (A036561 n).toNat ^ 2).toNat

end

end A160903.P7451637209717859863

/-!
# A160904: Row sums of A159881.

The programs for A160904, there is no canonical definition to state claims against.
-/

/-! ## A160904.P14320121581127029903

`∑[∑[A000587(n)]]`
-/

namespace A160904.P14320121581127029903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160904.P14320121581127029903

/-! ## A160904.P2202851715679819196

`∑[∑[A293051(∑[n]+n)]]`
-/

namespace A160904.P2202851715679819196
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293051 (∑ j ∈ Finset.range (n + 1), f3 j + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160904.P2202851715679819196

/-! ## A160904.P15429895030305704279

`∑[∑[A292861(∑[n+2]-1)]]`
-/

namespace A160904.P15429895030305704279
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (∑ j ∈ Finset.range (n + 1), f3 j - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160904.P15429895030305704279

/-! ## A160904.P13636314832719747045

`∑[∑[A024430(n)-A024429(n)]]`
-/

namespace A160904.P13636314832719747045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024430 n - A024429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160904.P13636314832719747045

/-! ## A160904.P13083234381311336328

`∑[∑[2*A024430(n)-A000110(n)]]`
-/

namespace A160904.P13083234381311336328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024430 n - A000110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160904.P13083234381311336328

/-! ## A160904.P516158203716765860

`∑[∑[A000110(n)-2*A024429(n)]]`
-/

namespace A160904.P516158203716765860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - 2 * A024429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160904.P516158203716765860

/-! ## A160904.P13194819113481116105

`∑[∑[A293015(∑[n]+n)]]`
-/

namespace A160904.P13194819113481116105
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293015 (∑ j ∈ Finset.range (n + 1), f3 j + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160904.P13194819113481116105

/-! ## A160904.P2627128545881449810

`∑[∑[A292894(∑[n]+n)]]`
-/

namespace A160904.P2627128545881449810
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292894 (∑ j ∈ Finset.range (n + 1), f3 j + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160904.P2627128545881449810

/-! ## A160904.P1599874977213078012

`∑[∑[A247108(∑[n])]]`
-/

namespace A160904.P1599874977213078012
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247108 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160904.P1599874977213078012

/-!
# A160905: Right hand side of Pascal rhombus A059317.

The programs for A160905, there is no canonical definition to state claims against.
-/

/-! ## A160905.P13895552222369378813

`A059317(C(∑[char[∑[n]]], 2)+n)`
-/

namespace A160905.P13895552222369378813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n)

end

end A160905.P13895552222369378813

/-! ## A160905.P1974502692705692289

`A059317(lt[(ceil(sqrt(n))²-n)², n]-1)`
-/

namespace A160905.P1974502692705692289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A160905.P1974502692705692289

/-! ## A160905.P17687851089692737222

`A059317(2*n-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A160905.P17687851089692737222
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 ((2 * n : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))).toNat

end

end A160905.P17687851089692737222

/-! ## A160905.P11562997876680289971

`A059317(A061885(n))`
-/

namespace A160905.P11562997876680289971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (A061885 n).toNat

end

end A160905.P11562997876680289971

/-! ## A160905.P11764773731177919834

`A059317(eq[1, A118175(n)])`
-/

namespace A160905.P11764773731177919834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160905.P11764773731177919834

/-! ## A160905.P6598052261469844185

`A059317(A057944(n)+n)`
-/

namespace A160905.P6598052261469844185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (A057944 n + (n : ℤ)).toNat

end

end A160905.P6598052261469844185

/-! ## A160905.P9558444143198106422

`A059317(record[A037213(n)+n])`
-/

namespace A160905.P9558444143198106422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160905.P9558444143198106422

/-! ## A160905.P13371853724156650529

`A059317(A004201(n+1)-1)`
-/

namespace A160905.P13371853724156650529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (A004201 (n + 1) - 1).toNat

end

end A160905.P13371853724156650529

/-! ## A160905.P8911277486836436799

`A059317(2*n-A002262(n))`
-/

namespace A160905.P8911277486836436799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 ((2 * n : ℤ) - A002262 n).toNat

end

end A160905.P8911277486836436799

/-! ## A160905.P13192633801748020409

`A059317(n-A002262(n)+n)`
-/

namespace A160905.P13192633801748020409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A160905.P13192633801748020409

/-!
# A160906: Row sums of A159841.

The programs for A160906, there is no canonical definition to state claims against.
-/

/-! ## A160906.P5335062126494122334

`A054139(n+1)-A054132(n)`
-/

namespace A160906.P5335062126494122334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054139 (n + 1) - A054132 n

end

end A160906.P5335062126494122334

/-! ## A160906.P15132912407392441353

`2*A066380(n)-A005809(n)`
-/

namespace A160906.P15132912407392441353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066380 n - A005809 n

end

end A160906.P15132912407392441353

/-! ## A160906.P3038510367754525148

`A005809(n)+A066380(n)-A047098(n)`
-/

namespace A160906.P3038510367754525148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + (A066380 n - A047098 n)

end

end A160906.P3038510367754525148

/-! ## A160906.P7495402594381537821

`A187926(∑[4*n])`
-/

namespace A160906.P7495402594381537821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187926 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160906.P7495402594381537821

/-! ## A160906.P2235657914995010745

`A054143(A062725(n))`
-/

namespace A160906.P2235657914995010745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A062725 n).toNat

end

end A160906.P2235657914995010745

/-!
# A160907: Sum of the number of prime divisors including repetitions between n^2 and (n+1)^2.

The programs for A160907, the canonical program `A160907.P7332903900191981715` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160907 has offset 1).

The definition of A160907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160907.P7332903900191981715

`A001222((n+1)²)+Δ[A022559((n+1)²)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A160907

/-- `A001222((n+1)²)+Δ[A022559((n+1)²)]` -/
def P7332903900191981715.Spec : Prop :=
  ∀ n, P7332903900191981715.a n = A160907 (n + 1)

theorem P7332903900191981715.correct : P7332903900191981715.Spec := by
  intro n
  simp only [A160907, Nat.add_sub_cancel]

end A160907

/-! ## A160907.P9930500132841442060

`A282429(2*(n+1))+A026273(A026273(n+2))`
-/

namespace A160907.P9930500132841442060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282429 (2 * (n + 1)) + A026273 (A026273 (n + 2)).toNat

end

end A160907.P9930500132841442060

namespace A160907

/-- `A282429(2*(n+1))+A026273(A026273(n+2))` -/
def P9930500132841442060.Spec : Prop :=
  ∀ n, P9930500132841442060.a n = A160907 (n + 1)

end A160907

/-!
# A160908: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 9.

The programs for A160908, the canonical program `A160908.P5544833388897247786` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160908 has offset 1).

The definition of A160908 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160908.P5544833388897247786

`A069093(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A160908

/-- `A069093(n+1)/A000010(n+1)` -/
def P5544833388897247786.Spec : Prop :=
  ∀ n, P5544833388897247786.a n = (A160908 (n + 1) : ℚ)

end A160908

/-! ## A160908.P13674192376267183445

`A001615(n+1)*A194533(n+1)`
-/

namespace A160908.P13674192376267183445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A194533 (n + 1)

end

end A160908.P13674192376267183445

namespace A160908

/-- `A001615(n+1)*A194533(n+1)` -/
def P13674192376267183445.Spec : Prop :=
  ∀ n, P13674192376267183445.a n = A160908 (n + 1)

end A160908

/-! ## A160908.P7416727073569230621

`A065960(n+1)*A160891(n+1)`
-/

namespace A160908.P7416727073569230621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065960 (n + 1) * A160891 (n + 1)

end

end A160908.P7416727073569230621

namespace A160908

/-- `A065960(n+1)*A160891(n+1)` -/
def P7416727073569230621.Spec : Prop :=
  ∀ n, P7416727073569230621.a n = A160908 (n + 1)

end A160908

/-! ## A160908.P14708719364322751457

`∑{d}[n+1, A008683(#)*A344304((n+1)/#)]`
-/

namespace A160908.P14708719364322751457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344304 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160908.P14708719364322751457

namespace A160908

/-- `∑{d}[n+1, A008683(#)*A344304((n+1)/#)]` -/
def P14708719364322751457.Spec : Prop :=
  ∀ n, P14708719364322751457.a n = A160908 (n + 1)

end A160908

/-! ## A160908.P15546377058806092905

`A069093(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A160908.P15546377058806092905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A160908.P15546377058806092905

namespace A160908

/-- `A069093(n+1)/(A002088(n+1)-A002088(n))` -/
def P15546377058806092905.Spec : Prop :=
  ∀ n, P15546377058806092905.a n = (A160908 (n + 1) : ℚ)

end A160908

/-! ## A160908.P5114714420818455114

`A001615(n+1)*A065958(n+1)*A065960(n+1)`
-/

namespace A160908.P5114714420818455114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A065958 (n + 1) * A065960 (n + 1)

end

end A160908.P5114714420818455114

namespace A160908

/-- `A001615(n+1)*A065958(n+1)*A065960(n+1)` -/
def P5114714420818455114.Spec : Prop :=
  ∀ n, P5114714420818455114.a n = A160908 (n + 1)

end A160908

/-! ## A160908.P17851675203796881817

`A001615(n+1)/A007434(n+1)*A069093(n+1)`
-/

namespace A160908.P17851675203796881817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ) * (A069093 (n + 1) : ℚ)

end

end A160908.P17851675203796881817

namespace A160908

/-- `A001615(n+1)/A007434(n+1)*A069093(n+1)` -/
def P17851675203796881817.Spec : Prop :=
  ∀ n, P17851675203796881817.a n = (A160908 (n + 1) : ℚ)

end A160908

/-! ## A160908.P412883900969445380

`A059377(n+1)/A000010(n+1)*A065960(n+1)`
-/

namespace A160908.P412883900969445380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A065960 (n + 1) : ℚ)

end

end A160908.P412883900969445380

namespace A160908

/-- `A059377(n+1)/A000010(n+1)*A065960(n+1)` -/
def P412883900969445380.Spec : Prop :=
  ∀ n, P412883900969445380.a n = (A160908 (n + 1) : ℚ)

end A160908

/-!
# A160909: Row sums of triangle defined in A096539.

The programs for A160909, the canonical program `A160909.P12070970668350231880` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160909 has offset 1).

The definition of A160909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180363, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160909.P12070970668350231880

`A180363(n+1)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160909

/-- `A180363(n+1)-1` -/
def P12070970668350231880.Spec : Prop :=
  ∀ n, P12070970668350231880.a n = A160909 (n + 1)

theorem P12070970668350231880.correct : P12070970668350231880.Spec := by
  intro n
  simp only [A160909, Nat.add_sub_cancel]

end A160909

/-! ## A160909.P9329004932827703477

`A001610(A006093(n+1))`
-/

namespace A160909.P9329004932827703477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (A006093 (n + 1)).toNat

end

end A160909.P9329004932827703477

namespace A160909

/-- `A001610(A006093(n+1))` -/
def P9329004932827703477.Spec : Prop :=
  ∀ n, P9329004932827703477.a n = A160909 (n + 1)

end A160909

/-! ## A160909.P11224687637613537528

`A324015(A000040(n+1))`
-/

namespace A160909.P11224687637613537528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 (A000040 (n + 1)).toNat

end

end A160909.P11224687637613537528

namespace A160909

/-- `A324015(A000040(n+1))` -/
def P11224687637613537528.Spec : Prop :=
  ∀ n, P11224687637613537528.a n = A160909 (n + 1)

end A160909

/-! ## A160909.P8501892912790720023

`A000032(Δ[A007504(n)])-1`
-/

namespace A160909.P8501892912790720023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat - 1

end

end A160909.P8501892912790720023

namespace A160909

/-- `A000032(Δ[A007504(n)])-1` -/
def P8501892912790720023.Spec : Prop :=
  ∀ n, P8501892912790720023.a n = A160909 (n + 1)

end A160909

/-! ## A160909.P3138831469462780949

`A000032(p?[A014681(n)])-1`
-/

namespace A160909.P3138831469462780949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A160909.P3138831469462780949

namespace A160909

/-- `A000032(p?[A014681(n)])-1` -/
def P3138831469462780949.Spec : Prop :=
  ∀ n, P3138831469462780949.a n = A160909 (n + 1)

end A160909

/-! ## A160909.P13361900089629344128

`A000032(p?[A056847(n)])-1`
-/

namespace A160909.P13361900089629344128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A160909.P13361900089629344128

namespace A160909

/-- `A000032(p?[A056847(n)])-1` -/
def P13361900089629344128.Spec : Prop :=
  ∀ n, P13361900089629344128.a n = A160909 (n + 1)

end A160909

/-! ## A160909.P5347359184848789494

`A000032(p?[A080412(n)])-1`
-/

namespace A160909.P5347359184848789494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A160909.P5347359184848789494

namespace A160909

/-- `A000032(p?[A080412(n)])-1` -/
def P5347359184848789494.Spec : Prop :=
  ∀ n, P5347359184848789494.a n = A160909 (n + 1)

end A160909

/-! ## A160909.P5618239850313914775

`A000032(p?[A080587(n)])-1`
-/

namespace A160909.P5618239850313914775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A160909.P5618239850313914775

namespace A160909

/-- `A000032(p?[A080587(n)])-1` -/
def P5618239850313914775.Spec : Prop :=
  ∀ n, P5618239850313914775.a n = A160909 (n + 1)

end A160909

/-! ## A160909.P2312810076136033746

`A000032(p?[A259153(n)])-1`
-/

namespace A160909.P2312810076136033746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A160909.P2312810076136033746

namespace A160909

/-- `A000032(p?[A259153(n)])-1` -/
def P2312810076136033746.Spec : Prop :=
  ∀ n, P2312810076136033746.a n = A160909 (n + 1)

end A160909

/-! ## A160909.P15143026416227890153

`A001610(A000040(n+1)-1)`
-/

namespace A160909.P15143026416227890153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (A000040 (n + 1) - 1).toNat

end

end A160909.P15143026416227890153

namespace A160909

/-- `A001610(A000040(n+1)-1)` -/
def P15143026416227890153.Spec : Prop :=
  ∀ n, P15143026416227890153.a n = A160909 (n + 1)

end A160909

/-!
# A160911: a(n) is the number of arrangements of n square tiles with coprime sides in a rectangular frame, counting reflected, rotated or rearranged tilings only once.

The programs for A160911, there is no canonical definition to state claims against.
-/

/-! ## A160911.P9408363092103508815

`A157271(A240610(n)+floor(n²/2))`
-/

namespace A160911.P9408363092103508815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A240610 n + ⌊(n ^ 2 : ℚ) / 2⌋).toNat

end

end A160911.P9408363092103508815

/-! ## A160911.P9105079903199383737

`A023193(A148986(n)+A001595(n))`
-/

namespace A160911.P9105079903199383737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148986 n + A001595 n).toNat

end

end A160911.P9105079903199383737

/-! ## A160911.P9011474860152891761

`A260731(A014137(n)+A002877(n+1))`
-/

namespace A160911.P9011474860152891761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A014137 n + A002877 (n + 1)).toNat

end

end A160911.P9011474860152891761

/-!
# A160912: [1, 3, 5, 7, ...] convolved with [1, 4, 0, 0, 0, ...].

The programs for A160912, the canonical program `A160912.P991097386665841280` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160912 has offset 1).

The definition of A160912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160912.P991097386665841280

`a(n-1)+10` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160912

/-- `a(n-1)+10` -/
def P991097386665841280.Spec : Prop :=
  ∀ n, (P991097386665841280.a n : ℤ) = A160912 (n + 1)

theorem P991097386665841280.correct : P991097386665841280.Spec := by
  intro n
  simp only [A160912, Nat.add_sub_cancel]

end A160912

/-!
# A160913: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 8.

The programs for A160913, the canonical program `A160913.P16731336130938992374` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160913 has offset 1).

The definition of A160913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160897, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160913.P16731336130938992374

`255*A160897(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160913

/-- `255*A160897(n+1)` -/
def P16731336130938992374.Spec : Prop :=
  ∀ n, P16731336130938992374.a n = A160913 (n + 1)

theorem P16731336130938992374.correct : P16731336130938992374.Spec := by
  intro n
  simp only [A160913, Nat.add_sub_cancel]

end A160913

/-!
# A160914: Extended s-block elements for Janet table.

The programs for A160914, there is no canonical definition to state claims against.
-/

/-! ## A160914.P13782474506018672717

`A219527(∑[log2(gcd(2, n))])+n%2`
-/

namespace A160914.P13782474506018672717
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219527 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A160914.P13782474506018672717

/-! ## A160914.P10141079954896205564

`A168388(round((n-1)/2)+2)-∑{d}[n, round(1/#)]`
-/

namespace A160914.P10141079954896205564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168388 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2).toNat - ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (d : ℚ))

end

end A160914.P10141079954896205564

/-! ## A160914.P1720398776414308491

`∑[A128223(or(1, A142150(n)))]`
-/

namespace A160914.P1720398776414308491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 (Int.lor 1 (A142150 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160914.P1720398776414308491

/-! ## A160914.P409047197871854016

`A168380(A008619(n))-char[2*n]`
-/

namespace A160914.P409047197871854016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (A008619 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A160914.P409047197871854016

/-! ## A160914.P10485379884131463243

`A219527(A065033(n+1))+n%2`
-/

namespace A160914.P10485379884131463243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219527 (A065033 (n + 1)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A160914.P10485379884131463243

/-! ## A160914.P11742837840396312279

`∪[A168380(n+1), A219527(n+1)]`
-/

namespace A160914.P11742837840396312279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160914.P11742837840396312279

/-!
# A160915: Row sums of triangle defined in A095181.

The programs for A160915, there is no canonical definition to state claims against.
-/

/-! ## A160915.P6332988546617357161

`A385930(A385895(n)+A190395(n+2))`
-/

namespace A160915.P6332988546617357161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385930 (A385895 n + A190395 (n + 2)).toNat

end

end A160915.P6332988546617357161

/-!
# A160916: Averages of twin prime pairs which are a sum of averages of two consecutive twin prime pairs.

The programs for A160916, there is no canonical definition to state claims against.
-/

/-! ## A160916.P1793267704145457779

`6*A226652(n+1)`
-/

namespace A160916.P1793267704145457779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A226652 (n + 1)

end

end A160916.P1793267704145457779

/-! ## A160916.P3315323586444820328

`A225943(n+1)+1`
-/

namespace A160916.P3315323586444820328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225943 (n + 1) + 1

end

end A160916.P3315323586444820328

/-! ## A160916.P9008160323371815886

`∑{d}[A225943(A008619(2*n)), #]`
-/

namespace A160916.P9008160323371815886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225943 (A008619 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A160916.P9008160323371815886

/-! ## A160916.P17379825725035826461

`∩[2*A163656(2*n+1), A163656(2*(n+1))]`
-/

namespace A160916.P17379825725035826461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163656 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160916.P17379825725035826461

/-! ## A160916.P8524736745158962017

`A000203(A225943(n+1))`
-/

namespace A160916.P8524736745158962017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A225943 (n + 1)).toNat

end

end A160916.P8524736745158962017

/-! ## A160916.P1979848336942043090

`A008458(A226652(n+1))`
-/

namespace A160916.P1979848336942043090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A226652 (n + 1)).toNat

end

end A160916.P1979848336942043090

/-! ## A160916.P1226209883226937442

`A182482(A226652(n+1))+abs(A033999(n))`
-/

namespace A160916.P1226209883226937442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182482 (A226652 (n + 1)).toNat + |A033999 n|

end

end A160916.P1226209883226937442

/-! ## A160916.P1945656421644730192

`A318827(A182482(n+1))+A182482(A226652(n+1))`
-/

namespace A160916.P1945656421644730192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (A182482 (n + 1)).toNat + A182482 (A226652 (n + 1)).toNat

end

end A160916.P1945656421644730192

/-!
# A160917: Averages of twin prime pairs which can be represented as a sum of three consecutive of such pair averages.

The programs for A160917, there is no canonical definition to state claims against.
-/

/-! ## A160917.P5900680871656583532

`A226692(n+1)+1`
-/

namespace A160917.P5900680871656583532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226692 (n + 1) + 1

end

end A160917.P5900680871656583532

/-! ## A160917.P5629663750754820269

`∑{d}[A226692(A008619(2*n)), #]`
-/

namespace A160917.P5629663750754820269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226692 (A008619 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A160917.P5629663750754820269

/-! ## A160917.P14995883322033669277

`A000203(A226692(n+1))`
-/

namespace A160917.P14995883322033669277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A226692 (n + 1)).toNat

end

end A160917.P14995883322033669277

/-! ## A160917.P10691342942764835505

`∏{p}[A226692(A008619(2*n)), A000203(#)]`
-/

namespace A160917.P10691342942764835505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226692 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000203 p

end

end A160917.P10691342942764835505

/-!
# A160921: Numbers k such that k / (A000005(k)*(A000005(k)+1)/2) is an integer.

The programs for A160921, there is no canonical definition to state claims against.
-/

/-! ## A160921.P770001454168115421

`lt[(n+1)%A184389(n+1), 1]+1`
-/

namespace A160921.P770001454168115421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A184389 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A160921.P770001454168115421

/-!
# A160922: Numbers k such that A000217(k)/A006218(k) is an integer.

The programs for A160922, there is no canonical definition to state claims against.
-/

/-! ## A160922.P5665930750786090960

`∑[A157383(∑[A168219(n+1)])]`
-/

namespace A160922.P5665930750786090960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157383 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160922.P5665930750786090960

/-!
# A160924: a(n)= n + reversal(n+1).

The programs for A160924, there is no canonical definition to state claims against.
-/

/-! ## A160924.P15896874877541725561

`A056964(n+2)-1`
-/

namespace A160924.P15896874877541725561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n + 2) - 1

end

end A160924.P15896874877541725561

/-! ## A160924.P10734049061274696324

`A004086(n+2)+1+n`
-/

namespace A160924.P10734049061274696324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 2) + 1 + (n : ℤ)

end

end A160924.P10734049061274696324

/-! ## A160924.P15584882371957743198

`2*(n+1)-A160925(n+1)`
-/

namespace A160924.P15584882371957743198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160925 (n + 1)

end

end A160924.P15584882371957743198

/-! ## A160924.P6533729972830784184

`A160926(n+1)/(n+1)+n+1`
-/

namespace A160924.P6533729972830784184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160926 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A160924.P6533729972830784184

/-! ## A160924.P3816081630088594309

`A160930(n+1)-A004086(n)`
-/

namespace A160924.P3816081630088594309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160930 (n + 1) - A004086 n

end

end A160924.P3816081630088594309

/-! ## A160924.P11952805495369430159

`Δ[A062918(n+1)]+1+n`
-/

namespace A160924.P11952805495369430159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A160924.P11952805495369430159

/-! ## A160924.P219584174295638806

`2*n+3-A056965(n+2)`
-/

namespace A160924.P219584174295638806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A056965 (n + 2)

end

end A160924.P219584174295638806

/-! ## A160924.P16787805132625121893

`A160927(n+3)-2`
-/

namespace A160924.P16787805132625121893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160927 (n + 3) - 2

end

end A160924.P16787805132625121893

/-! ## A160924.P3786202409611206539

`2*(n+2)-A160928(n+3)`
-/

namespace A160924.P3786202409611206539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A160928 (n + 3)

end

end A160924.P3786202409611206539

/-! ## A160924.P17955238748299553610

`A135020(2*(n+2))+n+1`
-/

namespace A160924.P17955238748299553610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n + 2)) + (n + 1 : ℤ)

end

end A160924.P17955238748299553610

/-! ## A160924.P8058212701360476917

`A233583(A056964(n+2))`
-/

namespace A160924.P8058212701360476917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A056964 (n + 2)).toNat

end

end A160924.P8058212701360476917

/-!
# A160925: a(n)= n - reversal(n+1).

The programs for A160925, there is no canonical definition to state claims against.
-/

/-! ## A160925.P16809037393912074463

`1-A004086(n+2)+n`
-/

namespace A160925.P16809037393912074463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004086 (n + 2) + (n : ℤ)

end

end A160925.P16809037393912074463

/-! ## A160925.P13630038894206500340

`2*(n+1)-A160924(n+1)`
-/

namespace A160925.P13630038894206500340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160924 (n + 1)

end

end A160925.P13630038894206500340

/-! ## A160925.P16300599320437764485

`2*n+3-A056964(n+2)`
-/

namespace A160925.P16300599320437764485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - A056964 (n + 2))

end

end A160925.P16300599320437764485

/-! ## A160925.P12067512775857444572

`n+1-A160926(n+1)/(n+1)`
-/

namespace A160925.P12067512775857444572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A160926 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A160925.P12067512775857444572

/-! ## A160925.P11199089019679503988

`A160933(n+1)+A004086(n)`
-/

namespace A160925.P11199089019679503988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160933 (n + 1) + A004086 n

end

end A160925.P11199089019679503988

/-! ## A160925.P4337817952780984637

`A056965(n+2)-1`
-/

namespace A160925.P4337817952780984637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (n + 2) - 1

end

end A160925.P4337817952780984637

/-! ## A160925.P17417587690580188998

`1-Δ[A062918(n+1)]+n`
-/

namespace A160925.P17417587690580188998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A160925.P17417587690580188998

/-! ## A160925.P11637214315348598325

`A160928(n+3)-2`
-/

namespace A160925.P11637214315348598325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160928 (n + 3) - 2

end

end A160925.P11637214315348598325

/-! ## A160925.P12648737957637873209

`2*(n+2)-A160927(n+3)`
-/

namespace A160925.P12648737957637873209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A160927 (n + 3)

end

end A160925.P12648737957637873209

/-! ## A160925.P9693201933543948246

`n+1-A135020(2*(n+2))`
-/

namespace A160925.P9693201933543948246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A135020 (2 * (n + 2))

end

end A160925.P9693201933543948246

/-!
# A160926: a(n)= n * reversal(n+1).

The programs for A160926, there is no canonical definition to state claims against.
-/

/-! ## A160926.P12661675798436352418

`(n+1)*A004086(n+2)`
-/

namespace A160926.P12661675798436352418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004086 (n + 2)

end

end A160926.P12661675798436352418

/-! ## A160926.P3503288113117602349

`(n+1)*(n+1-A160925(n+1))`
-/

namespace A160926.P3503288113117602349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A160925 (n + 1))

end

end A160926.P3503288113117602349

/-! ## A160926.P12597067772083009328

`(n+1)*(A160924(n+1)-(n+1))`
-/

namespace A160926.P12597067772083009328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A160924 (n + 1) - (n + 1 : ℤ))

end

end A160926.P12597067772083009328

/-! ## A160926.P3413042369635111863

`(n+1)*(A056964(n+2)-(n+2))`
-/

namespace A160926.P3413042369635111863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A056964 (n + 2) - (n + 2 : ℤ))

end

end A160926.P3413042369635111863

/-! ## A160926.P2906928336240095357

`(n+1)*Δ[A062918(n+1)]`
-/

namespace A160926.P2906928336240095357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A160926.P2906928336240095357

/-! ## A160926.P2143654149527079174

`(n+1)*(n+2-A056965(n+2))`
-/

namespace A160926.P2143654149527079174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 2 : ℤ) - A056965 (n + 2))

end

end A160926.P2143654149527079174

/-! ## A160926.P11734012381545746603

`(n+1)/(n+2)*A061205(n+2)`
-/

namespace A160926.P11734012381545746603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 2 : ℚ) * (A061205 (n + 2) : ℚ)

end

end A160926.P11734012381545746603

/-! ## A160926.P12174077169174960730

`A061205(n+2)-A004086(n+2)`
-/

namespace A160926.P12174077169174960730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 (n + 2) - A004086 (n + 2)

end

end A160926.P12174077169174960730

/-! ## A160926.P12094789400042693429

`(n+1)*(A062918(n+2)-A062918(n+1))`
-/

namespace A160926.P12094789400042693429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062918 (n + 2) - A062918 (n + 1))

end

end A160926.P12094789400042693429

/-! ## A160926.P11070531616317633166

`(n+1)*A135020(2*(n+2))`
-/

namespace A160926.P11070531616317633166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A135020 (2 * (n + 2))

end

end A160926.P11070531616317633166

/-!
# A160927: a(n) = n + reversal(n-1).

The programs for A160927, there is no canonical definition to state claims against.
-/

/-! ## A160927.P17668541505254106831

`A056964(n)+1`
-/

namespace A160927.P17668541505254106831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n + 1

end

end A160927.P17668541505254106831

/-! ## A160927.P2348841288565148478

`A004086(n)+1+n`
-/

namespace A160927.P2348841288565148478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + 1 + (n : ℤ)

end

end A160927.P2348841288565148478

/-! ## A160927.P8507870245231002040

`Δ[n²]-A056965(n)`
-/

namespace A160927.P8507870245231002040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A056965 n

end

end A160927.P8507870245231002040

/-! ## A160927.P6545291667381940802

`xor(n, A256756(n))+1+n`
-/

namespace A160927.P6545291667381940802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A256756 n) + 1 + (n : ℤ)

end

end A160927.P6545291667381940802

/-! ## A160927.P2278563955443368306

`2*(n+1)-A160928(n+1)`
-/

namespace A160927.P2278563955443368306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160928 (n + 1)

end

end A160927.P2278563955443368306

/-! ## A160927.P699408092387903338

`A160929(n+1)/(n+1)+n+1`
-/

namespace A160927.P699408092387903338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160929 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A160927.P699408092387903338

/-! ## A160927.P13437944293989726279

`A066568(n)+A340479(n)+1`
-/

namespace A160927.P13437944293989726279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + (A340479 n + 1)

end

end A160927.P13437944293989726279

/-! ## A160927.P2349907741065895727

`A340479(n)+A160941(n+1)`
-/

namespace A160927.P2349907741065895727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n + A160941 (n + 1)

end

end A160927.P2349907741065895727

/-! ## A160927.P12581106580914708062

`A256754(n)+A256755(n)+1`
-/

namespace A160927.P12581106580914708062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256754 n + (A256755 n + 1)

end

end A160927.P12581106580914708062

/-! ## A160927.P8792408624653594529

`A061205(n)/A028310(n)+1+n`
-/

namespace A160927.P8792408624653594529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 n : ℚ) / (A028310 n : ℚ) + 1 + (n : ℚ)

end

end A160927.P8792408624653594529

/-! ## A160927.P15594085592357308519

`A340479(n)-(A061762(n)-∏{digits}[n, #])+1+n`
-/

namespace A160927.P15594085592357308519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n - (A061762 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)) + 1 + (n : ℤ)

end

end A160927.P15594085592357308519

/-! ## A160927.P3680929134326094835

`A000290(n+1)-(A056965(n)+A000290(n))`
-/

namespace A160927.P3680929134326094835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A056965 n + A000290 n)

end

end A160927.P3680929134326094835

/-! ## A160927.P11972810229236040992

`A004086(10*n)-xor(n, -1)`
-/

namespace A160927.P11972810229236040992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (10 * n) - Int.xor (n : ℤ) (-1)

end

end A160927.P11972810229236040992

/-! ## A160927.P5963414269118901327

`A004093(5*n)+1+n`
-/

namespace A160927.P5963414269118901327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * n) + 1 + (n : ℤ)

end

end A160927.P5963414269118901327

/-! ## A160927.P1539295972739581218

`A008619(2*A056964(n))`
-/

namespace A160927.P1539295972739581218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A056964 n).toNat

end

end A160927.P1539295972739581218

/-! ## A160927.P3650340311656750495

`A340479(n)-A061762(10*n)+1+n`
-/

namespace A160927.P3650340311656750495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n - A061762 (10 * n) + 1 + (n : ℤ)

end

end A160927.P3650340311656750495

/-! ## A160927.P7556826405197496337

`A052008(A000194(n²))+1`
-/

namespace A160927.P7556826405197496337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (A000194 (n ^ 2)).toNat + 1

end

end A160927.P7556826405197496337

/-!
# A160928: a(n) = n - reversal(n-1).

The programs for A160928, there is no canonical definition to state claims against.
-/

/-! ## A160928.P17322930620443647745

`A056965(n)+1`
-/

namespace A160928.P17322930620443647745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n + 1

end

end A160928.P17322930620443647745

/-! ## A160928.P10791082861700335998

`1-A004086(n)+n`
-/

namespace A160928.P10791082861700335998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004086 n + (n : ℤ)

end

end A160928.P10791082861700335998

/-! ## A160928.P2677014285923971082

`Δ[n²]-A056964(n)`
-/

namespace A160928.P2677014285923971082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A056964 n

end

end A160928.P2677014285923971082

/-! ## A160928.P15056501052272420568

`2*(n+1)-A160927(n+1)`
-/

namespace A160928.P15056501052272420568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160927 (n + 1)

end

end A160928.P15056501052272420568

/-! ## A160928.P11288915050384226552

`n+1-A160929(n+1)/(n+1)`
-/

namespace A160928.P11288915050384226552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A160929 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A160928.P11288915050384226552

/-! ## A160928.P4423326637503502252

`A024000(A004086(n))+n`
-/

namespace A160928.P4423326637503502252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A004086 n).toNat + (n : ℤ)

end

end A160928.P4423326637503502252

/-! ## A160928.P10376828349192895202

`A005843(n)+1-A056964(n)`
-/

namespace A160928.P10376828349192895202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A056964 n)

end

end A160928.P10376828349192895202

/-! ## A160928.P5077644792424228753

`A267193(n)+1-A061601(n)`
-/

namespace A160928.P5077644792424228753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n + (1 - A061601 n)

end

end A160928.P5077644792424228753

/-! ## A160928.P15381908463103084301

`A062028(n)+1-A340479(n)`
-/

namespace A160928.P15381908463103084301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n + (1 - A340479 n)

end

end A160928.P15381908463103084301

/-! ## A160928.P7142411875609378362

`A000290(n+1)-(A056964(n)+A000290(n))`
-/

namespace A160928.P7142411875609378362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A056964 n + A000290 n)

end

end A160928.P7142411875609378362

/-!
# A160929: a(n)= n * reversal(n-1).

The programs for A160929, there is no canonical definition to state claims against.
-/

/-! ## A160929.P8089815938521755561

`(n+1)*A004086(n)`
-/

namespace A160929.P8089815938521755561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004086 n

end

end A160929.P8089815938521755561

/-! ## A160929.P4533553522255408341

`(n+1)*(n-A056965(n))`
-/

namespace A160929.P4533553522255408341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - A056965 n)

end

end A160929.P4533553522255408341

/-! ## A160929.P16039972868150386651

`(n+1)*(A056964(n)-n)`
-/

namespace A160929.P16039972868150386651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A056964 n - (n : ℤ))

end

end A160929.P16039972868150386651

/-! ## A160929.P17797007649655762763

`(n+1)*(n+1-A160928(n+1))`
-/

namespace A160929.P17797007649655762763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A160928 (n + 1))

end

end A160929.P17797007649655762763

/-! ## A160929.P11997862517679790488

`(n+1)*(A160927(n+1)-(n+1))`
-/

namespace A160929.P11997862517679790488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A160927 (n + 1) - (n + 1 : ℤ))

end

end A160929.P11997862517679790488

/-! ## A160929.P16625547131981853175

`A061205(n)+A004086(n)`
-/

namespace A160929.P16625547131981853175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 n + A004086 n

end

end A160929.P16625547131981853175

/-! ## A160929.P4627627437836138205

`A056964(n)+A061205(n)-n`
-/

namespace A160929.P4627627437836138205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n + (A061205 n - (n : ℤ))

end

end A160929.P4627627437836138205

/-! ## A160929.P3212889798559414559

`A004086(n)*A110514(2*n)`
-/

namespace A160929.P3212889798559414559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n * A110514 (2 * n)

end

end A160929.P3212889798559414559

/-! ## A160929.P7300333925233198388

`(n+1)*A004093(5*n)`
-/

namespace A160929.P7300333925233198388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004093 (5 * n)

end

end A160929.P7300333925233198388

/-!
# A160930: a(n) = n + reversal(n-1) + reversal(n+1).

The programs for A160930, there is no canonical definition to state claims against.
-/

/-! ## A160930.P7788318572085016354

`2*(n+1)-A160933(n+1)`
-/

namespace A160930.P7788318572085016354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160933 (n + 1)

end

end A160930.P7788318572085016354

/-! ## A160930.P8703542198450774679

`A160924(n+1)+A004086(n)`
-/

namespace A160930.P8703542198450774679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160924 (n + 1) + A004086 n

end

end A160930.P8703542198450774679

/-! ## A160930.P11378841173852227365

`A004086(n+2)+A056964(n)+1`
-/

namespace A160930.P11378841173852227365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 2) + (A056964 n + 1)

end

end A160930.P11378841173852227365

/-! ## A160930.P8281176416549536703

`A160927(n+1)+A004086(n+2)`
-/

namespace A160930.P8281176416549536703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160927 (n + 1) + A004086 (n + 2)

end

end A160930.P8281176416549536703

/-! ## A160930.P7526436065407221012

`A160924(n+1)+n-A056965(n)`
-/

namespace A160930.P7526436065407221012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160924 (n + 1) + ((n : ℤ) - A056965 n)

end

end A160930.P7526436065407221012

/-! ## A160930.P14910781775501883377

`A160924(n+1)+A056964(n)-n`
-/

namespace A160930.P14910781775501883377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160924 (n + 1) + (A056964 n - (n : ℤ))

end

end A160930.P14910781775501883377

/-! ## A160930.P3751872707757777643

`n+1+A004086(n+2)+A004086(n)`
-/

namespace A160930.P3751872707757777643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A004086 (n + 2) + A004086 n)

end

end A160930.P3751872707757777643

/-!
# A160931: a(n)= n + digital sum(n+1).

The programs for A160931, the canonical program `A160931.P8364033861275116542` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160931 has offset 1).

The definition of A160931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160931.P8364033861275116542

`∑{digits}[n+2, #]+1+n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160931

/-- `∑{digits}[n+2, #]+1+n` -/
def P8364033861275116542.Spec : Prop :=
  ∀ n, (P8364033861275116542.a n : ℤ) = A160931 (n + 1)

theorem P8364033861275116542.correct : P8364033861275116542.Spec := by
  intro n
  simp only [A160931, Nat.add_sub_cancel]

end A160931

/-! ## A160931.P13570505122263022343

`log(∏{digits}[n+2, exp(#)])+1+n`
-/

namespace A160931.P13570505122263022343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod + 1 + (n : ℝ)

end

end A160931.P13570505122263022343

namespace A160931

/-- `log(∏{digits}[n+2, exp(#)])+1+n` -/
def P13570505122263022343.Spec : Prop :=
  ∀ n, P13570505122263022343.a n = (A160931 (n + 1) : ℝ)

end A160931

/-! ## A160931.P3099907616563511116

`log2(∏{digits}[n+2, 2^#])+n+1`
-/

namespace A160931.P3099907616563511116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) + (n + 1 : ℝ)

end

end A160931.P3099907616563511116

namespace A160931

/-- `log2(∏{digits}[n+2, 2^#])+n+1` -/
def P3099907616563511116.Spec : Prop :=
  ∀ n, P3099907616563511116.a n = (A160931 (n + 1) : ℝ)

end A160931

/-! ## A160931.P11194818022426906170

`Δ[A037123(n+1)]+1+n`
-/

namespace A160931.P11194818022426906170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A160931.P11194818022426906170

namespace A160931

/-- `Δ[A037123(n+1)]+1+n` -/
def P11194818022426906170.Spec : Prop :=
  ∀ n, P11194818022426906170.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P5823688594242737448

`2*(n+1)-A160949(n+1)`
-/

namespace A160931.P5823688594242737448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160949 (n + 1)

end

end A160931.P5823688594242737448

namespace A160931

/-- `2*(n+1)-A160949(n+1)` -/
def P5823688594242737448.Spec : Prop :=
  ∀ n, P5823688594242737448.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P13995948342800507502

`A160938(n+1)/(n+1)+n+1`
-/

namespace A160931.P13995948342800507502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160938 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A160931.P13995948342800507502

namespace A160931

/-- `A160938(n+1)/(n+1)+n+1` -/
def P13995948342800507502.Spec : Prop :=
  ∀ n, P13995948342800507502.a n = (A160931 (n + 1) : ℚ)

end A160931

/-! ## A160931.P5847890658590570154

`A160943(n+1)-A007953(n)`
-/

namespace A160931.P5847890658590570154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160943 (n + 1) - A007953 n

end

end A160931.P5847890658590570154

namespace A160931

/-- `A160943(n+1)-A007953(n)` -/
def P5847890658590570154.Spec : Prop :=
  ∀ n, P5847890658590570154.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P5516433101557298183

`Δ[A037123(n+1)+A000217(n)]`
-/

namespace A160931.P5516433101557298183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (n + 1) + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160931.P5516433101557298183

namespace A160931

/-- `Δ[A037123(n+1)+A000217(n)]` -/
def P5516433101557298183.Spec : Prop :=
  ∀ n, P5516433101557298183.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P3077544060550424369

`A062028(n+2)-1`
-/

namespace A160931.P3077544060550424369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (n + 2) - 1

end

end A160931.P3077544060550424369

namespace A160931

/-- `A062028(n+2)-1` -/
def P3077544060550424369.Spec : Prop :=
  ∀ n, P3077544060550424369.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P7142639974735645078

`A007953(n+2)+1+n`
-/

namespace A160931.P7142639974735645078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 2) + 1 + (n : ℤ)

end

end A160931.P7142639974735645078

namespace A160931

/-- `A007953(n+2)+1+n` -/
def P7142639974735645078.Spec : Prop :=
  ∀ n, P7142639974735645078.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P1856229418827153748

`sqrt(A118881(n+2))+n+1`
-/

namespace A160931.P1856229418827153748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (n + 2) : ℝ) + (n + 1 : ℝ)

end

end A160931.P1856229418827153748

namespace A160931

/-- `sqrt(A118881(n+2))+n+1` -/
def P1856229418827153748.Spec : Prop :=
  ∀ n, P1856229418827153748.a n = (A160931 (n + 1) : ℝ)

end A160931

/-! ## A160931.P2444896770672997130

`A057147(n+2)/(n+2)+n+1`
-/

namespace A160931.P2444896770672997130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057147 (n + 2) : ℚ) / (n + 2 : ℚ) + (n + 1 : ℚ)

end

end A160931.P2444896770672997130

namespace A160931

/-- `A057147(n+2)/(n+2)+n+1` -/
def P2444896770672997130.Spec : Prop :=
  ∀ n, P2444896770672997130.a n = (A160931 (n + 1) : ℚ)

end A160931

/-! ## A160931.P17436211381465843711

`A160939(n+3)-2`
-/

namespace A160931.P17436211381465843711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 3) - 2

end

end A160931.P17436211381465843711

namespace A160931

/-- `A160939(n+3)-2` -/
def P17436211381465843711.Spec : Prop :=
  ∀ n, P17436211381465843711.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P16049662170349214135

`A169805(n+2)/2+n+1`
-/

namespace A160931.P16049662170349214135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (n + 2) : ℚ) / 2 + (n + 1 : ℚ)

end

end A160931.P16049662170349214135

namespace A160931

/-- `A169805(n+2)/2+n+1` -/
def P16049662170349214135.Spec : Prop :=
  ∀ n, P16049662170349214135.a n = (A160931 (n + 1) : ℚ)

end A160931

/-! ## A160931.P1177895856931910074

`2*(n+2)-A160941(n+3)`
-/

namespace A160931.P1177895856931910074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A160941 (n + 3)

end

end A160931.P1177895856931910074

namespace A160931

/-- `2*(n+2)-A160941(n+3)` -/
def P1177895856931910074.Spec : Prop :=
  ∀ n, P1177895856931910074.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P18302604539894839195

`n+3-A066568(n+2)+n`
-/

namespace A160931.P18302604539894839195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A066568 (n + 2) + (n : ℤ)

end

end A160931.P18302604539894839195

namespace A160931

/-- `n+3-A066568(n+2)+n` -/
def P18302604539894839195.Spec : Prop :=
  ∀ n, P18302604539894839195.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P17423810094298261185

`Δ[A005563(n)]-A066568(n+2)`
-/

namespace A160931.P17423810094298261185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A066568 (n + 2)

end

end A160931.P17423810094298261185

namespace A160931

/-- `Δ[A005563(n)]-A066568(n+2)` -/
def P17423810094298261185.Spec : Prop :=
  ∀ n, P17423810094298261185.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P13546027242013047065

`A007953(A199344(n+2))+n`
-/

namespace A160931.P13546027242013047065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A199344 (n + 2)).toNat + (n : ℤ)

end

end A160931.P13546027242013047065

namespace A160931

/-- `A007953(A199344(n+2))+n` -/
def P13546027242013047065.Spec : Prop :=
  ∀ n, P13546027242013047065.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P2877635233534389035

`A023443(A062028(n+2))`
-/

namespace A160931.P2877635233534389035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A062028 (n + 2)).toNat

end

end A160931.P2877635233534389035

namespace A160931

/-- `A023443(A062028(n+2))` -/
def P2877635233534389035.Spec : Prop :=
  ∀ n, P2877635233534389035.a n = A160931 (n + 1)

end A160931

/-! ## A160931.P9451068804453126398

`A006370(A169805(n+2)+A004277(n+1))`
-/

namespace A160931.P9451068804453126398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A169805 (n + 2) + A004277 (n + 1)).toNat

end

end A160931.P9451068804453126398

namespace A160931

/-- `A006370(A169805(n+2)+A004277(n+1))` -/
def P9451068804453126398.Spec : Prop :=
  ∀ n, P9451068804453126398.a n = A160931 (n + 1)

end A160931

/-!
# A160933: a(n)= n - reversal(n-1) - reversal(n+1).

The programs for A160933, there is no canonical definition to state claims against.
-/

/-! ## A160933.P4307402080331001276

`2*(n+1)-A160930(n+1)`
-/

namespace A160933.P4307402080331001276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160930 (n + 1)

end

end A160933.P4307402080331001276

/-! ## A160933.P11229371911259151930

`A160925(n+1)-A004086(n)`
-/

namespace A160933.P11229371911259151930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160925 (n + 1) - A004086 n

end

end A160933.P11229371911259151930

/-! ## A160933.P4085095934485325106

`A160928(n+1)-A004086(n+2)`
-/

namespace A160933.P4085095934485325106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160928 (n + 1) - A004086 (n + 2)

end

end A160933.P4085095934485325106

/-! ## A160933.P16697620332911767894

`A160925(n+1)+n-A056964(n)`
-/

namespace A160933.P16697620332911767894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160925 (n + 1) + ((n : ℤ) - A056964 n)

end

end A160933.P16697620332911767894

/-! ## A160933.P621936505688497362

`A160925(n+1)+A056965(n)-n`
-/

namespace A160933.P621936505688497362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160925 (n + 1) + (A056965 n - (n : ℤ))

end

end A160933.P621936505688497362

/-! ## A160933.P10804573191645093994

`1-(A004086(n+2)+A004086(n))+n`
-/

namespace A160933.P10804573191645093994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A004086 (n + 2) + A004086 n) + (n : ℤ)

end

end A160933.P10804573191645093994

/-! ## A160933.P13667991805262727877

`A056965(n+2)-(A004086(n)+1)`
-/

namespace A160933.P13667991805262727877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (n + 2) - (A004086 n + 1)

end

end A160933.P13667991805262727877

/-!
# A160936: a(n)= n * reversal(n-1) * reversal(n+1).

The programs for A160936, there is no canonical definition to state claims against.
-/

/-! ## A160936.P3542028743062645569

`A004086(n)*A160926(n+1)`
-/

namespace A160936.P3542028743062645569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n * A160926 (n + 1)

end

end A160936.P3542028743062645569

/-! ## A160936.P14124548195656188812

`(n-A056965(n))*A160926(n+1)`
-/

namespace A160936.P14124548195656188812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A056965 n) * A160926 (n + 1)

end

end A160936.P14124548195656188812

/-! ## A160936.P6468906077550986644

`(A056964(n)-n)*A160926(n+1)`
-/

namespace A160936.P6468906077550986644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056964 n - (n : ℤ)) * A160926 (n + 1)

end

end A160936.P6468906077550986644

/-! ## A160936.P17177925535105802269

`xor(n, A256756(n))*A160926(n+1)`
-/

namespace A160936.P17177925535105802269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A256756 n) * A160926 (n + 1)

end

end A160936.P17177925535105802269

/-! ## A160936.P14868841984888135433

`(n+1)*A004086(n+2)*A004086(n)`
-/

namespace A160936.P14868841984888135433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004086 (n + 2) * A004086 n

end

end A160936.P14868841984888135433

/-! ## A160936.P6520492806774220248

`(A160927(n+1)-(n+1))*A160926(n+1)`
-/

namespace A160936.P6520492806774220248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160927 (n + 1) - (n + 1 : ℤ)) * A160926 (n + 1)

end

end A160936.P6520492806774220248

/-! ## A160936.P2447995926804948858

`(A061205(n)+A004086(n))*A004086(n+2)`
-/

namespace A160936.P2447995926804948858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061205 n + A004086 n) * A004086 (n + 2)

end

end A160936.P2447995926804948858

/-! ## A160936.P4302850421392788004

`(A340479(n)-A007953(n))*A160926(n+1)`
-/

namespace A160936.P4302850421392788004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A340479 n - A007953 n) * A160926 (n + 1)

end

end A160936.P4302850421392788004

/-! ## A160936.P17429850486090850476

`A004093(5*n)*A160926(n+1)`
-/

namespace A160936.P17429850486090850476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * n) * A160926 (n + 1)

end

end A160936.P17429850486090850476

/-!
# A160938: a(n)= n * digital sum(n+1).

The programs for A160938, the canonical program `A160938.P8336256521067805639` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160938 has offset 1).

The definition of A160938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160938.P8336256521067805639

`(n+1)*∑{digits}[n+2, #]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160938

/-- `(n+1)*∑{digits}[n+2, #]` -/
def P8336256521067805639.Spec : Prop :=
  ∀ n, (P8336256521067805639.a n : ℤ) = A160938 (n + 1)

theorem P8336256521067805639.correct : P8336256521067805639.Spec := by
  intro n
  simp only [A160938, Nat.add_sub_cancel]

end A160938

/-! ## A160938.P875576539638024749

`(n+1)*log(∏{digits}[n+2, exp(#)])`
-/

namespace A160938.P875576539638024749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A160938.P875576539638024749

namespace A160938

/-- `(n+1)*log(∏{digits}[n+2, exp(#)])` -/
def P875576539638024749.Spec : Prop :=
  ∀ n, P875576539638024749.a n = (A160938 (n + 1) : ℝ)

end A160938

/-! ## A160938.P2540344959237075629

`∑{digits}[n+2, floor(#/acot(n+1))]`
-/

namespace A160938.P2540344959237075629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋).sum

end

end A160938.P2540344959237075629

namespace A160938

/-- `∑{digits}[n+2, floor(#/acot(n+1))]` -/
def P2540344959237075629.Spec : Prop :=
  ∀ n, P2540344959237075629.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P16120939732612847337

`∑{digits}[n+2, #/tan(acot(n+1))]`
-/

namespace A160938.P16120939732612847337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))).sum

end

end A160938.P16120939732612847337

namespace A160938

/-- `∑{digits}[n+2, #/tan(acot(n+1))]` -/
def P16120939732612847337.Spec : Prop :=
  ∀ n, P16120939732612847337.a n = (A160938 (n + 1) : ℝ)

end A160938

/-! ## A160938.P18046362391077394831

`(n+1)/∑{digits}[n+2, #]^-1`
-/

namespace A160938.P18046362391077394831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A160938.P18046362391077394831

namespace A160938

/-- `(n+1)/∑{digits}[n+2, #]^-1` -/
def P18046362391077394831.Spec : Prop :=
  ∀ n, P18046362391077394831.a n = (A160938 (n + 1) : ℚ)

end A160938

/-! ## A160938.P14997227327161230161

`(n+1)*Δ[A037123(n+1)]`
-/

namespace A160938.P14997227327161230161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A160938.P14997227327161230161

namespace A160938

/-- `(n+1)*Δ[A037123(n+1)]` -/
def P14997227327161230161.Spec : Prop :=
  ∀ n, P14997227327161230161.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P17839700179191721039

`(n+1)*(A160931(n+1)-(n+1))`
-/

namespace A160938.P17839700179191721039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A160931 (n + 1) - (n + 1 : ℤ))

end

end A160938.P17839700179191721039

namespace A160938

/-- `(n+1)*(A160931(n+1)-(n+1))` -/
def P17839700179191721039.Spec : Prop :=
  ∀ n, P17839700179191721039.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P6112969835259103153

`(n+1)*(n+1-A160949(n+1))`
-/

namespace A160938.P6112969835259103153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A160949 (n + 1))

end

end A160938.P6112969835259103153

namespace A160938

/-- `(n+1)*(n+1-A160949(n+1))` -/
def P6112969835259103153.Spec : Prop :=
  ∀ n, P6112969835259103153.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P18388868978031916676

`(n+1)*A007953(n+2)`
-/

namespace A160938.P18388868978031916676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007953 (n + 2)

end

end A160938.P18388868978031916676

namespace A160938

/-- `(n+1)*A007953(n+2)` -/
def P18388868978031916676.Spec : Prop :=
  ∀ n, P18388868978031916676.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P1214791545776003406

`(n+1)*sqrt(A118881(n+2))`
-/

namespace A160938.P1214791545776003406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A118881 (n + 2) : ℝ)

end

end A160938.P1214791545776003406

namespace A160938

/-- `(n+1)*sqrt(A118881(n+2))` -/
def P1214791545776003406.Spec : Prop :=
  ∀ n, P1214791545776003406.a n = (A160938 (n + 1) : ℝ)

end A160938

/-! ## A160938.P5268322337078519654

`(n+1)*(A062028(n+2)-(n+2))`
-/

namespace A160938.P5268322337078519654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062028 (n + 2) - (n + 2 : ℤ))

end

end A160938.P5268322337078519654

namespace A160938

/-- `(n+1)*(A062028(n+2)-(n+2))` -/
def P5268322337078519654.Spec : Prop :=
  ∀ n, P5268322337078519654.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P6580618951523000653

`(n+1)/(n+2)*A057147(n+2)`
-/

namespace A160938.P6580618951523000653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 2 : ℚ) * (A057147 (n + 2) : ℚ)

end

end A160938.P6580618951523000653

namespace A160938

/-- `(n+1)/(n+2)*A057147(n+2)` -/
def P6580618951523000653.Spec : Prop :=
  ∀ n, P6580618951523000653.a n = (A160938 (n + 1) : ℚ)

end A160938

/-! ## A160938.P17032856449410335863

`A057147(n+2)-A007953(n+2)`
-/

namespace A160938.P17032856449410335863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 (n + 2) - A007953 (n + 2)

end

end A160938.P17032856449410335863

namespace A160938

/-- `A057147(n+2)-A007953(n+2)` -/
def P17032856449410335863.Spec : Prop :=
  ∀ n, P17032856449410335863.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P12397375860510123062

`(n+1)/2*A169805(n+2)`
-/

namespace A160938.P12397375860510123062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A169805 (n + 2) : ℚ)

end

end A160938.P12397375860510123062

namespace A160938

/-- `(n+1)/2*A169805(n+2)` -/
def P12397375860510123062.Spec : Prop :=
  ∀ n, P12397375860510123062.a n = (A160938 (n + 1) : ℚ)

end A160938

/-! ## A160938.P9505863580416283785

`(n+1)*(n+2-A066568(n+2))`
-/

namespace A160938.P9505863580416283785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 2 : ℤ) - A066568 (n + 2))

end

end A160938.P9505863580416283785

namespace A160938

/-- `(n+1)*(n+2-A066568(n+2))` -/
def P9505863580416283785.Spec : Prop :=
  ∀ n, P9505863580416283785.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P8764184074690727888

`(n+1)*(n+3-A160941(n+3))`
-/

namespace A160938.P8764184074690727888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 3 : ℤ) - A160941 (n + 3))

end

end A160938.P8764184074690727888

namespace A160938

/-- `(n+1)*(n+3-A160941(n+3))` -/
def P8764184074690727888.Spec : Prop :=
  ∀ n, P8764184074690727888.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P17961907501278342319

`(n+1)*(A160939(n+3)-(n+3))`
-/

namespace A160938.P17961907501278342319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A160939 (n + 3) - (n + 3 : ℤ))

end

end A160938.P17961907501278342319

namespace A160938

/-- `(n+1)*(A160939(n+3)-(n+3))` -/
def P17961907501278342319.Spec : Prop :=
  ∀ n, P17961907501278342319.a n = A160938 (n + 1)

end A160938

/-! ## A160938.P12730725629537394834

`(n+1)/(n+3)*A160942(n+3)`
-/

namespace A160938.P12730725629537394834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 3 : ℚ) * (A160942 (n + 3) : ℚ)

end

end A160938.P12730725629537394834

namespace A160938

/-- `(n+1)/(n+3)*A160942(n+3)` -/
def P12730725629537394834.Spec : Prop :=
  ∀ n, P12730725629537394834.a n = (A160938 (n + 1) : ℚ)

end A160938

/-! ## A160938.P3988348210392708013

`(n+1)*A376769(A376772(n+2))`
-/

namespace A160938.P3988348210392708013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A376769 (A376772 (n + 2)).toNat

end

end A160938.P3988348210392708013

namespace A160938

/-- `(n+1)*A376769(A376772(n+2))` -/
def P3988348210392708013.Spec : Prop :=
  ∀ n, P3988348210392708013.a n = A160938 (n + 1)

end A160938

/-!
# A160939: a(n) = n + digital sum (n-1).

The programs for A160939, the canonical program `A160939.P10335950988782502839` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160939 has offset 1).

The definition of A160939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160939.P10335950988782502839

`A062028(n)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160939

/-- `A062028(n)+1` -/
def P10335950988782502839.Spec : Prop :=
  ∀ n, P10335950988782502839.a n = A160939 (n + 1)

theorem P10335950988782502839.correct : P10335950988782502839.Spec := by
  intro n
  simp only [A160939, Nat.add_sub_cancel]

end A160939

/-! ## A160939.P1650170188599130629

`∑{digits}[n, #]+1+n`
-/

namespace A160939.P1650170188599130629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1 + n

end

end A160939.P1650170188599130629

namespace A160939

/-- `∑{digits}[n, #]+1+n` -/
def P1650170188599130629.Spec : Prop :=
  ∀ n, (P1650170188599130629.a n : ℤ) = A160939 (n + 1)

end A160939

/-! ## A160939.P9351828465722578545

`n-xor(-1, ∑{digits}[n, #])`
-/

namespace A160939.P9351828465722578545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (-1) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A160939.P9351828465722578545

namespace A160939

/-- `n-xor(-1, ∑{digits}[n, #])` -/
def P9351828465722578545.Spec : Prop :=
  ∀ n, P9351828465722578545.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P2266062182635500460

`log2(∏{digits}[n, 2^#])+n+1`
-/

namespace A160939.P2266062182635500460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) + (n + 1 : ℝ)

end

end A160939.P2266062182635500460

namespace A160939

/-- `log2(∏{digits}[n, 2^#])+n+1` -/
def P2266062182635500460.Spec : Prop :=
  ∀ n, P2266062182635500460.a n = (A160939 (n + 1) : ℝ)

end A160939

/-! ## A160939.P17371212356349211858

`2*n-(n-1-∑{digits}[n, #])`
-/

namespace A160939.P17371212356349211858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A160939.P17371212356349211858

namespace A160939

/-- `2*n-(n-1-∑{digits}[n, #])` -/
def P17371212356349211858.Spec : Prop :=
  ∀ n, P17371212356349211858.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P3715546158614447268

`n+1+A007953(n)`
-/

namespace A160939.P3715546158614447268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007953 n

end

end A160939.P3715546158614447268

namespace A160939

/-- `n+1+A007953(n)` -/
def P3715546158614447268.Spec : Prop :=
  ∀ n, P3715546158614447268.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P704634053529047917

`Δ[n²]-A066568(n)`
-/

namespace A160939.P704634053529047917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A066568 n

end

end A160939.P704634053529047917

namespace A160939

/-- `Δ[n²]-A066568(n)` -/
def P704634053529047917.Spec : Prop :=
  ∀ n, P704634053529047917.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P8914572428929846594

`sqrt(A118881(n))+1+n`
-/

namespace A160939.P8914572428929846594
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ) + 1 + (n : ℝ)

end

end A160939.P8914572428929846594

namespace A160939

/-- `sqrt(A118881(n))+1+n` -/
def P8914572428929846594.Spec : Prop :=
  ∀ n, P8914572428929846594.a n = (A160939 (n + 1) : ℝ)

end A160939

/-! ## A160939.P9970945127774379742

`log2(A329562(n))+1+n`
-/

namespace A160939.P9970945127774379742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) + 1 + (n : ℝ)

end

end A160939.P9970945127774379742

namespace A160939

/-- `log2(A329562(n))+1+n` -/
def P9970945127774379742.Spec : Prop :=
  ∀ n, P9970945127774379742.a n = (A160939 (n + 1) : ℝ)

end A160939

/-! ## A160939.P17078428739031676396

`A169805(n)/2+n+1`
-/

namespace A160939.P17078428739031676396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2 + (n + 1 : ℚ)

end

end A160939.P17078428739031676396

namespace A160939

/-- `A169805(n)/2+n+1` -/
def P17078428739031676396.Spec : Prop :=
  ∀ n, P17078428739031676396.a n = (A160939 (n + 1) : ℚ)

end A160939

/-! ## A160939.P17066281016195823442

`2*(n+1)-A160941(n+1)`
-/

namespace A160939.P17066281016195823442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160941 (n + 1)

end

end A160939.P17066281016195823442

namespace A160939

/-- `2*(n+1)-A160941(n+1)` -/
def P17066281016195823442.Spec : Prop :=
  ∀ n, P17066281016195823442.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P13719548035598953582

`A160942(n+1)/(n+1)+n+1`
-/

namespace A160939.P13719548035598953582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160942 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A160939.P13719548035598953582

namespace A160939

/-- `A160942(n+1)/(n+1)+n+1` -/
def P13719548035598953582.Spec : Prop :=
  ∀ n, P13719548035598953582.a n = (A160939 (n + 1) : ℚ)

end A160939

/-! ## A160939.P13680246881767389129

`A061762(n)+A070565(n)+1`
-/

namespace A160939.P13680246881767389129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n + (A070565 n + 1)

end

end A160939.P13680246881767389129

namespace A160939

/-- `A061762(n)+A070565(n)+1` -/
def P13680246881767389129.Spec : Prop :=
  ∀ n, P13680246881767389129.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P3077583072629386144

`A066568(n)+A169805(n)+1`
-/

namespace A160939.P3077583072629386144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + (A169805 n + 1)

end

end A160939.P3077583072629386144

namespace A160939

/-- `A066568(n)+A169805(n)+1` -/
def P3077583072629386144.Spec : Prop :=
  ∀ n, P3077583072629386144.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P6657653946263219521

`A062329(n)+A230099(n)+1`
-/

namespace A160939.P6657653946263219521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + (A230099 n + 1)

end

end A160939.P6657653946263219521

namespace A160939

/-- `A062329(n)+A230099(n)+1` -/
def P6657653946263219521.Spec : Prop :=
  ∀ n, P6657653946263219521.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P6907984909808114843

`1-(A001489(n)-A007953(n))`
-/

namespace A160939.P6907984909808114843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A007953 n)

end

end A160939.P6907984909808114843

namespace A160939

/-- `1-(A001489(n)-A007953(n))` -/
def P6907984909808114843.Spec : Prop :=
  ∀ n, P6907984909808114843.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P11287125595444668905

`A000027(n+1)+A062329(n)+A007954(n)`
-/

namespace A160939.P11287125595444668905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A062329 n + A007954 n)

end

end A160939.P11287125595444668905

namespace A160939

/-- `A000027(n+1)+A062329(n)+A007954(n)` -/
def P11287125595444668905.Spec : Prop :=
  ∀ n, P11287125595444668905.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P17292262230364375040

`A007953(A199344(n))+n`
-/

namespace A160939.P17292262230364375040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A199344 n).toNat + (n : ℤ)

end

end A160939.P17292262230364375040

namespace A160939

/-- `A007953(A199344(n))+n` -/
def P17292262230364375040.Spec : Prop :=
  ∀ n, P17292262230364375040.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P17289297551026002725

`A008619(2*A062028(n))`
-/

namespace A160939.P17289297551026002725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A062028 n).toNat

end

end A160939.P17289297551026002725

namespace A160939

/-- `A008619(2*A062028(n))` -/
def P17289297551026002725.Spec : Prop :=
  ∀ n, P17289297551026002725.a n = A160939 (n + 1)

end A160939

/-! ## A160939.P12400069583820972711

`A027656(2*A062028(n))`
-/

namespace A160939.P12400069583820972711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A062028 n).toNat

end

end A160939.P12400069583820972711

namespace A160939

/-- `A027656(2*A062028(n))` -/
def P12400069583820972711.Spec : Prop :=
  ∀ n, P12400069583820972711.a n = A160939 (n + 1)

end A160939

/-!
# A160941: a(n)= n - digital sum(n-1).

The programs for A160941, the canonical program `A160941.P11918685615583149497` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160941 has offset 1).

The definition of A160941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160941.P11918685615583149497

`1-∑{digits}[n, #]+n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160941

/-- `1-∑{digits}[n, #]+n` -/
def P11918685615583149497.Spec : Prop :=
  ∀ n, P11918685615583149497.a n = A160941 (n + 1)

theorem P11918685615583149497.correct : P11918685615583149497.Spec := by
  intro n
  simp only [A160941, Nat.add_sub_cancel]

end A160941

/-! ## A160941.P15459900472869407804

`1-(∑{digits}[n, #]-n)`
-/

namespace A160941.P15459900472869407804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))

end

end A160941.P15459900472869407804

namespace A160941

/-- `1-(∑{digits}[n, #]-n)` -/
def P15459900472869407804.Spec : Prop :=
  ∀ n, P15459900472869407804.a n = A160941 (n + 1)

theorem P15459900472869407804.correct : P15459900472869407804.Spec := by
  intro n
  simp only [A160941, Nat.add_sub_cancel, A160941.P15459900472869407804.f1, A160941.P15459900472869407804.a, A160941.P11918685615583149497.f1, A160941.P11918685615583149497.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A160941

/-! ## A160941.P608333971863733338

`n+1-log(∏{digits}[n, exp(#)])`
-/

namespace A160941.P608333971863733338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A160941.P608333971863733338

namespace A160941

/-- `n+1-log(∏{digits}[n, exp(#)])` -/
def P608333971863733338.Spec : Prop :=
  ∀ n, P608333971863733338.a n = (A160941 (n + 1) : ℝ)

end A160941

/-! ## A160941.P5610401510626371917

`n+1-log2(∏{digits}[n, 2^#])`
-/

namespace A160941.P5610401510626371917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A160941.P5610401510626371917

namespace A160941

/-- `n+1-log2(∏{digits}[n, 2^#])` -/
def P5610401510626371917.Spec : Prop :=
  ∀ n, P5610401510626371917.a n = (A160941 (n + 1) : ℝ)

end A160941

/-! ## A160941.P10365635628373470084

`xor(-1, ∑{digits}[n, #])+n+2`
-/

namespace A160941.P10365635628373470084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n + 2 : ℤ)

end

end A160941.P10365635628373470084

namespace A160941

/-- `xor(-1, ∑{digits}[n, #])+n+2` -/
def P10365635628373470084.Spec : Prop :=
  ∀ n, P10365635628373470084.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P198702976069531653

`Δ[n²]%(∑{digits}[n, #]+1+n)+1`
-/

namespace A160941.P198702976069531653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 1 + n : ℕ) : ℤ) + 1

end

end A160941.P198702976069531653

namespace A160941

/-- `Δ[n²]%(∑{digits}[n, #]+1+n)+1` -/
def P198702976069531653.Spec : Prop :=
  ∀ n, P198702976069531653.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P9077814699422262266

`A066568(n)+1`
-/

namespace A160941.P9077814699422262266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + 1

end

end A160941.P9077814699422262266

namespace A160941

/-- `A066568(n)+1` -/
def P9077814699422262266.Spec : Prop :=
  ∀ n, P9077814699422262266.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P12902199309811296508

`1-A007953(n)+n`
-/

namespace A160941.P12902199309811296508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007953 n + (n : ℤ)

end

end A160941.P12902199309811296508

namespace A160941

/-- `1-A007953(n)+n` -/
def P12902199309811296508.Spec : Prop :=
  ∀ n, P12902199309811296508.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P15029030002413279604

`Δ[n²]-A062028(n)`
-/

namespace A160941.P15029030002413279604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A062028 n

end

end A160941.P15029030002413279604

namespace A160941

/-- `Δ[n²]-A062028(n)` -/
def P15029030002413279604.Spec : Prop :=
  ∀ n, P15029030002413279604.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P1567960559603807792

`n+1-sqrt(A118881(n))`
-/

namespace A160941.P1567960559603807792
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (A118881 n : ℝ)

end

end A160941.P1567960559603807792

namespace A160941

/-- `n+1-sqrt(A118881(n))` -/
def P1567960559603807792.Spec : Prop :=
  ∀ n, P1567960559603807792.a n = (A160941 (n + 1) : ℝ)

end A160941

/-! ## A160941.P14558994523626602114

`n+1-A169805(n)/2`
-/

namespace A160941.P14558994523626602114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A169805 n : ℚ) / 2

end

end A160941.P14558994523626602114

namespace A160941

/-- `n+1-A169805(n)/2` -/
def P14558994523626602114.Spec : Prop :=
  ∀ n, P14558994523626602114.a n = (A160941 (n + 1) : ℚ)

end A160941

/-! ## A160941.P17651664843653589535

`2*(n+1)-A160939(n+1)`
-/

namespace A160941.P17651664843653589535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160939 (n + 1)

end

end A160941.P17651664843653589535

namespace A160941

/-- `2*(n+1)-A160939(n+1)` -/
def P17651664843653589535.Spec : Prop :=
  ∀ n, P17651664843653589535.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P12809287700980558618

`n+1-A160942(n+1)/(n+1)`
-/

namespace A160941.P12809287700980558618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A160942 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A160941.P12809287700980558618

namespace A160941

/-- `n+1-A160942(n+1)/(n+1)` -/
def P12809287700980558618.Spec : Prop :=
  ∀ n, P12809287700980558618.a n = (A160941 (n + 1) : ℚ)

end A160941

/-! ## A160941.P14391723040669695975

`A004482(A066568(n))`
-/

namespace A160941.P14391723040669695975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A066568 n).toNat

end

end A160941.P14391723040669695975

namespace A160941

/-- `A004482(A066568(n))` -/
def P14391723040669695975.Spec : Prop :=
  ∀ n, P14391723040669695975.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P6006268222433337428

`A017173(A054899(n))`
-/

namespace A160941.P6006268222433337428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A054899 n).toNat

end

end A160941.P6006268222433337428

namespace A160941

/-- `A017173(A054899(n))` -/
def P6006268222433337428.Spec : Prop :=
  ∀ n, P6006268222433337428.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P17153890681804727918

`A024000(A007953(n))+n`
-/

namespace A160941.P17153890681804727918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A007953 n).toNat + (n : ℤ)

end

end A160941.P17153890681804727918

namespace A160941

/-- `A024000(A007953(n))+n` -/
def P17153890681804727918.Spec : Prop :=
  ∀ n, P17153890681804727918.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P403588937318723603

`A160939(n+1)-A169805(n)`
-/

namespace A160941.P403588937318723603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) - A169805 n

end

end A160941.P403588937318723603

namespace A160941

/-- `A160939(n+1)-A169805(n)` -/
def P403588937318723603.Spec : Prop :=
  ∀ n, P403588937318723603.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P7307107529230495882

`(2*n+1)%A062028(A028310(n))`
-/

namespace A160941.P7307107529230495882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A062028 (A028310 n).toNat)

end

end A160941.P7307107529230495882

namespace A160941

/-- `(2*n+1)%A062028(A028310(n))` -/
def P7307107529230495882.Spec : Prop :=
  ∀ n, P7307107529230495882.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P17507852184055229168

`n+1-(A062329(n)+A007954(n))`
-/

namespace A160941.P17507852184055229168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A062329 n + A007954 n)

end

end A160941.P17507852184055229168

namespace A160941

/-- `n+1-(A062329(n)+A007954(n))` -/
def P17507852184055229168.Spec : Prop :=
  ∀ n, P17507852184055229168.a n = A160941 (n + 1)

end A160941

/-! ## A160941.P5941985970534624581

`A000027(n+1)-(A062028(n)-n)`
-/

namespace A160941.P5941985970534624581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - (A062028 n - (n : ℤ))

end

end A160941.P5941985970534624581

namespace A160941

/-- `A000027(n+1)-(A062028(n)-n)` -/
def P5941985970534624581.Spec : Prop :=
  ∀ n, P5941985970534624581.a n = A160941 (n + 1)

end A160941

/-!
# A160942: a(n)= n * digital sum(n-1).

The programs for A160942, the canonical program `A160942.P9572384472061468384` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160942 has offset 1).

The definition of A160942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160942.P9572384472061468384

`(n+1)*∑{digits}[n, #]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160942

/-- `(n+1)*∑{digits}[n, #]` -/
def P9572384472061468384.Spec : Prop :=
  ∀ n, (P9572384472061468384.a n : ℤ) = A160942 (n + 1)

theorem P9572384472061468384.correct : P9572384472061468384.Spec := by
  intro n
  simp only [A160942, Nat.add_sub_cancel]

end A160942

/-! ## A160942.P12075520004116607851

`(n+1)*log(∏{digits}[n, exp(#)])`
-/

namespace A160942.P12075520004116607851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A160942.P12075520004116607851

namespace A160942

/-- `(n+1)*log(∏{digits}[n, exp(#)])` -/
def P12075520004116607851.Spec : Prop :=
  ∀ n, P12075520004116607851.a n = (A160942 (n + 1) : ℝ)

end A160942

/-! ## A160942.P15998211011311591051

`abs(xor(n, -1)*∑{digits}[n, #])`
-/

namespace A160942.P15998211011311591051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)|

end

end A160942.P15998211011311591051

namespace A160942

/-- `abs(xor(n, -1)*∑{digits}[n, #])` -/
def P15998211011311591051.Spec : Prop :=
  ∀ n, P15998211011311591051.a n = A160942 (n + 1)

end A160942

/-! ## A160942.P11928629037508219558

`∑{digits}[n, #/(n+1)^-1]`
-/

namespace A160942.P11928629037508219558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)).sum

end

end A160942.P11928629037508219558

namespace A160942

/-- `∑{digits}[n, #/(n+1)^-1]` -/
def P11928629037508219558.Spec : Prop :=
  ∀ n, P11928629037508219558.a n = (A160942 (n + 1) : ℚ)

end A160942

/-! ## A160942.P13191866466360478434

`∑{digits}[n, #]/root(n+1, -1)`
-/

namespace A160942.P13191866466360478434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ) / (n + 1 : ℝ) ^ (1 / (-1 : ℝ))

end

end A160942.P13191866466360478434

namespace A160942

/-- `∑{digits}[n, #]/root(n+1, -1)` -/
def P13191866466360478434.Spec : Prop :=
  ∀ n, P13191866466360478434.a n = (A160942 (n + 1) : ℝ)

end A160942

/-! ## A160942.P5542029780416823292

`(n+1)*log2(∏{digits}[n, 2^#])`
-/

namespace A160942.P5542029780416823292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A160942.P5542029780416823292

namespace A160942

/-- `(n+1)*log2(∏{digits}[n, 2^#])` -/
def P5542029780416823292.Spec : Prop :=
  ∀ n, P5542029780416823292.a n = (A160942 (n + 1) : ℝ)

end A160942

/-! ## A160942.P9927969791399975249

`abs((2*n-(n-1))*∑{digits}[n, #])`
-/

namespace A160942.P9927969791399975249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n : ℤ) - ((n : ℤ) - 1)) * ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)|

end

end A160942.P9927969791399975249

namespace A160942

/-- `abs((2*n-(n-1))*∑{digits}[n, #])` -/
def P9927969791399975249.Spec : Prop :=
  ∀ n, P9927969791399975249.a n = A160942 (n + 1)

end A160942

/-! ## A160942.P7635016617987444693

`-(n-1-2*n)*∑{digits}[n, #]`
-/

namespace A160942.P7635016617987444693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1 - (2 * n : ℤ)) * ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A160942.P7635016617987444693

namespace A160942

/-- `-(n-1-2*n)*∑{digits}[n, #]` -/
def P7635016617987444693.Spec : Prop :=
  ∀ n, P7635016617987444693.a n = A160942 (n + 1)

theorem P7635016617987444693.correct : P7635016617987444693.Spec := by
  intro n
  simp only [A160942, Nat.add_sub_cancel, A160942.P7635016617987444693.f1, A160942.P7635016617987444693.a, A160942.P9572384472061468384.f1, A160942.P9572384472061468384.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A160942

/-! ## A160942.P15582252546062762144

`(n+1)*A007953(n)`
-/

namespace A160942.P15582252546062762144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007953 n

end

end A160942.P15582252546062762144

namespace A160942

/-- `(n+1)*A007953(n)` -/
def P15582252546062762144.Spec : Prop :=
  ∀ n, P15582252546062762144.a n = A160942 (n + 1)

end A160942

/-! ## A160942.P10182303599392688601

`A057147(n)+∑{digits}[n, #]`
-/

namespace A160942.P10182303599392688601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A160942.P10182303599392688601

namespace A160942

/-- `A057147(n)+∑{digits}[n, #]` -/
def P10182303599392688601.Spec : Prop :=
  ∀ n, P10182303599392688601.a n = A160942 (n + 1)

end A160942

/-! ## A160942.P1241132304510331567

`(n+1)*sqrt(A118881(n))`
-/

namespace A160942.P1241132304510331567
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A118881 n : ℝ)

end

end A160942.P1241132304510331567

namespace A160942

/-- `(n+1)*sqrt(A118881(n))` -/
def P1241132304510331567.Spec : Prop :=
  ∀ n, P1241132304510331567.a n = (A160942 (n + 1) : ℝ)

end A160942

/-! ## A160942.P10639861335158772810

`(n+1)*log2(A329562(n))`
-/

namespace A160942.P10639861335158772810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (A329562 n : ℝ)

end

end A160942.P10639861335158772810

namespace A160942

/-- `(n+1)*log2(A329562(n))` -/
def P10639861335158772810.Spec : Prop :=
  ∀ n, P10639861335158772810.a n = (A160942 (n + 1) : ℝ)

end A160942

/-! ## A160942.P8878063473359074579

`(n+1)/2*A169805(n)`
-/

namespace A160942.P8878063473359074579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A169805 n : ℚ)

end

end A160942.P8878063473359074579

namespace A160942

/-- `(n+1)/2*A169805(n)` -/
def P8878063473359074579.Spec : Prop :=
  ∀ n, P8878063473359074579.a n = (A160942 (n + 1) : ℚ)

end A160942

/-! ## A160942.P2497681745652555556

`(n+1)*(A062028(n)-n)`
-/

namespace A160942.P2497681745652555556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062028 n - (n : ℤ))

end

end A160942.P2497681745652555556

namespace A160942

/-- `(n+1)*(A062028(n)-n)` -/
def P2497681745652555556.Spec : Prop :=
  ∀ n, P2497681745652555556.a n = A160942 (n + 1)

end A160942

/-! ## A160942.P15869051152944424775

`(n+1)*(n-A066568(n))`
-/

namespace A160942.P15869051152944424775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - A066568 n)

end

end A160942.P15869051152944424775

namespace A160942

/-- `(n+1)*(n-A066568(n))` -/
def P15869051152944424775.Spec : Prop :=
  ∀ n, P15869051152944424775.a n = A160942 (n + 1)

end A160942

/-! ## A160942.P13967694479815097463

`(n+1)*(n+1-A160941(n+1))`
-/

namespace A160942.P13967694479815097463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A160941 (n + 1))

end

end A160942.P13967694479815097463

namespace A160942

/-- `(n+1)*(n+1-A160941(n+1))` -/
def P13967694479815097463.Spec : Prop :=
  ∀ n, P13967694479815097463.a n = A160942 (n + 1)

end A160942

/-! ## A160942.P8687057306460462322

`(n+1)*(A160939(n+1)-(n+1))`
-/

namespace A160942.P8687057306460462322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A160939 (n + 1) - (n + 1 : ℤ))

end

end A160942.P8687057306460462322

namespace A160942

/-- `(n+1)*(A160939(n+1)-(n+1))` -/
def P8687057306460462322.Spec : Prop :=
  ∀ n, P8687057306460462322.a n = A160942 (n + 1)

end A160942

/-! ## A160942.P7751950031851099737

`A057147(n)+A007953(n)`
-/

namespace A160942.P7751950031851099737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n + A007953 n

end

end A160942.P7751950031851099737

namespace A160942

/-- `A057147(n)+A007953(n)` -/
def P7751950031851099737.Spec : Prop :=
  ∀ n, P7751950031851099737.a n = A160942 (n + 1)

end A160942

/-! ## A160942.P17830080404288071264

`A057147(n)+A169805(n)/2`
-/

namespace A160942.P17830080404288071264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057147 n : ℚ) + (A169805 n : ℚ) / 2

end

end A160942.P17830080404288071264

namespace A160942

/-- `A057147(n)+A169805(n)/2` -/
def P17830080404288071264.Spec : Prop :=
  ∀ n, P17830080404288071264.a n = (A160942 (n + 1) : ℚ)

end A160942

/-! ## A160942.P434344407484722074

`A007953(n)/2*A103517(n)`
-/

namespace A160942.P434344407484722074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 n : ℚ) / 2 * (A103517 n : ℚ)

end

end A160942.P434344407484722074

namespace A160942

/-- `A007953(n)/2*A103517(n)` -/
def P434344407484722074.Spec : Prop :=
  ∀ n, P434344407484722074.a n = (A160942 (n + 1) : ℚ)

end A160942

/-!
# A160943: a(n) = n + digital sum(n-1) + digital sum(n+1).

The programs for A160943, the canonical program `A160943.P15020166745385108868` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160943 has offset 1).

The definition of A160943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160943.P15020166745385108868

`n+1+A007953(n)+A007953(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160943

/-- `n+1+A007953(n)+A007953(n+2)` -/
def P15020166745385108868.Spec : Prop :=
  ∀ n, P15020166745385108868.a n = A160943 (n + 1)

theorem P15020166745385108868.correct : P15020166745385108868.Spec := by
  intro n
  simp only [A160943, Nat.add_sub_cancel]

end A160943

/-! ## A160943.P6397872138542310757

`n+1+∑{digits}[n+2, #]+∑{digits}[n, #]`
-/

namespace A160943.P6397872138542310757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum)

end

end A160943.P6397872138542310757

namespace A160943

/-- `n+1+∑{digits}[n+2, #]+∑{digits}[n, #]` -/
def P6397872138542310757.Spec : Prop :=
  ∀ n, (P6397872138542310757.a n : ℤ) = A160943 (n + 1)

end A160943

/-! ## A160943.P16315721458959311289

`A160931(n+1)+∑{digits}[n, #]`
-/

namespace A160943.P16315721458959311289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160931 (n + 1) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A160943.P16315721458959311289

namespace A160943

/-- `A160931(n+1)+∑{digits}[n, #]` -/
def P16315721458959311289.Spec : Prop :=
  ∀ n, P16315721458959311289.a n = A160943 (n + 1)

end A160943

/-! ## A160943.P3391167557444747995

`A160931(n+1)+A007953(n)`
-/

namespace A160943.P3391167557444747995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160931 (n + 1) + A007953 n

end

end A160943.P3391167557444747995

namespace A160943

/-- `A160931(n+1)+A007953(n)` -/
def P3391167557444747995.Spec : Prop :=
  ∀ n, P3391167557444747995.a n = A160943 (n + 1)

end A160943

/-! ## A160943.P2734627564980143924

`A160931(n+1)+sqrt(A118881(n))`
-/

namespace A160943.P2734627564980143924
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160931 (n + 1) : ℝ) + Real.sqrt (A118881 n : ℝ)

end

end A160943.P2734627564980143924

namespace A160943

/-- `A160931(n+1)+sqrt(A118881(n))` -/
def P2734627564980143924.Spec : Prop :=
  ∀ n, P2734627564980143924.a n = (A160943 (n + 1) : ℝ)

end A160943

/-! ## A160943.P4395061585397315662

`A160939(n+1)+A160938(n+1)/(n+1)`
-/

namespace A160943.P4395061585397315662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160939 (n + 1) : ℚ) + (A160938 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A160943.P4395061585397315662

namespace A160943

/-- `A160939(n+1)+A160938(n+1)/(n+1)` -/
def P4395061585397315662.Spec : Prop :=
  ∀ n, P4395061585397315662.a n = (A160943 (n + 1) : ℚ)

end A160943

/-! ## A160943.P15969194137288695750

`A160931(n+1)+A057147(n)/A028310(n)`
-/

namespace A160943.P15969194137288695750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160931 (n + 1) : ℚ) + (A057147 n : ℚ) / (A028310 n : ℚ)

end

end A160943.P15969194137288695750

namespace A160943

/-- `A160931(n+1)+A057147(n)/A028310(n)` -/
def P15969194137288695750.Spec : Prop :=
  ∀ n, P15969194137288695750.a n = (A160943 (n + 1) : ℚ)

end A160943

/-! ## A160943.P11346654532059127764

`A160939(n+1)+A007953(n+2)`
-/

namespace A160943.P11346654532059127764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) + A007953 (n + 2)

end

end A160943.P11346654532059127764

namespace A160943

/-- `A160939(n+1)+A007953(n+2)` -/
def P11346654532059127764.Spec : Prop :=
  ∀ n, P11346654532059127764.a n = A160943 (n + 1)

end A160943

/-! ## A160943.P1898559883988999121

`A160939(n+1)+sqrt(A118881(n+2))`
-/

namespace A160943.P1898559883988999121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160939 (n + 1) : ℝ) + Real.sqrt (A118881 (n + 2) : ℝ)

end

end A160943.P1898559883988999121

namespace A160943

/-- `A160939(n+1)+sqrt(A118881(n+2))` -/
def P1898559883988999121.Spec : Prop :=
  ∀ n, P1898559883988999121.a n = (A160943 (n + 1) : ℝ)

end A160943

/-! ## A160943.P2326977777868581190

`A160939(n+1)+A090431(n+2)+A007605(n+2)`
-/

namespace A160943.P2326977777868581190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) + (A090431 (n + 2) + A007605 (n + 2))

end

end A160943.P2326977777868581190

namespace A160943

/-- `A160939(n+1)+A090431(n+2)+A007605(n+2)` -/
def P2326977777868581190.Spec : Prop :=
  ∀ n, P2326977777868581190.a n = A160943 (n + 1)

end A160943

/-!
# A160944: a(n)= n * digital sum(n-1) * digital sum(n+1).

The programs for A160944, the canonical program `A160944.P1125537009076295035` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160944 has offset 1).

The definition of A160944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160944.P1125537009076295035

`(n+1)*A007953(n)*A007953(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160944

/-- `(n+1)*A007953(n)*A007953(n+2)` -/
def P1125537009076295035.Spec : Prop :=
  ∀ n, P1125537009076295035.a n = A160944 (n + 1)

theorem P1125537009076295035.correct : P1125537009076295035.Spec := by
  intro n
  simp only [A160944, Nat.add_sub_cancel]

end A160944

/-! ## A160944.P11754340765448599374

`(n+1)*∑{digits}[n+2, #]*∑{digits}[n, #]`
-/

namespace A160944.P11754340765448599374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum)

end

end A160944.P11754340765448599374

namespace A160944

/-- `(n+1)*∑{digits}[n+2, #]*∑{digits}[n, #]` -/
def P11754340765448599374.Spec : Prop :=
  ∀ n, (P11754340765448599374.a n : ℤ) = A160944 (n + 1)

end A160944

/-! ## A160944.P17103235685603501600

`A007953(n)*A160938(n+1)`
-/

namespace A160944.P17103235685603501600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * A160938 (n + 1)

end

end A160944.P17103235685603501600

namespace A160944

/-- `A007953(n)*A160938(n+1)` -/
def P17103235685603501600.Spec : Prop :=
  ∀ n, P17103235685603501600.a n = A160944 (n + 1)

end A160944

/-! ## A160944.P17254320206705978058

`sqrt(A118881(n))*A160938(n+1)`
-/

namespace A160944.P17254320206705978058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ) * (A160938 (n + 1) : ℝ)

end

end A160944.P17254320206705978058

namespace A160944

/-- `sqrt(A118881(n))*A160938(n+1)` -/
def P17254320206705978058.Spec : Prop :=
  ∀ n, P17254320206705978058.a n = (A160944 (n + 1) : ℝ)

end A160944

/-! ## A160944.P11843799016965531464

`(n+1-A160949(n+1))*A160942(n+1)`
-/

namespace A160944.P11843799016965531464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A160949 (n + 1)) * A160942 (n + 1)

end

end A160944.P11843799016965531464

namespace A160944

/-- `(n+1-A160949(n+1))*A160942(n+1)` -/
def P11843799016965531464.Spec : Prop :=
  ∀ n, P11843799016965531464.a n = A160944 (n + 1)

end A160944

/-! ## A160944.P2626907438893411306

`A160938(n+1)/(n+1)*A160942(n+1)`
-/

namespace A160944.P2626907438893411306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160938 (n + 1) : ℚ) / (n + 1 : ℚ) * (A160942 (n + 1) : ℚ)

end

end A160944.P2626907438893411306

namespace A160944

/-- `A160938(n+1)/(n+1)*A160942(n+1)` -/
def P2626907438893411306.Spec : Prop :=
  ∀ n, P2626907438893411306.a n = (A160944 (n + 1) : ℚ)

end A160944

/-! ## A160944.P11726725114058554396

`A160938(n+1)/A028310(n)*A057147(n)`
-/

namespace A160944.P11726725114058554396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160938 (n + 1) : ℚ) / (A028310 n : ℚ) * (A057147 n : ℚ)

end

end A160944.P11726725114058554396

namespace A160944

/-- `A160938(n+1)/A028310(n)*A057147(n)` -/
def P11726725114058554396.Spec : Prop :=
  ∀ n, P11726725114058554396.a n = (A160944 (n + 1) : ℚ)

end A160944

/-! ## A160944.P2943037393356358463

`A007953(n+2)*A160942(n+1)`
-/

namespace A160944.P2943037393356358463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 2) * A160942 (n + 1)

end

end A160944.P2943037393356358463

namespace A160944

/-- `A007953(n+2)*A160942(n+1)` -/
def P2943037393356358463.Spec : Prop :=
  ∀ n, P2943037393356358463.a n = A160944 (n + 1)

end A160944

/-!
# A160945: Numbers k that are multiples of the reversal of k-1.

The programs for A160945, there is no canonical definition to state claims against.
-/

/-! ## A160945.P2259511320975562800

`A247201(n+1)+1`
-/

namespace A160945.P2259511320975562800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247201 (n + 1) + 1

end

end A160945.P2259511320975562800

/-! ## A160945.P7924423751301806263

`lt[(n+2)%A004086(round(sqrt((n+1)²+1))), 1]+2`
-/

namespace A160945.P7924423751301806263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A004086 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 2 + 1 : ℝ))).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A160945.P7924423751301806263

/-! ## A160945.P2040634249697667045

`A020725(A247201(n+1))`
-/

namespace A160945.P2040634249697667045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A247201 (n + 1)).toNat

end

end A160945.P2040634249697667045

/-!
# A160947: Numbers k that are multiples of the digital sum of k+1.

The programs for A160947, the canonical program `A160947.P17837696195469221260` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160947 has offset 1).

The definition of A160947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160947.P17837696195469221260

`A253205(n+2)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160947

/-- `A253205(n+2)-1` -/
def P17837696195469221260.Spec : Prop :=
  ∀ n, P17837696195469221260.a n = A160947 (n + 1)

theorem P17837696195469221260.correct : P17837696195469221260.Spec := by
  intro n
  simp only [A160947, Nat.add_sub_cancel]

end A160947

/-! ## A160947.P3683908308790521476

`∑[abs(Δ[A253205(n+1)])]`
-/

namespace A160947.P3683908308790521476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160947.P3683908308790521476

namespace A160947

/-- `∑[abs(Δ[A253205(n+1)])]` -/
def P3683908308790521476.Spec : Prop :=
  ∀ n, P3683908308790521476.a n = A160947 (n + 1)

end A160947

/-! ## A160947.P10266894668583021932

`∑[A000027(Δ[A253205(n+1)])]`
-/

namespace A160947.P10266894668583021932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160947.P10266894668583021932

namespace A160947

/-- `∑[A000027(Δ[A253205(n+1)])]` -/
def P10266894668583021932.Spec : Prop :=
  ∀ n, P10266894668583021932.a n = A160947 (n + 1)

end A160947

/-! ## A160947.P10234816104494740284

`∑[Δ[A253205(n+1)]%A198592(n+1)]`
-/

namespace A160947.P10234816104494740284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A198592 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160947.P10234816104494740284

namespace A160947

/-- `∑[Δ[A253205(n+1)]%A198592(n+1)]` -/
def P10234816104494740284.Spec : Prop :=
  ∀ n, P10234816104494740284.a n = A160947 (n + 1)

end A160947

/-! ## A160947.P8413208387802752424

`A004483(A253205(n+2))`
-/

namespace A160947.P8413208387802752424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A253205 (n + 2)).toNat

end

end A160947.P8413208387802752424

namespace A160947

/-- `A004483(A253205(n+2))` -/
def P8413208387802752424.Spec : Prop :=
  ∀ n, P8413208387802752424.a n = A160947 (n + 1)

end A160947

/-! ## A160947.P9157572604688056357

`eq[n%A007953(n+1), A000007(n)]`
-/

namespace A160947.P9157572604688056357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007953 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160947.P9157572604688056357

namespace A160947

/-- `eq[n%A007953(n+1), A000007(n)]` -/
def P9157572604688056357.Spec : Prop :=
  ∀ n, (P9157572604688056357.a n : ℤ) = A160947 (n + 1)

end A160947

/-! ## A160947.P12786231940509462604

`A023444(A253205(n+2)+1)`
-/

namespace A160947.P12786231940509462604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A253205 (n + 2) + 1).toNat

end

end A160947.P12786231940509462604

namespace A160947

/-- `A023444(A253205(n+2)+1)` -/
def P12786231940509462604.Spec : Prop :=
  ∀ n, P12786231940509462604.a n = A160947 (n + 1)

end A160947

/-!
# A160948: Numbers n that are multiples of the digital sum of n-1.

The programs for A160948, there is no canonical definition to state claims against.
-/

/-! ## A160948.P16770464391271328922

`A144980(n+1)+1`
-/

namespace A160948.P16770464391271328922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1) + 1

end

end A160948.P16770464391271328922

/-! ## A160948.P16268023403282905237

`record[2*(n+1)-lcm(n+1, A007953(n))]`
-/

namespace A160948.P16268023403282905237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (Int.lcm (n + 1 : ℤ) (A007953 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160948.P16268023403282905237

/-! ## A160948.P11024010992313566392

`record[gcd(n+2, (n+2)%A007953(n+1))]`
-/

namespace A160948.P11024010992313566392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (Int.tmod (n + 2 : ℤ) (A007953 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160948.P11024010992313566392

/-! ## A160948.P12474321299396835057

`A020725(A144980(n+1))`
-/

namespace A160948.P12474321299396835057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A144980 (n + 1)).toNat

end

end A160948.P12474321299396835057

/-! ## A160948.P16799338675555952546

`eq[gcd(n+1, A007953(n)), A007953(n)]+1`
-/

namespace A160948.P16799338675555952546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007953 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160948.P16799338675555952546

/-!
# A160949: a(n) = n - digital sum(n+1).

The programs for A160949, the canonical program `A160949.P6883797465281388832` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160949 has offset 1).

The definition of A160949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160949.P6883797465281388832

`n+1-A007953(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160949

/-- `n+1-A007953(n+2)` -/
def P6883797465281388832.Spec : Prop :=
  ∀ n, P6883797465281388832.a n = A160949 (n + 1)

theorem P6883797465281388832.correct : P6883797465281388832.Spec := by
  intro n
  simp only [A160949, Nat.add_sub_cancel]

end A160949

/-! ## A160949.P8238493326878179217

`1-∑{digits}[n+2, #]+n`
-/

namespace A160949.P8238493326878179217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)

end

end A160949.P8238493326878179217

namespace A160949

/-- `1-∑{digits}[n+2, #]+n` -/
def P8238493326878179217.Spec : Prop :=
  ∀ n, P8238493326878179217.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P10808452731111484274

`1-log(∏{digits}[n+2, exp(#)])+n`
-/

namespace A160949.P10808452731111484274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod + (n : ℝ)

end

end A160949.P10808452731111484274

namespace A160949

/-- `1-log(∏{digits}[n+2, exp(#)])+n` -/
def P10808452731111484274.Spec : Prop :=
  ∀ n, P10808452731111484274.a n = (A160949 (n + 1) : ℝ)

end A160949

/-! ## A160949.P474156920306056694

`xor(-1, ∑{digits}[n+2, #])+n+2`
-/

namespace A160949.P474156920306056694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n + 2 : ℤ)

end

end A160949.P474156920306056694

namespace A160949

/-- `xor(-1, ∑{digits}[n+2, #])+n+2` -/
def P474156920306056694.Spec : Prop :=
  ∀ n, P474156920306056694.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P17723483327563539727

`n+1-Δ[A037123(n+1)]`
-/

namespace A160949.P17723483327563539727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A160949.P17723483327563539727

namespace A160949

/-- `n+1-Δ[A037123(n+1)]` -/
def P17723483327563539727.Spec : Prop :=
  ∀ n, P17723483327563539727.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P7166792185082868776

`2*(n+1)-A160931(n+1)`
-/

namespace A160949.P7166792185082868776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A160931 (n + 1)

end

end A160949.P7166792185082868776

namespace A160949

/-- `2*(n+1)-A160931(n+1)` -/
def P7166792185082868776.Spec : Prop :=
  ∀ n, P7166792185082868776.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P16097531749259380924

`n+1-A160938(n+1)/(n+1)`
-/

namespace A160949.P16097531749259380924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A160938 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A160949.P16097531749259380924

namespace A160949

/-- `n+1-A160938(n+1)/(n+1)` -/
def P16097531749259380924.Spec : Prop :=
  ∀ n, P16097531749259380924.a n = (A160949 (n + 1) : ℚ)

end A160949

/-! ## A160949.P14571415552790245391

`Δ[A000217(n)-A037123(n+1)]`
-/

namespace A160949.P14571415552790245391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A037123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160949.P14571415552790245391

namespace A160949

/-- `Δ[A000217(n)-A037123(n+1)]` -/
def P14571415552790245391.Spec : Prop :=
  ∀ n, P14571415552790245391.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P11162727033429519501

`n+1-sqrt(A118881(n+2))`
-/

namespace A160949.P11162727033429519501
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (A118881 (n + 2) : ℝ)

end

end A160949.P11162727033429519501

namespace A160949

/-- `n+1-sqrt(A118881(n+2))` -/
def P11162727033429519501.Spec : Prop :=
  ∀ n, P11162727033429519501.a n = (A160949 (n + 1) : ℝ)

end A160949

/-! ## A160949.P10452528439843847198

`2*n-(A062028(n+2)-3)`
-/

namespace A160949.P10452528439843847198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A062028 (n + 2) - 3)

end

end A160949.P10452528439843847198

namespace A160949

/-- `2*n-(A062028(n+2)-3)` -/
def P10452528439843847198.Spec : Prop :=
  ∀ n, P10452528439843847198.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P1953501783849047439

`n+1-A057147(n+2)/(n+2)`
-/

namespace A160949.P1953501783849047439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A057147 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A160949.P1953501783849047439

namespace A160949

/-- `n+1-A057147(n+2)/(n+2)` -/
def P1953501783849047439.Spec : Prop :=
  ∀ n, P1953501783849047439.a n = (A160949 (n + 1) : ℚ)

end A160949

/-! ## A160949.P14558991075251003258

`n-A033619(A007953(n+2))`
-/

namespace A160949.P14558991075251003258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033619 (A007953 (n + 2)).toNat

end

end A160949.P14558991075251003258

namespace A160949

/-- `n-A033619(A007953(n+2))` -/
def P14558991075251003258.Spec : Prop :=
  ∀ n, P14558991075251003258.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P16831214135818487105

`A066568(n+2)-1`
-/

namespace A160949.P16831214135818487105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (n + 2) - 1

end

end A160949.P16831214135818487105

namespace A160949

/-- `A066568(n+2)-1` -/
def P16831214135818487105.Spec : Prop :=
  ∀ n, P16831214135818487105.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P7667029911320528612

`A160941(n+3)-2`
-/

namespace A160949.P7667029911320528612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 3) - 2

end

end A160949.P7667029911320528612

namespace A160949

/-- `A160941(n+3)-2` -/
def P7667029911320528612.Spec : Prop :=
  ∀ n, P7667029911320528612.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P5015515889464607139

`n+1-A169805(n+2)/2`
-/

namespace A160949.P5015515889464607139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A169805 (n + 2) : ℚ) / 2

end

end A160949.P5015515889464607139

namespace A160949

/-- `n+1-A169805(n+2)/2` -/
def P5015515889464607139.Spec : Prop :=
  ∀ n, P5015515889464607139.a n = (A160949 (n + 1) : ℚ)

end A160949

/-! ## A160949.P6184171480098535951

`2*(n+2)-A160939(n+3)`
-/

namespace A160949.P6184171480098535951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A160939 (n + 3)

end

end A160949.P6184171480098535951

namespace A160949

/-- `2*(n+2)-A160939(n+3)` -/
def P6184171480098535951.Spec : Prop :=
  ∀ n, P6184171480098535951.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P931824579629620015

`n+1-A160942(n+3)/(n+3)`
-/

namespace A160949.P931824579629620015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A160942 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A160949.P931824579629620015

namespace A160949

/-- `n+1-A160942(n+3)/(n+3)` -/
def P931824579629620015.Spec : Prop :=
  ∀ n, P931824579629620015.a n = (A160949 (n + 1) : ℚ)

end A160949

/-! ## A160949.P10950465429545264906

`A171181(2*n+5)-1`
-/

namespace A160949.P10950465429545264906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (2 * n + 5) - 1

end

end A160949.P10950465429545264906

namespace A160949

/-- `A171181(2*n+5)-1` -/
def P10950465429545264906.Spec : Prop :=
  ∀ n, P10950465429545264906.a n = A160949 (n + 1)

end A160949

/-! ## A160949.P14743638105057444868

`n+1-A376769(A376772(n+2))`
-/

namespace A160949.P14743638105057444868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A376769 (A376772 (n + 2)).toNat

end

end A160949.P14743638105057444868

namespace A160949

/-- `n+1-A376769(A376772(n+2))` -/
def P14743638105057444868.Spec : Prop :=
  ∀ n, P14743638105057444868.a n = A160949 (n + 1)

end A160949

/-!
# A160950: Primes p such that 2p + 105 is prime.

The programs for A160950, the canonical program `A160950.P820166746106121254` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160950 has offset 1).

The definition of A160950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160950.P14154183404877822454

`p?[A005097(n+1)-52]`
-/

namespace A160950.P14154183404877822454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 52

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160950.P14154183404877822454

namespace A160950

/-- `p?[A005097(n+1)-52]` -/
def P14154183404877822454.Spec : Prop :=
  ∀ n, P14154183404877822454.a n = A160950 (n + 1)

end A160950

/-! ## A160950.P820166746106121254

`p?[A006254(n+1)-53]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160950

/-- `p?[A006254(n+1)-53]` -/
def P820166746106121254.Spec : Prop :=
  ∀ n, P820166746106121254.a n = A160950 (n + 1)

theorem P820166746106121254.correct : P820166746106121254.Spec := by
  intro n
  simp only [A160950, Nat.add_sub_cancel]

end A160950

/-! ## A160950.P8242563526358908089

`p?[floor(A000040(n+2)/2)-52]`
-/

namespace A160950.P8242563526358908089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / 2⌋ - 52

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160950.P8242563526358908089

namespace A160950

/-- `p?[floor(A000040(n+2)/2)-52]` -/
def P8242563526358908089.Spec : Prop :=
  ∀ n, P8242563526358908089.a n = A160950 (n + 1)

end A160950

/-! ## A160950.P13605856299245320864

`p?[ceil(A000040(n+1)/2)-53]`
-/

namespace A160950.P13605856299245320864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 2⌉ - 53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160950.P13605856299245320864

namespace A160950

/-- `p?[ceil(A000040(n+1)/2)-53]` -/
def P13605856299245320864.Spec : Prop :=
  ∀ n, P13605856299245320864.a n = A160950 (n + 1)

end A160950

/-! ## A160950.P17800448908481900294

`p?[A006530(2*n+1)-(n+53)]`
-/

namespace A160950.P17800448908481900294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) - (n + 53 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160950.P17800448908481900294

namespace A160950

/-- `p?[A006530(2*n+1)-(n+53)]` -/
def P17800448908481900294.Spec : Prop :=
  ∀ n, P17800448908481900294.a n = A160950 (n + 1)

end A160950

/-! ## A160950.P3402150728843844772

`p?[A014963(2*n+1)-(n+53)]`
-/

namespace A160950.P3402150728843844772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1) - (n + 53 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160950.P3402150728843844772

namespace A160950

/-- `p?[A014963(2*n+1)-(n+53)]` -/
def P3402150728843844772.Spec : Prop :=
  ∀ n, P3402150728843844772.a n = A160950 (n + 1)

end A160950

/-! ## A160950.P11153066042673391645

`p?[A003602(A128059(n))-53]`
-/

namespace A160950.P11153066042673391645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A128059 n).toNat - 53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160950.P11153066042673391645

namespace A160950

/-- `p?[A003602(A128059(n))-53]` -/
def P11153066042673391645.Spec : Prop :=
  ∀ n, P11153066042673391645.a n = A160950 (n + 1)

end A160950

/-! ## A160950.P11838322481515440249

`p?[n-A157358(A212595(n))]`
-/

namespace A160950.P11838322481515440249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A157358 (A212595 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160950.P11838322481515440249

namespace A160950

/-- `p?[n-A157358(A212595(n))]` -/
def P11838322481515440249.Spec : Prop :=
  ∀ n, P11838322481515440249.a n = A160950 (n + 1)

end A160950

/-!
# A160951: Primes p such that 2p + 1155 is prime.

The programs for A160951, the canonical program `A160951.P2640926693166453273` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160951 has offset 1).

The definition of A160951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160951.P2640926693166453273

`p?[A105760(n+1)-574]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160951

/-- `p?[A105760(n+1)-574]` -/
def P2640926693166453273.Spec : Prop :=
  ∀ n, P2640926693166453273.a n = A160951 (n + 1)

theorem P2640926693166453273.correct : P2640926693166453273.Spec := by
  intro n
  simp only [A160951, Nat.add_sub_cancel]

end A160951

/-! ## A160951.P12177127030326859583

`∩[A000040(n+1), A105760(n+1)-574]`
-/

namespace A160951.P12177127030326859583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 574

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160951.P12177127030326859583

namespace A160951

/-- `∩[A000040(n+1), A105760(n+1)-574]` -/
def P12177127030326859583.Spec : Prop :=
  ∀ n, (P12177127030326859583.a n : ℤ) = A160951 (n + 1)

end A160951

/-! ## A160951.P4019857299976950636

`∩[A008864(n+1)-1, A105760(n+1)-574]`
-/

namespace A160951.P4019857299976950636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 574

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160951.P4019857299976950636

namespace A160951

/-- `∩[A008864(n+1)-1, A105760(n+1)-574]` -/
def P4019857299976950636.Spec : Prop :=
  ∀ n, (P4019857299976950636.a n : ℤ) = A160951 (n + 1)

end A160951

/-! ## A160951.P12934062039757086611

`∩[A040976(n+1)+2, A105760(n+1)-574]`
-/

namespace A160951.P12934062039757086611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 574

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160951.P12934062039757086611

namespace A160951

/-- `∩[A040976(n+1)+2, A105760(n+1)-574]` -/
def P12934062039757086611.Spec : Prop :=
  ∀ n, (P12934062039757086611.a n : ℤ) = A160951 (n + 1)

end A160951

/-! ## A160951.P7740503591231849480

`A000040(record[A162201(n+1)+6])`
-/

namespace A160951.P7740503591231849480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160951.P7740503591231849480

namespace A160951

/-- `A000040(record[A162201(n+1)+6])` -/
def P7740503591231849480.Spec : Prop :=
  ∀ n, P7740503591231849480.a n = A160951 (n + 1)

end A160951

/-!
# A160953: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 10.

The programs for A160953, the canonical program `A160953.P8938375607108306963` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160953 has offset 1).

The definition of A160953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160953.P8938375607108306963

`A069094(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A160953

/-- `A069094(n+1)/A000010(n+1)` -/
def P8938375607108306963.Spec : Prop :=
  ∀ n, P8938375607108306963.a n = (A160953 (n + 1) : ℚ)

end A160953

/-! ## A160953.P10679430746271726903

`A069094(n+1)/Δ[A002088(n)]`
-/

namespace A160953.P10679430746271726903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A160953.P10679430746271726903

namespace A160953

/-- `A069094(n+1)/Δ[A002088(n)]` -/
def P10679430746271726903.Spec : Prop :=
  ∀ n, P10679430746271726903.a n = (A160953 (n + 1) : ℚ)

end A160953

/-! ## A160953.P11679054424029946456

`A069094(n+1)/Δ[A005728(n)]`
-/

namespace A160953.P11679054424029946456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A160953.P11679054424029946456

namespace A160953

/-- `A069094(n+1)/Δ[A005728(n)]` -/
def P11679054424029946456.Spec : Prop :=
  ∀ n, P11679054424029946456.a n = (A160953 (n + 1) : ℚ)

end A160953

/-! ## A160953.P11333217661607445680

`A160889(n+1)*A381713(n+1)`
-/

namespace A160953.P11333217661607445680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160889 (n + 1) * A381713 (n + 1)

end

end A160953.P11333217661607445680

namespace A160953

/-- `A160889(n+1)*A381713(n+1)` -/
def P11333217661607445680.Spec : Prop :=
  ∀ n, P11333217661607445680.a n = A160953 (n + 1)

end A160953

/-! ## A160953.P8975048959167531167

`∑{d}[n+1, A008683(#)*A344305((n+1)/#)]`
-/

namespace A160953.P8975048959167531167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160953.P8975048959167531167

namespace A160953

/-- `∑{d}[n+1, A008683(#)*A344305((n+1)/#)]` -/
def P8975048959167531167.Spec : Prop :=
  ∀ n, P8975048959167531167.a n = A160953 (n + 1)

end A160953

/-! ## A160953.P4174319423321691386

`A069094(n+1)/A349137(A016825(n)/2)`
-/

namespace A160953.P4174319423321691386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A349137 (SequenceMachineLib.roundAway ((A016825 n : ℚ) / 2)).toNat : ℚ)

end

end A160953.P4174319423321691386

namespace A160953

/-- `A069094(n+1)/A349137(A016825(n)/2)` -/
def P4174319423321691386.Spec : Prop :=
  ∀ n, P4174319423321691386.a n = (A160953 (n + 1) : ℚ)

end A160953

/-! ## A160953.P3150351070812051355

`A069094(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A160953.P3150351070812051355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A160953.P3150351070812051355

namespace A160953

/-- `A069094(n+1)/(A002088(n+1)-A002088(n))` -/
def P3150351070812051355.Spec : Prop :=
  ∀ n, P3150351070812051355.a n = (A160953 (n + 1) : ℚ)

end A160953

/-! ## A160953.P7269033465672300990

`A069094(n+1)/A069092(n+1)*A160897(n+1)`
-/

namespace A160953.P7269033465672300990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A069092 (n + 1) : ℚ) * (A160897 (n + 1) : ℚ)

end

end A160953.P7269033465672300990

namespace A160953

/-- `A069094(n+1)/A069092(n+1)*A160897(n+1)` -/
def P7269033465672300990.Spec : Prop :=
  ∀ n, P7269033465672300990.a n = (A160953 (n + 1) : ℚ)

end A160953

/-! ## A160953.P13673987687477356813

`A069094(n+1)/A067541(A005408(n))`
-/

namespace A160953.P13673987687477356813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A067541 (A005408 n).toNat : ℚ)

end

end A160953.P13673987687477356813

namespace A160953

/-- `A069094(n+1)/A067541(A005408(n))` -/
def P13673987687477356813.Spec : Prop :=
  ∀ n, P13673987687477356813.a n = (A160953 (n + 1) : ℚ)

end A160953

/-! ## A160953.P139157506471524421

`A069094(n+1)/A349137(A016825(n))`
-/

namespace A160953.P139157506471524421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A349137 (A016825 n).toNat : ℚ)

end

end A160953.P139157506471524421

namespace A160953

/-- `A069094(n+1)/A349137(A016825(n))` -/
def P139157506471524421.Spec : Prop :=
  ∀ n, P139157506471524421.a n = (A160953 (n + 1) : ℚ)

end A160953

/-!
# A160954: a(n+1) is the smallest prime formed by appending a single digit to a(n); a(1)=18.

The programs for A160954, there is no canonical definition to state claims against.
-/

/-! ## A160954.P15824594540279299686

`A160955(n+1)-A014378(A160277(n+1))`
-/

namespace A160954.P15824594540279299686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160955 (n + 1) - A014378 (A160277 (n + 1)).toNat

end

end A160954.P15824594540279299686

/-!
# A160955: a(n+1) is the largest prime formed by appending a single digit to a(n); a(1)=18.

The programs for A160955, there is no canonical definition to state claims against.
-/

/-! ## A160955.P2390944006462589861

`or(A057514(A002275(n)), A160954(n+1))`
-/

namespace A160955.P2390944006462589861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057514 (A002275 n).toNat) (A160954 (n + 1))

end

end A160955.P2390944006462589861

/-!
# A160956: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 9.

The programs for A160956, the canonical program `A160956.P1802841215077054632` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160956 has offset 1).

The definition of A160956 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160908, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160956.P1802841215077054632

`511*A160908(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160956

/-- `511*A160908(n+1)` -/
def P1802841215077054632.Spec : Prop :=
  ∀ n, P1802841215077054632.a n = A160956 (n + 1)

theorem P1802841215077054632.correct : P1802841215077054632.Spec := by
  intro n
  simp only [A160956, Nat.add_sub_cancel]

end A160956

/-!
# A160957: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 11.

The programs for A160957, the canonical program `A160957.P14327442583971557876` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160957 has offset 1).

The definition of A160957 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160957.P14327442583971557876

`A069095(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A160957

/-- `A069095(n+1)/A000010(n+1)` -/
def P14327442583971557876.Spec : Prop :=
  ∀ n, P14327442583971557876.a n = (A160957 (n + 1) : ℚ)

end A160957

/-! ## A160957.P10598380313790706178

`A069095(n+1)/Δ[A002088(n)]`
-/

namespace A160957.P10598380313790706178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A160957.P10598380313790706178

namespace A160957

/-- `A069095(n+1)/Δ[A002088(n)]` -/
def P10598380313790706178.Spec : Prop :=
  ∀ n, P10598380313790706178.a n = (A160957 (n + 1) : ℚ)

end A160957

/-! ## A160957.P16133715775530767364

`A069095(n+1)/Δ[A005728(n)]`
-/

namespace A160957.P16133715775530767364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A160957.P16133715775530767364

namespace A160957

/-- `A069095(n+1)/Δ[A005728(n)]` -/
def P16133715775530767364.Spec : Prop :=
  ∀ n, P16133715775530767364.a n = (A160957 (n + 1) : ℚ)

end A160957

/-! ## A160957.P15027182463178110304

`A160893(n+1)*A351300(n+1)`
-/

namespace A160957.P15027182463178110304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160893 (n + 1) * A351300 (n + 1)

end

end A160957.P15027182463178110304

namespace A160957

/-- `A160893(n+1)*A351300(n+1)` -/
def P15027182463178110304.Spec : Prop :=
  ∀ n, P15027182463178110304.a n = A160957 (n + 1)

end A160957

/-! ## A160957.P13066791726881789810

`∑{d}[n+1, A008683(#)*A344306((n+1)/#)]`
-/

namespace A160957.P13066791726881789810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160957.P13066791726881789810

namespace A160957

/-- `∑{d}[n+1, A008683(#)*A344306((n+1)/#)]` -/
def P13066791726881789810.Spec : Prop :=
  ∀ n, P13066791726881789810.a n = A160957 (n + 1)

end A160957

/-! ## A160957.P16298667266945229292

`A069095(n+1)/A349137(A005408(n))`
-/

namespace A160957.P16298667266945229292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (A349137 (A005408 n).toNat : ℚ)

end

end A160957.P16298667266945229292

namespace A160957

/-- `A069095(n+1)/A349137(A005408(n))` -/
def P16298667266945229292.Spec : Prop :=
  ∀ n, P16298667266945229292.a n = (A160957 (n + 1) : ℚ)

end A160957

/-! ## A160957.P6143157089019317088

`A069095(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A160957.P6143157089019317088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A160957.P6143157089019317088

namespace A160957

/-- `A069095(n+1)/(A002088(n+1)-A002088(n))` -/
def P6143157089019317088.Spec : Prop :=
  ∀ n, P6143157089019317088.a n = (A160957 (n + 1) : ℚ)

end A160957

/-!
# A160958: a(n) = (9^n - (-7)^n)/(9 - (-7)).

The programs for A160958, the canonical program `A160958.P4935477399781371557` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160958 has offset 1).

The definition of A160958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160958.P4935477399781371557

`2*a(n-1)+63*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160958

/-- `2*a(n-1)+63*a(n-2)` -/
def P4935477399781371557.Spec : Prop :=
  ∀ n, (P4935477399781371557.a n : ℤ) = A160958 (n + 1)

theorem P4935477399781371557.correct : P4935477399781371557.Spec := by
  intro n
  simp only [A160958, Nat.add_sub_cancel]

end A160958

/-! ## A160958.P17736436230085704928

`(9^(n+1)-(-7)^(n+1))/16`
-/

namespace A160958.P17736436230085704928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 1) : ℤ) - (-7) ^ (n + 1) : ℚ) / 16

end

end A160958.P17736436230085704928

namespace A160958

/-- `(9^(n+1)-(-7)^(n+1))/16` -/
def P17736436230085704928.Spec : Prop :=
  ∀ n, P17736436230085704928.a n = (A160958 (n + 1) : ℚ)

theorem P17736436230085704928.correct : P17736436230085704928.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A160958, Nat.add_sub_cancel, A160958.P17736436230085704928.a, A160958.P4935477399781371557.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A160958, Nat.add_sub_cancel, A160958.P17736436230085704928.a, A160958.P4935477399781371557.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A160958

/-! ## A160958.P10439255662487979040

`9^n-7*a(n-1)` with `a(0)=1`
-/

namespace A160958.P10439255662487979040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 ^ n : ℤ) - 7 * a (n - 1)

end

end A160958.P10439255662487979040

namespace A160958

/-- `9^n-7*a(n-1)` -/
def P10439255662487979040.Spec : Prop :=
  ∀ n, P10439255662487979040.a n = A160958 (n + 1)

end A160958

/-! ## A160958.P17598032515788056740

`9^n-lcm(7, a(n-1))` with `a(0)=1`
-/

namespace A160958.P17598032515788056740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 ^ n : ℤ) - (Int.lcm 7 (a (n - 1)) : ℤ)

end

end A160958.P17598032515788056740

namespace A160958

/-- `9^n-lcm(7, a(n-1))` -/
def P17598032515788056740.Spec : Prop :=
  ∀ n, P17598032515788056740.a n = A160958 (n + 1)

end A160958

/-! ## A160958.P18104041572140544548

`A001019(n)-(8*a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A160958.P18104041572140544548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001019 n - (8 * a (n - 1) - a (n - 1))

end

end A160958.P18104041572140544548

namespace A160958

/-- `A001019(n)-(8*a(n-1)-a(n-1))` -/
def P18104041572140544548.Spec : Prop :=
  ∀ n, P18104041572140544548.a n = A160958 (n + 1)

end A160958

/-! ## A160958.P8792836148407740104

`(a(n-1)+9^(n+1))%(a(n-1)+9^n)` with `a(0)=1`
-/

namespace A160958.P8792836148407740104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 9 ^ (n + 1)) % (a (n - 1) + 9 ^ n)

end

end A160958.P8792836148407740104

namespace A160958

/-- `(a(n-1)+9^(n+1))%(a(n-1)+9^n)` -/
def P8792836148407740104.Spec : Prop :=
  ∀ n, (P8792836148407740104.a n : ℤ) = A160958 (n + 1)

end A160958

/-!
# A160960: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 12.

The programs for A160960, there is no canonical definition to state claims against.
-/

/-! ## A160960.P9876965678902906129

`A161004(n+1)/A161004(A004070(C(2, n)))`
-/

namespace A160960.P9876965678902906129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161004 (n + 1) : ℚ) / (A161004 (A004070 (Nat.choose 2 n)).toNat : ℚ)

end

end A160960.P9876965678902906129

/-! ## A160960.P11194820080437090303

`A161004(n+1)/A161004(A007318(C(2, n+2)))`
-/

namespace A160960.P11194820080437090303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161004 (n + 1) : ℚ) / (A161004 (A007318 (Nat.choose 2 (n + 2))).toNat : ℚ)

end

end A160960.P11194820080437090303

/-! ## A160960.P6007702572526378764

`A263950(A166136(n+9)+5)`
-/

namespace A160960.P6007702572526378764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (A166136 (n + 9) + 5).toNat

end

end A160960.P6007702572526378764

/-! ## A160960.P12315901942770983391

`A263950(A000217(n+10)+11)`
-/

namespace A160960.P12315901942770983391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (A000217 (n + 10) + 11).toNat

end

end A160960.P12315901942770983391

/-! ## A160960.P6605930588329668150

`A263950(A000124(n+11)-(n+1))`
-/

namespace A160960.P6605930588329668150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (A000124 (n + 11) - (n + 1 : ℤ)).toNat

end

end A160960.P6605930588329668150

/-!
# A160963: Row sums of triangle defined in A120852.

The programs for A160963, there is no canonical definition to state claims against.
-/

/-! ## A160963.P1281260068023874435

`A342724(A014700(n))`
-/

namespace A160963.P1281260068023874435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342724 (A014700 n).toNat

end

end A160963.P1281260068023874435

/-! ## A160963.P4469691210616592770

`∑[A318229(n+3)-A197504(n+1)]`
-/

namespace A160963.P4469691210616592770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 3) - A197504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160963.P4469691210616592770

/-!
# A160965: Row sums of triangle defined in A120853.

The programs for A160965, there is no canonical definition to state claims against.
-/

/-! ## A160965.P14520068889131325225

`∑[n]+C(lt[n², lcm(10, n)], n)`
-/

namespace A160965.P14520068889131325225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (SequenceMachineLib.nth (fun j => f2 j < f3 j) n) n

end

end A160965.P14520068889131325225

/-! ## A160965.P5191614385379143396

`A002024(10^(n-1)-a(n-1)+1)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10`
-/

namespace A160965.P5191614385379143396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 10] fun n a =>
  A002024 (SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ) + 1)).toNat

end

end A160965.P5191614385379143396

/-!
# A160966: Starting from a(1)=2, a(n) = A028260(1+a(n-1)) if n is even, a(n) = A026424(a(n-1)) if n is odd.

The programs for A160966, there is no canonical definition to state claims against.
-/

/-! ## A160966.P12848558489095431909

`A245604(A279751(n+1))`
-/

namespace A160966.P12848558489095431909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245604 (A279751 (n + 1)).toNat

end

end A160966.P12848558489095431909

/-! ## A160966.P11974150319425367994

`A245604(A280148(n+1))`
-/

namespace A160966.P11974150319425367994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245604 (A280148 (n + 1)).toNat

end

end A160966.P11974150319425367994

/-! ## A160966.P6711521817809444664

`A245604(A000975(n+2))`
-/

namespace A160966.P6711521817809444664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245604 (A000975 (n + 2)).toNat

end

end A160966.P6711521817809444664

/-! ## A160966.P5417239637163204568

`A245604(∑[A283642(n)]+1)`
-/

namespace A160966.P5417239637163204568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245604 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A160966.P5417239637163204568

/-! ## A160966.P469230423255677861

`A245604(A084639(n+1)+1)`
-/

namespace A160966.P469230423255677861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245604 (A084639 (n + 1) + 1).toNat

end

end A160966.P469230423255677861

/-!
# A160967: Numbers of the form (4^k - 1)/3 or 2^k.

The programs for A160967, the canonical program `A160967.P16943757796773735707` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160967 has offset 0).

The definition of A160967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160967.P16943757796773735707

`record[A135318(n)*A166486(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160967

/-- `record[A135318(n)*A166486(n)]` -/
def P16943757796773735707.Spec : Prop :=
  ∀ n, P16943757796773735707.a n = A160967 n

theorem P16943757796773735707.correct : P16943757796773735707.Spec := by
  intro n
  simp only [A160967]

end A160967

/-! ## A160967.P13199668793397389979

`record[lcm(A046978(n), A135318(n))]`
-/

namespace A160967.P13199668793397389979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046978 n) (A135318 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160967.P13199668793397389979

namespace A160967

/-- `record[lcm(A046978(n), A135318(n))]` -/
def P13199668793397389979.Spec : Prop :=
  ∀ n, (P13199668793397389979.a n : ℤ) = A160967 n

end A160967

/-! ## A160967.P14993218100986039685

`A135318(A042968(n+1))-A000007(n)`
-/

namespace A160967.P14993218100986039685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A042968 (n + 1)).toNat - A000007 n

end

end A160967.P14993218100986039685

namespace A160967

/-- `A135318(A042968(n+1))-A000007(n)` -/
def P14993218100986039685.Spec : Prop :=
  ∀ n, P14993218100986039685.a n = A160967 n

end A160967

/-! ## A160967.P5204521303187623057

`and(A057428(n), A135318(A042968(n+1)))`
-/

namespace A160967.P5204521303187623057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A135318 (A042968 (n + 1)).toNat)

end

end A160967.P5204521303187623057

namespace A160967

/-- `and(A057428(n), A135318(A042968(n+1)))` -/
def P5204521303187623057.Spec : Prop :=
  ∀ n, P5204521303187623057.a n = A160967 n

end A160967

/-! ## A160967.P6870316737495734053

`floor(∑[4*a(n-3)]/3)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=6, a(4)=4`
-/

namespace A160967.P6870316737495734053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 6, 4] fun n f1 =>
  4 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A160967.P6870316737495734053

namespace A160967

/-- `floor(∑[4*a(n-3)]/3)` -/
def P6870316737495734053.Spec : Prop :=
  ∀ n, P6870316737495734053.a n = A160967 n

end A160967

/-! ## A160967.P6775162529836212935

`A135318(A042968(n+1))%A001588(n)`
-/

namespace A160967.P6775162529836212935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135318 (A042968 (n + 1)).toNat) (A001588 n)

end

end A160967.P6775162529836212935

namespace A160967

/-- `A135318(A042968(n+1))%A001588(n)` -/
def P6775162529836212935.Spec : Prop :=
  ∀ n, P6775162529836212935.a n = A160967 n

end A160967

/-!
# A160968: Row sums of triangle defined in A113820.

The programs for A160968, there is no canonical definition to state claims against.
-/

/-! ## A160968.P12082141839059916591

`A295500(n+1)+A332762(2*(n+2))!`
-/

namespace A160968.P12082141839059916591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295500 (n + 1) + (Nat.factorial (A332762 (2 * (n + 2))).toNat : ℤ)

end

end A160968.P12082141839059916591

/-!
# A160969: Row sums of triangle defined in A113821.

The programs for A160969, there is no canonical definition to state claims against.
-/

/-! ## A160969.P4499258185271640879

`A257144(A009903(n))+n`
-/

namespace A160969.P4499258185271640879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257144 (A009903 n).toNat + (n : ℤ)

end

end A160969.P4499258185271640879

/-! ## A160969.P11000830239381012802

`A133512(∑[∑[A079624(n+1)]])`
-/

namespace A160969.P11000830239381012802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079624 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133512 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160969.P11000830239381012802

/-!
# A160970: Indices of square numbers that are also 18-gonal numbers.

The programs for A160970, the canonical program `A160970.P1257266663402153816` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160970 has offset 1).

The definition of A160970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160970.P1257266663402153816

`34*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=44, a(4)=341`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160970

/-- `34*a(n-2)-a(n-4)` -/
def P1257266663402153816.Spec : Prop :=
  ∀ n, P1257266663402153816.a n = A160970 (n + 1)

theorem P1257266663402153816.correct : P1257266663402153816.Spec := by
  intro n
  simp only [A160970, Nat.add_sub_cancel]

end A160970

/-! ## A160970.P10531596161942336565

`A216162(comp[2*(n+1)]+1)*A266506(A047471(n+1))`
-/

namespace A160970.P10531596161942336565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * A266506 (A047471 (n + 1)).toNat

end

end A160970.P10531596161942336565

namespace A160970

/-- `A216162(comp[2*(n+1)]+1)*A266506(A047471(n+1))` -/
def P10531596161942336565.Spec : Prop :=
  ∀ n, P10531596161942336565.a n = A160970 (n + 1)

end A160970

/-! ## A160970.P6706248783254538208

`A216162(A004277(n))*A266505(A042948(n))`
-/

namespace A160970.P6706248783254538208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (A004277 n).toNat * A266505 (A042948 n).toNat

end

end A160970.P6706248783254538208

namespace A160970

/-- `A216162(A004277(n))*A266505(A042948(n))` -/
def P6706248783254538208.Spec : Prop :=
  ∀ n, P6706248783254538208.a n = A160970 (n + 1)

end A160970

/-! ## A160970.P16945549957665901288

`A054890(n+1)%A041053(A005843(n))`
-/

namespace A160970.P16945549957665901288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054890 (n + 1)) (A041053 (A005843 n).toNat)

end

end A160970.P16945549957665901288

namespace A160970

/-- `A054890(n+1)%A041053(A005843(n))` -/
def P16945549957665901288.Spec : Prop :=
  ∀ n, P16945549957665901288.a n = A160970 (n + 1)

end A160970

/-! ## A160970.P676769386710896571

`Δ[A124174(3*n+1)]%Δ[A124174(n+1)]`
-/

namespace A160970.P676769386710896571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124174 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A160970.P676769386710896571

namespace A160970

/-- `Δ[A124174(3*n+1)]%Δ[A124174(n+1)]` -/
def P676769386710896571.Spec : Prop :=
  ∀ n, P676769386710896571.a n = A160970 (n + 1)

end A160970

/-!
# A160972: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 13.

The programs for A160972, the canonical program `A160972.P10328099809638499813` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160972 has offset 1).

The definition of A160972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160972.P10328099809638499813

`A160895(n+1)*A351301(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160972

/-- `A160895(n+1)*A351301(n+1)` -/
def P10328099809638499813.Spec : Prop :=
  ∀ n, P10328099809638499813.a n = A160972 (n + 1)

theorem P10328099809638499813.correct : P10328099809638499813.Spec := by
  intro n
  simp only [A160972, Nat.add_sub_cancel]

end A160972

/-! ## A160972.P5629029793090787834

`A001615(n+1)*A194532(n+1)*A351301(n+1)`
-/

namespace A160972.P5629029793090787834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A194532 (n + 1) * A351301 (n + 1)

end

end A160972.P5629029793090787834

namespace A160972

/-- `A001615(n+1)*A194532(n+1)*A351301(n+1)` -/
def P5629029793090787834.Spec : Prop :=
  ∀ n, P5629029793090787834.a n = A160972 (n + 1)

end A160972

/-! ## A160972.P9404200805775176380

`A001014(A003557(n+1))*A160895(n+1)*A351269(n+1)`
-/

namespace A160972.P9404200805775176380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A003557 (n + 1)).toNat * A160895 (n + 1) * A351269 (n + 1)

end

end A160972.P9404200805775176380

namespace A160972

/-- `A001014(A003557(n+1))*A160895(n+1)*A351269(n+1)` -/
def P9404200805775176380.Spec : Prop :=
  ∀ n, P9404200805775176380.a n = A160972 (n + 1)

end A160972

/-! ## A160972.P5372567871210923766

`A263950(A166136(n+10)+6)`
-/

namespace A160972.P5372567871210923766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (A166136 (n + 10) + 6).toNat

end

end A160972.P5372567871210923766

namespace A160972

/-- `A263950(A166136(n+10)+6)` -/
def P5372567871210923766.Spec : Prop :=
  ∀ n, P5372567871210923766.a n = A160972 (n + 1)

end A160972

/-! ## A160972.P1298797523386759036

`A263950(eq[13, A131818(n+1)])`
-/

namespace A160972.P1298797523386759036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160972.P1298797523386759036

namespace A160972

/-- `A263950(eq[13, A131818(n+1)])` -/
def P1298797523386759036.Spec : Prop :=
  ∀ n, P1298797523386759036.a n = A160972 (n + 1)

end A160972

/-!
# A160973: a(n) is the number of positive integers of the form (n-3k)/(2k+1), 1 <= k <= (n-1)/5.

The programs for A160973, there is no canonical definition to state claims against.
-/

/-! ## A160973.P9199767782376045928

`A161116(n)-char[3*(n+1)]`
-/

namespace A160973.P9199767782376045928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161116 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A160973.P9199767782376045928

/-! ## A160973.P2898496824985983960

`A057356(∑{d}[2*n+3, 3%#])`
-/

namespace A160973.P2898496824985983960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (∑ d ∈ Nat.divisors (f1 n), 3 % d)

end

end A160973.P2898496824985983960

/-! ## A160973.P5246358879692508138

`floor(sin(1)*A321014(2*n+3))`
-/

namespace A160973.P5246358879692508138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (1 : ℝ) * (A321014 (2 * n + 3) : ℝ)⌋

end

end A160973.P5246358879692508138

/-! ## A160973.P10126671827364376326

`(A338648(2*n+3)-1)%(n+1)`
-/

namespace A160973.P10126671827364376326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338648 (2 * n + 3) - 1) (n + 1 : ℤ)

end

end A160973.P10126671827364376326

/-! ## A160973.P14648725297932449160

`A032741(2*n+3)-(∑{p}[n, val(#, 3)]+1)`
-/

namespace A160973.P14648725297932449160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n + 3) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3 + 1 : ℕ) : ℤ)

end

end A160973.P14648725297932449160

/-! ## A160973.P10175117562743487350

`A000005(2*n+3)-(∑{p}[n, val(#, 3)]+2)`
-/

namespace A160973.P10175117562743487350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3 + 2 : ℕ) : ℤ)

end

end A160973.P10175117562743487350

/-! ## A160973.P3545492770767980378

`∑[dr(3*n)%4]%A049820(2*n+3)`
-/

namespace A160973.P3545492770767980378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A049820 (2 * n + 3))

end

end A160973.P3545492770767980378

/-! ## A160973.P14032833693618264438

`∑{d}[2*n+3, 1-C(2, #)]-log2(A100063(n))`
-/

namespace A160973.P14032833693618264438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (1 - (Nat.choose 2 d : ℤ)) : ℤ) : ℝ) - Real.logb 2 (A100063 n : ℝ)

end

end A160973.P14032833693618264438

/-! ## A160973.P579247808609455139

`A095374(n+1)-A100063(n)`
-/

namespace A160973.P579247808609455139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (n + 1) - A100063 n

end

end A160973.P579247808609455139

/-! ## A160973.P14122875480379307522

`A095374(n+1)-A107751(n+2)`
-/

namespace A160973.P14122875480379307522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (n + 1) - A107751 (n + 2)

end

end A160973.P14122875480379307522

/-!
# A160974: Number of partitions of n where every part appears at least 4 times.

The programs for A160974, there is no canonical definition to state claims against.
-/

/-! ## A160974.P11824787149571657306

`A100405(n)-A244516(A028310(n))`
-/

namespace A160974.P11824787149571657306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A244516 (A028310 n).toNat

end

end A160974.P11824787149571657306

/-! ## A160974.P9672788719300805926

`A100405(n)-A244516(A008458(n)-5*n)`
-/

namespace A160974.P9672788719300805926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A244516 (A008458 n - (5 * n : ℤ)).toNat

end

end A160974.P9672788719300805926

/-! ## A160974.P16541495081693654255

`A100405(n)-A244516(and(1, A008458(n))+n)`
-/

namespace A160974.P16541495081693654255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A244516 (Int.land 1 (A008458 n) + (n : ℤ)).toNat

end

end A160974.P16541495081693654255

/-! ## A160974.P4933316438786151394

`A100405(n)-A244516(A233583(n+1))`
-/

namespace A160974.P4933316438786151394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A244516 (A233583 (n + 1)).toNat

end

end A160974.P4933316438786151394

/-! ## A160974.P1656036974077064050

`or(A025455(A080508(n+1)), A161028(n))`
-/

namespace A160974.P1656036974077064050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025455 (A080508 (n + 1)).toNat) (A161028 n)

end

end A160974.P1656036974077064050

/-!
# A160977: Number of partitions of n where every part appears at least 7 times.

The programs for A160977, there is no canonical definition to state claims against.
-/

/-! ## A160977.P8774979272201468517

`Δ[A033106(n+5)]%A103735(n)`
-/

namespace A160977.P8774979272201468517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033106 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A103735 n)

end

end A160977.P8774979272201468517

/-!
# A160978: Number of partitions of n where every part appears at least 8 times.

The programs for A160978, there is no canonical definition to state claims against.
-/

/-! ## A160978.P11902143124244902778

`∑{d}[n+1, A161032(#)*A267202((n+1)/#)]`
-/

namespace A160978.P11902143124244902778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161032 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160978.P11902143124244902778

/-! ## A160978.P8359071309285279486

`∑{d}[n+1, A161083(#)*A267202((n+1)/#)]`
-/

namespace A160978.P8359071309285279486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161083 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160978.P8359071309285279486

/-! ## A160978.P5623596468944197804

`∑{d}[n+1, A161247(#)*A267202((n+1)/#)]`
-/

namespace A160978.P5623596468944197804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161247 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160978.P5623596468944197804

/-! ## A160978.P6302679519074332650

`∑{d}[n+1, A161299(#)*A267202((n+1)/#)]`
-/

namespace A160978.P6302679519074332650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161299 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160978.P6302679519074332650

/-! ## A160978.P8359475152500152414

`∑{d}[n+1, A161313(#)*A267202((n+1)/#)]`
-/

namespace A160978.P8359475152500152414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161313 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160978.P8359475152500152414

/-!
# A160979: Number of partitions of n where every part appears at least 9 times.

The programs for A160979, there is no canonical definition to state claims against.
-/

/-! ## A160979.P9091473264876696778

`∑{d}[n+1, A161033(#)*A267202((n+1)/#)]`
-/

namespace A160979.P9091473264876696778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161033 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160979.P9091473264876696778

/-! ## A160979.P1818394708126936774

`∑{d}[n+1, A161084(#)*A267202((n+1)/#)]`
-/

namespace A160979.P1818394708126936774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161084 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160979.P1818394708126936774

/-! ## A160979.P6255604478277919961

`∑{d}[n+1, A161248(#)*A267202((n+1)/#)]`
-/

namespace A160979.P6255604478277919961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161248 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160979.P6255604478277919961

/-! ## A160979.P689625285833343750

`∑{d}[n+1, A161300(#)*A267202((n+1)/#)]`
-/

namespace A160979.P689625285833343750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161300 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160979.P689625285833343750

/-! ## A160979.P16983455893007913861

`∑{d}[n+1, A161314(#)*A267202((n+1)/#)]`
-/

namespace A160979.P16983455893007913861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161314 d * A267202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160979.P16983455893007913861

/-!
# A160980: Number of partitions of n where every part appears at least 10 times.

The programs for A160980, there is no canonical definition to state claims against.
-/

/-! ## A160980.P14161252926966818806

`A185284(A161272(n+1))+A161034(n+1)`
-/

namespace A160980.P14161252926966818806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161272 (n + 1)).toNat + A161034 (n + 1)

end

end A160980.P14161252926966818806

/-! ## A160980.P5771609830259432974

`A185284(A161272(n+1))+A161085(n+1)`
-/

namespace A160980.P5771609830259432974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161272 (n + 1)).toNat + A161085 (n + 1)

end

end A160980.P5771609830259432974

/-! ## A160980.P1509914775353016811

`A185284(A161272(n+1))+A161249(n+1)`
-/

namespace A160980.P1509914775353016811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161272 (n + 1)).toNat + A161249 (n + 1)

end

end A160980.P1509914775353016811

/-! ## A160980.P206926429907041856

`A185284(A161272(n+1))+A161301(n+1)`
-/

namespace A160980.P206926429907041856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A161272 (n + 1)).toNat + A161301 (n + 1)

end

end A160980.P206926429907041856

/-! ## A160980.P1289498966089072968

`A007949(3^A161315(n+1))`
-/

namespace A160980.P1289498966089072968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161315 (n + 1) : ℤ))).toNat

end

end A160980.P1289498966089072968

/-!
# A160981: Number of partitions of n where every part appears at least 11 times.

The programs for A160981, there is no canonical definition to state claims against.
-/

/-! ## A160981.P2361501853395406742

`∑{d}[n+1, A006649(#-1)*A161035((n+1)/#)]`
-/

namespace A160981.P2361501853395406742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006649 (d - 1) * A161035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160981.P2361501853395406742

/-! ## A160981.P9222326612978528010

`∑{d}[n+1, A006649(#-1)*A161086((n+1)/#)]`
-/

namespace A160981.P9222326612978528010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006649 (d - 1) * A161086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160981.P9222326612978528010

/-! ## A160981.P1979886280454579565

`∑{d}[n+1, A006649(#-1)*A161250((n+1)/#)]`
-/

namespace A160981.P1979886280454579565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006649 (d - 1) * A161250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160981.P1979886280454579565

/-! ## A160981.P15386542240137218675

`∑{d}[n+1, A006649(#-1)*A161302((n+1)/#)]`
-/

namespace A160981.P15386542240137218675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006649 (d - 1) * A161302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160981.P15386542240137218675

/-! ## A160981.P15609961522427671714

`∑{d}[n+1, A006649(#-1)*A161316((n+1)/#)]`
-/

namespace A160981.P15609961522427671714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006649 (d - 1) * A161316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160981.P15609961522427671714

/-!
# A160982: Number of partitions of n where every part appears at least 12 times.

The programs for A160982, there is no canonical definition to state claims against.
-/

/-! ## A160982.P7640776117887667495

`A065039(A161036(n+1)%A320327(n))`
-/

namespace A160982.P7640776117887667495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (Int.tmod (A161036 (n + 1)) (A320327 n)).toNat

end

end A160982.P7640776117887667495

/-! ## A160982.P10369550852262809749

`A065039(A161087(n+1)%A320327(n))`
-/

namespace A160982.P10369550852262809749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (Int.tmod (A161087 (n + 1)) (A320327 n)).toNat

end

end A160982.P10369550852262809749

/-! ## A160982.P3428466443561010372

`A065039(A161251(n+1)%A320327(n))`
-/

namespace A160982.P3428466443561010372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (Int.tmod (A161251 (n + 1)) (A320327 n)).toNat

end

end A160982.P3428466443561010372

/-! ## A160982.P597349819377794328

`A065039(A161303(n+1)%A320327(n))`
-/

namespace A160982.P597349819377794328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (Int.tmod (A161303 (n + 1)) (A320327 n)).toNat

end

end A160982.P597349819377794328

/-! ## A160982.P15581267154765157612

`A065039(A161317(n+1)%A320327(n))`
-/

namespace A160982.P15581267154765157612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (Int.tmod (A161317 (n + 1)) (A320327 n)).toNat

end

end A160982.P15581267154765157612

/-!
# A160983: Number of partitions of n where every part appears at least 13 times.

The programs for A160983, there is no canonical definition to state claims against.
-/

/-! ## A160983.P7894291316742869471

`A161088(n+1)-A178798(A048887(n+1))`
-/

namespace A160983.P7894291316742869471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161088 (n + 1) - A178798 (A048887 (n + 1)).toNat

end

end A160983.P7894291316742869471

/-! ## A160983.P13808992593780731733

`A161252(n+1)-A178798(A048887(n+1))`
-/

namespace A160983.P13808992593780731733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161252 (n + 1) - A178798 (A048887 (n + 1)).toNat

end

end A160983.P13808992593780731733

/-! ## A160983.P7406240391306006120

`A161318(n+1)^A156286(A156260(2*n+3))`
-/

namespace A160983.P7406240391306006120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161318 (n + 1) : ℚ) ^ (A156286 (A156260 (2 * n + 3)).toNat : ℤ)

end

end A160983.P7406240391306006120

/-! ## A160983.P15296345719425104067

`A161037(A160755(n+2))`
-/

namespace A160983.P15296345719425104067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (A160755 (n + 2)).toNat

end

end A160983.P15296345719425104067

/-! ## A160983.P7851276339772648768

`A161037(n+1)%A000077(n)`
-/

namespace A160983.P7851276339772648768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161037 (n + 1)) (A000077 n)

end

end A160983.P7851276339772648768

/-!
# A160984: Number of partitions of n where every part appears at least 14 times.

The programs for A160984, there is no canonical definition to state claims against.
-/

/-! ## A160984.P4861608819202603448

`A161038(n+1)+A025465(A168323(n+1))`
-/

namespace A160984.P4861608819202603448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161038 (n + 1) + A025465 (A168323 (n + 1)).toNat

end

end A160984.P4861608819202603448

/-! ## A160984.P2803694314678611026

`A161089(n+1)+A025465(A168323(n+1))`
-/

namespace A160984.P2803694314678611026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (n + 1) + A025465 (A168323 (n + 1)).toNat

end

end A160984.P2803694314678611026

/-! ## A160984.P4036720808808147918

`A161253(n+1)+A025465(A168323(n+1))`
-/

namespace A160984.P4036720808808147918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161253 (n + 1) + A025465 (A168323 (n + 1)).toNat

end

end A160984.P4036720808808147918

/-! ## A160984.P6609841254997376204

`A161305(n+1)+A025465(A168323(n+1))`
-/

namespace A160984.P6609841254997376204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161305 (n + 1) + A025465 (A168323 (n + 1)).toNat

end

end A160984.P6609841254997376204

/-! ## A160984.P12640081195758086355

`A161319(n+1)+A025465(A168323(n+1))`
-/

namespace A160984.P12640081195758086355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161319 (n + 1) + A025465 (A168323 (n + 1)).toNat

end

end A160984.P12640081195758086355

/-! ## A160984.P9240527942214330749

`A161319(n+1)+A025439(n)^A086883(n+1)`
-/

namespace A160984.P9240527942214330749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161319 (n + 1) : ℚ) + (A025439 n : ℚ) ^ (A086883 (n + 1) : ℤ)

end

end A160984.P9240527942214330749

/-! ## A160984.P4678012643310407728

`A067082(A161089(n+1)%A352261(n+1))`
-/

namespace A160984.P4678012643310407728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067082 (Int.tmod (A161089 (n + 1)) (A352261 (n + 1))).toNat

end

end A160984.P4678012643310407728

/-!
# A160985: Number of partitions of n where every part appears at least 15 times.

The programs for A160985, there is no canonical definition to state claims against.
-/

/-! ## A160985.P979978205225638201

`A160983(A333183(n+1)+1-A175427(n+1))`
-/

namespace A160985.P979978205225638201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160983 (A333183 (n + 1) + (1 - A175427 (n + 1))).toNat

end

end A160985.P979978205225638201

/-! ## A160985.P4386272215060530155

`A161088(A333183(n+1)+1-A175427(n+1))`
-/

namespace A160985.P4386272215060530155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161088 (A333183 (n + 1) + (1 - A175427 (n + 1))).toNat

end

end A160985.P4386272215060530155

/-! ## A160985.P17857704602977866586

`A160983(A333183(n+2)-A175427(n+2))`
-/

namespace A160985.P17857704602977866586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160983 (A333183 (n + 2) - A175427 (n + 2)).toNat

end

end A160985.P17857704602977866586

/-! ## A160985.P14548821201437216737

`A161088(A333183(n+2)-A175427(n+2))`
-/

namespace A160985.P14548821201437216737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161088 (A333183 (n + 2) - A175427 (n + 2)).toNat

end

end A160985.P14548821201437216737

/-! ## A160985.P15915200299903746205

`∑{d}[n+1, A000682(#)*A297043((n+1)/#)]`
-/

namespace A160985.P15915200299903746205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000682 d * A297043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160985.P15915200299903746205

/-!
# A160986: Number of partitions of n where every part appears at least 16 times.

The programs for A160986, there is no canonical definition to state claims against.
-/

/-! ## A160986.P10771162908030328793

`A160990(lt[A125199(n+1), A008458(n)])`
-/

namespace A160986.P10771162908030328793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A160986.P10771162908030328793

/-! ## A160986.P18162010943333463132

`A351907(A154403(or(14, n+1)))`
-/

namespace A160986.P18162010943333463132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351907 (A154403 (Nat.lor 14 (n + 1))).toNat

end

end A160986.P18162010943333463132

/-! ## A160986.P5780390213601414782

`A136851(n+1)%A046042(n+1)`
-/

namespace A160986.P5780390213601414782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136851 (n + 1)) (A046042 (n + 1))

end

end A160986.P5780390213601414782

/-! ## A160986.P8347768535150310415

`A136851(n+1)%A003108(A065033(n))`
-/

namespace A160986.P8347768535150310415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136851 (n + 1)) (A003108 (A065033 n).toNat)

end

end A160986.P8347768535150310415

/-! ## A160986.P15278034723370365479

`A260335(n+1)%A046042(n+1)`
-/

namespace A160986.P15278034723370365479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260335 (n + 1)) (A046042 (n + 1))

end

end A160986.P15278034723370365479

/-!
# A160987: Number of partitions of n where every part appears at least 17 times.

The programs for A160987, there is no canonical definition to state claims against.
-/

/-! ## A160987.P932160830190697930

`∑{d}[n+1, A059841(A226029((#+50)²))]`
-/

namespace A160987.P932160830190697930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (A226029 ((d + 50) ^ 2)).toNat

end

end A160987.P932160830190697930

/-! ## A160987.P12250731572642057171

`A007310(n+1)%∑[A010964(n)%2]`
-/

namespace A160987.P12250731572642057171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010964 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007310 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160987.P12250731572642057171

/-! ## A160987.P13588739402863213585

`A160990(lt[A239932(n+3), 4*n+7])`
-/

namespace A160987.P13588739402863213585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239932 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160990 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A160987.P13588739402863213585

/-! ## A160987.P7070939236930124196

`A269262(n+1)%A097876(n)`
-/

namespace A160987.P7070939236930124196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269262 (n + 1)) (A097876 n)

end

end A160987.P7070939236930124196

/-! ## A160987.P3495771526696850082

`A054898(A330239(n+1))`
-/

namespace A160987.P3495771526696850082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 (A330239 (n + 1)).toNat

end

end A160987.P3495771526696850082

/-!
# A160988: Number of partitions of n where every part appears at least 18 times.

The programs for A160988, there is no canonical definition to state claims against.
-/

/-! ## A160988.P11199782874081383668

`A160990(lt[A161099(n+1), A267263(n)])`
-/

namespace A160988.P11199782874081383668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A160988.P11199782874081383668

/-! ## A160988.P3161020711509245625

`A160989(A132999(n+1)%A096672(n+4))`
-/

namespace A160988.P3161020711509245625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160989 (Int.tmod (A132999 (n + 1)) (A096672 (n + 4))).toNat

end

end A160988.P3161020711509245625

/-! ## A160988.P9682839401012636024

`A160989(A132999(n+1))%A129865(n+4)`
-/

namespace A160988.P9682839401012636024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160989 (A132999 (n + 1)).toNat) (A129865 (n + 4))

end

end A160988.P9682839401012636024

/-! ## A160988.P17995699071982317089

`∑{d}[n+1, A023974(#)*A038624((n+1)/#)]`
-/

namespace A160988.P17995699071982317089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023974 d * A038624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160988.P17995699071982317089

/-! ## A160988.P342910208646504382

`∑{d}[n+1, A023974(#)*A077762((n+1)/#)]`
-/

namespace A160988.P342910208646504382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023974 d * A077762 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160988.P342910208646504382

/-! ## A160988.P8755228834257451854

`∑{d}[n+1, A023974(#)*A247893((n+1)/#)]`
-/

namespace A160988.P8755228834257451854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023974 d * A247893 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160988.P8755228834257451854

/-!
# A160989: Number of partitions of n where every part appears at least 19 times.

The programs for A160989, there is no canonical definition to state claims against.
-/

/-! ## A160989.P17213227489556188426

`A160990(lt[A040474(n), A239932(n+1)])`
-/

namespace A160989.P17213227489556188426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A160989.P17213227489556188426

/-! ## A160989.P17489564656143436946

`A160990(lt[A160986(n+1), A124770(n)])`
-/

namespace A160989.P17489564656143436946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A160989.P17489564656143436946

/-! ## A160989.P16083016355119493872

`A160990(A132999(n+1))%A177763(n+1)`
-/

namespace A160989.P16083016355119493872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160990 (A132999 (n + 1)).toNat) (A177763 (n + 1))

end

end A160989.P16083016355119493872

/-! ## A160989.P3148510905631572358

`A129865(n+1)%A000194(A167661(n))`
-/

namespace A160989.P3148510905631572358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129865 (n + 1)) (A000194 (A167661 n).toNat)

end

end A160989.P3148510905631572358

/-! ## A160989.P1226572372673605291

`A160990(A028310(n)+A048766(n)%A177763(n+2))`
-/

namespace A160989.P1226572372673605291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160990 (A028310 n + Int.tmod (A048766 n) (A177763 (n + 2))).toNat

end

end A160989.P1226572372673605291

/-! ## A160989.P9525785607568211681

`A297045((n+2)^A160988(n+1))`
-/

namespace A160989.P9525785607568211681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297045 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A160988 (n + 1) : ℤ))).toNat

end

end A160989.P9525785607568211681

/-!
# A160990: Number of partitions of n where every part appears at least 20 times.

The programs for A160990, there is no canonical definition to state claims against.
-/

/-! ## A160990.P836939329513908439

`A278182(n-n%10)^A352037(n+1)`
-/

namespace A160990.P836939329513908439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278182 (n - n % 10) : ℚ) ^ (A352037 (n + 1) : ℤ)

end

end A160990.P836939329513908439

/-! ## A160990.P5427849495892260507

`A100405(ceil((sqrt(A050723(n+1)+1)-1)/2))`
-/

namespace A160990.P5427849495892260507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 ⌈(Real.sqrt (A050723 (n + 1) + 1 : ℝ) - 1) / 2⌉.toNat

end

end A160990.P5427849495892260507

/-! ## A160990.P1979419056716531074

`A105700(A059995(n))^A361713(A294882(n+1))`
-/

namespace A160990.P1979419056716531074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105700 (A059995 n).toNat : ℚ) ^ (A361713 (A294882 (n + 1)).toNat : ℤ)

end

end A160990.P1979419056716531074

/-! ## A160990.P5087700675349671109

`floor(n/20)^n²`
-/

namespace A160990.P5087700675349671109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 20⌋ ^ n ^ 2

end

end A160990.P5087700675349671109

/-! ## A160990.P11457169034630404980

`A151723(floor(n/20)^n)`
-/

namespace A160990.P11457169034630404980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (⌊(n : ℚ) / 20⌋ ^ n).toNat

end

end A160990.P11457169034630404980

/-!
# A160992: a(1) = 1. For n >=2, a(n) = the smallest integer > a(n-1) such that sum{k=1 to r} a(k) doesn't equal any value of sum{k=1 to q} a(n+1-k), for any positive integer r, and for any positive integers q <= n-1.

The programs for A160992, there is no canonical definition to state claims against.
-/

/-! ## A160992.P10525287174029113465

`comp[A160998(n+1)-1]+1`
-/

namespace A160992.P10525287174029113465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160998 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A160992.P10525287174029113465

/-! ## A160992.P5813541926623276396

`lt[char[A160998(n+1)], n/A000079(n)]`
-/

namespace A160992.P5813541926623276396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160998 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A160992.P5813541926623276396

/-! ## A160992.P11549227750942682092

`lt[char[A160998(n+1)]*A316422(n+1), n]`
-/

namespace A160992.P11549227750942682092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160998 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A316422 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A160992.P11549227750942682092

/-! ## A160992.P9017989587052778760

`lt[char[A160998(n+1)], n/A281344(n+1)]`
-/

namespace A160992.P9017989587052778760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160998 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A281344 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A160992.P9017989587052778760

/-! ## A160992.P613624572153444629

`comp[A160998(n+1)*A288710(A339366(n)+4)]`
-/

namespace A160992.P613624572153444629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160998 (n + 1) * A288710 (A339366 n + 4).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A160992.P613624572153444629

/-! ## A160992.P14479821480046976680

`lt[char[A160998(n+1)], n/A326490(n)]`
-/

namespace A160992.P14479821480046976680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160998 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A326490 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A160992.P14479821480046976680

/-! ## A160992.P12179512704639473355

`eq[char[A160998(n+1)], A151933(n)]`
-/

namespace A160992.P12179512704639473355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160998 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A160992.P12179512704639473355

/-!
# A160993: The number of ordered ways to achieve a score of n in American football.

The programs for A160993, the canonical program `A160993.P16027861989027470602` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160993 has offset 0).

The definition of A160993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 631 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160993.P16027861989027470602

`a(n-2)+a(n-3)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A160993

/-- `a(n-2)+a(n-3)+a(n-6)+a(n-7)` -/
def P16027861989027470602.Spec : Prop :=
  ∀ n, (P16027861989027470602.a n : ℤ) = A160993 n

theorem P16027861989027470602.correct : P16027861989027470602.Spec := by
  intro n
  simp only [A160993]

end A160993

/-! ## A160993.P13065429698407981787

`A110654(Δ[A017984(A076084(n+1))])`
-/

namespace A160993.P13065429698407981787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 (A076084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A160993.P13065429698407981787

namespace A160993

/-- `A110654(Δ[A017984(A076084(n+1))])` -/
def P13065429698407981787.Spec : Prop :=
  ∀ n, P13065429698407981787.a n = A160993 n

end A160993

/-! ## A160993.P7360057531920845640

`A004525(Δ[A017984(A032951(n+1))])`
-/

namespace A160993.P7360057531920845640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 (A032951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A160993.P7360057531920845640

namespace A160993

/-- `A004525(Δ[A017984(A032951(n+1))])` -/
def P7360057531920845640.Spec : Prop :=
  ∀ n, P7360057531920845640.a n = A160993 n

end A160993

/-! ## A160993.P16858290698388077408

`A143644(lt[A079714(n), A309564(n+1)])`
-/

namespace A160993.P16858290698388077408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143644 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A160993.P16858290698388077408

namespace A160993

/-- `A143644(lt[A079714(n), A309564(n+1)])` -/
def P16858290698388077408.Spec : Prop :=
  ∀ n, P16858290698388077408.a n = A160993 n

end A160993

/-! ## A160993.P10313564352806278012

`A373811(A307067(n))`
-/

namespace A160993.P10313564352806278012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A307067 n).toNat

end

end A160993.P10313564352806278012

namespace A160993

/-- `A373811(A307067(n))` -/
def P10313564352806278012.Spec : Prop :=
  ∀ n, P10313564352806278012.a n = A160993 n

end A160993

/-!
# A160994: a(n) is the least prime number p such that every sum of two or more divisors of p^n is composite.

The programs for A160994, there is no canonical definition to state claims against.
-/

/-! ## A160994.P7326497978526527874

`or(2, A317679(2^n))`
-/

namespace A160994.P7326497978526527874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A317679 (2 ^ n))

end

end A160994.P7326497978526527874

/-! ## A160994.P18170160951460789106

`p?[or(2, A137258(n+1))]`
-/

namespace A160994.P18170160951460789106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A137258 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160994.P18170160951460789106

/-!
# A160995: The smallest positive integer neither a divisor of n nor coprime to n.

The programs for A160995, there is no canonical definition to state claims against.
-/

/-! ## A160995.P6044404031249732486

`A073758(A020338(n+2))`
-/

namespace A160995.P6044404031249732486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073758 (A020338 (n + 2)).toNat

end

end A160995.P6044404031249732486

/-! ## A160995.P2965162743595634567

`A073758((n+2)*A107001(gcd(n, n+1)))`
-/

namespace A160995.P2965162743595634567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073758 ((n + 2 : ℤ) * A107001 (Nat.gcd n (n + 1))).toNat

end

end A160995.P2965162743595634567

/-! ## A160995.P11288277139354199825

`A073758((n+2)*p?[2*n+1])`
-/

namespace A160995.P11288277139354199825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073758 ((n + 2) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A160995.P11288277139354199825

/-! ## A160995.P18091156787906157429

`A073758(A033286(n+2))`
-/

namespace A160995.P18091156787906157429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073758 (A033286 (n + 2)).toNat

end

end A160995.P18091156787906157429

/-! ## A160995.P16814518857139311315

`A073758((n+2)*A000040(n+2))`
-/

namespace A160995.P16814518857139311315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073758 ((n + 2 : ℤ) * A000040 (n + 2)).toNat

end

end A160995.P16814518857139311315

/-!
# A160996: a(n) = the smallest positive integer with exactly the same number of divisors as in the first n positive integers combined.

The programs for A160996, there is no canonical definition to state claims against.
-/

/-! ## A160996.P13867314383182073892

`A005179(A006218(n+1))`
-/

namespace A160996.P13867314383182073892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A006218 (n + 1)).toNat

end

end A160996.P13867314383182073892

/-! ## A160996.P8798782751165413613

`A005179(∑[∏{e}[n+1, #+1]])`
-/

namespace A160996.P8798782751165413613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160996.P8798782751165413613

/-! ## A160996.P14202902321141371360

`A005179(∑[∑{d}[n+1, gcd(n, #)]])`
-/

namespace A160996.P14202902321141371360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160996.P14202902321141371360

/-! ## A160996.P13682123580467247566

`A005179(∑[∑{d}[n+1, n²%#]+1])`
-/

namespace A160996.P13682123580467247566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160996.P13682123580467247566

/-! ## A160996.P5971631845425052655

`A005179(A077597(n)+1)`
-/

namespace A160996.P5971631845425052655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A077597 n + 1).toNat

end

end A160996.P5971631845425052655

/-!
# A160997: Antidiagonal sums of the Wythoff array A035513.

The programs for A160997, there is no canonical definition to state claims against.
-/

/-! ## A160997.P9021189387499721543

`ceil(ϕ*(a(n-1)+n)+1+n)` with `a(0)=1`
-/

namespace A160997.P9021189387499721543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + (n : ℤ) : ℝ) + 1 + (n : ℝ)⌉

end

end A160997.P9021189387499721543

/-! ## A160997.P9489055480831654785

`floor(ϕ*(a(n-1)+n)+2+n)` with `a(0)=1`
-/

namespace A160997.P9489055480831654785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + (n : ℤ) : ℝ) + 2 + (n : ℝ)⌋

end

end A160997.P9489055480831654785

/-! ## A160997.P8391978281591497688

`∑[A282162(n)+round(ϕ*a(n-1))]` with `a(0)=1`
-/

namespace A160997.P8391978281591497688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A282162 n + SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160997.P8391978281591497688

/-! ## A160997.P17928000849071102769

`A001950(n+1)+floor(ϕ*a(n-1))` with `a(0)=1`
-/

namespace A160997.P17928000849071102769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001950 (n + 1) + ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A160997.P17928000849071102769

/-! ## A160997.P6556779690017674728

`A003622(n+1)+ceil(ϕ*a(n-1))` with `a(0)=1`
-/

namespace A160997.P6556779690017674728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003622 (n + 1) + ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉

end

end A160997.P6556779690017674728

/-!
# A160998: Positive integers missing from sequence A160992.

The programs for A160998, there is no canonical definition to state claims against.
-/

/-! ## A160998.P70348684709333497

`eq[char[A160992(n+1)], A151933(n)]`
-/

namespace A160998.P70348684709333497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160992 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A160998.P70348684709333497

/-! ## A160998.P6678591332970600866

`∑[A257081(A257393(3*n+5))]`
-/

namespace A160998.P6678591332970600866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257081 (A257393 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160998.P6678591332970600866

/-!
# A160999: Row sums of A027052.

The programs for A160999, there is no canonical definition to state claims against.
-/

/-! ## A160999.P10795208440573300277

`∑[A320314(A004280(n+1))]`
-/

namespace A160999.P10795208440573300277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320314 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160999.P10795208440573300277

/-! ## A160999.P4610733100188417397

`∑[A320314(or(1, A004273(n)))]`
-/

namespace A160999.P4610733100188417397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320314 (Int.lor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160999.P4610733100188417397

/-! ## A160999.P4414095004785358601

`A027067(n)+∑[A001590(n)]`
-/

namespace A160999.P4414095004785358601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027067 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160999.P4414095004785358601

/-! ## A160999.P2368186120744832233

`A027067(n)+A000073(n+1)`
-/

namespace A160999.P2368186120744832233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027067 n + A000073 (n + 1)

end

end A160999.P2368186120744832233

/-! ## A160999.P16430535431999940263

`A027076(n)-A024023(n)`
-/

namespace A160999.P16430535431999940263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027076 n - A024023 n

end

end A160999.P16430535431999940263

