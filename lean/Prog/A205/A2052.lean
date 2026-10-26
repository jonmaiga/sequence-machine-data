import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A205200: Number of (n+1)X3 0..2 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205200, there is no canonical definition to state claims against.
-/

/-! ## A205200.P17354767790026031433

`A205206(∑[n+1]+2)`
-/

namespace A205200.P17354767790026031433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205200.P17354767790026031433

/-! ## A205200.P9904739434480117341

`record[A010054(n)*A205206(n+2)]`
-/

namespace A205200.P9904739434480117341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205206 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205200.P9904739434480117341

/-! ## A205200.P1104376691054598462

`record[root(A205206(n+2), A074909(n))]`
-/

namespace A205200.P1104376691054598462
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205206 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205200.P1104376691054598462

/-! ## A205200.P90054783345172954

`record[A205206(Δ[A003453(n+5)])]`
-/

namespace A205200.P90054783345172954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205200.P90054783345172954

/-! ## A205200.P12185235958721710767

`A205206(A000096(n+1))*A303929(n)`
-/

namespace A205200.P12185235958721710767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A000096 (n + 1)).toNat * A303929 n

end

end A205200.P12185235958721710767

/-!
# A205201: Number of (n+1)X4 0..2 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205201, there is no canonical definition to state claims against.
-/

/-! ## A205201.P16621211014588872648

`A205206(∑[n+2]+4)`
-/

namespace A205201.P16621211014588872648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205201.P16621211014588872648

/-! ## A205201.P13249542458045884295

`lcm((-1)^n, A205206(A167614(n+1)))`
-/

namespace A205201.P13249542458045884295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A205206 (A167614 (n + 1)).toNat)

end

end A205201.P13249542458045884295

/-! ## A205201.P4292986759576554943

`A205206(A167614(n+1))+A025469(n)`
-/

namespace A205201.P4292986759576554943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A167614 (n + 1)).toNat + A025469 n

end

end A205201.P4292986759576554943

/-! ## A205201.P5006248447115354263

`A205206(A167614(n+1))+A185245(n)`
-/

namespace A205201.P5006248447115354263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A167614 (n + 1)).toNat + A185245 n

end

end A205201.P5006248447115354263

/-! ## A205201.P8479085143854146879

`or(A000038(n), A205206(A167614(n+1)))`
-/

namespace A205201.P8479085143854146879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A205206 (A167614 (n + 1)).toNat)

end

end A205201.P8479085143854146879

/-!
# A205202: Number of (n+1)X5 0..2 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205202, there is no canonical definition to state claims against.
-/

/-! ## A205202.P10805504351819505826

`A205206(A374004(n+1))`
-/

namespace A205202.P10805504351819505826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A374004 (n + 1)).toNat

end

end A205202.P10805504351819505826

/-! ## A205202.P13065631134757353831

`A205206(A141214(n)+7)`
-/

namespace A205202.P13065631134757353831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A141214 n + 7).toNat

end

end A205202.P13065631134757353831

/-! ## A205202.P16391503388464733337

`A205206(A052905(n)+9)`
-/

namespace A205202.P16391503388464733337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A052905 n + 9).toNat

end

end A205202.P16391503388464733337

/-! ## A205202.P12418946986298082464

`A205206(A055999(n)+10)`
-/

namespace A205202.P12418946986298082464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A055999 n + 10).toNat

end

end A205202.P12418946986298082464

/-! ## A205202.P6225606178328982508

`A205206(A167614(n+2)+1)`
-/

namespace A205202.P6225606178328982508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A167614 (n + 2) + 1).toNat

end

end A205202.P6225606178328982508

/-!
# A205203: Number of (n+1) X 6 0..2 arrays with the permanents of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A205203, there is no canonical definition to state claims against.
-/

/-! ## A205203.P12068585864705187997

`A205206(A374005(n+1))`
-/

namespace A205203.P12068585864705187997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A374005 (n + 1)).toNat

end

end A205203.P12068585864705187997

/-! ## A205203.P15955790075939273417

`A205206(eq[6, A131818(n+1)])`
-/

namespace A205203.P15955790075939273417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205203.P15955790075939273417

/-! ## A205203.P2327978528069613371

`A205206(Δ[A264443(n)])`
-/

namespace A205203.P2327978528069613371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (f1 (n + 1) - f1 n).toNat

end

end A205203.P2327978528069613371

/-! ## A205203.P7320640308482833175

`A205206(A046691(n+3))`
-/

namespace A205203.P7320640308482833175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A046691 (n + 3)).toNat

end

end A205203.P7320640308482833175

/-! ## A205203.P12330221145367136571

`A205206(A056115(n)+11)`
-/

namespace A205203.P12330221145367136571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A056115 n + 11).toNat

end

end A205203.P12330221145367136571

/-!
# A205204: Number of (n+1)X7 0..2 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205204, there is no canonical definition to state claims against.
-/

/-! ## A205204.P14181817914999034072

`A205206(A374007(n+1))`
-/

namespace A205204.P14181817914999034072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A374007 (n + 1)).toNat

end

end A205204.P14181817914999034072

/-! ## A205204.P2908109610699284404

`A205206(eq[7, A131818(n+1)])`
-/

namespace A205204.P2908109610699284404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205204.P2908109610699284404

/-! ## A205204.P9167576161664591492

`A205206(eq[5, A193592(n)])`
-/

namespace A205204.P9167576161664591492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205204.P9167576161664591492

/-! ## A205204.P2428842992097754215

`A205206(eq[8, A185782(n+1)])`
-/

namespace A205204.P2428842992097754215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205204.P2428842992097754215

/-! ## A205204.P17625906974468878887

`A205206(Δ[A264443(n+1)]-1)`
-/

namespace A205204.P17625906974468878887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (f1 (n + 1) - f1 n - 1).toNat

end

end A205204.P17625906974468878887

/-!
# A205205: Number of (n+1) X 8 0..2 arrays with the permanents of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A205205, there is no canonical definition to state claims against.
-/

/-! ## A205205.P18440385373991410330

`A205206(eq[8, A131818(n+1)])`
-/

namespace A205205.P18440385373991410330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205205.P18440385373991410330

/-! ## A205205.P1003919153899425165

`A205206(eq[6, A193592(n)])`
-/

namespace A205205.P1003919153899425165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205205.P1003919153899425165

/-! ## A205205.P17944109689827013850

`A205206(eq[10, A185782(n+1)])`
-/

namespace A205205.P17944109689827013850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205205.P17944109689827013850

/-!
# A205207: Number of (n+1)X(n+1) 0..2 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205207, there is no canonical definition to state claims against.
-/

/-! ## A205207.P3183297437754617737

`A205215((n+1)²+n²)`
-/

namespace A205207.P3183297437754617737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 ((n + 1) ^ 2 + n ^ 2)

end

end A205207.P3183297437754617737

/-!
# A205208: Number of (n+1) X 2 0..2 arrays with the determinants of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A205208, there is no canonical definition to state claims against.
-/

/-! ## A205208.P7504696178833368782

`A205215(∑[n]+1)`
-/

namespace A205208.P7504696178833368782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205208.P7504696178833368782

/-! ## A205208.P17252993341847618569

`record[gcd(A205215(n+1), A298187(n+1))]`
-/

namespace A205208.P17252993341847618569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205215 (n + 1)) (A298187 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205208.P17252993341847618569

/-! ## A205208.P15312365766068328540

`lcm(A033999(n), A205215(A000124(n)))`
-/

namespace A205208.P15312365766068328540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A205215 (A000124 n).toNat)

end

end A205208.P15312365766068328540

/-! ## A205208.P3722432930052180590

`A205215(A000124(n))%A205209(n+1)`
-/

namespace A205208.P3722432930052180590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205215 (A000124 n).toNat) (A205209 (n + 1))

end

end A205208.P3722432930052180590

/-! ## A205208.P10101837411757562657

`A206223(∑[n]+1)`
-/

namespace A205208.P10101837411757562657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206223 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205208.P10101837411757562657

/-!
# A205209: Number of (n+1)X3 0..2 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205209, there is no canonical definition to state claims against.
-/

/-! ## A205209.P11938542809421088746

`A205215(∑[n+1]+2)`
-/

namespace A205209.P11938542809421088746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205209.P11938542809421088746

/-! ## A205209.P6420351905421039764

`record[A205215(A024163(n+1)+2)]`
-/

namespace A205209.P6420351905421039764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A024163 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205209.P6420351905421039764

/-! ## A205209.P13121292505571385798

`A205215(A133263(n+1))+A025443(n)`
-/

namespace A205209.P13121292505571385798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A133263 (n + 1)).toNat + A025443 n

end

end A205209.P13121292505571385798

/-! ## A205209.P3726180437945776969

`record[A205215(Δ[A003453(n+5)])]`
-/

namespace A205209.P3726180437945776969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205209.P3726180437945776969

/-! ## A205209.P2625917008304303076

`record[A129184(n+2)*A205215(n+2)]`
-/

namespace A205209.P2625917008304303076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 2) * A205215 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205209.P2625917008304303076

/-!
# A205210: Number of (n+1)X4 0..2 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205210, there is no canonical definition to state claims against.
-/

/-! ## A205210.P769363511544056528

`A205215(∑[n+2]+4)`
-/

namespace A205210.P769363511544056528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205210.P769363511544056528

/-! ## A205210.P4713321783403207182

`lcm((-1)^n, A205215(A167614(n+1)))`
-/

namespace A205210.P4713321783403207182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A205215 (A167614 (n + 1)).toNat)

end

end A205210.P4713321783403207182

/-! ## A205210.P11721188490358196209

`A205215(A167614(n+1))+A025469(n)`
-/

namespace A205210.P11721188490358196209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A167614 (n + 1)).toNat + A025469 n

end

end A205210.P11721188490358196209

/-! ## A205210.P1720121347894639281

`A205215(A167614(n+1))+A185284(n)`
-/

namespace A205210.P1720121347894639281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A167614 (n + 1)).toNat + A185284 n

end

end A205210.P1720121347894639281

/-! ## A205210.P10963979361186407301

`A014722(n)*A205215(A167614(n+1))`
-/

namespace A205210.P10963979361186407301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014722 n * A205215 (A167614 (n + 1)).toNat

end

end A205210.P10963979361186407301

/-!
# A205211: Number of (n+1)X5 0..2 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205211, there is no canonical definition to state claims against.
-/

/-! ## A205211.P8219579175289088999

`A205215(A141214(n)+7)`
-/

namespace A205211.P8219579175289088999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A141214 n + 7).toNat

end

end A205211.P8219579175289088999

/-! ## A205211.P476070489345198022

`A205215(A052905(n)+9)`
-/

namespace A205211.P476070489345198022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A052905 n + 9).toNat

end

end A205211.P476070489345198022

/-! ## A205211.P12078058845692291386

`A205215(A055999(n)+10)`
-/

namespace A205211.P12078058845692291386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A055999 n + 10).toNat

end

end A205211.P12078058845692291386

/-! ## A205211.P12484075109672092774

`A205215(A167614(n+2)+1)`
-/

namespace A205211.P12484075109672092774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A167614 (n + 2) + 1).toNat

end

end A205211.P12484075109672092774

/-! ## A205211.P9348235844521237277

`A205215(A374004(n+1))`
-/

namespace A205211.P9348235844521237277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A374004 (n + 1)).toNat

end

end A205211.P9348235844521237277

/-!
# A205212: Number of (n+1)X6 0..2 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205212, there is no canonical definition to state claims against.
-/

/-! ## A205212.P1681458620003303816

`A205215(A167499(n+3))`
-/

namespace A205212.P1681458620003303816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A167499 (n + 3)).toNat

end

end A205212.P1681458620003303816

/-! ## A205212.P5764279280676162007

`A205215(A056000(n)+15)`
-/

namespace A205212.P5764279280676162007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A056000 n + 15).toNat

end

end A205212.P5764279280676162007

/-! ## A205212.P16143295547142016829

`A205215(A000124(n+4)+4)`
-/

namespace A205212.P16143295547142016829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A000124 (n + 4) + 4).toNat

end

end A205212.P16143295547142016829

/-! ## A205212.P15724414544625283394

`A205215(A052905(n+1)+10)`
-/

namespace A205212.P15724414544625283394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A052905 (n + 1) + 10).toNat

end

end A205212.P15724414544625283394

/-! ## A205212.P12038088358303757316

`A205215(A374005(n+1))`
-/

namespace A205212.P12038088358303757316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A374005 (n + 1)).toNat

end

end A205212.P12038088358303757316

/-!
# A205213: Number of (n+1) X 7 0..2 arrays with the determinants of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A205213, there is no canonical definition to state claims against.
-/

/-! ## A205213.P2203958691121869800

`A205215(A055998(n+3)+9)`
-/

namespace A205213.P2203958691121869800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A055998 (n + 3) + 9).toNat

end

end A205213.P2203958691121869800

/-! ## A205213.P8493980733194057728

`A205215(eq[7, A131818(n+1)])`
-/

namespace A205213.P8493980733194057728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205213.P8493980733194057728

/-! ## A205213.P1220835048542076597

`A205215(A374007(n+1))`
-/

namespace A205213.P1220835048542076597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A374007 (n + 1)).toNat

end

end A205213.P1220835048542076597

/-! ## A205213.P17835633646031567707

`A205215(A052905(n+3))`
-/

namespace A205213.P17835633646031567707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A052905 (n + 3)).toNat

end

end A205213.P17835633646031567707

/-! ## A205213.P1257194654148691897

`A205215(eq[3, A219347(n)])`
-/

namespace A205213.P1257194654148691897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205213.P1257194654148691897

/-!
# A205214: Number of (n+1)X8 0..2 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205214, there is no canonical definition to state claims against.
-/

/-! ## A205214.P4771132683727900882

`A205215(eq[8, A131818(n+1)])`
-/

namespace A205214.P4771132683727900882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205214.P4771132683727900882

/-! ## A205214.P9478544281376563662

`A205215(A374008(n+1))`
-/

namespace A205214.P9478544281376563662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A374008 (n + 1)).toNat

end

end A205214.P9478544281376563662

/-! ## A205214.P9813664575451299021

`A205215(A055999(n+4))`
-/

namespace A205214.P9813664575451299021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (A055999 (n + 4)).toNat

end

end A205214.P9813664575451299021

/-! ## A205214.P12824402873322824216

`A205215(eq[4, A219347(n)])`
-/

namespace A205214.P12824402873322824216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205214.P12824402873322824216

/-! ## A205214.P9105531354924786869

`A205215(eq[6, A193592(n)])`
-/

namespace A205214.P9105531354924786869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205214.P9105531354924786869

/-!
# A205216: Number of partitions of n into parts having no 2 in ternary representation.

The programs for A205216, there is no canonical definition to state claims against.
-/

/-! ## A205216.P14165474123985655870

`A355358(n)+A102683(A131090(n))`
-/

namespace A205216.P14165474123985655870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355358 n + A102683 (A131090 n).toNat

end

end A205216.P14165474123985655870

/-!
# A205217: Number of partitions of n into distinct parts having no 2 in ternary representation.

The programs for A205217, there is no canonical definition to state claims against.
-/

/-! ## A205217.P10466540325697814749

`A000120(and(A130600(n+1), A332800(n)))`
-/

namespace A205217.P10466540325697814749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A130600 (n + 1)) (A332800 n)).toNat

end

end A205217.P10466540325697814749

/-! ## A205217.P4749888463034582264

`A008611(A215897(n+1)%A187829(n+1))`
-/

namespace A205217.P4749888463034582264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.tmod (A215897 (n + 1)) (A187829 (n + 1))).toNat

end

end A205217.P4749888463034582264

/-! ## A205217.P6892140826266133262

`A347550(A062523(n)+A032022(n))`
-/

namespace A205217.P6892140826266133262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (A062523 n + A032022 n).toNat

end

end A205217.P6892140826266133262

/-! ## A205217.P108261854574378499

`and(A000001(2*n+1), A005100(A205537(n)))`
-/

namespace A205217.P108261854574378499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000001 (2 * n + 1)) (A005100 (A205537 n).toNat)

end

end A205217.P108261854574378499

/-! ## A205217.P9446355855832176839

`and(A104725(2*n+1), A193306(A288400(n)))`
-/

namespace A205217.P9446355855832176839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104725 (2 * n + 1)) (A193306 (A288400 n).toNat)

end

end A205217.P9446355855832176839

/-!
# A205218: Number of (n+1) X (n+1) 0..1 arrays with the number of equal 2 X 2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..1 introduced in row major order.

The programs for A205218, there is no canonical definition to state claims against.
-/

/-! ## A205218.P11100849890106557273

`A205226(∑[4*n]+1)`
-/

namespace A205218.P11100849890106557273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205218.P11100849890106557273

/-! ## A205218.P17761674918986252809

`lcm(2, A205226(A001844(n)))`
-/

namespace A205218.P17761674918986252809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205226 (A001844 n).toNat)

end

end A205218.P17761674918986252809

/-! ## A205218.P10987968711022697778

`lcm(4, A205226(∑[A008574(n)]))`
-/

namespace A205218.P10987968711022697778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A205226 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A205218.P10987968711022697778

/-! ## A205218.P11968655024252437149

`record[A003982(n)*A205226(n+1)]`
-/

namespace A205218.P11968655024252437149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205218.P11968655024252437149

/-! ## A205218.P12968460300282985701

`record[gcd(A003987(n), A205226(n+1))]`
-/

namespace A205218.P12968460300282985701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A205226 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205218.P12968460300282985701

/-!
# A205219: Number of (n+1)X2 0..1 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..1 introduced in row major order.

The programs for A205219, the canonical program `A205219.P10441012288052257025` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205219 has offset 1).

The definition of A205219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205219.P5321867011323100003

`ogf((8+12x)/(1-x-4x^2))`
-/

namespace A205219.P5321867011323100003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 12] [1, -1, -4] n

end

end A205219.P5321867011323100003

namespace A205219

/-- `ogf((8+12x)/(1-x-4x^2))` -/
def P5321867011323100003.Spec : Prop :=
  ∀ n, P5321867011323100003.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P10441012288052257025

`a(n-1)+4*a(n-2)` with `a(0)=8, a(1)=20`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205219

/-- `a(n-1)+4*a(n-2)` -/
def P10441012288052257025.Spec : Prop :=
  ∀ n, (P10441012288052257025.a n : ℤ) = A205219 (n + 1)

theorem P10441012288052257025.correct : P10441012288052257025.Spec := by
  intro n
  simp only [A205219, Nat.add_sub_cancel]

end A205219

/-! ## A205219.P2002294513753923346

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=8, a(1)=20`
-/

namespace A205219.P2002294513753923346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8, 20] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A205219.P2002294513753923346

namespace A205219

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P2002294513753923346.Spec : Prop :=
  ∀ n, P2002294513753923346.a n = (A205219 (n + 1) : ℚ)

end A205219

/-! ## A205219.P15393399664504222477

`4-(4*(1-a(n-2))-a(n-1))` with `a(0)=8, a(1)=20`
-/

namespace A205219.P15393399664504222477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 20] fun n a =>
  4 - (4 * (1 - a (n - 2)) - a (n - 1))

end

end A205219.P15393399664504222477

namespace A205219

/-- `4-(4*(1-a(n-2))-a(n-1))` -/
def P15393399664504222477.Spec : Prop :=
  ∀ n, P15393399664504222477.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P11796137620670324235

`4*A183774(n)`
-/

namespace A205219.P11796137620670324235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A183774 n

end

end A205219.P11796137620670324235

namespace A205219

/-- `4*A183774(n)` -/
def P11796137620670324235.Spec : Prop :=
  ∀ n, P11796137620670324235.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P7314106084967125484

`Δ[A183774(n+1)]`
-/

namespace A205219.P7314106084967125484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205219.P7314106084967125484

namespace A205219

/-- `Δ[A183774(n+1)]` -/
def P7314106084967125484.Spec : Prop :=
  ∀ n, P7314106084967125484.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P6708658903019445865

`2*A277236(n+1)`
-/

namespace A205219.P6708658903019445865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277236 (n + 1)

end

end A205219.P6708658903019445865

namespace A205219

/-- `2*A277236(n+1)` -/
def P6708658903019445865.Spec : Prop :=
  ∀ n, P6708658903019445865.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P4722013540735886489

`abs(Δ[A122112(n+1)])`
-/

namespace A205219.P4722013540735886489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A205219.P4722013540735886489

namespace A205219

/-- `abs(Δ[A122112(n+1)])` -/
def P4722013540735886489.Spec : Prop :=
  ∀ n, P4722013540735886489.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P18105211402088373879

`A026581(n+2)+A006131(n)`
-/

namespace A205219.P18105211402088373879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 (n + 2) + A006131 n

end

end A205219.P18105211402088373879

namespace A205219

/-- `A026581(n+2)+A006131(n)` -/
def P18105211402088373879.Spec : Prop :=
  ∀ n, P18105211402088373879.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P11170273880756207254

`A026599(n+2)-A026599(n)`
-/

namespace A205219.P11170273880756207254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026599 (n + 2) - A026599 n

end

end A205219.P11170273880756207254

namespace A205219

/-- `A026599(n+2)-A026599(n)` -/
def P11170273880756207254.Spec : Prop :=
  ∀ n, P11170273880756207254.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P18133281623049417440

`4*(A026597(n)+A026581(n))`
-/

namespace A205219.P18133281623049417440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A026597 n + A026581 n)

end

end A205219.P18133281623049417440

namespace A205219

/-- `4*(A026597(n)+A026581(n))` -/
def P18133281623049417440.Spec : Prop :=
  ∀ n, P18133281623049417440.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P9221053841949100781

`Δ[A026599(n+1)+A026599(n)]`
-/

namespace A205219.P9221053841949100781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026599 (n + 1) + A026599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205219.P9221053841949100781

namespace A205219

/-- `Δ[A026599(n+1)+A026599(n)]` -/
def P9221053841949100781.Spec : Prop :=
  ∀ n, P9221053841949100781.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P14489620155109578517

`A026597(n+1)+A026597(n+2)`
-/

namespace A205219.P14489620155109578517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 (n + 1) + A026597 (n + 2)

end

end A205219.P14489620155109578517

namespace A205219

/-- `A026597(n+1)+A026597(n+2)` -/
def P14489620155109578517.Spec : Prop :=
  ∀ n, P14489620155109578517.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P18189905840623794591

`A183774(n+2)-A183774(n+1)`
-/

namespace A205219.P18189905840623794591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 (n + 2) - A183774 (n + 1)

end

end A205219.P18189905840623794591

namespace A205219

/-- `A183774(n+2)-A183774(n+1)` -/
def P18189905840623794591.Spec : Prop :=
  ∀ n, P18189905840623794591.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P13889973421391253237

`A006131(n+3)-A072265(n+1)`
-/

namespace A205219.P13889973421391253237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (n + 3) - A072265 (n + 1)

end

end A205219.P13889973421391253237

namespace A205219

/-- `A006131(n+3)-A072265(n+1)` -/
def P13889973421391253237.Spec : Prop :=
  ∀ n, P13889973421391253237.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P7698158651839542903

`Δ[A122112(n+1)]*A087960(2*n)`
-/

namespace A205219.P7698158651839542903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A087960 (2 * n)

end

end A205219.P7698158651839542903

namespace A205219

/-- `Δ[A122112(n+1)]*A087960(2*n)` -/
def P7698158651839542903.Spec : Prop :=
  ∀ n, P7698158651839542903.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P17745342077450076268

`A277237(n+1)+A277237(n+1)-A277236(n+1)`
-/

namespace A205219.P17745342077450076268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277237 (n + 1) + (A277237 (n + 1) - A277236 (n + 1))

end

end A205219.P17745342077450076268

namespace A205219

/-- `A277237(n+1)+A277237(n+1)-A277236(n+1)` -/
def P17745342077450076268.Spec : Prop :=
  ∀ n, P17745342077450076268.a n = A205219 (n + 1)

end A205219

/-! ## A205219.P4761603175794033405

`A185761(n+1)/2`
-/

namespace A205219.P4761603175794033405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185761 (n + 1) : ℚ) / 2

end

end A205219.P4761603175794033405

namespace A205219

/-- `A185761(n+1)/2` -/
def P4761603175794033405.Spec : Prop :=
  ∀ n, P4761603175794033405.a n = (A205219 (n + 1) : ℚ)

end A205219

/-! ## A205219.P10157934852240525855

`A183682(n+2)/4`
-/

namespace A205219.P10157934852240525855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183682 (n + 2) : ℚ) / 4

end

end A205219.P10157934852240525855

namespace A205219

/-- `A183682(n+2)/4` -/
def P10157934852240525855.Spec : Prop :=
  ∀ n, P10157934852240525855.a n = (A205219 (n + 1) : ℚ)

end A205219

/-! ## A205219.P16403346807441456369

`Δ[A259290(n+1)/2]`
-/

namespace A205219.P16403346807441456369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259290 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205219.P16403346807441456369

namespace A205219

/-- `Δ[A259290(n+1)/2]` -/
def P16403346807441456369.Spec : Prop :=
  ∀ n, P16403346807441456369.a n = (A205219 (n + 1) : ℚ)

end A205219

/-!
# A205220: Number of (n+1) X 3 0..1 arrays with the number of equal 2 X 2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..1 introduced in row major order.

The programs for A205220, the canonical program `A205220.P7567849375519951530` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205220 has offset 1).

The definition of A205220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205220.P7567849375519951530

`a(n-1)+4*a(n-2)` with `a(0)=20, a(1)=52`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205220

/-- `a(n-1)+4*a(n-2)` -/
def P7567849375519951530.Spec : Prop :=
  ∀ n, (P7567849375519951530.a n : ℤ) = A205220 (n + 1)

theorem P7567849375519951530.correct : P7567849375519951530.Spec := by
  intro n
  simp only [A205220, Nat.add_sub_cancel]

end A205220

/-! ## A205220.P15684254963987240923

`A205219(n+2)`
-/

namespace A205220.P15684254963987240923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205219 (n + 2)

end

end A205220.P15684254963987240923

namespace A205220

/-- `A205219(n+2)` -/
def P15684254963987240923.Spec : Prop :=
  ∀ n, P15684254963987240923.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P9821898925076716643

`Δ[A183774(n+2)]`
-/

namespace A205220.P9821898925076716643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205220.P9821898925076716643

namespace A205220

/-- `Δ[A183774(n+2)]` -/
def P9821898925076716643.Spec : Prop :=
  ∀ n, P9821898925076716643.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P453957791472061785

`2*A259290(n+1)`
-/

namespace A205220.P453957791472061785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259290 (n + 1)

end

end A205220.P453957791472061785

namespace A205220

/-- `2*A259290(n+1)` -/
def P453957791472061785.Spec : Prop :=
  ∀ n, P453957791472061785.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P10382420327008543672

`2*A277236(n+2)`
-/

namespace A205220.P10382420327008543672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277236 (n + 2)

end

end A205220.P10382420327008543672

namespace A205220

/-- `2*A277236(n+2)` -/
def P10382420327008543672.Spec : Prop :=
  ∀ n, P10382420327008543672.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P12362767445619635304

`4*A183774(n+1)`
-/

namespace A205220.P12362767445619635304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A183774 (n + 1)

end

end A205220.P12362767445619635304

namespace A205220

/-- `4*A183774(n+1)` -/
def P12362767445619635304.Spec : Prop :=
  ∀ n, P12362767445619635304.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P11755029694210458190

`abs(Δ[A122112(n+2)])`
-/

namespace A205220.P11755029694210458190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A205220.P11755029694210458190

namespace A205220

/-- `abs(Δ[A122112(n+2)])` -/
def P11755029694210458190.Spec : Prop :=
  ∀ n, P11755029694210458190.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P7227240316269100529

`A183682(n+1)+a(n-1)` with `a(0)=20`
-/

namespace A205220.P7227240316269100529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A183682 (n + 1) + a (n - 1)

end

end A205220.P7227240316269100529

namespace A205220

/-- `A183682(n+1)+a(n-1)` -/
def P7227240316269100529.Spec : Prop :=
  ∀ n, P7227240316269100529.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P12662808889445429496

`A204707(n+1)-(1-a(n-1))` with `a(0)=20`
-/

namespace A205220.P12662808889445429496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A204707 (n + 1) - (1 - a (n - 1))

end

end A205220.P12662808889445429496

namespace A205220

/-- `A204707(n+1)-(1-a(n-1))` -/
def P12662808889445429496.Spec : Prop :=
  ∀ n, P12662808889445429496.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P12058365732329940560

`A026581(n+3)+A006131(n+1)`
-/

namespace A205220.P12058365732329940560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 (n + 3) + A006131 (n + 1)

end

end A205220.P12058365732329940560

namespace A205220

/-- `A026581(n+3)+A006131(n+1)` -/
def P12058365732329940560.Spec : Prop :=
  ∀ n, P12058365732329940560.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P2242689249437846439

`A026597(n+2)+A026597(n+3)`
-/

namespace A205220.P2242689249437846439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 (n + 2) + A026597 (n + 3)

end

end A205220.P2242689249437846439

namespace A205220

/-- `A026597(n+2)+A026597(n+3)` -/
def P2242689249437846439.Spec : Prop :=
  ∀ n, P2242689249437846439.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P4205111981490771825

`A026599(n+3)-A026599(n+1)`
-/

namespace A205220.P4205111981490771825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026599 (n + 3) - A026599 (n + 1)

end

end A205220.P4205111981490771825

namespace A205220

/-- `A026599(n+3)-A026599(n+1)` -/
def P4205111981490771825.Spec : Prop :=
  ∀ n, P4205111981490771825.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P1549108829822421500

`4*(A006131(n+2)+Δ[A006131(n)])`
-/

namespace A205220.P1549108829822421500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A006131 (n + 2) + (f1 (n + 1) - f1 n))

end

end A205220.P1549108829822421500

namespace A205220

/-- `4*(A006131(n+2)+Δ[A006131(n)])` -/
def P1549108829822421500.Spec : Prop :=
  ∀ n, P1549108829822421500.a n = A205220 (n + 1)

end A205220

/-! ## A205220.P5636479616705464898

`A185761(n+2)/2`
-/

namespace A205220.P5636479616705464898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185761 (n + 2) : ℚ) / 2

end

end A205220.P5636479616705464898

namespace A205220

/-- `A185761(n+2)/2` -/
def P5636479616705464898.Spec : Prop :=
  ∀ n, P5636479616705464898.a n = (A205220 (n + 1) : ℚ)

end A205220

/-! ## A205220.P15900265494287469331

`A183682(n+3)/4`
-/

namespace A205220.P15900265494287469331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183682 (n + 3) : ℚ) / 4

end

end A205220.P15900265494287469331

namespace A205220

/-- `A183682(n+3)/4` -/
def P15900265494287469331.Spec : Prop :=
  ∀ n, P15900265494287469331.a n = (A205220 (n + 1) : ℚ)

end A205220

/-! ## A205220.P1965786002767039553

`Δ[A259290(n+2)/2]`
-/

namespace A205220.P1965786002767039553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259290 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205220.P1965786002767039553

namespace A205220

/-- `Δ[A259290(n+2)/2]` -/
def P1965786002767039553.Spec : Prop :=
  ∀ n, P1965786002767039553.a n = (A205220 (n + 1) : ℚ)

end A205220

/-! ## A205220.P3733792882313026161

`Δ[A277236(n+3)/2]`
-/

namespace A205220.P3733792882313026161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277236 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205220.P3733792882313026161

namespace A205220

/-- `Δ[A277236(n+3)/2]` -/
def P3733792882313026161.Spec : Prop :=
  ∀ n, P3733792882313026161.a n = (A205220 (n + 1) : ℚ)

end A205220

/-! ## A205220.P6115439903058590498

`Δ[A277237(n+3)/3]`
-/

namespace A205220.P6115439903058590498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277237 (n + 3) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205220.P6115439903058590498

namespace A205220

/-- `Δ[A277237(n+3)/3]` -/
def P6115439903058590498.Spec : Prop :=
  ∀ n, P6115439903058590498.a n = (A205220 (n + 1) : ℚ)

end A205220

/-!
# A205221: Number of (n+1) X 4 0..1 arrays with the number of equal 2 X 2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..1 introduced in row major order.

The programs for A205221, there is no canonical definition to state claims against.
-/

/-! ## A205221.P17558226144783658775

`A205226(∑[n+2]+4)`
-/

namespace A205221.P17558226144783658775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205221.P17558226144783658775

/-! ## A205221.P2032211523357014979

`lcm(2, A205226(A167614(n+1)))`
-/

namespace A205221.P2032211523357014979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205226 (A167614 (n + 1)).toNat)

end

end A205221.P2032211523357014979

/-! ## A205221.P11272649102899018442

`A205226(A167614(n+1))+A025439(n)`
-/

namespace A205221.P11272649102899018442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A167614 (n + 1)).toNat + A025439 n

end

end A205221.P11272649102899018442

/-! ## A205221.P4717564114947566291

`A007318(C(2, n))*A205226(A167614(n+1))`
-/

namespace A205221.P4717564114947566291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A205226 (A167614 (n + 1)).toNat

end

end A205221.P4717564114947566291

/-! ## A205221.P16861795152122942920

`A007318(C(2, n))*A205226(A167499(n)+n)`
-/

namespace A205221.P16861795152122942920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A205226 (A167499 n + (n : ℤ)).toNat

end

end A205221.P16861795152122942920

/-!
# A205222: Number of (n+1)X5 0..1 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..1 introduced in row major order.

The programs for A205222, there is no canonical definition to state claims against.
-/

/-! ## A205222.P6507334356224969971

`A205226(∑[n+3]+7)`
-/

namespace A205222.P6507334356224969971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205222.P6507334356224969971

/-! ## A205222.P2535389072872577015

`lcm(2, A205226(A141214(n)+7))`
-/

namespace A205222.P2535389072872577015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205226 (A141214 n + 7).toNat)

end

end A205222.P2535389072872577015

/-! ## A205222.P836878227955886027

`A205226(A000217(n+3)+4)+char[A000108(n+9)]`
-/

namespace A205222.P836878227955886027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A205222.P836878227955886027

/-! ## A205222.P6246313783899550686

`A007318(C(2, n+2))*A205226(A000217(n+3)+4)`
-/

namespace A205222.P6246313783899550686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A205226 (A000217 (n + 3) + 4).toNat

end

end A205222.P6246313783899550686

/-! ## A205222.P12737500155758068327

`A000045(A014963(4*n+2))*A205226(A141214(n)+7)`
-/

namespace A205222.P12737500155758068327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (4 * n + 2)).toNat * A205226 (A141214 n + 7).toNat

end

end A205222.P12737500155758068327

/-!
# A205223: Number of (n+1)X6 0..1 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..1 introduced in row major order.

The programs for A205223, there is no canonical definition to state claims against.
-/

/-! ## A205223.P9041311700385503302

`A205226(A167499(n+3))`
-/

namespace A205223.P9041311700385503302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A167499 (n + 3)).toNat

end

end A205223.P9041311700385503302

/-! ## A205223.P14839260616592379631

`A205226(A155212(n)+13)`
-/

namespace A205223.P14839260616592379631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A155212 n + 13).toNat

end

end A205223.P14839260616592379631

/-! ## A205223.P4836293430145121343

`A205226(A056000(n)+15)`
-/

namespace A205223.P4836293430145121343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A056000 n + 15).toNat

end

end A205223.P4836293430145121343

/-! ## A205223.P4624566902946101035

`A205226(A166136(n+3)-1)`
-/

namespace A205223.P4624566902946101035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A166136 (n + 3) - 1).toNat

end

end A205223.P4624566902946101035

/-! ## A205223.P9488125602305622082

`A205226(A000124(n+4)+4)`
-/

namespace A205223.P9488125602305622082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A000124 (n + 4) + 4).toNat

end

end A205223.P9488125602305622082

/-!
# A205224: Number of (n+1)X7 0..1 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..1 introduced in row major order.

The programs for A205224, there is no canonical definition to state claims against.
-/

/-! ## A205224.P5990591378295476672

`A205226(C(n+7, 2)-n)`
-/

namespace A205224.P5990591378295476672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (Nat.choose (n + 7) 2 - n)

end

end A205224.P5990591378295476672

/-! ## A205224.P8133014364392260951

`A205226(A167499(n+4)+1)`
-/

namespace A205224.P8133014364392260951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A167499 (n + 4) + 1).toNat

end

end A205224.P8133014364392260951

/-! ## A205224.P12111527449280131908

`A205226(A000124(n+5)+5)`
-/

namespace A205224.P12111527449280131908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A000124 (n + 5) + 5).toNat

end

end A205224.P12111527449280131908

/-! ## A205224.P8964589656190505422

`A205226(A000096(n+4)+7)`
-/

namespace A205224.P8964589656190505422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A000096 (n + 4) + 7).toNat

end

end A205224.P8964589656190505422

/-! ## A205224.P14957432348487815318

`A205226(A000217(n+5)+6)`
-/

namespace A205224.P14957432348487815318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A000217 (n + 5) + 6).toNat

end

end A205224.P14957432348487815318

/-!
# A205225: Number of (n+1)X8 0..1 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..1 introduced in row major order.

The programs for A205225, there is no canonical definition to state claims against.
-/

/-! ## A205225.P15223465445137143172

`A205226(A167487(n+5))`
-/

namespace A205225.P15223465445137143172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A167487 (n + 5)).toNat

end

end A205225.P15223465445137143172

/-! ## A205225.P4058802010926030922

`A205226(A056119(n)+28)`
-/

namespace A205225.P4058802010926030922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A056119 n + 28).toNat

end

end A205225.P4058802010926030922

/-! ## A205225.P4202380036614992838

`A205226(A167499(n+5)+2)`
-/

namespace A205225.P4202380036614992838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A167499 (n + 5) + 2).toNat

end

end A205225.P4202380036614992838

/-! ## A205225.P14462684048064960858

`A205226(A133263(n+6)+5)`
-/

namespace A205225.P14462684048064960858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A133263 (n + 6) + 5).toNat

end

end A205225.P14462684048064960858

/-! ## A205225.P5270290871881077679

`A205226(A000124(n+6)+6)`
-/

namespace A205225.P5270290871881077679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205226 (A000124 (n + 6) + 6).toNat

end

end A205225.P5270290871881077679

/-!
# A205226: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..1 introduced in row major order.

The programs for A205226, there is no canonical definition to state claims against.
-/

/-! ## A205226.P2963089389539900474

`A205219(A002024(n+1)%A205218(n+2))`
-/

namespace A205226.P2963089389539900474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205219 (Int.tmod (A002024 (n + 1)) (A205218 (n + 2))).toNat

end

end A205226.P2963089389539900474

/-! ## A205226.P8373088025290965036

`A205219(A002024(n+1))%A076183(n+4)`
-/

namespace A205226.P8373088025290965036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205219 (A002024 (n + 1)).toNat) (A076183 (n + 4))

end

end A205226.P8373088025290965036

/-! ## A205226.P343933768829620791

`A160159(A000203(2^(comp[∑[n]]-n)))`
-/

namespace A205226.P343933768829620791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160159 (A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat).toNat

end

end A205226.P343933768829620791

/-!
# A205227: Number of (n+1)X(n+1) 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A205227, there is no canonical definition to state claims against.
-/

/-! ## A205227.P13922110426183992041

`A205235(∑[4*n]+1)`
-/

namespace A205227.P13922110426183992041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205227.P13922110426183992041

/-!
# A205228: Number of (n+1) X 2 0..2 arrays with rows and columns of permanents of all 2 X 2 subblocks lexicographically nondecreasing, and all 2 X 2 permanents nonzero.

The programs for A205228, there is no canonical definition to state claims against.
-/

/-! ## A205228.P2604571461221453759

`A205235(∑[n]+1)`
-/

namespace A205228.P2604571461221453759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205228.P2604571461221453759

/-! ## A205228.P4640056499900579260

`record[A205235(A056534(n+1))]`
-/

namespace A205228.P4640056499900579260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205228.P4640056499900579260

/-! ## A205228.P7914652882017848748

`record[A205235(A114091(n+1))]`
-/

namespace A205228.P7914652882017848748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205228.P7914652882017848748

/-! ## A205228.P2393341515169612664

`record[A205235(A276954(n+1))]`
-/

namespace A205228.P2393341515169612664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205228.P2393341515169612664

/-! ## A205228.P1038154601170316451

`record[A205235(A286234(n+1))]`
-/

namespace A205228.P1038154601170316451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205228.P1038154601170316451

/-!
# A205229: Number of (n+1)X3 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A205229, there is no canonical definition to state claims against.
-/

/-! ## A205229.P847697377731897779

`A205235(∑[n+1]+2)`
-/

namespace A205229.P847697377731897779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205229.P847697377731897779

/-! ## A205229.P9354418714086007779

`record[A205235(A114091(n+1)+1)]`
-/

namespace A205229.P9354418714086007779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205229.P9354418714086007779

/-! ## A205229.P12788919958773211425

`record[A205235(A115364(n+1)+2)]`
-/

namespace A205229.P12788919958773211425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A115364 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205229.P12788919958773211425

/-! ## A205229.P11534684905316255375

`record[A205235(A286234(n+5)+1)]`
-/

namespace A205229.P11534684905316255375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A286234 (n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205229.P11534684905316255375

/-! ## A205229.P4989649568810715399

`record[A010054(n)*A205235(n+2)]`
-/

namespace A205229.P4989649568810715399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205235 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205229.P4989649568810715399

/-!
# A205230: Number of (n+1) X 4 0..2 arrays with rows and columns of permanents of all 2 X 2 subblocks lexicographically nondecreasing, and all 2 X 2 permanents nonzero.

The programs for A205230, there is no canonical definition to state claims against.
-/

/-! ## A205230.P3397447908639045167

`A205235(∑[n+2]+4)`
-/

namespace A205230.P3397447908639045167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205230.P3397447908639045167

/-! ## A205230.P17658604476709872909

`and(-1, A205235(A167614(n+1)))`
-/

namespace A205230.P17658604476709872909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A205235 (A167614 (n + 1)).toNat)

end

end A205230.P17658604476709872909

/-! ## A205230.P7449039596419081564

`record[gcd(A191907(n+1), A205235(n+4))]`
-/

namespace A205230.P7449039596419081564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191907 (n + 1)) (A205235 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205230.P7449039596419081564

/-! ## A205230.P13084700111246350705

`A205235(A167614(n+1))+A025465(n)`
-/

namespace A205230.P13084700111246350705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A167614 (n + 1)).toNat + A025465 n

end

end A205230.P13084700111246350705

/-! ## A205230.P7562275336992358920

`A205235(A167614(n+1))+A178780(n)`
-/

namespace A205230.P7562275336992358920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A167614 (n + 1)).toNat + A178780 n

end

end A205230.P7562275336992358920

/-!
# A205231: Number of (n+1)X5 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A205231, there is no canonical definition to state claims against.
-/

/-! ## A205231.P9047700559664668833

`A205235(A374004(n+1))`
-/

namespace A205231.P9047700559664668833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A374004 (n + 1)).toNat

end

end A205231.P9047700559664668833

/-! ## A205231.P11603660584789760449

`A205235(A141214(n)+7)`
-/

namespace A205231.P11603660584789760449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A141214 n + 7).toNat

end

end A205231.P11603660584789760449

/-! ## A205231.P2667782694951489595

`A205235(A052905(n)+9)`
-/

namespace A205231.P2667782694951489595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A052905 n + 9).toNat

end

end A205231.P2667782694951489595

/-! ## A205231.P18338361993380375654

`A205235(A055999(n)+10)`
-/

namespace A205231.P18338361993380375654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A055999 n + 10).toNat

end

end A205231.P18338361993380375654

/-!
# A205232: Number of (n+1)X6 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A205232, there is no canonical definition to state claims against.
-/

/-! ## A205232.P18351355394756011845

`A205235(∑[n+4]+11)`
-/

namespace A205232.P18351355394756011845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A205232.P18351355394756011845

/-!
# A205233: Number of (n+1) X 7 0..2 arrays with rows and columns of permanents of all 2 X 2 subblocks lexicographically nondecreasing, and all 2 X 2 permanents nonzero.

The programs for A205233, there is no canonical definition to state claims against.
-/

/-! ## A205233.P9833681587328681689

`A205235(A374007(n+1))`
-/

namespace A205233.P9833681587328681689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205235 (A374007 (n + 1)).toNat

end

end A205233.P9833681587328681689

/-!
# A205236: Least prime p > 3 such that 2^n + p*2^k - 1 is prime for some k with n/3 < k < n+1.

The programs for A205236, there is no canonical definition to state claims against.
-/

/-! ## A205236.P4799967517389896372

`A095366(449*A133265(n))`
-/

namespace A205236.P4799967517389896372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095366 (449 * A133265 n).toNat

end

end A205236.P4799967517389896372

/-! ## A205236.P5231037199092148898

`A095366(lcm(449, A133265(n)))`
-/

namespace A205236.P5231037199092148898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095366 (Int.lcm 449 (A133265 n))

end

end A205236.P5231037199092148898

/-! ## A205236.P5594240689096644950

`A095366((n+1)*A053438(5*n+1))`
-/

namespace A205236.P5594240689096644950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095366 ((n + 1 : ℤ) * A053438 (5 * n + 1)).toNat

end

end A205236.P5594240689096644950

/-! ## A205236.P16279225265744076490

`A095366(n+1)-∑[A280560(A156552(n+2))]`
-/

namespace A205236.P16279225265744076490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A156552 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095366 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205236.P16279225265744076490

/-! ## A205236.P3733368838503067445

`A378640(A133265(n)*A155058(n+1))`
-/

namespace A205236.P3733368838503067445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378640 (A133265 n * A155058 (n + 1)).toNat

end

end A205236.P3733368838503067445

/-!
# A205238: Number of (n+1)X(n+1) 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in each of its horizontal and vertical neighbors.

The programs for A205238, there is no canonical definition to state claims against.
-/

/-! ## A205238.P9754775095304081419

`A205246((n+1)²+n²)`
-/

namespace A205238.P9754775095304081419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 ((n + 1) ^ 2 + n ^ 2)

end

end A205238.P9754775095304081419

/-!
# A205239: Number of (n+1)X2 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in each of its horizontal and vertical neighbors.

The programs for A205239, there is no canonical definition to state claims against.
-/

/-! ## A205239.P1500103534803115700

`A205246(∑[n]+1)`
-/

namespace A205239.P1500103534803115700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205239.P1500103534803115700

/-! ## A205239.P13185806157535968088

`record[A205246(n+1)/A008518(n)]`
-/

namespace A205239.P13185806157535968088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205246 (n + 1) : ℚ) / (A008518 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205239.P13185806157535968088

/-! ## A205239.P4070354592134404633

`record[root(A205246(n+1), A013610(n))]`
-/

namespace A205239.P4070354592134404633
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205246 (n + 1) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205239.P4070354592134404633

/-! ## A205239.P13455604573045675260

`record[root(A205246(n+1), A081572(n))]`
-/

namespace A205239.P13455604573045675260
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205246 (n + 1) : ℝ) ^ (1 / (A081572 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205239.P13455604573045675260

/-! ## A205239.P2898673427247202638

`A205246(A000124(n))+C(n, n+1)`
-/

namespace A205239.P2898673427247202638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A000124 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A205239.P2898673427247202638

/-!
# A205240: Number of (n+1)X3 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in each of its horizontal and vertical neighbors.

The programs for A205240, there is no canonical definition to state claims against.
-/

/-! ## A205240.P12347678948504611166

`A205246(∑[n+1]+2)`
-/

namespace A205240.P12347678948504611166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205240.P12347678948504611166

/-! ## A205240.P11919798530405911429

`record[root(A205246(n+2), A013610(n))]`
-/

namespace A205240.P11919798530405911429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205246 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205240.P11919798530405911429

/-! ## A205240.P4812895916407855388

`record[A205246(A198455(n+1))]`
-/

namespace A205240.P4812895916407855388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205240.P4812895916407855388

/-! ## A205240.P10919065596748099317

`record[A205246(Δ[A003453(n+5)])]`
-/

namespace A205240.P10919065596748099317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205240.P10919065596748099317

/-! ## A205240.P1379800806482312463

`A205246(A000096(n+1))+char[35]`
-/

namespace A205240.P1379800806482312463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A205240.P1379800806482312463

/-!
# A205241: Number of (n+1)X4 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in each of its horizontal and vertical neighbors.

The programs for A205241, there is no canonical definition to state claims against.
-/

/-! ## A205241.P2310454447360681512

`A205246(∑[n+2]+4)`
-/

namespace A205241.P2310454447360681512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205241.P2310454447360681512

/-! ## A205241.P16788783873962816939

`lcm((-1)^n, A205246(A167614(n+1)))`
-/

namespace A205241.P16788783873962816939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A205246 (A167614 (n + 1)).toNat)

end

end A205241.P16788783873962816939

/-! ## A205241.P15341933105220412244

`lcm(A205246(A167614(n+1)), A249095(n))`
-/

namespace A205241.P15341933105220412244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A205246 (A167614 (n + 1)).toNat) (A249095 n)

end

end A205241.P15341933105220412244

/-! ## A205241.P9545125459362142504

`A205246(A167614(n+1))%A205259(n+1)`
-/

namespace A205241.P9545125459362142504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205246 (A167614 (n + 1)).toNat) (A205259 (n + 1))

end

end A205241.P9545125459362142504

/-! ## A205241.P879467854338386992

`or(A001617(n+1), A205246(A167614(n+1)))`
-/

namespace A205241.P879467854338386992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001617 (n + 1)) (A205246 (A167614 (n + 1)).toNat)

end

end A205241.P879467854338386992

/-!
# A205242: Number of (n+1)X5 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in each of its horizontal and vertical neighbors.

The programs for A205242, there is no canonical definition to state claims against.
-/

/-! ## A205242.P16072395649833470446

`A205246(A141214(n)+7)`
-/

namespace A205242.P16072395649833470446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A141214 n + 7).toNat

end

end A205242.P16072395649833470446

/-! ## A205242.P5084274859375718136

`A205246(A052905(n)+9)`
-/

namespace A205242.P5084274859375718136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A052905 n + 9).toNat

end

end A205242.P5084274859375718136

/-! ## A205242.P9036224612108963053

`A205246(A167614(n+2)+1)`
-/

namespace A205242.P9036224612108963053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A167614 (n + 2) + 1).toNat

end

end A205242.P9036224612108963053

/-! ## A205242.P11255125560744311228

`A205246(Δ[A264443(n)-n²])`
-/

namespace A205242.P11255125560744311228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (f1 (n + 1) - f1 n).toNat

end

end A205242.P11255125560744311228

/-! ## A205242.P18339408536542470427

`A205246(A374004(n+1))`
-/

namespace A205242.P18339408536542470427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A374004 (n + 1)).toNat

end

end A205242.P18339408536542470427

/-!
# A205243: Number of (n+1)X6 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in each of its horizontal and vertical neighbors.

The programs for A205243, there is no canonical definition to state claims against.
-/

/-! ## A205243.P8841632592286135485

`A205246(A056000(n)+15)`
-/

namespace A205243.P8841632592286135485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A056000 n + 15).toNat

end

end A205243.P8841632592286135485

/-! ## A205243.P11972677441821905516

`A205246(eq[6, A131818(n+1)])`
-/

namespace A205243.P11972677441821905516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205243.P11972677441821905516

/-! ## A205243.P3363750264937444955

`A205246(Δ[A264443(n)])`
-/

namespace A205243.P3363750264937444955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (f1 (n + 1) - f1 n).toNat

end

end A205243.P3363750264937444955

/-! ## A205243.P118020975618501900

`A205246(A374005(n+1))`
-/

namespace A205243.P118020975618501900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A374005 (n + 1)).toNat

end

end A205243.P118020975618501900

/-! ## A205243.P2831546305777462526

`A205246(eq[4, A193592(n)])`
-/

namespace A205243.P2831546305777462526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205243.P2831546305777462526

/-!
# A205244: Number of (n+1)X7 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in each of its horizontal and vertical neighbors.

The programs for A205244, there is no canonical definition to state claims against.
-/

/-! ## A205244.P7002253662549762892

`A205246(∑[A020710(n)]+16)`
-/

namespace A205244.P7002253662549762892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A205244.P7002253662549762892

/-! ## A205244.P1939000477885334603

`A205246(A000217(n+5)+6)`
-/

namespace A205244.P1939000477885334603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A000217 (n + 5) + 6).toNat

end

end A205244.P1939000477885334603

/-! ## A205244.P17687099028524355544

`A205246(eq[7, A131818(n+1)])`
-/

namespace A205244.P17687099028524355544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205244.P17687099028524355544

/-! ## A205244.P1034140575616639134

`A205246(Δ[A023551(n+1)]-n+6)`
-/

namespace A205244.P1034140575616639134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (f1 (n + 1) - f1 n - (n : ℤ) + 6).toNat

end

end A205244.P1034140575616639134

/-!
# A205245: Number of (n+1)X8 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in each of its horizontal and vertical neighbors.

The programs for A205245, there is no canonical definition to state claims against.
-/

/-! ## A205245.P14925106271895225764

`A205246(A374008(n+1))`
-/

namespace A205245.P14925106271895225764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A374008 (n + 1)).toNat

end

end A205245.P14925106271895225764

/-! ## A205245.P5538361118947459368

`A205246(A055999(n+4))`
-/

namespace A205245.P5538361118947459368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (A055999 (n + 4)).toNat

end

end A205245.P5538361118947459368

/-! ## A205245.P7581344669221201393

`A205246(eq[6, A193592(n)])`
-/

namespace A205245.P7581344669221201393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205245.P7581344669221201393

/-!
# A205247: Number of (n+1)X(n+1) 0..1 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205247, there is no canonical definition to state claims against.
-/

/-! ## A205247.P11009005448938920227

`A203372(n+1)+4`
-/

namespace A205247.P11009005448938920227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203372 (n + 1) + 4

end

end A205247.P11009005448938920227

/-! ## A205247.P11405483796062093524

`2*A205311(n+1)`
-/

namespace A205247.P11405483796062093524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205311 (n + 1)

end

end A205247.P11405483796062093524

/-! ## A205247.P10426913543581430680

`A205255(∑[4*n]+1)`
-/

namespace A205247.P10426913543581430680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205255 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205247.P10426913543581430680

/-! ## A205247.P18240850722884830210

`2*(A068253(n+2)+2)`
-/

namespace A205247.P18240850722884830210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A068253 (n + 2) + 2)

end

end A205247.P18240850722884830210

/-! ## A205247.P7975206911092739012

`A203378((n+1)²+n²)+4`
-/

namespace A205247.P7975206911092739012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203378 ((n + 1) ^ 2 + n ^ 2) + 4

end

end A205247.P7975206911092739012

/-!
# A205248: Number of (n+1) X 2 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock the same.

The programs for A205248, the canonical program `A205248.P11845377750671828887` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205248 has offset 1).

The definition of A205248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205248.P12599133043319344840

`4*(3^(n+1)+1)`
-/

namespace A205248.P12599133043319344840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (3 ^ (n + 1) + 1)

end

end A205248.P12599133043319344840

namespace A205248

/-- `4*(3^(n+1)+1)` -/
def P12599133043319344840.Spec : Prop :=
  ∀ n, (P12599133043319344840.a n : ℤ) = A205248 (n + 1)

theorem P12599133043319344840.correct : P12599133043319344840.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A205248, Nat.add_sub_cancel, A205248.P12599133043319344840.a, A205248.P11845377750671828887.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A205248, Nat.add_sub_cancel, A205248.P12599133043319344840.a, A205248.P11845377750671828887.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A205248

/-! ## A205248.P11845377750671828887

`4*a(n-1)-3*a(n-2)` with `a(0)=16, a(1)=40`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205248

/-- `4*a(n-1)-3*a(n-2)` -/
def P11845377750671828887.Spec : Prop :=
  ∀ n, P11845377750671828887.a n = A205248 (n + 1)

theorem P11845377750671828887.correct : P11845377750671828887.Spec := by
  intro n
  simp only [A205248, Nat.add_sub_cancel]

end A205248

/-! ## A205248.P11507454850348569095

`1+A289521(n+1)+A067771(n+1)+A003462(n+2)+A003462(n+1)`
-/

namespace A205248.P11507454850348569095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A289521 (n + 1) + A067771 (n + 1) + A003462 (n + 2) + A003462 (n + 1)

end

end A205248.P11507454850348569095

namespace A205248

/-- `1+A289521(n+1)+A067771(n+1)+A003462(n+2)+A003462(n+1)` -/
def P11507454850348569095.Spec : Prop :=
  ∀ n, P11507454850348569095.a n = A205248 (n + 1)

end A205248

/-! ## A205248.P3042560522741313181

`ogf((16-24x)/(1-4x+3x^2))`
-/

namespace A205248.P3042560522741313181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -24] [1, -4, 3] n

end

end A205248.P3042560522741313181

namespace A205248

/-- `ogf((16-24x)/(1-4x+3x^2))` -/
def P3042560522741313181.Spec : Prop :=
  ∀ n, P3042560522741313181.a n = A205248 (n + 1)

end A205248

/-! ## A205248.P6875626412124997913

`lcm(4, 3^(n+1))+4`
-/

namespace A205248.P6875626412124997913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (3 ^ (n + 1)) + 4

end

end A205248.P6875626412124997913

namespace A205248

/-- `lcm(4, 3^(n+1))+4` -/
def P6875626412124997913.Spec : Prop :=
  ∀ n, (P6875626412124997913.a n : ℤ) = A205248 (n + 1)

end A205248

/-! ## A205248.P5476804400046767952

`∑[3*a(n-1)]` with `a(0)=16, a(1)=24`
-/

namespace A205248.P5476804400046767952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 24] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205248.P5476804400046767952

namespace A205248

/-- `∑[3*a(n-1)]` -/
def P5476804400046767952.Spec : Prop :=
  ∀ n, (P5476804400046767952.a n : ℤ) = A205248 (n + 1)

end A205248

/-! ## A205248.P13947107899009321343

`xor(5, 3*(a(n-1)-1))` with `a(0)=16`
-/

namespace A205248.P13947107899009321343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  Int.xor 5 (3 * (a (n - 1) - 1))

end

end A205248.P13947107899009321343

namespace A205248

/-- `xor(5, 3*(a(n-1)-1))` -/
def P13947107899009321343.Spec : Prop :=
  ∀ n, P13947107899009321343.a n = A205248 (n + 1)

end A205248

/-! ## A205248.P6399284519656671487

`4*(a(n-1)-2)-a(n-1)` with `a(0)=16`
-/

namespace A205248.P6399284519656671487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  4 * (a (n - 1) - 2) - a (n - 1)

end

end A205248.P6399284519656671487

namespace A205248

/-- `4*(a(n-1)-2)-a(n-1)` -/
def P6399284519656671487.Spec : Prop :=
  ∀ n, P6399284519656671487.a n = A205248 (n + 1)

end A205248

/-! ## A205248.P13413491628189884778

`A199108(n+1)+3`
-/

namespace A205248.P13413491628189884778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199108 (n + 1) + 3

end

end A205248.P13413491628189884778

namespace A205248

/-- `A199108(n+1)+3` -/
def P13413491628189884778.Spec : Prop :=
  ∀ n, P13413491628189884778.a n = A205248 (n + 1)

theorem P13413491628189884778.correct : P13413491628189884778.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A205248, Nat.add_sub_cancel, A205248.P13413491628189884778.a, A205248.P11845377750671828887.a, A199108, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A205248, Nat.add_sub_cancel, A205248.P13413491628189884778.a, A205248.P11845377750671828887.a, A199108, A199108.P18019774811813591843.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A205248

/-! ## A205248.P4310231951935865305

`A079003(n+3)+2`
-/

namespace A205248.P4310231951935865305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079003 (n + 3) + 2

end

end A205248.P4310231951935865305

namespace A205248

/-- `A079003(n+3)+2` -/
def P4310231951935865305.Spec : Prop :=
  ∀ n, P4310231951935865305.a n = A205248 (n + 1)

end A205248

/-! ## A205248.P9707920727700031076

`A003946(n+2)+4`
-/

namespace A205248.P9707920727700031076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (n + 2) + 4

end

end A205248.P9707920727700031076

namespace A205248

/-- `A003946(n+2)+4` -/
def P9707920727700031076.Spec : Prop :=
  ∀ n, P9707920727700031076.a n = A205248 (n + 1)

end A205248

/-! ## A205248.P11168898589534637856

`A027327(n+2)+4`
-/

namespace A205248.P11168898589534637856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027327 (n + 2) + 4

end

end A205248.P11168898589534637856

namespace A205248

/-- `A027327(n+2)+4` -/
def P11168898589534637856.Spec : Prop :=
  ∀ n, P11168898589534637856.a n = A205248 (n + 1)

end A205248

/-! ## A205248.P17137435018548890978

`A171498(n+1)+5`
-/

namespace A205248.P17137435018548890978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171498 (n + 1) + 5

end

end A205248.P17137435018548890978

namespace A205248

/-- `A171498(n+1)+5` -/
def P17137435018548890978.Spec : Prop :=
  ∀ n, P17137435018548890978.a n = A205248 (n + 1)

theorem P17137435018548890978.correct : P17137435018548890978.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A205248, Nat.add_sub_cancel, A205248.P17137435018548890978.a, A205248.P11845377750671828887.a, A171498, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A205248, Nat.add_sub_cancel, A205248.P17137435018548890978.a, A205248.P11845377750671828887.a, A171498, A171498.P16617065330167147573.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A205248

/-! ## A205248.P13413238468017574001

`A052156(n+3)+4`
-/

namespace A205248.P13413238468017574001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 3) + 4

end

end A205248.P13413238468017574001

namespace A205248

/-- `A052156(n+3)+4` -/
def P13413238468017574001.Spec : Prop :=
  ∀ n, P13413238468017574001.a n = A205248 (n + 1)

end A205248

/-! ## A205248.P8875446850927481045

`A036543(n+1)+7`
-/

namespace A205248.P8875446850927481045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036543 (n + 1) + 7

end

end A205248.P8875446850927481045

namespace A205248

/-- `A036543(n+1)+7` -/
def P8875446850927481045.Spec : Prop :=
  ∀ n, P8875446850927481045.a n = A205248 (n + 1)

theorem P8875446850927481045.correct : P8875446850927481045.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A205248, Nat.add_sub_cancel, A205248.P8875446850927481045.a, A205248.P11845377750671828887.a, A036543, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A205248, Nat.add_sub_cancel, A205248.P8875446850927481045.a, A205248.P11845377750671828887.a, A036543, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A205248

/-! ## A205248.P7889121110364188083

`A079004(n+3)+6`
-/

namespace A205248.P7889121110364188083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079004 (n + 3) + 6

end

end A205248.P7889121110364188083

namespace A205248

/-- `A079004(n+3)+6` -/
def P7889121110364188083.Spec : Prop :=
  ∀ n, P7889121110364188083.a n = A205248 (n + 1)

end A205248

/-! ## A205248.P7360851357200178504

`A302507(n+1)+8`
-/

namespace A205248.P7360851357200178504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302507 (n + 1) + 8

end

end A205248.P7360851357200178504

namespace A205248

/-- `A302507(n+1)+8` -/
def P7360851357200178504.Spec : Prop :=
  ∀ n, P7360851357200178504.a n = A205248 (n + 1)

theorem P7360851357200178504.correct : P7360851357200178504.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A205248, Nat.add_sub_cancel, A205248.P7360851357200178504.a, A205248.P11845377750671828887.a, A302507, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A205248, Nat.add_sub_cancel, A205248.P7360851357200178504.a, A205248.P11845377750671828887.a, A302507, A302507.P17660413285331424769.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A205248

/-! ## A205248.P614304684546063666

`A168609(n)+A120354(n)`
-/

namespace A205248.P614304684546063666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168609 n + A120354 n

end

end A205248.P614304684546063666

namespace A205248

/-- `A168609(n)+A120354(n)` -/
def P614304684546063666.Spec : Prop :=
  ∀ n, P614304684546063666.a n = A205248 (n + 1)

theorem P614304684546063666.correct : P614304684546063666.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A205248, Nat.add_sub_cancel, A205248.P614304684546063666.a, A205248.P11845377750671828887.a, A120354, A120354.P15435024084218546282.a, A168609, A168609.P6835026739238797975.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A205248, Nat.add_sub_cancel, A205248.P614304684546063666.a, A205248.P11845377750671828887.a, A120354, A120354.P15435024084218546282.a, A168609, A168609.P6835026739238797975.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A205248

/-! ## A205248.P3750673546568725202

`A198646(n)+A168610(n)`
-/

namespace A205248.P3750673546568725202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198646 n + A168610 n

end

end A205248.P3750673546568725202

namespace A205248

/-- `A198646(n)+A168610(n)` -/
def P3750673546568725202.Spec : Prop :=
  ∀ n, P3750673546568725202.a n = A205248 (n + 1)

theorem P3750673546568725202.correct : P3750673546568725202.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A205248, Nat.add_sub_cancel, A205248.P3750673546568725202.a, A205248.P11845377750671828887.a, A168610, A168610.P14704023943450790163.a, A198646, A198646.P8836749511217288864.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A205248, Nat.add_sub_cancel, A205248.P3750673546568725202.a, A205248.P11845377750671828887.a, A168610, A168610.P14704023943450790163.a, A198646, A198646.P8836749511217288864.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A205248

/-! ## A205248.P8928276230102698055

`A199114(n)+A178674(n)`
-/

namespace A205248.P8928276230102698055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199114 n + A178674 n

end

end A205248.P8928276230102698055

namespace A205248

/-- `A199114(n)+A178674(n)` -/
def P8928276230102698055.Spec : Prop :=
  ∀ n, P8928276230102698055.a n = A205248 (n + 1)

theorem P8928276230102698055.correct : P8928276230102698055.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A205248, Nat.add_sub_cancel, A205248.P8928276230102698055.a, A205248.P11845377750671828887.a, A178674, A178674.P4081505136580915789.a, A199114, A199114.P12823177751072762605.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A205248, Nat.add_sub_cancel, A205248.P8928276230102698055.a, A205248.P11845377750671828887.a, A178674, A178674.P4081505136580915789.a, A199114, A199114.P12823177751072762605.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A205248

/-!
# A205249: Number of (n+1) X 3 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock the same.

The programs for A205249, the canonical program `A205249.P9128602515092756950` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205249 has offset 1).

The definition of A205249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205249.P9128602515092756950

`6*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=40, a(1)=168, a(2)=752`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205249

/-- `6*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P9128602515092756950.Spec : Prop :=
  ∀ n, P9128602515092756950.a n = A205249 (n + 1)

theorem P9128602515092756950.correct : P9128602515092756950.Spec := by
  intro n
  simp only [A205249, Nat.add_sub_cancel]

end A205249

/-! ## A205249.P13986825270768290057

`2*A205312(n+1)`
-/

namespace A205249.P13986825270768290057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205312 (n + 1)

end

end A205249.P13986825270768290057

namespace A205249

/-- `2*A205312(n+1)` -/
def P13986825270768290057.Spec : Prop :=
  ∀ n, P13986825270768290057.a n = A205249 (n + 1)

end A205249

/-! ## A205249.P13441448370532651606

`A147722(n+3)+4`
-/

namespace A205249.P13441448370532651606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 (n + 3) + 4

end

end A205249.P13441448370532651606

namespace A205249

/-- `A147722(n+3)+4` -/
def P13441448370532651606.Spec : Prop :=
  ∀ n, P13441448370532651606.a n = A205249 (n + 1)

end A205249

/-! ## A205249.P13668328957054799645

`Δ[A204091(n+2)]+4`
-/

namespace A205249.P13668328957054799645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A205249.P13668328957054799645

namespace A205249

/-- `Δ[A204091(n+2)]+4` -/
def P13668328957054799645.Spec : Prop :=
  ∀ n, P13668328957054799645.a n = A205249 (n + 1)

end A205249

/-! ## A205249.P15902629329683513766

`4-Δ[A106709(n+2)]`
-/

namespace A205249.P15902629329683513766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106709 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A205249.P15902629329683513766

namespace A205249

/-- `4-Δ[A106709(n+2)]` -/
def P15902629329683513766.Spec : Prop :=
  ∀ n, P15902629329683513766.a n = A205249 (n + 1)

end A205249

/-! ## A205249.P5569911165611854601

`4*(A020698(n+1)+1)`
-/

namespace A205249.P5569911165611854601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A020698 (n + 1) + 1)

end

end A205249.P5569911165611854601

namespace A205249

/-- `4*(A020698(n+1)+1)` -/
def P5569911165611854601.Spec : Prop :=
  ∀ n, P5569911165611854601.a n = A205249 (n + 1)

end A205249

/-! ## A205249.P14382833470063040363

`2*(A052913(n+2)+2)`
-/

namespace A205249.P14382833470063040363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052913 (n + 2) + 2)

end

end A205249.P14382833470063040363

namespace A205249

/-- `2*(A052913(n+2)+2)` -/
def P14382833470063040363.Spec : Prop :=
  ∀ n, P14382833470063040363.a n = A205249 (n + 1)

end A205249

/-!
# A205250: Number of (n+1) X 4 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock the same.

The programs for A205250, there is no canonical definition to state claims against.
-/

/-! ## A205250.P15255777719180569004

`A203373(n+1)+4`
-/

namespace A205250.P15255777719180569004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203373 (n + 1) + 4

end

end A205250.P15255777719180569004

/-! ## A205250.P9361172605062506279

`2*A205313(n+1)`
-/

namespace A205250.P9361172605062506279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205313 (n + 1)

end

end A205250.P9361172605062506279

/-! ## A205250.P10702351801042097435

`4*(A078100(n+2)+1)`
-/

namespace A205250.P10702351801042097435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A078100 (n + 2) + 1)

end

end A205250.P10702351801042097435

/-! ## A205250.P17798910275686995635

`4/3*A209506(n+1)+4`
-/

namespace A205250.P17798910275686995635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209506 (n + 1) : ℚ) + 4

end

end A205250.P17798910275686995635

/-! ## A205250.P12544074421552646784

`A205313(A000027(n+1))+A205313(n+1)`
-/

namespace A205250.P12544074421552646784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205313 (A000027 (n + 1)).toNat + A205313 (n + 1)

end

end A205250.P12544074421552646784

/-!
# A205251: Number of (n+1) X 5 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock the same.

The programs for A205251, there is no canonical definition to state claims against.
-/

/-! ## A205251.P4545375619028687392

`A203374(n+1)+4`
-/

namespace A205251.P4545375619028687392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203374 (n + 1) + 4

end

end A205251.P4545375619028687392

/-! ## A205251.P4977625127529533815

`2*A205314(n+1)`
-/

namespace A205251.P4977625127529533815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205314 (n + 1)

end

end A205251.P4977625127529533815

/-! ## A205251.P10501352696491731582

`4*(A207994(n+2)+1)`
-/

namespace A205251.P10501352696491731582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A207994 (n + 2) + 1)

end

end A205251.P10501352696491731582

/-! ## A205251.P15612797885792099316

`A205255(A374004(n+1))`
-/

namespace A205251.P15612797885792099316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205255 (A374004 (n + 1)).toNat

end

end A205251.P15612797885792099316

/-! ## A205251.P12057196179746849060

`A205255(A141214(n)+7)`
-/

namespace A205251.P12057196179746849060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205255 (A141214 n + 7).toNat

end

end A205251.P12057196179746849060

/-!
# A205252: Number of (n+1)X6 0..1 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205252, there is no canonical definition to state claims against.
-/

/-! ## A205252.P393014133347421564

`A203375(n+1)+4`
-/

namespace A205252.P393014133347421564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203375 (n + 1) + 4

end

end A205252.P393014133347421564

/-! ## A205252.P12414158553787099578

`2*A205315(n+1)`
-/

namespace A205252.P12414158553787099578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205315 (n + 1)

end

end A205252.P12414158553787099578

/-! ## A205252.P9254005116050778158

`2*(A206147(n+1)/3+2)`
-/

namespace A205252.P9254005116050778158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A206147 (n + 1) : ℚ) / 3 + 2)

end

end A205252.P9254005116050778158

/-! ## A205252.P7721121752212926953

`A205255(A374005(n+1))`
-/

namespace A205252.P7721121752212926953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205255 (A374005 (n + 1)).toNat

end

end A205252.P7721121752212926953

/-! ## A205252.P13999343080580562340

`A205255(eq[6, A131818(n+1)])`
-/

namespace A205252.P13999343080580562340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205252.P13999343080580562340

/-!
# A205253: Number of (n+1)X7 0..1 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205253, there is no canonical definition to state claims against.
-/

/-! ## A205253.P2327067034425548456

`A203376(n+1)+4`
-/

namespace A205253.P2327067034425548456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203376 (n + 1) + 4

end

end A205253.P2327067034425548456

/-! ## A205253.P9510571490899080295

`2*A205316(n+1)`
-/

namespace A205253.P9510571490899080295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205316 (n + 1)

end

end A205253.P9510571490899080295

/-! ## A205253.P4543409666468917065

`4*(A207996(n+2)+1)`
-/

namespace A205253.P4543409666468917065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A207996 (n + 2) + 1)

end

end A205253.P4543409666468917065

/-! ## A205253.P7677229128030912155

`2/3*A206148(n+1)+4`
-/

namespace A205253.P7677229128030912155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A206148 (n + 1) : ℚ) + 4

end

end A205253.P7677229128030912155

/-! ## A205253.P8794249186029125044

`4/3*A209509(n+1)+4`
-/

namespace A205253.P8794249186029125044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209509 (n + 1) : ℚ) + 4

end

end A205253.P8794249186029125044

/-! ## A205253.P12107323933567770434

`A205316(n+1)+A205316(n+1)%A205317(n+1)`
-/

namespace A205253.P12107323933567770434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205316 (n + 1) + Int.tmod (A205316 (n + 1)) (A205317 (n + 1))

end

end A205253.P12107323933567770434

/-!
# A205254: Number of (n+1)X8 0..1 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205254, there is no canonical definition to state claims against.
-/

/-! ## A205254.P14924811905641333777

`A203377(n+1)+4`
-/

namespace A205254.P14924811905641333777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203377 (n + 1) + 4

end

end A205254.P14924811905641333777

/-! ## A205254.P9846879666993845937

`2*A205317(n+1)`
-/

namespace A205254.P9846879666993845937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205317 (n + 1)

end

end A205254.P9846879666993845937

/-! ## A205254.P12083792453165166115

`2*(A206149(n+1)/3+2)`
-/

namespace A205254.P12083792453165166115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A206149 (n + 1) : ℚ) / 3 + 2)

end

end A205254.P12083792453165166115

/-! ## A205254.P12238461222313101681

`2*ceil(2*(A209510(n+1)+2)/3)`
-/

namespace A205254.P12238461222313101681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(2 * (A209510 (n + 1) + 2) : ℚ) / 3⌉

end

end A205254.P12238461222313101681

/-! ## A205254.P4613216752347408942

`A206149(n+1)+6-A205317(n+1)`
-/

namespace A205254.P4613216752347408942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206149 (n + 1) + (6 - A205317 (n + 1))

end

end A205254.P4613216752347408942

/-! ## A205254.P17139635097883196084

`A205317(n+1)+A205317(n+1)%A209510(n+1)`
-/

namespace A205254.P17139635097883196084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205317 (n + 1) + Int.tmod (A205317 (n + 1)) (A209510 (n + 1))

end

end A205254.P17139635097883196084

/-!
# A205255: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205255, there is no canonical definition to state claims against.
-/

/-! ## A205255.P9280648693037025295

`A203378(n+1)+4`
-/

namespace A205255.P9280648693037025295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203378 (n + 1) + 4

end

end A205255.P9280648693037025295

/-! ## A205255.P15968786001347423998

`2*A205318(n+1)`
-/

namespace A205255.P15968786001347423998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205318 (n + 1)

end

end A205255.P15968786001347423998

/-! ## A205255.P397237484975206392

`A205318(char[1]+1+n)+A205318(n+1)`
-/

namespace A205255.P397237484975206392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205318 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A205318 (n + 1)

end

end A205255.P397237484975206392

/-! ## A205255.P13864052865223783283

`A205318(n+1)+root(A205318(n+1), A000027(n+1)-n)`
-/

namespace A205255.P13864052865223783283
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205318 (n + 1) : ℝ) + (A205318 (n + 1) : ℝ) ^ (1 / (A000027 (n + 1) - (n : ℤ) : ℝ))

end

end A205255.P13864052865223783283

/-! ## A205255.P9716478441923808739

`A205318(n+1)+A205318(n+1)%A110287(n)`
-/

namespace A205255.P9716478441923808739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205318 (n + 1) + Int.tmod (A205318 (n + 1)) (A110287 n)

end

end A205255.P9716478441923808739

/-!
# A205256: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..1 introduced in row major order.

The programs for A205256, there is no canonical definition to state claims against.
-/

/-! ## A205256.P16242103553153245817

`A205264((n+1)²+n²)`
-/

namespace A205256.P16242103553153245817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 ((n + 1) ^ 2 + n ^ 2)

end

end A205256.P16242103553153245817

/-!
# A205257: Number of (n+2) X 3 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..1 introduced in row major order.

The programs for A205257, there is no canonical definition to state claims against.
-/

/-! ## A205257.P11203885861011328326

`A205264(∑[n]+1)`
-/

namespace A205257.P11203885861011328326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205257.P11203885861011328326

/-! ## A205257.P4815652056564919146

`lcm(2, A205264(A000124(n)))`
-/

namespace A205257.P4815652056564919146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205264 (A000124 n).toNat)

end

end A205257.P4815652056564919146

/-! ## A205257.P3524994787342336625

`record[A010054(n)*A205264(n+1)]`
-/

namespace A205257.P3524994787342336625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205257.P3524994787342336625

/-! ## A205257.P11292528111720648043

`record[gcd(A002262(n), A205264(n+1))]`
-/

namespace A205257.P11292528111720648043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205264 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205257.P11292528111720648043

/-! ## A205257.P14641030785296194009

`record[(1-A280810(n+1))*A205264(n+1)]`
-/

namespace A205257.P14641030785296194009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A280810 (n + 1)) * A205264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205257.P14641030785296194009

/-!
# A205258: Number of (n+2)X4 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..1 introduced in row major order.

The programs for A205258, there is no canonical definition to state claims against.
-/

/-! ## A205258.P7190686675623220599

`A205264(∑[n+1]+2)`
-/

namespace A205258.P7190686675623220599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205258.P7190686675623220599

/-! ## A205258.P13083289722688644460

`record[A010054(n)*A205264(n+2)]`
-/

namespace A205258.P13083289722688644460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205264 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205258.P13083289722688644460

/-! ## A205258.P8825394124055486116

`record[gcd(A002262(n), A205264(n+2))]`
-/

namespace A205258.P8825394124055486116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205264 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205258.P8825394124055486116

/-! ## A205258.P14451505567469813635

`record[A205264(A198455(n+1))]`
-/

namespace A205258.P14451505567469813635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205258.P14451505567469813635

/-! ## A205258.P2112383884782213819

`record[A205264(A333530(n+1))]`
-/

namespace A205258.P2112383884782213819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205258.P2112383884782213819

/-!
# A205259: Number of (n+2)X5 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..1 introduced in row major order.

The programs for A205259, there is no canonical definition to state claims against.
-/

/-! ## A205259.P15750103460083553489

`A205264(∑[n+2]+4)`
-/

namespace A205259.P15750103460083553489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205259.P15750103460083553489

/-! ## A205259.P2641361707339293152

`A205264(A167614(n+1))+A184945(n)`
-/

namespace A205259.P2641361707339293152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A167614 (n + 1)).toNat + A184945 n

end

end A205259.P2641361707339293152

/-! ## A205259.P7761232035901112480

`lcm(A033999(n), A205264(A167614(n+1)))`
-/

namespace A205259.P7761232035901112480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A205264 (A167614 (n + 1)).toNat)

end

end A205259.P7761232035901112480

/-! ## A205259.P5813684637935877457

`A205264(A167614(n+1))%A205260(n+1)`
-/

namespace A205259.P5813684637935877457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205264 (A167614 (n + 1)).toNat) (A205260 (n + 1))

end

end A205259.P5813684637935877457

/-! ## A205259.P11377900178718559236

`record[A205264(A198464(n+1))]`
-/

namespace A205259.P11377900178718559236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205259.P11377900178718559236

/-!
# A205260: Number of (n+2)X6 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..1 introduced in row major order.

The programs for A205260, there is no canonical definition to state claims against.
-/

/-! ## A205260.P16597562850872455076

`A205264(A374004(n+1))`
-/

namespace A205260.P16597562850872455076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A374004 (n + 1)).toNat

end

end A205260.P16597562850872455076

/-! ## A205260.P16361551065579418492

`A205264(A052905(n)+9)`
-/

namespace A205260.P16361551065579418492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A052905 n + 9).toNat

end

end A205260.P16361551065579418492

/-! ## A205260.P12563266233573630349

`A205264(A055999(n)+10)`
-/

namespace A205260.P12563266233573630349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A055999 n + 10).toNat

end

end A205260.P12563266233573630349

/-! ## A205260.P4747071075599039670

`A205264(A167614(n+2)+1)`
-/

namespace A205260.P4747071075599039670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A167614 (n + 2) + 1).toNat

end

end A205260.P4747071075599039670

/-! ## A205260.P2847618527290913588

`A205264(Δ[A023545(n+1)-n²])`
-/

namespace A205260.P2847618527290913588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (f1 (n + 1) - f1 n).toNat

end

end A205260.P2847618527290913588

/-!
# A205261: Number of (n+2)X7 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..1 introduced in row major order.

The programs for A205261, there is no canonical definition to state claims against.
-/

/-! ## A205261.P5782634514400366194

`A205264(A374005(n+1))`
-/

namespace A205261.P5782634514400366194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A374005 (n + 1)).toNat

end

end A205261.P5782634514400366194

/-! ## A205261.P17707380861283635980

`A205264(eq[4, A193592(n)])`
-/

namespace A205261.P17707380861283635980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205261.P17707380861283635980

/-! ## A205261.P3210468314639071722

`A205264(Δ[A023545(n+1)])`
-/

namespace A205261.P3210468314639071722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (f1 (n + 1) - f1 n).toNat

end

end A205261.P3210468314639071722

/-!
# A205262: Number of (n+2)X8 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..1 introduced in row major order.

The programs for A205262, there is no canonical definition to state claims against.
-/

/-! ## A205262.P2547074669186187102

`A205264(A374007(n+1))`
-/

namespace A205262.P2547074669186187102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A374007 (n + 1)).toNat

end

end A205262.P2547074669186187102

/-! ## A205262.P3827055944931635429

`A205264(Δ[A023545(n+1)]+10)`
-/

namespace A205262.P3827055944931635429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (f1 (n + 1) - f1 n + 10).toNat

end

end A205262.P3827055944931635429

/-! ## A205262.P6685380442750655131

`A205264(eq[5, A193592(n)])`
-/

namespace A205262.P6685380442750655131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205262.P6685380442750655131

/-! ## A205262.P1129464083682770977

`A205264(Δ[Δ[A006504(n+1)]])`
-/

namespace A205262.P1129464083682770977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (f1 (n + 1) - f1 n).toNat

end

end A205262.P1129464083682770977

/-!
# A205263: 

The programs for A205263, there is no canonical definition to state claims against.
-/

/-! ## A205263.P2563213924017944065

`A205264(A167499(n+5)+2)`
-/

namespace A205263.P2563213924017944065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A167499 (n + 5) + 2).toNat

end

end A205263.P2563213924017944065

/-! ## A205263.P13807197882924767505

`A205264(eq[6, A193592(n)])`
-/

namespace A205263.P13807197882924767505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205263.P13807197882924767505

/-! ## A205263.P1154134370649143457

`A205264(A052905(n+4)-1)`
-/

namespace A205263.P1154134370649143457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A052905 (n + 4) - 1).toNat

end

end A205263.P1154134370649143457

/-! ## A205263.P18425425967995265920

`A205264(A027379(n+5)-3)`
-/

namespace A205263.P18425425967995265920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205264 (A027379 (n + 5) - 3).toNat

end

end A205263.P18425425967995265920

/-!
# A205265: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A205265, there is no canonical definition to state claims against.
-/

/-! ## A205265.P18438466029975324999

`A205273((n+1)²+n²)`
-/

namespace A205265.P18438466029975324999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 ((n + 1) ^ 2 + n ^ 2)

end

end A205265.P18438466029975324999

/-!
# A205266: Number of (n+2)X3 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A205266, there is no canonical definition to state claims against.
-/

/-! ## A205266.P8491158088939093294

`A205273(∑[n]+1)`
-/

namespace A205266.P8491158088939093294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205266.P8491158088939093294

/-! ## A205266.P7542447472711602290

`record[A010054(n)*A205273(n+1)]`
-/

namespace A205266.P7542447472711602290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205266.P7542447472711602290

/-! ## A205266.P158713066607393016

`record[root(A205273(n+1), A132046(n))]`
-/

namespace A205266.P158713066607393016
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205273 (n + 1) : ℝ) ^ (1 / (A132046 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205266.P158713066607393016

/-! ## A205266.P1478915411068325438

`record[root(A205273(n+1), A202390(n))]`
-/

namespace A205266.P1478915411068325438
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205273 (n + 1) : ℝ) ^ (1 / (A202390 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205266.P1478915411068325438

/-! ## A205266.P2345651016339729792

`record[gcd(A002262(n), A205273(n+1))]`
-/

namespace A205266.P2345651016339729792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205273 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205266.P2345651016339729792

/-!
# A205267: Number of (n+2) X 4 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A205267, there is no canonical definition to state claims against.
-/

/-! ## A205267.P9274283215275099881

`A205273(∑[n+1]+2)`
-/

namespace A205267.P9274283215275099881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205267.P9274283215275099881

/-! ## A205267.P1979731210120462109

`record[A010054(n)*A205273(n+2)]`
-/

namespace A205267.P1979731210120462109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205267.P1979731210120462109

/-! ## A205267.P12003564294114800760

`record[gcd(A002262(n), A205273(n+2))]`
-/

namespace A205267.P12003564294114800760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205273 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205267.P12003564294114800760

/-! ## A205267.P3957231209831873545

`record[root(A205273(n+2), A019538(n+1))]`
-/

namespace A205267.P3957231209831873545
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205273 (n + 2) : ℝ) ^ (1 / (A019538 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205267.P3957231209831873545

/-! ## A205267.P9661370694740401965

`record[root(A205273(n+2), A142075(n+1))]`
-/

namespace A205267.P9661370694740401965
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205273 (n + 2) : ℝ) ^ (1 / (A142075 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205267.P9661370694740401965

/-!
# A205268: Number of (n+2)X5 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A205268, there is no canonical definition to state claims against.
-/

/-! ## A205268.P8279102623518642819

`A205273(∑[n+2]+4)`
-/

namespace A205268.P8279102623518642819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205268.P8279102623518642819

/-! ## A205268.P15974086731049987313

`record[A205273(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A205268.P15974086731049987313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205268.P15974086731049987313

/-! ## A205268.P12178884044125445067

`lcm(A033999(n), A205273(A167614(n+1)))`
-/

namespace A205268.P12178884044125445067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A205273 (A167614 (n + 1)).toNat)

end

end A205268.P12178884044125445067

/-! ## A205268.P15932598528604415095

`or(A000007(n), A205273(A167614(n+1)))`
-/

namespace A205268.P15932598528604415095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A205273 (A167614 (n + 1)).toNat)

end

end A205268.P15932598528604415095

/-! ## A205268.P1429887894615663908

`A205273(A167614(n+1))%A205259(n+1)`
-/

namespace A205268.P1429887894615663908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205273 (A167614 (n + 1)).toNat) (A205259 (n + 1))

end

end A205268.P1429887894615663908

/-!
# A205269: Number of (n+2)X6 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A205269, there is no canonical definition to state claims against.
-/

/-! ## A205269.P464142453383222128

`A205273(A374004(n+1))`
-/

namespace A205269.P464142453383222128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A374004 (n + 1)).toNat

end

end A205269.P464142453383222128

/-! ## A205269.P2967838033748410938

`A205273(A141214(n)+7)`
-/

namespace A205269.P2967838033748410938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A141214 n + 7).toNat

end

end A205269.P2967838033748410938

/-! ## A205269.P3626875791012394253

`A205273(A052905(n)+9)`
-/

namespace A205269.P3626875791012394253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A052905 n + 9).toNat

end

end A205269.P3626875791012394253

/-! ## A205269.P7582119162012437512

`A205273(A167614(n+2)+1)`
-/

namespace A205269.P7582119162012437512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A167614 (n + 2) + 1).toNat

end

end A205269.P7582119162012437512

/-! ## A205269.P6353568003134566059

`A205273(A166136(n+2)-2)`
-/

namespace A205269.P6353568003134566059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A166136 (n + 2) - 2).toNat

end

end A205269.P6353568003134566059

/-!
# A205270: Number of (n+2)X7 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A205270, there is no canonical definition to state claims against.
-/

/-! ## A205270.P931028031082734135

`A205273(A374005(n+1))`
-/

namespace A205270.P931028031082734135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A374005 (n + 1)).toNat

end

end A205270.P931028031082734135

/-! ## A205270.P9190487449302502316

`A205273(A155212(n)+13)`
-/

namespace A205270.P9190487449302502316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A155212 n + 13).toNat

end

end A205270.P9190487449302502316

/-! ## A205270.P7666845596228169254

`A205273(A056000(n)+15)`
-/

namespace A205270.P7666845596228169254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A056000 n + 15).toNat

end

end A205270.P7666845596228169254

/-! ## A205270.P4855815685008031854

`A205273(eq[7, A066657(n)])`
-/

namespace A205270.P4855815685008031854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205270.P4855815685008031854

/-!
# A205271: Number of (n+2)X8 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..1 introduced in row major order.

The programs for A205271, there is no canonical definition to state claims against.
-/

/-! ## A205271.P5488686058708489912

`A205273(A374007(n+1))`
-/

namespace A205271.P5488686058708489912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (A374007 (n + 1)).toNat

end

end A205271.P5488686058708489912

/-! ## A205271.P10835118141595359623

`A205273(eq[3, A219347(n)])`
-/

namespace A205271.P10835118141595359623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205271.P10835118141595359623

/-!
# A205274: Number of (n+1)X3 0..3 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205274, there is no canonical definition to state claims against.
-/

/-! ## A205274.P3119786967490472738

`A205277(∑[n+1]+2)`
-/

namespace A205274.P3119786967490472738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205277 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205274.P3119786967490472738

/-! ## A205274.P1449591529328322400

`record[A010054(n)*A205277(n+2)]`
-/

namespace A205274.P1449591529328322400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205274.P1449591529328322400

/-! ## A205274.P15798076474460861463

`record[root(A205277(n+2), A019538(n+1))]`
-/

namespace A205274.P15798076474460861463
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205277 (n + 2) : ℝ) ^ (1 / (A019538 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205274.P15798076474460861463

/-! ## A205274.P14613090564281354106

`record[root(A205277(n+2), A142075(n+1))]`
-/

namespace A205274.P14613090564281354106
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205277 (n + 2) : ℝ) ^ (1 / (A142075 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205274.P14613090564281354106

/-!
# A205275: Number of (n+1)X4 0..3 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205275, there is no canonical definition to state claims against.
-/

/-! ## A205275.P4146711958326593506

`A205277(A167614(n+1))`
-/

namespace A205275.P4146711958326593506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205277 (A167614 (n + 1)).toNat

end

end A205275.P4146711958326593506

/-! ## A205275.P14244385363952055184

`A205277(A020752(n)-1)`
-/

namespace A205275.P14244385363952055184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205277 (A020752 n - 1).toNat

end

end A205275.P14244385363952055184

/-!
# A205276: Number of (n+1)X5 0..3 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205276, there is no canonical definition to state claims against.
-/

/-! ## A205276.P6504916744860434053

`A205277(∑[n+4]+3)`
-/

namespace A205276.P6504916744860434053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205277 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A205276.P6504916744860434053

/-!
# A205278: Number of (n+1)X3 0..3 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205278, there is no canonical definition to state claims against.
-/

/-! ## A205278.P307484815552509211

`A205281(∑[n+2])`
-/

namespace A205278.P307484815552509211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205278.P307484815552509211

/-! ## A205278.P3279671555768666158

`lcm(2, A205281(A000096(n+1)))`
-/

namespace A205278.P3279671555768666158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205281 (A000096 (n + 1)).toNat)

end

end A205278.P3279671555768666158

/-! ## A205278.P17523631362014740762

`record[A205281(Δ[A003453(n+5)])]`
-/

namespace A205278.P17523631362014740762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205278.P17523631362014740762

/-!
# A205279: Number of (n+1)X4 0..3 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205279, there is no canonical definition to state claims against.
-/

/-! ## A205279.P16623703506458571261

`A205281(∑[n+3]+1)`
-/

namespace A205279.P16623703506458571261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205279.P16623703506458571261

/-!
# A205280: Number of (n+1)X5 0..3 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205280, there is no canonical definition to state claims against.
-/

/-! ## A205280.P13696632305904849434

`A205281(∑[n+4]+3)`
-/

namespace A205280.P13696632305904849434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A205280.P13696632305904849434

/-!
# A205282: Number of 3X(n+1) 0..3 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205282, there is no canonical definition to state claims against.
-/

/-! ## A205282.P16802920358319002296

`A205281(∑[n+1]+2)`
-/

namespace A205282.P16802920358319002296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205282.P16802920358319002296

/-! ## A205282.P1675302503790315974

`record[A205281(A335680(3*n+2))]`
-/

namespace A205282.P1675302503790315974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (A335680 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205282.P1675302503790315974

/-! ## A205282.P2747822713535043320

`record[gcd(A111838(n), A205281(n+3))]`
-/

namespace A205282.P2747822713535043320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111838 n) (A205281 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205282.P2747822713535043320

/-!
# A205283: Number of 4X(n+1) 0..3 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205283, there is no canonical definition to state claims against.
-/

/-! ## A205283.P13641944336035851593

`A205281(∑[n+2]+4)`
-/

namespace A205283.P13641944336035851593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205283.P13641944336035851593

/-!
# A205284: Number of 5X(n+1) 0..3 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205284, there is no canonical definition to state claims against.
-/

/-! ## A205284.P8764422193801027064

`A205281(∑[n+3]+7)`
-/

namespace A205284.P8764422193801027064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205281 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205284.P8764422193801027064

/-!
# A205285: Number of (n+1)X(n+1) 0..2 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205285, there is no canonical definition to state claims against.
-/

/-! ## A205285.P1698080820247045622

`A205293(∑[4*n]+1)`
-/

namespace A205285.P1698080820247045622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205285.P1698080820247045622

/-!
# A205286: Number of (n+1)X2 0..2 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205286, there is no canonical definition to state claims against.
-/

/-! ## A205286.P3313173773581066343

`A205293(∑[n]+1)`
-/

namespace A205286.P3313173773581066343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205286.P3313173773581066343

/-! ## A205286.P8997317043573828794

`record[A010054(n)*A205293(n+1)]`
-/

namespace A205286.P8997317043573828794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205286.P8997317043573828794

/-! ## A205286.P12446911246870867293

`record[A205293(n+1)/A174303(n)]`
-/

namespace A205286.P12446911246870867293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205293 (n + 1) : ℚ) / (A174303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205286.P12446911246870867293

/-! ## A205286.P15030186547062386186

`record[root(A205293(n+1), A082137(n))]`
-/

namespace A205286.P15030186547062386186
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205293 (n + 1) : ℝ) ^ (1 / (A082137 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205286.P15030186547062386186

/-! ## A205286.P4993117399883555547

`record[root(A205293(n+1), A174301(n))]`
-/

namespace A205286.P4993117399883555547
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205293 (n + 1) : ℝ) ^ (1 / (A174301 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205286.P4993117399883555547

/-!
# A205287: Number of (n+1) X 3 0..2 arrays with permanents of 2 X 2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205287, there is no canonical definition to state claims against.
-/

/-! ## A205287.P4162888239121952229

`A205293(∑[n+1]+2)`
-/

namespace A205287.P4162888239121952229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205287.P4162888239121952229

/-! ## A205287.P8013166427780487026

`record[A010054(n)*A205293(n+2)]`
-/

namespace A205287.P8013166427780487026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205293 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205287.P8013166427780487026

/-! ## A205287.P12387387735297747588

`record[A205293(n+3)/A159764(n)]`
-/

namespace A205287.P12387387735297747588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205293 (n + 3) : ℚ) / (A159764 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205287.P12387387735297747588

/-! ## A205287.P3547206349969293041

`record[gcd(A205293(n+2), A324362(n))]`
-/

namespace A205287.P3547206349969293041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205293 (n + 2)) (A324362 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205287.P3547206349969293041

/-! ## A205287.P18340949836755773341

`lcm(2, A205293(A000096(n+1)))`
-/

namespace A205287.P18340949836755773341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205293 (A000096 (n + 1)).toNat)

end

end A205287.P18340949836755773341

/-!
# A205288: Number of (n+1)X4 0..2 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205288, there is no canonical definition to state claims against.
-/

/-! ## A205288.P11450848245352750447

`A205293(∑[n+2]+4)`
-/

namespace A205288.P11450848245352750447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205288.P11450848245352750447

/-! ## A205288.P9758274416257704211

`A277165(n)+A205293(A167614(n+1))`
-/

namespace A205288.P9758274416257704211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 n + A205293 (A167614 (n + 1)).toNat

end

end A205288.P9758274416257704211

/-! ## A205288.P17413028553435277039

`lcm(A000034(n), A205293(A167614(n+1)))`
-/

namespace A205288.P17413028553435277039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A205293 (A167614 (n + 1)).toNat)

end

end A205288.P17413028553435277039

/-! ## A205288.P2624843568029199991

`A282338(n+1)+A205293(A167614(n+1))`
-/

namespace A205288.P2624843568029199991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (n + 1) + A205293 (A167614 (n + 1)).toNat

end

end A205288.P2624843568029199991

/-! ## A205288.P16729022271587607534

`A335446(n+1)+A205293(A167614(n+1))`
-/

namespace A205288.P16729022271587607534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (n + 1) + A205293 (A167614 (n + 1)).toNat

end

end A205288.P16729022271587607534

/-!
# A205289: Number of (n+1)X5 0..2 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205289, there is no canonical definition to state claims against.
-/

/-! ## A205289.P17377000049000861096

`A205293(∑[n+3]+7)`
-/

namespace A205289.P17377000049000861096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205289.P17377000049000861096

/-! ## A205289.P4442988880584248085

`lcm(2, A205293(A056000(n)+7))`
-/

namespace A205289.P4442988880584248085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205293 (A056000 n + 7).toNat)

end

end A205289.P4442988880584248085

/-!
# A205290: Number of (n+1)X6 0..2 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205290, there is no canonical definition to state claims against.
-/

/-! ## A205290.P16683922568781692912

`A205293(A374005(n+1))`
-/

namespace A205290.P16683922568781692912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (A374005 (n + 1)).toNat

end

end A205290.P16683922568781692912

/-! ## A205290.P15680161309392948474

`A205293(A155212(n)+13)`
-/

namespace A205290.P15680161309392948474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (A155212 n + 13).toNat

end

end A205290.P15680161309392948474

/-! ## A205290.P4205231155609080045

`A205293(A056000(n)+15)`
-/

namespace A205290.P4205231155609080045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (A056000 n + 15).toNat

end

end A205290.P4205231155609080045

/-! ## A205290.P9787384745864147402

`A205293(eq[7, A066657(n)])`
-/

namespace A205290.P9787384745864147402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205290.P9787384745864147402

/-! ## A205290.P4596454941332202394

`A205293(A051936(n+4)+14)`
-/

namespace A205290.P4596454941332202394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (A051936 (n + 4) + 14).toNat

end

end A205290.P4596454941332202394

/-!
# A205291: Number of (n+1)X7 0..2 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205291, there is no canonical definition to state claims against.
-/

/-! ## A205291.P3053466311239710617

`A205293(A374007(n+1))`
-/

namespace A205291.P3053466311239710617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (A374007 (n + 1)).toNat

end

end A205291.P3053466311239710617

/-! ## A205291.P16002777905159221556

`A205293(A166136(n+4))`
-/

namespace A205291.P16002777905159221556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (A166136 (n + 4)).toNat

end

end A205291.P16002777905159221556

/-!
# A205292: Number of (n+1)X8 0..2 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205292, there is no canonical definition to state claims against.
-/

/-! ## A205292.P368635011719562172

`A205293(A374008(n+1))`
-/

namespace A205292.P368635011719562172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205293 (A374008 (n + 1)).toNat

end

end A205292.P368635011719562172

/-!
# A205295: Number of connected 5-regular simple graphs on 2n vertices with girth at least 5.

The programs for A205295, there is no canonical definition to state claims against.
-/

/-! ## A205295.P16976633199053701071

`floor(acot(n))+(n-11)*∑[C(n+1, 16)]`
-/

namespace A205295.P16976633199053701071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((n : ℤ) - 11) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A205295.P16976633199053701071

/-! ## A205295.P17768943819797153014

`∏{e}[2^n, A184955(#)]`
-/

namespace A205295.P17768943819797153014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A184955 (Nat.factorization (f1 n) p)

end

end A205295.P17768943819797153014

/-! ## A205295.P1128973897212018993

`C(A184955(n), dr(∑[n]))`
-/

namespace A205295.P1128973897212018993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A184955 n).toNat (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A205295.P1128973897212018993

/-! ## A205295.P9581768893341526875

`A184955(a(n-2)+n)` with `a(0)=1, a(1)=0`
-/

namespace A205295.P9581768893341526875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A184955 (a (n - 2) + (n : ℤ)).toNat

end

end A205295.P9581768893341526875

/-! ## A205295.P9398709473491627937

`A184955(or(n, a(n-2)))` with `a(0)=1, a(1)=0`
-/

namespace A205295.P9398709473491627937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A184955 (Int.lor (n : ℤ) (a (n - 2))).toNat

end

end A205295.P9398709473491627937

