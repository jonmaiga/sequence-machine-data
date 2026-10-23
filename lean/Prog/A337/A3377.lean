import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A337700: Place two n-gons with radii 1 and 2 concentrically, forming an annular area between them. Connect all the vertices with line segments that lie entirely within that area. Then a(n) is the number of regions in that figure.

The programs for A337700, there is no canonical definition to state claims against.
-/

/-! ## A337700.P7563250793557755338

`A337702(n+3)-A337701(n+3)`
-/

namespace A337700.P7563250793557755338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337702 (n + 3) - A337701 (n + 3)

end

end A337700.P7563250793557755338

/-! ## A337700.P10473162292890130347

`A337702(n+3)+-A337701(n+3)%A337702(2*n+7)`
-/

namespace A337700.P10473162292890130347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337702 (n + 3) + Int.tmod (-A337701 (n + 3)) (A337702 (2 * n + 7))

end

end A337700.P10473162292890130347

/-!
# A337701: Place two n-gons with radii 1 and 2 concentrically, forming an annular area between them. Connect all the vertices with line segments that lie entirely within that area. Then a(n) is the number of vertices in that figure.

The programs for A337701, there is no canonical definition to state claims against.
-/

/-! ## A337701.P3996758219811891079

`A337702(n+3)-A337700(n+3)`
-/

namespace A337701.P3996758219811891079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337702 (n + 3) - A337700 (n + 3)

end

end A337701.P3996758219811891079

/-! ## A337701.P2954302682512035058

`A337702(A009056(n+1))%A337700(n+3)`
-/

namespace A337701.P2954302682512035058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337702 (A009056 (n + 1)).toNat) (A337700 (n + 3))

end

end A337701.P2954302682512035058

/-! ## A337701.P7829225195697845273

`A337702(A000027(n+3))%A337700(n+3)`
-/

namespace A337701.P7829225195697845273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337702 (A000027 (n + 3)).toNat) (A337700 (n + 3))

end

end A337701.P7829225195697845273

/-! ## A337701.P6669101293295544756

`A000038(n+1)+A337702(n+3)%A337700(n+3)`
-/

namespace A337701.P6669101293295544756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + Int.tmod (A337702 (n + 3)) (A337700 (n + 3))

end

end A337701.P6669101293295544756

/-! ## A337701.P14964076984644826108

`A337702(n+3)+-A337700(n+3)%A337700(2*(n+2))`
-/

namespace A337701.P14964076984644826108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337702 (n + 3) + Int.tmod (-A337700 (n + 3)) (A337700 (2 * (n + 2)))

end

end A337701.P14964076984644826108

/-!
# A337702: Place two n-gons with radii 1 and 2 concentrically, forming an annular area between them. Connect all the vertices with line segments that lie entirely within that area. Then a(n) is the number of edges in that figure.

The programs for A337702, there is no canonical definition to state claims against.
-/

/-! ## A337702.P10381798355513160455

`A337700(n+3)+A337701(n+3)`
-/

namespace A337702.P10381798355513160455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337700 (n + 3) + A337701 (n + 3)

end

end A337702.P10381798355513160455

/-! ## A337702.P15565919958254598024

`A131030(A207208(2*n+1))*A333491(n+1)`
-/

namespace A337702.P15565919958254598024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131030 (A207208 (2 * n + 1)).toNat * A333491 (n + 1)

end

end A337702.P15565919958254598024

/-!
# A337704: Pythagorean primes that are not congruent numbers.

The programs for A337704, there is no canonical definition to state claims against.
-/

/-! ## A337704.P17980746564905781935

`p?[A009001(A165564(n+1))]`
-/

namespace A337704.P17980746564905781935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A165564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337704.P17980746564905781935

/-! ## A337704.P11260408177982165701

`p?[A009001(A248407(n+1))]`
-/

namespace A337704.P11260408177982165701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A248407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337704.P11260408177982165701

/-! ## A337704.P8553794115428948318

`filter[A248407(n+1), A079260(#)]`
-/

namespace A337704.P8553794115428948318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079260 (f1 j).toNat = 1) n)

end

end A337704.P8553794115428948318

/-! ## A337704.P4184019679890306889

`p?[A005078(p?[A165564(n+1)])]`
-/

namespace A337704.P4184019679890306889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337704.P4184019679890306889

/-! ## A337704.P8216073981316706341

`p?[A062828(p?[A165564(n+1)])]`
-/

namespace A337704.P8216073981316706341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337704.P8216073981316706341

/-! ## A337704.P6442532658607210032

`p?[A170818(p?[A165564(n+1)])]`
-/

namespace A337704.P6442532658607210032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337704.P6442532658607210032

/-! ## A337704.P8930728344791976312

`∩[A001132(n+1), A165564(n+1)]`
-/

namespace A337704.P8930728344791976312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337704.P8930728344791976312

/-! ## A337704.P12693763720100512714

`∩[A002144(n+1), A165564(n+1)]`
-/

namespace A337704.P12693763720100512714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337704.P12693763720100512714

/-! ## A337704.P11928286873086394862

`∩[A007519(n+1), A165564(n+1)]`
-/

namespace A337704.P11928286873086394862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337704.P11928286873086394862

/-! ## A337704.P17860307358415701931

`∩[A045442(n+1), A165564(n+1)]`
-/

namespace A337704.P17860307358415701931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337704.P17860307358415701931

/-!
# A337705: Possible sums of orders of elements of finite groups.

The programs for A337705, there is no canonical definition to state claims against.
-/

/-! ## A337705.P12536493190234586597

`or(1, ∑[A001511(A118034(n))])`
-/

namespace A337705.P12536493190234586597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A118034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337705.P12536493190234586597

/-! ## A337705.P2737136827072440015

`record[or(A046660(n+4), A258208(n+2))]`
-/

namespace A337705.P2737136827072440015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046660 (n + 4)) (A258208 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337705.P2737136827072440015

/-! ## A337705.P13797587027464526984

`lt[A119845((n+1)/2^val(n+1, 2)), (n+1)*∏{p}[n+1, #]]`
-/

namespace A337705.P13797587027464526984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119845 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337705.P13797587027464526984

/-! ## A337705.P5422621990902815384

`record[A176032(A072965(n+1))]`
-/

namespace A337705.P5422621990902815384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176032 (A072965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337705.P5422621990902815384

/-! ## A337705.P12254591939229464402

`record[A176032(A335282(n+1))]`
-/

namespace A337705.P12254591939229464402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176032 (A335282 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337705.P12254591939229464402

/-!
# A337706: Possible values for the product of the orders of all elements of a finite group.

The programs for A337706, there is no canonical definition to state claims against.
-/

/-! ## A337706.P10073230070087834607

`∪[A011782(2*n), A316856(A000664(n+1))]`
-/

namespace A337706.P10073230070087834607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316856 (A000664 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337706.P10073230070087834607

/-! ## A337706.P10600019355372411522

`A061392((n+1)*A227302(n+1))`
-/

namespace A337706.P10600019355372411522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 ((n + 1 : ℤ) * A227302 (n + 1)).toNat

end

end A337706.P10600019355372411522

/-! ## A337706.P4535428309914455832

`and(A008610(A118171(n)), A248959(n))`
-/

namespace A337706.P4535428309914455832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008610 (A118171 n).toNat) (A248959 n)

end

end A337706.P4535428309914455832

/-!
# A337709: Integers m such that A337686(x) = m has no solution.

The programs for A337709, there is no canonical definition to state claims against.
-/

/-! ## A337709.P9067172676606470409

`record[n+2-A139315(n+2)]`
-/

namespace A337709.P9067172676606470409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A139315 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337709.P9067172676606470409

/-! ## A337709.P6862547741568000103

`lt[A139315(A233583(n+1)), A055874(n+1)]`
-/

namespace A337709.P6862547741568000103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139315 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337709.P6862547741568000103

/-!
# A337712: Irregular triangle read by rows: row n gives the complete system of cycles of the doubling sequences modulo N = 2*n+1, for n >= 0.

The programs for A337712, there is no canonical definition to state claims against.
-/

/-! ## A337712.P1141149875507528616

`gcd(record[A089275(n+1)], A342165(n+1))`
-/

namespace A337712.P1141149875507528616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A342165 (n + 1))

end

end A337712.P1141149875507528616

/-! ## A337712.P7597453138843223113

`gcd(A046092(A014162(n)), A342165(n+1))`
-/

namespace A337712.P7597453138843223113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046092 (A014162 n).toNat) (A342165 (n + 1))

end

end A337712.P7597453138843223113

/-! ## A337712.P16166176156164652826

`A143691(and(A074294(n+1), A158861(2*n+3)))`
-/

namespace A337712.P16166176156164652826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (Int.land (A074294 (n + 1)) (A158861 (2 * n + 3))).toNat

end

end A337712.P16166176156164652826

/-! ## A337712.P3871142707631094200

`A332450(A074294(n+1))%A103465(n+3)`
-/

namespace A337712.P3871142707631094200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332450 (A074294 (n + 1)).toNat) (A103465 (n + 3))

end

end A337712.P3871142707631094200

/-! ## A337712.P3169042431430953882

`A113321(A074294(n+1)%A248209(3*(n+1)))`
-/

namespace A337712.P3169042431430953882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113321 (Int.tmod (A074294 (n + 1)) (A248209 (3 * (n + 1)))).toNat

end

end A337712.P3169042431430953882

/-!
# A337713: Irregular triangle T read by rows: row n gives the inverse elements of row n of A216319 Modd(n), for n >= 1.

The programs for A337713, there is no canonical definition to state claims against.
-/

/-! ## A337713.P15733100259199679069

`A071945(p?[A007814(A335431(n+1))])`
-/

namespace A337713.P15733100259199679069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A335431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071945 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A337713.P15733100259199679069

/-! ## A337713.P11578341969991741079

`A343858(lt[A136212(n), A008277(n+1)])`
-/

namespace A337713.P11578341969991741079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343858 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A337713.P11578341969991741079

/-! ## A337713.P7912782055906351896

`gcd(A176727(A304479(n+1)), A328803(n+1))`
-/

namespace A337713.P7912782055906351896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176727 (A304479 (n + 1)).toNat) (A328803 (n + 1))

end

end A337713.P7912782055906351896

/-! ## A337713.P1214001767527262935

`A060501(A060501(n)*A123125(3*n))`
-/

namespace A337713.P1214001767527262935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 (A060501 n * A123125 (3 * n)).toNat

end

end A337713.P1214001767527262935

/-! ## A337713.P13613487416284001198

`A003961(A001937(n))%A000010(n+3)`
-/

namespace A337713.P13613487416284001198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A001937 n).toNat) (A000010 (n + 3))

end

end A337713.P13613487416284001198

/-!
# A337714: Euler totient function phi(N) divided by the multiplicative order of 3 modulo N, with N = N(n) = floor((3*n-1)/2), for n >= 1.

The programs for A337714, there is no canonical definition to state claims against.
-/

/-! ## A337714.P15327199826865584592

`A327812(comp[3*n])`
-/

namespace A337714.P15327199826865584592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327812 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A337714.P15327199826865584592

/-! ## A337714.P1477001357572074269

`A337937(n+1)/A053446(n+1)`
-/

namespace A337714.P1477001357572074269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337937 (n + 1) : ℚ) / (A053446 (n + 1) : ℚ)

end

end A337714.P1477001357572074269

/-! ## A337714.P12864192642671089799

`A000010(comp[3*n])/A053446(n+1)`
-/

namespace A337714.P12864192642671089799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A053446 (n + 1) : ℚ)

end

end A337714.P12864192642671089799

/-! ## A337714.P14274773707409547359

`A195459(comp[3*n])/A053446(n+1)`
-/

namespace A337714.P14274773707409547359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195459 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A053446 (n + 1) : ℚ)

end

end A337714.P14274773707409547359

/-! ## A337714.P141863334882868549

`(A109606(∑[char[2*n]]+n)+1)/A053446(n+1)`
-/

namespace A337714.P141863334882868549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1 : ℚ) / (A053446 (n + 1) : ℚ)

end

end A337714.P141863334882868549

/-! ## A337714.P16733081345304936518

`A195459(comp[3*n])/A050975(1-(1-n)%(n+1))`
-/

namespace A337714.P16733081345304936518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195459 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A050975 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat : ℚ)

end

end A337714.P16733081345304936518

/-! ## A337714.P9128425604556345696

`A195459(comp[3*n])/A050975((2*n)%(n+1)+1)`
-/

namespace A337714.P9128425604556345696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195459 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A050975 (2 * n % (n + 1) + 1) : ℚ)

end

end A337714.P9128425604556345696

/-!
# A337715: Numbers that are the product of two distinct odd numbers x*y such that 2^x (mod y) = 2^y (mod x) = 2.

The programs for A337715, there is no canonical definition to state claims against.
-/

/-! ## A337715.P16705626948048613291

`filter[A176970(n+1), A049240(#)]`
-/

namespace A337715.P16705626948048613291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A337715.P16705626948048613291

/-! ## A337715.P9188206228349228658

`filter[A176970(n+1), A053867(#)]`
-/

namespace A337715.P9188206228349228658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A337715.P9188206228349228658

/-! ## A337715.P2319773407719597145

`filter[A176970(n+1), A132350(#)]`
-/

namespace A337715.P2319773407719597145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A337715.P2319773407719597145

/-! ## A337715.P12137069229857823262

`filter[A176970(n+1), A143731(#)]`
-/

namespace A337715.P12137069229857823262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A337715.P12137069229857823262

/-! ## A337715.P9682073989897618223

`filter[A176970(n+1), A262855(#)]`
-/

namespace A337715.P9682073989897618223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262855 (f1 j).toNat = 1) n)

end

end A337715.P9682073989897618223

/-!
# A337716: Number of graphs, where vertices are labeled with positive integers summing to n, and where identically labeled vertices are indistinguishable and cannot be connected with an edge.

The programs for A337716, there is no canonical definition to state claims against.
-/

/-! ## A337716.P14668361463119334519

`A092684(n)+A066339(A148343(n))`
-/

namespace A337716.P14668361463119334519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092684 n + A066339 (A148343 n).toNat

end

end A337716.P14668361463119334519

/-! ## A337716.P17341325586303923459

`A113409(n)+A066339(A148343(n))`
-/

namespace A337716.P17341325586303923459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113409 n + A066339 (A148343 n).toNat

end

end A337716.P17341325586303923459

/-! ## A337716.P12111890640672873451

`A092683(∑[n])+A066339(A148343(n))`
-/

namespace A337716.P12111890640672873451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092683 (∑ j ∈ Finset.range (n + 1), f1 j) + A066339 (A148343 n).toNat

end

end A337716.P12111890640672873451

/-! ## A337716.P18347612050518629845

`ceil(A277796(n+4)/3)`
-/

namespace A337716.P18347612050518629845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277796 (n + 4) : ℚ) / 3⌉

end

end A337716.P18347612050518629845

/-! ## A337716.P14640808278887845002

`A001462(floor(sqrt(A070075(n))))`
-/

namespace A337716.P14640808278887845002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.sqrt (A070075 n)).toNat

end

end A337716.P14640808278887845002

/-!
# A337717: Number of connected graphs, where vertices are labeled with positive integers summing to n, and where identically labeled vertices are indistinguishable and cannot be connected with an edge.

The programs for A337717, there is no canonical definition to state claims against.
-/

/-! ## A337717.P16173004353785746245

`A238825(n+1)+A218967(A036639(n))`
-/

namespace A337717.P16173004353785746245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238825 (n + 1) + A218967 (A036639 n).toNat

end

end A337717.P16173004353785746245

/-!
# A337718: Numbers that can be written as (m + product of digits of m) for some m.

The programs for A337718, there is no canonical definition to state claims against.
-/

/-! ## A337718.P12016035691923694678

`comp[A230104(n+1)]`
-/

namespace A337718.P12016035691923694678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337718.P12016035691923694678

/-! ## A337718.P15192317050363072948

`lt[0, A230103(n)]`
-/

namespace A337718.P15192317050363072948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337718.P15192317050363072948

/-! ## A337718.P11037496904887308804

`lt[0, char[∏{digits}[n, #]+n]]`
-/

namespace A337718.P11037496904887308804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337718.P11037496904887308804

/-! ## A337718.P8915786930257125171

`eq[1, char[∏{digits}[n, #]+n]]`
-/

namespace A337718.P8915786930257125171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337718.P8915786930257125171

/-! ## A337718.P15666031324576937508

`lt[0, char[A230099(n)]]`
-/

namespace A337718.P15666031324576937508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337718.P15666031324576937508

/-! ## A337718.P6971836445211829230

`eq[1, char[A007954(n)+n]]`
-/

namespace A337718.P6971836445211829230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337718.P6971836445211829230

/-! ## A337718.P15796271055003849185

`eq[A000038(n*A230103(n)), A000038(n)]`
-/

namespace A337718.P15796271055003849185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A230103 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337718.P15796271055003849185

/-!
# A337719: The number of maximally large absolute-difference triangles consisting of positive integers <= n.

The programs for A337719, there is no canonical definition to state claims against.
-/

/-! ## A337719.P12725711877441363295

`record[and(A046523(n+1), A299089(n+1))]`
-/

namespace A337719.P12725711877441363295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046523 (n + 1)) (A299089 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337719.P12725711877441363295

/-! ## A337719.P4068501899461717968

`record[and(A083258(n+1), A299089(n+1))]`
-/

namespace A337719.P4068501899461717968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083258 (n + 1)) (A299089 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337719.P4068501899461717968

/-! ## A337719.P14364562794403121595

`record[and(A299089(n+1), A328479(n+1))]`
-/

namespace A337719.P14364562794403121595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A299089 (n + 1)) (A328479 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337719.P14364562794403121595

/-! ## A337719.P11766333680587504264

`record[and(A162507(n+2), A246096(n+1))]`
-/

namespace A337719.P11766333680587504264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A162507 (n + 2)) (A246096 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337719.P11766333680587504264

/-!
# A337720: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (1 + x*(1+x)^n)^n * x^n / A(x)^n.

The programs for A337720, there is no canonical definition to state claims against.
-/

/-! ## A337720.P3099304535422948039

`A165190(A188494(n)+A004236(n+1))`
-/

namespace A337720.P3099304535422948039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A188494 n + A004236 (n + 1)).toNat

end

end A337720.P3099304535422948039

/-! ## A337720.P4423391918896311943

`round(root(A121271(n), 5))`
-/

namespace A337720.P4423391918896311943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A121271 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A337720.P4423391918896311943

/-! ## A337720.P8481988154843696351

`A145265(a(n-1))+char[4*n]` with `a(0)=1`
-/

namespace A337720.P8481988154843696351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145265 (a (n - 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A337720.P8481988154843696351

/-! ## A337720.P15099970560255876111

`A114149(A360885(n))`
-/

namespace A337720.P15099970560255876111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (A360885 n).toNat

end

end A337720.P15099970560255876111

/-! ## A337720.P6160258880090018431

`A330236(A275070(n))`
-/

namespace A337720.P6160258880090018431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (A275070 n).toNat

end

end A337720.P6160258880090018431

/-!
# A337721: G.f.: Sum_{n>=0} (1 + x*(1+x)^n)^n * x^n.

The programs for A337721, there is no canonical definition to state claims against.
-/

/-! ## A337721.P672029257702192054

`A230980(A000237(n+1)+1)`
-/

namespace A337721.P672029257702192054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000237 (n + 1) + 1).toNat

end

end A337721.P672029257702192054

/-!
# A337722: Maximum number of knights within an n X n chessboard, where each knight has a path off the board.

The programs for A337722, there is no canonical definition to state claims against.
-/

/-! ## A337722.P8019663409705694549

`(n+1)²-A308595(n)`
-/

namespace A337722.P8019663409705694549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A308595 n

end

end A337722.P8019663409705694549

/-! ## A337722.P7829667785815106778

`∑[∑[A205599(n+1)%7]]`
-/

namespace A337722.P7829667785815106778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205599 (n + 1)) 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337722.P7829667785815106778

/-! ## A337722.P15530116493609572502

`∑[∑[A264032(ceil(3*n/2))]]`
-/

namespace A337722.P15530116493609572502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264032 ⌈3 * ((n : ℚ) / 2)⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337722.P15530116493609572502

/-! ## A337722.P16746419850555278599

`floor(∑[A316028(2*(n+1))/6])`
-/

namespace A337722.P16746419850555278599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316028 (2 * (n + 1)) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A337722.P16746419850555278599

/-! ## A337722.P5411400304514186779

`∑[A187683(n+1)+∑{e}[n+1, #]]`
-/

namespace A337722.P5411400304514186779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187683 (n + 1) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337722.P5411400304514186779

/-!
# A337723: a(n) = prime(n-2) - ceiling(a(n-2)/2); a(1)=0, a(2)=1.

The programs for A337723, the canonical program `A337723.P15036552311661844858` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337723 has offset 1).

The definition of A337723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337723.P2642816635862411342

`A008578(n)-ceil(a(n-2)/2)` with `a(0)=0, a(1)=1`
-/

namespace A337723.P2642816635862411342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008578 n - ⌈(a (n - 2) : ℚ) / 2⌉

end

end A337723.P2642816635862411342

namespace A337723

/-- `A008578(n)-ceil(a(n-2)/2)` -/
def P2642816635862411342.Spec : Prop :=
  ∀ n, P2642816635862411342.a n = A337723 (n + 1)

end A337723

/-! ## A337723.P15036552311661844858

`floor(A000040(n-1)-a(n-2)/2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337723

/-- `floor(A000040(n-1)-a(n-2)/2)` -/
def P15036552311661844858.Spec : Prop :=
  ∀ n, P15036552311661844858.a n = A337723 (n + 1)

theorem P15036552311661844858.correct : P15036552311661844858.Spec := by
  intro n
  simp only [A337723, Nat.add_sub_cancel]

end A337723

/-!
# A337724: a(n) = prime(n-2) - floor(a(n-2)/2); a(1)=0, a(2)=1.

The programs for A337724, the canonical program `A337724.P1814891094158089915` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337724 has offset 1).

The definition of A337724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337724.P1814891094158089915

`A000040(n-1)-floor(a(n-2)/2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337724

/-- `A000040(n-1)-floor(a(n-2)/2)` -/
def P1814891094158089915.Spec : Prop :=
  ∀ n, P1814891094158089915.a n = A337724 (n + 1)

theorem P1814891094158089915.correct : P1814891094158089915.Spec := by
  intro n
  simp only [A337724, Nat.add_sub_cancel]

end A337724

/-! ## A337724.P8810826699027419483

`lt[A001222(A352549(2*n+1)), 5]`
-/

namespace A337724.P8810826699027419483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A352549 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337724.P8810826699027419483

namespace A337724

/-- `lt[A001222(A352549(2*n+1)), 5]` -/
def P8810826699027419483.Spec : Prop :=
  ∀ n, (P8810826699027419483.a n : ℤ) = A337724 (n + 1)

end A337724

/-! ## A337724.P7051393204471824299

`lt[A104725(A352549(2*n+1)), A101444(n+4)]`
-/

namespace A337724.P7051393204471824299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A352549 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101444 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337724.P7051393204471824299

namespace A337724

/-- `lt[A104725(A352549(2*n+1)), A101444(n+4)]` -/
def P7051393204471824299.Spec : Prop :=
  ∀ n, (P7051393204471824299.a n : ℤ) = A337724 (n + 1)

end A337724

/-! ## A337724.P4283772841415934648

`lt[A104725(A352549(2*n+1)), A110573(n+5)]`
-/

namespace A337724.P4283772841415934648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A352549 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110573 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337724.P4283772841415934648

namespace A337724

/-- `lt[A104725(A352549(2*n+1)), A110573(n+5)]` -/
def P4283772841415934648.Spec : Prop :=
  ∀ n, (P4283772841415934648.a n : ℤ) = A337724 (n + 1)

end A337724

/-!
# A337725: a(n) = (3*n+1)! * Sum_{k=0..n} 1 / (3*k+1)!.

The programs for A337725, there is no canonical definition to state claims against.
-/

/-! ## A337725.P15070014075776072377

`A330044(3*n+1)`
-/

namespace A337725.P15070014075776072377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330044 (3 * n + 1)

end

end A337725.P15070014075776072377

/-! ## A337725.P12645318821460438221

`A349088(3*n+1)`
-/

namespace A337725.P12645318821460438221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349088 (3 * n + 1)

end

end A337725.P12645318821460438221

/-! ## A337725.P4456457523248637305

`A158757(A152751(n+1))`
-/

namespace A337725.P4456457523248637305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158757 (A152751 (n + 1)).toNat

end

end A337725.P4456457523248637305

/-! ## A337725.P12696439560307245677

`A158757(A016789(n)²-1)`
-/

namespace A337725.P12696439560307245677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158757 (A016789 n ^ 2 - 1).toNat

end

end A337725.P12696439560307245677

/-!
# A337726: a(n) = (3*n+2)! * Sum_{k=0..n} 1 / (3*k+2)!.

The programs for A337726, there is no canonical definition to state claims against.
-/

/-! ## A337726.P14830572804670619163

`A330044(3*n+2)`
-/

namespace A337726.P14830572804670619163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330044 (3 * n + 2)

end

end A337726.P14830572804670619163

/-! ## A337726.P238828127313040663

`record[gcd(A329687(n), A330044(n))]`
-/

namespace A337726.P238828127313040663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329687 n) (A330044 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337726.P238828127313040663

/-! ## A337726.P5873442678968631727

`A158757(A136016(n+1))`
-/

namespace A337726.P5873442678968631727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158757 (A136016 (n + 1)).toNat

end

end A337726.P5873442678968631727

/-!
# A337727: a(n) = (4*n)! * Sum_{k=0..n} 1 / (4*k)!.

The programs for A337727, the canonical program `A337727.P5208698773204191749` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337727 has offset 0).

The definition of A337727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337727.P5208698773204191749

`floor(1/2*(cos(1)+cosh(1))*(4*n)!)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337727

/-- `floor(1/2*(cos(1)+cosh(1))*(4*n)!)` -/
def P5208698773204191749.Spec : Prop :=
  ∀ n, P5208698773204191749.a n = A337727 n

theorem P5208698773204191749.correct : P5208698773204191749.Spec := by
  intro n
  simp only [A337727]

end A337727

/-! ## A337727.P3514314983546100889

`4*n*(4*n-1)*(4*n-2)*(4*n-3)*a(n-1)+1` with `a(0)=1`
-/

namespace A337727.P3514314983546100889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((n : ℤ) * (((4 * n : ℤ) - 1) * (((4 * n : ℤ) - 2) * ((4 * n : ℤ) - 3)))) * a (n - 1) + 1

end

end A337727.P3514314983546100889

namespace A337727

/-- `4*n*(4*n-1)*(4*n-2)*(4*n-3)*a(n-1)+1` -/
def P3514314983546100889.Spec : Prop :=
  ∀ n, P3514314983546100889.a n = A337727 n

end A337727

/-! ## A337727.P10478258784349571849

`xor(1, 4*n*(4*n-1)*(4*n-2)*(4*n-3)*a(n-1))` with `a(0)=1`
-/

namespace A337727.P10478258784349571849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (4 * ((n : ℤ) * (((4 * n : ℤ) - 1) * (((4 * n : ℤ) - 2) * ((4 * n : ℤ) - 3)))) * a (n - 1))

end

end A337727.P10478258784349571849

namespace A337727

/-- `xor(1, 4*n*(4*n-1)*(4*n-2)*(4*n-3)*a(n-1))` -/
def P10478258784349571849.Spec : Prop :=
  ∀ n, P10478258784349571849.a n = A337727 n

end A337727

/-! ## A337727.P18124744459045446539

`A330045(4*n)`
-/

namespace A337727.P18124744459045446539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330045 (4 * n)

end

end A337727.P18124744459045446539

namespace A337727

/-- `A330045(4*n)` -/
def P18124744459045446539.Spec : Prop :=
  ∀ n, P18124744459045446539.a n = A337727 n

end A337727

/-! ## A337727.P12719843183392295278

`A352660(4*n)`
-/

namespace A337727.P12719843183392295278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352660 (4 * n)

end

end A337727.P12719843183392295278

namespace A337727

/-- `A352660(4*n)` -/
def P12719843183392295278.Spec : Prop :=
  ∀ n, P12719843183392295278.a n = A337727 n

end A337727

/-!
# A337728: a(n) = (4*n+1)! * Sum_{k=0..n} 1 / (4*k+1)!.

The programs for A337728, there is no canonical definition to state claims against.
-/

/-! ## A337728.P740048220568236878

`A330045(4*n+1)`
-/

namespace A337728.P740048220568236878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330045 (4 * n + 1)

end

end A337728.P740048220568236878

/-! ## A337728.P12046448488762134114

`A349089(A016813(n))`
-/

namespace A337728.P12046448488762134114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349089 (A016813 n).toNat

end

end A337728.P12046448488762134114

/-!
# A337729: a(n) = (4*n+2)! * Sum_{k=0..n} 1 / (4*k+2)!.

The programs for A337729, there is no canonical definition to state claims against.
-/

/-! ## A337729.P13424302164503267238

`A330045(4*n+2)`
-/

namespace A337729.P13424302164503267238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330045 (4 * n + 2)

end

end A337729.P13424302164503267238

/-!
# A337730: 

The programs for A337730, there is no canonical definition to state claims against.
-/

/-! ## A337730.P3780253172130061941

`A330045(Δ[n*A005408(n)])`
-/

namespace A337730.P3780253172130061941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330045 (f1 (n + 1) - f1 n).toNat

end

end A337730.P3780253172130061941

/-! ## A337730.P5419513073355993579

`A330045(lt[2, A330086(2*n+2)])`
-/

namespace A337730.P5419513073355993579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330086 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337730.P5419513073355993579

/-!
# A337732: Least positive number that has exactly n different representations as the sum of a number and the product of its decimal digits.

The programs for A337732, there is no canonical definition to state claims against.
-/

/-! ## A337732.P9035669061977400179

`lcm(n-1, eq[1, A011542(n)])`
-/

namespace A337732.P9035669061977400179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011542 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A337732.P9035669061977400179

/-!
# A337733: Numbers that can be written as (k + sum of digits of k) for some k, also as (m + product of digits of m) for some m, and finally as (q * product of digits of q) for some q.

The programs for A337733, there is no canonical definition to state claims against.
-/

/-! ## A337733.P13649425687048852359

`∩[A336983(n+1), A337718(n+1)]`
-/

namespace A337733.P13649425687048852359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337733.P13649425687048852359

/-!
# A337734: Numerators of the coefficients in the expansion of li^{-1}(x)/x in powers of 1/LambertW(-1,-e/x).

The programs for A337734, there is no canonical definition to state claims against.
-/

/-! ## A337734.P16294958134022263927

`A163906(n)-A298330(n)!`
-/

namespace A337734.P16294958134022263927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 n - (Nat.factorial (A298330 n).toNat : ℤ)

end

end A337734.P16294958134022263927

/-! ## A337734.P17059333452333874177

`A002487(A005446(n))-A005450(n+1)`
-/

namespace A337734.P17059333452333874177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A005446 n).toNat - A005450 (n + 1)

end

end A337734.P17059333452333874177

/-!
# A337735: Denominators of the coefficients in the expansion of li^{-1}(x)/x in powers of 1/LambertW(-1,-e/x).

The programs for A337735, there is no canonical definition to state claims against.
-/

/-! ## A337735.P2634429551636166067

`A253139(∏[A050349(n+1)])`
-/

namespace A337735.P2634429551636166067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337735.P2634429551636166067

/-! ## A337735.P7350483090750756048

`A047726(A341265(n)+1)`
-/

namespace A337735.P7350483090750756048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A341265 n + 1).toNat

end

end A337735.P7350483090750756048

/-! ## A337735.P9930005319416819255

`A307616(A082267(n+1))`
-/

namespace A337735.P9930005319416819255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307616 (A082267 (n + 1)).toNat

end

end A337735.P9930005319416819255

/-! ## A337735.P12766738142362433758

`A096115(A146277(n+2))`
-/

namespace A337735.P12766738142362433758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096115 (A146277 (n + 2)).toNat

end

end A337735.P12766738142362433758

/-! ## A337735.P599607811736328876

`A047726(A089848(n)+4)`
-/

namespace A337735.P599607811736328876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A089848 n + 4).toNat

end

end A337735.P599607811736328876

/-!
# A337736: The number of cubefull numbers (A036966) between the consecutive cubes n^3 and (n+1)^3.

The programs for A337736, there is no canonical definition to state claims against.
-/

/-! ## A337736.P13792812099234092253

`Δ[A371186(n+1)]-1`
-/

namespace A337736.P13792812099234092253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A337736.P13792812099234092253

/-! ## A337736.P15973070891018652995

`A260255(Δ[A371186(n+1)])`
-/

namespace A337736.P15973070891018652995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260255 (f1 (n + 1) - f1 n).toNat

end

end A337736.P15973070891018652995

/-! ## A337736.P7621417796413626337

`Δ[A371186(n+1)+A022958(n)]`
-/

namespace A337736.P7621417796413626337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (n + 1) + A022958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337736.P7621417796413626337

/-! ## A337736.P12240037544238182374

`A371186(n+2)-1-A371186(n+1)`
-/

namespace A337736.P12240037544238182374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371186 (n + 2) - 1 - A371186 (n + 1)

end

end A337736.P12240037544238182374

/-! ## A337736.P8979375337567639568

`A260255(A371186(n+2)-A371186(n+1))`
-/

namespace A337736.P8979375337567639568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260255 (A371186 (n + 2) - A371186 (n + 1)).toNat

end

end A337736.P8979375337567639568

/-!
# A337739: Terms of A083209 with a record number of divisors.

The programs for A337739, there is no canonical definition to state claims against.
-/

/-! ## A337739.P17905485759110276072

`A083209((∑[∑{d}[n, #]]+1)^A051724(n))`
-/

namespace A337739.P17905485759110276072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083209 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) ^ (A051724 n : ℤ))).toNat

end

end A337739.P17905485759110276072

/-!
# A337740: Weird numbers (A006037) with an even sum of divisors that are not Zumkeller numbers (A083207).

The programs for A337740, there is no canonical definition to state claims against.
-/

/-! ## A337740.P629878123023742505

`∩[A002975(n+1), A378656(n+1)]`
-/

namespace A337740.P629878123023742505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337740.P629878123023742505

/-! ## A337740.P17888232449710169812

`∩[A258882(n+1), A378656(n+1)]`
-/

namespace A337740.P17888232449710169812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337740.P17888232449710169812

/-!
# A337741: Numbers all of whose divisors are Niven numbers (A005349).

The programs for A337741, there is no canonical definition to state claims against.
-/

/-! ## A337741.P1418056879226022733

`eq[A000005(n+1), A332268(n+1)]+1`
-/

namespace A337741.P1418056879226022733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332268 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A337741.P1418056879226022733

/-! ## A337741.P7813143701152823020

`∩[A285815(n+1), A322901(n+1)]`
-/

namespace A337741.P7813143701152823020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337741.P7813143701152823020

/-! ## A337741.P1284977410930911766

`∩[A285815(n+1), A322911(n+1)]`
-/

namespace A337741.P1284977410930911766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337741.P1284977410930911766

/-! ## A337741.P14464740608879073942

`∩[A285815(n+1), A330236(n+1)]`
-/

namespace A337741.P14464740608879073942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337741.P14464740608879073942

/-! ## A337741.P16874266296347944992

`∩[A285815(n+1), A331995(n+1)]`
-/

namespace A337741.P16874266296347944992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337741.P16874266296347944992

/-!
# A337742: Cycle length of applying XOR with the previous state and bit rotation on a string of n bits.

The programs for A337742, there is no canonical definition to state claims against.
-/

/-! ## A337742.P10483952501140254236

`lcm(n+1, A112656(n!))`
-/

namespace A337742.P10483952501140254236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A112656 (Nat.factorial n))

end

end A337742.P10483952501140254236

/-!
# A337743: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x + 2*y a power of four (including 4^0 = 1), where x, y, z, w are nonnegative integers with z <= w.

The programs for A337743, there is no canonical definition to state claims against.
-/

/-! ## A337743.P15669873104884940649

`A332202(A343752(n+1))`
-/

namespace A337743.P15669873104884940649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332202 (A343752 (n + 1)).toNat

end

end A337743.P15669873104884940649

/-! ## A337743.P16859084550161050821

`or(A011655(n), A040001(A327319(n)))`
-/

namespace A337743.P16859084550161050821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 n) (A040001 (A327319 n).toNat)

end

end A337743.P16859084550161050821

/-! ## A337743.P17105138547122533240

`A055874(A071773(A343752(n+1)²))`
-/

namespace A337743.P17105138547122533240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A071773 (A343752 (n + 1) ^ 2).toNat).toNat

end

end A337743.P17105138547122533240

/-! ## A337743.P12850637472303662497

`or(A040001(A327319(n)), A317961(2*n+1))`
-/

namespace A337743.P12850637472303662497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 (A327319 n).toNat) (A317961 (2 * n + 1))

end

end A337743.P12850637472303662497

/-! ## A337743.P4349805371315160822

`A108622(A036839(C(or(2, n), n)))`
-/

namespace A337743.P4349805371315160822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108622 (A036839 (Nat.choose (Nat.lor 2 n) n)).toNat

end

end A337743.P4349805371315160822

/-!
# A337744: Numbers of the form Sum_{e in S} 2^(e-1) where S is a finite set of positive integers such that any element of S divides the sum of the elements of S.

The programs for A337744, there is no canonical definition to state claims against.
-/

/-! ## A337744.P16641404824197334741

`eq[0, A029931(n)%A271410(n)]`
-/

namespace A337744.P16641404824197334741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029931 n) (A271410 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337744.P16641404824197334741

/-! ## A337744.P2674130140151765629

`record[and(A168131(n), A326332(n))]`
-/

namespace A337744.P2674130140151765629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168131 n) (A326332 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337744.P2674130140151765629

/-! ## A337744.P3956679602217643046

`eq[A045837(n), A123342(ceil(n/2))]`
-/

namespace A337744.P3956679602217643046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123342 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337744.P3956679602217643046

/-! ## A337744.P9897336757605013753

`lt[A374633(n+1), A364255(xor(n, 2*n))]`
-/

namespace A337744.P9897336757605013753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337744.P9897336757605013753

/-! ## A337744.P2163501428464764673

`eq[A342457(A246661(n)), A342457(n)]`
-/

namespace A337744.P2163501428464764673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342457 (A246661 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337744.P2163501428464764673

/-!
# A337746: Maximum number of bishops within an n X n chessboard, where each bishop has a path to an edge.

The programs for A337746, there is no canonical definition to state claims against.
-/

/-! ## A337746.P2441660743518866646

`A024669(n+1)-A241949(n)`
-/

namespace A337746.P2441660743518866646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024669 (n + 1) - A241949 n

end

end A337746.P2441660743518866646

/-! ## A337746.P10805735803806604164

`A143978(n+1)-A054548(floor(A094215(n+1)+(n+1)/ϕ))`
-/

namespace A337746.P10805735803806604164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143978 (n + 1) - A054548 ⌊(A094215 (n + 1) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌋.toNat

end

end A337746.P10805735803806604164

/-! ## A337746.P4392473705952760294

`A228075(n+1)+A145814(A016777(n))+n-2`
-/

namespace A337746.P4392473705952760294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1) + (A145814 (A016777 n).toNat + ((n : ℤ) - 2))

end

end A337746.P4392473705952760294

/-!
# A337748: T(m,n) is the least k such that the partial sum of the series Sum_{j=0..k} 1/(m*j+1) is > n, read by ascending antidiagonals.

The programs for A337748, there is no canonical definition to state claims against.
-/

/-! ## A337748.P5261414610395395476

`A330117(A033884(n+1)*A322297(n))`
-/

namespace A337748.P5261414610395395476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330117 (A033884 (n + 1) * A322297 n).toNat

end

end A337748.P5261414610395395476

/-!
# A337749: a(n) = n! * Sum_{k=0..floor(n/2)} (-1)^k / (n-2*k)!.

The programs for A337749, the canonical program `A337749.P3502740530701578083` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337749 has offset 0).

The definition of A337749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337749.P3502740530701578083

`1-n*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337749

/-- `1-n*(n-1)*a(n-2)` -/
def P3502740530701578083.Spec : Prop :=
  ∀ n, P3502740530701578083.a n = A337749 n

theorem P3502740530701578083.correct : P3502740530701578083.Spec := by
  intro n
  simp only [A337749]

end A337749

/-! ## A337749.P7471065138381018551

`(n-n²)*a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A337749.P7471065138381018551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - (n ^ 2 : ℤ)) * a (n - 2) + 1

end

end A337749.P7471065138381018551

namespace A337749

/-- `(n-n²)*a(n-2)+1` -/
def P7471065138381018551.Spec : Prop :=
  ∀ n, P7471065138381018551.a n = A337749 n

theorem P7471065138381018551.correct : P7471065138381018551.Spec := by
  intro n
  simp only [A337749, Nat.add_sub_cancel, A337749.P7471065138381018551.a, A337749.P3502740530701578083.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A337749

/-! ## A337749.P9907223810136804214

`Δ[A279927(n)]`
-/

namespace A337749.P9907223810136804214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337749.P9907223810136804214

namespace A337749

/-- `Δ[A279927(n)]` -/
def P9907223810136804214.Spec : Prop :=
  ∀ n, P9907223810136804214.a n = A337749 n

end A337749

/-! ## A337749.P2727018225933827303

`A279927(n+1)-A279927(n)`
-/

namespace A337749.P2727018225933827303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279927 (n + 1) - A279927 n

end

end A337749.P2727018225933827303

namespace A337749

/-- `A279927(n+1)-A279927(n)` -/
def P2727018225933827303.Spec : Prop :=
  ∀ n, P2727018225933827303.a n = A337749 n

end A337749

/-!
# A337750: a(n) = n! * Sum_{k=0..floor(n/3)} (-1)^k / (n-3*k)!.

The programs for A337750, the canonical program `A337750.P10108675881762157112` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337750 has offset 0).

The definition of A337750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337750.P10108675881762157112

`1-n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337750

/-- `1-n*(n-1)*(n-2)*a(n-3)` -/
def P10108675881762157112.Spec : Prop :=
  ∀ n, P10108675881762157112.a n = A337750 n

theorem P10108675881762157112.correct : P10108675881762157112.Spec := by
  intro n
  simp only [A337750]

end A337750

/-! ## A337750.P17645837192963533420

`A165998((n-5)*n*((n-1-(2-n)²)²-1))-(2-n)*(n-n²)`
-/

namespace A337750.P17645837192963533420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (((n : ℤ) - 5) * ((n : ℤ) * (((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 1))).toNat - (2 - (n : ℤ)) * ((n : ℤ) - (n ^ 2 : ℤ))

end

end A337750.P17645837192963533420

namespace A337750

/-- `A165998((n-5)*n*((n-1-(2-n)²)²-1))-(2-n)*(n-n²)` -/
def P17645837192963533420.Spec : Prop :=
  ∀ n, P17645837192963533420.a n = A337750 n

end A337750

/-! ## A337750.P10562181656562171933

`A004442((n-5)*2*6*10*C(n, 5))-A007531(n)`
-/

namespace A337750.P10562181656562171933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (((n : ℤ) - 5) * (2 * (6 * (10 * Nat.choose n 5)) : ℤ)).toNat - A007531 n

end

end A337750.P10562181656562171933

namespace A337750

/-- `A004442((n-5)*2*6*10*C(n, 5))-A007531(n)` -/
def P10562181656562171933.Spec : Prop :=
  ∀ n, P10562181656562171933.a n = A337750 n

end A337750

/-!
# A337751: a(n) = n! * Sum_{k=0..floor(n/4)} (-1)^k / (n-4*k)!.

The programs for A337751, the canonical program `A337751.P12451650902162973482` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337751 has offset 0).

The definition of A337751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337751.P12451650902162973482

`1-n*(n-1)*(n-2)*(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337751

/-- `1-n*(n-1)*(n-2)*(n-3)*a(n-4)` -/
def P12451650902162973482.Spec : Prop :=
  ∀ n, P12451650902162973482.a n = A337751 n

theorem P12451650902162973482.correct : P12451650902162973482.Spec := by
  intro n
  simp only [A337751]

end A337751

/-! ## A337751.P5453863684394467103

`A330045(n)-A005843(A052762(n))`
-/

namespace A337751.P5453863684394467103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330045 n - A005843 (A052762 n).toNat

end

end A337751.P5453863684394467103

namespace A337751

/-- `A330045(n)-A005843(A052762(n))` -/
def P5453863684394467103.Spec : Prop :=
  ∀ n, P5453863684394467103.a n = A337751 n

end A337751

/-! ## A337751.P15738342378668043731

`(A337749(n)+A087208(n))/2-A005843(A052762(n))`
-/

namespace A337751.P15738342378668043731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337749 n + A087208 n : ℚ) / 2 - (A005843 (A052762 n).toNat : ℚ)

end

end A337751.P15738342378668043731

namespace A337751

/-- `(A337749(n)+A087208(n))/2-A005843(A052762(n))` -/
def P15738342378668043731.Spec : Prop :=
  ∀ n, P15738342378668043731.a n = (A337751 n : ℚ)

end A337751

/-! ## A337751.P2956112150520056618

`A112500(C(n, 4))-24*C(n, 4)`
-/

namespace A337751.P2956112150520056618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112500 (Nat.choose n 4) - (24 * Nat.choose n 4 : ℤ)

end

end A337751.P2956112150520056618

namespace A337751

/-- `A112500(C(n, 4))-24*C(n, 4)` -/
def P2956112150520056618.Spec : Prop :=
  ∀ n, P2956112150520056618.a n = A337751 n

end A337751

/-!
# A337752: a(n) is the smallest Moran number m for which m/digsum(m) = prime(n) or 0 if no such number exists.

The programs for A337752, there is no canonical definition to state claims against.
-/

/-! ## A337752.P7203630566431051294

`A003634(p?[comp[n²]])`
-/

namespace A337752.P7203630566431051294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A337752.P7203630566431051294

/-! ## A337752.P12420368970043300656

`A003634(A000040(n+1))`
-/

namespace A337752.P12420368970043300656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (A000040 (n + 1)).toNat

end

end A337752.P12420368970043300656

/-! ## A337752.P8125192859616591273

`A003634(A008578(n+2))`
-/

namespace A337752.P8125192859616591273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (A008578 (n + 2)).toNat

end

end A337752.P8125192859616591273

/-! ## A337752.P12468143577148019000

`A003634(A182986(n+2))`
-/

namespace A337752.P12468143577148019000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (A182986 (n + 2)).toNat

end

end A337752.P12468143577148019000

/-! ## A337752.P3414962468008079382

`A003634(record[A093074(n+1)])`
-/

namespace A337752.P3414962468008079382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337752.P3414962468008079382

/-! ## A337752.P13482966247481414450

`A003634(record[A006530(n+2)])`
-/

namespace A337752.P13482966247481414450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337752.P13482966247481414450

/-! ## A337752.P17722385172566397567

`A003634(record[A014963(n+2)])`
-/

namespace A337752.P17722385172566397567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337752.P17722385172566397567

/-! ## A337752.P6145622703246339215

`A003634(record[A020639(n+2)])`
-/

namespace A337752.P6145622703246339215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337752.P6145622703246339215

/-!
# A337753: The number of n-digit numbers which are divisible by 3 and where all decimal digits are odd.

The programs for A337753, the canonical program `A337753.P3914728079903165784` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337753 has offset 1).

The definition of A337753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337753.P3914728079903165784

`6*a(n-1)-6*a(n-2)+5*a(n-3)` with `a(0)=2, a(1)=8, a(2)=41`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A337753

/-- `6*a(n-1)-6*a(n-2)+5*a(n-3)` -/
def P3914728079903165784.Spec : Prop :=
  ∀ n, P3914728079903165784.a n = A337753 (n + 1)

theorem P3914728079903165784.correct : P3914728079903165784.Spec := by
  intro n
  simp only [A337753, Nat.add_sub_cancel]

end A337753

/-! ## A337753.P8201424812990127557

`ogf((2-4x+5x^2)/(1-6x+6x^2-5x^3))`
-/

namespace A337753.P8201424812990127557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 5] [1, -6, 6, -5] n

end

end A337753.P8201424812990127557

namespace A337753

/-- `ogf((2-4x+5x^2)/(1-6x+6x^2-5x^3))` -/
def P8201424812990127557.Spec : Prop :=
  ∀ n, P8201424812990127557.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P16675282499847520603

`2*5^n-A276508(n)`
-/

namespace A337753.P16675282499847520603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n : ℤ) - A276508 n

end

end A337753.P16675282499847520603

namespace A337753

/-- `2*5^n-A276508(n)` -/
def P16675282499847520603.Spec : Prop :=
  ∀ n, P16675282499847520603.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P15048638814692107648

`Δ[A039302(n)+(floor(n/3)+1)%2]`
-/

namespace A337753.P15048638814692107648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039302 n + Int.tmod (⌊(n : ℚ) / 3⌋ + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337753.P15048638814692107648

namespace A337753

/-- `Δ[A039302(n)+(floor(n/3)+1)%2]` -/
def P15048638814692107648.Spec : Prop :=
  ∀ n, P15048638814692107648.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P10987132639872641569

`A276508(n+1)-A128834(n)`
-/

namespace A337753.P10987132639872641569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276508 (n + 1) - A128834 n

end

end A337753.P10987132639872641569

namespace A337753

/-- `A276508(n+1)-A128834(n)` -/
def P10987132639872641569.Spec : Prop :=
  ∀ n, P10987132639872641569.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P7203742873353310393

`A276508(n+1)+A010892(n+2)`
-/

namespace A337753.P7203742873353310393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276508 (n + 1) + A010892 (n + 2)

end

end A337753.P7203742873353310393

namespace A337753

/-- `A276508(n+1)+A010892(n+2)` -/
def P7203742873353310393.Spec : Prop :=
  ∀ n, P7203742873353310393.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P13464783679375574367

`A231103(n+2)-A131531(n+1)`
-/

namespace A337753.P13464783679375574367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231103 (n + 2) - A131531 (n + 1)

end

end A337753.P13464783679375574367

namespace A337753

/-- `A231103(n+2)-A131531(n+1)` -/
def P13464783679375574367.Spec : Prop :=
  ∀ n, P13464783679375574367.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P7910492929290785900

`2*5^n-(A131531(n+1)+2*A015531(n))`
-/

namespace A337753.P7910492929290785900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n : ℤ) - (A131531 (n + 1) + 2 * A015531 n)

end

end A337753.P7910492929290785900

namespace A337753

/-- `2*5^n-(A131531(n+1)+2*A015531(n))` -/
def P7910492929290785900.Spec : Prop :=
  ∀ n, P7910492929290785900.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P5372388921180647330

`A000351(n)+A000351(n)-A276508(n)`
-/

namespace A337753.P5372388921180647330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + (A000351 n - A276508 n)

end

end A337753.P5372388921180647330

namespace A337753

/-- `A000351(n)+A000351(n)-A276508(n)` -/
def P5372388921180647330.Spec : Prop :=
  ∀ n, P5372388921180647330.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P6444037538923601438

`A276508(n+1)+A132353(n)-A132868(n)`
-/

namespace A337753.P6444037538923601438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276508 (n + 1) + (A132353 n - A132868 n)

end

end A337753.P6444037538923601438

namespace A337753

/-- `A276508(n+1)+A132353(n)-A132868(n)` -/
def P6444037538923601438.Spec : Prop :=
  ∀ n, P6444037538923601438.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P7268932111469788619

`A174737(n+1)+A276508(n+1)+A057079(n)`
-/

namespace A337753.P7268932111469788619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174737 (n + 1) + (A276508 (n + 1) + A057079 n)

end

end A337753.P7268932111469788619

namespace A337753

/-- `A174737(n+1)+A276508(n+1)+A057079(n)` -/
def P7268932111469788619.Spec : Prop :=
  ∀ n, P7268932111469788619.a n = A337753 (n + 1)

end A337753

/-! ## A337753.P1864962627114030161

`A276508(n+1)-(A131531(n+1)+A131531(n+2))`
-/

namespace A337753.P1864962627114030161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276508 (n + 1) - (A131531 (n + 1) + A131531 (n + 2))

end

end A337753.P1864962627114030161

namespace A337753

/-- `A276508(n+1)-(A131531(n+1)+A131531(n+2))` -/
def P1864962627114030161.Spec : Prop :=
  ∀ n, P1864962627114030161.a n = A337753 (n + 1)

end A337753

/-!
# A337754: Least prime p such that 2p+1, 2p+3,..., 2p+2n+1 are not prime.

The programs for A337754, there is no canonical definition to state claims against.
-/

/-! ## A337754.P1715513510655259121

`A169802(A244433(n+1))`
-/

namespace A337754.P1715513510655259121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169802 (A244433 (n + 1)).toNat

end

end A337754.P1715513510655259121

/-!
# A337755: G.f. A(x) satisfies: 1 = Sum_{n>=0} (n+1) * 2^n * ((1+x)^n - A(x))^n.

The programs for A337755, there is no canonical definition to state claims against.
-/

/-! ## A337755.P9356428018488222022

`A105822(or(1, A384740(n)))`
-/

namespace A337755.P9356428018488222022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105822 (Int.lor 1 (A384740 n)).toNat

end

end A337755.P9356428018488222022

/-!
# A337758: G.f. A(x) satisfies: [x^n] (1 + n*x + n*x^2 - A(x))^(n+1) = 0, for n > 0.

The programs for A337758, there is no canonical definition to state claims against.
-/

/-! ## A337758.P5608695404274986028

`A276210(A308354(n+1)+A003120(n+1))`
-/

namespace A337758.P5608695404274986028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276210 (A308354 (n + 1) + A003120 (n + 1)).toNat

end

end A337758.P5608695404274986028

/-!
# A337759: Squares that are the sum of 3 distinct nonzero squares.

The programs for A337759, the canonical program `A337759.P3966808247695577426` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337759 has offset 1).

The definition of A337759 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161992, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337759.P3966808247695577426

`A161992(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337759

/-- `A161992(n+1)²` -/
def P3966808247695577426.Spec : Prop :=
  ∀ n, P3966808247695577426.a n = A337759 (n + 1)

theorem P3966808247695577426.correct : P3966808247695577426.Spec := by
  intro n
  simp only [A337759, Nat.add_sub_cancel]

end A337759

/-! ## A337759.P13414454768481373631

`lt[5*and(n, -n), n]²`
-/

namespace A337759.P13414454768481373631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A337759.P13414454768481373631

namespace A337759

/-- `lt[5*and(n, -n), n]²` -/
def P13414454768481373631.Spec : Prop :=
  ∀ n, (P13414454768481373631.a n : ℤ) = A337759 (n + 1)

end A337759

/-! ## A337759.P11771798587633712479

`lt[and(n, -n), n/5]²`
-/

namespace A337759.P11771798587633712479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n ^ 2

end

end A337759.P11771798587633712479

namespace A337759

/-- `lt[and(n, -n), n/5]²` -/
def P11771798587633712479.Spec : Prop :=
  ∀ n, (P11771798587633712479.a n : ℤ) = A337759 (n + 1)

end A337759

/-! ## A337759.P10414021795774662836

`lt[5*and(n, -n), n]^2`
-/

namespace A337759.P10414021795774662836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A337759.P10414021795774662836

namespace A337759

/-- `lt[5*and(n, -n), n]^2` -/
def P10414021795774662836.Spec : Prop :=
  ∀ n, (P10414021795774662836.a n : ℤ) = A337759 (n + 1)

end A337759

/-! ## A337759.P9886975646799275398

`lt[and(n, -n), n/5]^2`
-/

namespace A337759.P9886975646799275398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n ^ 2

end

end A337759.P9886975646799275398

namespace A337759

/-- `lt[and(n, -n), n/5]^2` -/
def P9886975646799275398.Spec : Prop :=
  ∀ n, (P9886975646799275398.a n : ℤ) = A337759 (n + 1)

end A337759

/-!
# A337760: Irregular triangle where T(n,k) are the coefficients of expansion 2^(n-1) Product_{k=1..n} sin(k*t) = Sum_{k=1..n*(n+1)/2} T(n,k)*cos(k*t) for even n and 2^(n-1) Product_{k=1..n} sin(k*t) = Sum_{k=1..n*(n+1)/2} T(n,k)*sin(k*t) for odd n.

The programs for A337760, there is no canonical definition to state claims against.
-/

/-! ## A337760.P11593674083555914847

`A010892(A352157(n+1)-A204459(n))`
-/

namespace A337760.P11593674083555914847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A352157 (n + 1) - A204459 n).toNat

end

end A337760.P11593674083555914847

/-! ## A337760.P3991796433015321935

`A130527(A004767(n))%A226774(n+1)`
-/

namespace A337760.P3991796433015321935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130527 (A004767 n).toNat) (A226774 (n + 1))

end

end A337760.P3991796433015321935

/-! ## A337760.P18196664810903233758

`A289074(Δ[A289000(n)])-A289007(n+1)`
-/

namespace A337760.P18196664810903233758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (f1 (n + 1) - f1 n).toNat - A289007 (n + 1)

end

end A337760.P18196664810903233758

/-! ## A337760.P16667517690938098811

`(A066075(A145515(3*n+4))-comp[∑[n]])%3+1`
-/

namespace A337760.P16667517690938098811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066075 (A145515 (3 * n + 4)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 3 + 1

end

end A337760.P16667517690938098811

/-! ## A337760.P1663013484553699902

`A163532(A000447(n)*A006047(n))`
-/

namespace A337760.P1663013484553699902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (A000447 n * A006047 n).toNat

end

end A337760.P1663013484553699902

/-!
# A337761: The number of hanging vertically stable self-avoiding walks of length n on a 3D cubic lattice where both the nodes and connecting rods have mass.

The programs for A337761, there is no canonical definition to state claims against.
-/

/-! ## A337761.P17446082589390753956

`A162226(A057649(n+1))`
-/

namespace A337761.P17446082589390753956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A057649 (n + 1)).toNat

end

end A337761.P17446082589390753956

/-! ## A337761.P2846104252683610915

`A309621(A260505(n)+1)`
-/

namespace A337761.P2846104252683610915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309621 (A260505 n + 1).toNat

end

end A337761.P2846104252683610915

/-! ## A337761.P4513589283764463678

`A272351(A148911(n))`
-/

namespace A337761.P4513589283764463678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (A148911 n).toNat

end

end A337761.P4513589283764463678

/-! ## A337761.P13576894291532583214

`A012264(A027561(n+1))`
-/

namespace A337761.P13576894291532583214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012264 (A027561 (n + 1)).toNat

end

end A337761.P13576894291532583214

/-! ## A337761.P3000833237556284427

`A145295(A005676(n)+1)`
-/

namespace A337761.P3000833237556284427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145295 (A005676 n + 1).toNat

end

end A337761.P3000833237556284427

/-!
# A337762: Number of partitions of the n-th n-gonal number into n-gonal numbers.

The programs for A337762, there is no canonical definition to state claims against.
-/

/-! ## A337762.P7188962646577253089

`A361808(A148101(n))`
-/

namespace A337762.P7188962646577253089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A148101 n).toNat

end

end A337762.P7188962646577253089

/-! ## A337762.P3946803427857048740

`A185711(A027649(n))+1`
-/

namespace A337762.P3946803427857048740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A027649 n).toNat + 1

end

end A337762.P3946803427857048740

/-! ## A337762.P14561298863911276981

`A067086(or(2, A128714(n)))`
-/

namespace A337762.P14561298863911276981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (Int.lor 2 (A128714 n)).toNat

end

end A337762.P14561298863911276981

/-!
# A337764: Number of compositions (ordered partitions) of the n-th n-gonal number into n-gonal numbers.

The programs for A337764, there is no canonical definition to state claims against.
-/

/-! ## A337764.P12852682387479808269

`∑[a(n-1)!-3]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A337764.P12852682387479808269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 5] fun n f1 =>
  (Nat.factorial (f1 (n - 1)).toNat : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337764.P12852682387479808269

/-!
# A337765: Number of addition triangles with apex n where all rows are weakly increasing.

The programs for A337765, there is no canonical definition to state claims against.
-/

/-! ## A337765.P16233979109410357385

`A008642(A187829(n+1))-A308066(n+1)`
-/

namespace A337765.P16233979109410357385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A187829 (n + 1)).toNat - A308066 (n + 1)

end

end A337765.P16233979109410357385

/-! ## A337765.P636946016844121669

`A319951(A001149(n+1)+2^val(n+1, 2))`
-/

namespace A337765.P636946016844121669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A001149 (n + 1) + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)).toNat

end

end A337765.P636946016844121669

/-! ## A337765.P16690464386331338875

`A072649(A331519(n)+A293643(n))`
-/

namespace A337765.P16690464386331338875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A331519 n + A293643 n).toNat

end

end A337765.P16690464386331338875

/-! ## A337765.P3685084390688610994

`A162351(A293960(n)+∑[A106617(n)])`
-/

namespace A337765.P3685084390688610994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A293960 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337765.P3685084390688610994

/-! ## A337765.P2343802551032287762

`A162351(or(A010684(n), A096777(n+1)))`
-/

namespace A337765.P2343802551032287762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (Int.lor (A010684 n) (A096777 (n + 1))).toNat

end

end A337765.P2343802551032287762

/-!
# A337766: Number of addition triangles with apex n where all rows are strongly increasing.

The programs for A337766, there is no canonical definition to state claims against.
-/

/-! ## A337766.P10636034821934723639

`A008616(A167614(n+1)-A332220(A332216(n+1)))`
-/

namespace A337766.P10636034821934723639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A167614 (n + 1) - A332220 (A332216 (n + 1)).toNat).toNat

end

end A337766.P10636034821934723639

/-! ## A337766.P16529375725327405963

`ceil((n+3)²/24)%A075275(n+4)`
-/

namespace A337766.P16529375725327405963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈((n + 3) ^ 2 : ℚ) / 24⌉ (A075275 (n + 4))

end

end A337766.P16529375725327405963

/-! ## A337766.P2680807416895513700

`A048766(A196087(n+2))`
-/

namespace A337766.P2680807416895513700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A196087 (n + 2)).toNat

end

end A337766.P2680807416895513700

/-! ## A337766.P9908826158234140842

`A048766(∑[A207035(n+2)])`
-/

namespace A337766.P9908826158234140842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207035 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337766.P9908826158234140842

/-! ## A337766.P4698337835481250403

`A350843(∑[A350843(n+2)]+2)`
-/

namespace A337766.P4698337835481250403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350843 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350843 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A337766.P4698337835481250403

/-!
# A337769: Smallest integer m such that the sum of the first m prime numbers is greater than n^2.

The programs for A337769, there is no canonical definition to state claims against.
-/

/-! ## A337769.P2209017095945288735

`A353024(n+1)+1`
-/

namespace A337769.P2209017095945288735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353024 (n + 1) + 1

end

end A337769.P2209017095945288735

/-! ## A337769.P3096545370907126821

`A083375((n+1)²+1)`
-/

namespace A337769.P3096545370907126821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 ((n + 1) ^ 2 + 1)

end

end A337769.P3096545370907126821

/-! ## A337769.P13187391644266849519

`A350174((n+1)²)+1`
-/

namespace A337769.P13187391644266849519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 ((n + 1) ^ 2) + 1

end

end A337769.P13187391644266849519

/-! ## A337769.P1348597726141567492

`A366066((n+1)²+1)`
-/

namespace A337769.P1348597726141567492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366066 ((n + 1) ^ 2 + 1)

end

end A337769.P1348597726141567492

/-! ## A337769.P11130039687357826239

`A230980(A063905(or(1, (n+1)²)))`
-/

namespace A337769.P11130039687357826239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A063905 (Nat.lor 1 ((n + 1) ^ 2))).toNat

end

end A337769.P11130039687357826239

/-! ## A337769.P4590398106686873333

`A000720(A063905(A080335(n)))`
-/

namespace A337769.P4590398106686873333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063905 (A080335 n).toNat).toNat

end

end A337769.P4590398106686873333

/-! ## A337769.P167416190743121754

`∑{d}[A063905(A080335(n)), A061395(#)]`
-/

namespace A337769.P167416190743121754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A080335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A337769.P167416190743121754

/-! ## A337769.P16936162458591829310

`∑{d}[A063905(A080335(n)), A230980(#)]`
-/

namespace A337769.P16936162458591829310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A080335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230980 d

end

end A337769.P16936162458591829310

/-!
# A337770: a(0)=1; a(n) is the leading digit of a(n-1) multiplied by n concatenated with the remaining digits of a(n-1).

The programs for A337770, there is no canonical definition to state claims against.
-/

/-! ## A337770.P3710501589209011565

`A360744(A003159(n!))`
-/

namespace A337770.P3710501589209011565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360744 (A003159 (Nat.factorial n)).toNat

end

end A337770.P3710501589209011565

/-! ## A337770.P10065261132958552273

`A291267(A003149(n)+2)`
-/

namespace A337770.P10065261132958552273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291267 (A003149 n + 2).toNat

end

end A337770.P10065261132958552273

/-! ## A337770.P471286362839620311

`A008620(A003149(n)-A015118(n))`
-/

namespace A337770.P471286362839620311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A003149 n - A015118 n).toNat

end

end A337770.P471286362839620311

/-!
# A337771: Number of positive integer pairs, (s,t), with s,t composite, such that s < t < n, and neither s nor t divides n.

The programs for A337771, there is no canonical definition to state claims against.
-/

/-! ## A337771.P5191762548888458834

`C(A279436(n+1), 2)`
-/

namespace A337771.P5191762548888458834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A279436 (n + 1)).toNat 2

end

end A337771.P5191762548888458834

/-! ## A337771.P13856388623715708472

`C(n+1-A351519(n+1), 2)`
-/

namespace A337771.P13856388623715708472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - A351519 (n + 1)).toNat 2

end

end A337771.P13856388623715708472

/-! ## A337771.P81707998916754973

`A161680(A279436(n+1))`
-/

namespace A337771.P81707998916754973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A279436 (n + 1)).toNat

end

end A337771.P81707998916754973

/-! ## A337771.P14102974740724451786

`A161680(n+1-A351519(n+1))`
-/

namespace A337771.P14102974740724451786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ((n + 1 : ℤ) - A351519 (n + 1)).toNat

end

end A337771.P14102974740724451786

/-! ## A337771.P1828849051159923657

`C(A045763(n+1)+A036997(n+1), 2)`
-/

namespace A337771.P1828849051159923657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045763 (n + 1) + A036997 (n + 1)).toNat 2

end

end A337771.P1828849051159923657

/-! ## A337771.P15529468867804195505

`C(A062298(n+1)-A033273(n+1), 2)`
-/

namespace A337771.P15529468867804195505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062298 (n + 1) - A033273 (n + 1)).toNat 2

end

end A337771.P15529468867804195505

/-! ## A337771.P10673324553509827648

`C(1-(A048865(n+1)+A000005(n+1))+n, 2)`
-/

namespace A337771.P10673324553509827648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - (A048865 (n + 1) + A000005 (n + 1)) + (n : ℤ)).toNat 2

end

end A337771.P10673324553509827648

/-!
# A337772: Number of Goldbach partitions (p,q) of 2n such that any one of p+-1 or q+-1 is a perfect square.

The programs for A337772, there is no canonical definition to state claims against.
-/

/-! ## A337772.P15995599477202643293

`and(A001221(A202864(n+1)), A191060(n+1))`
-/

namespace A337772.P15995599477202643293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A202864 (n + 1)).toNat) (A191060 (n + 1))

end

end A337772.P15995599477202643293

/-! ## A337772.P2519555208501517867

`A055642(A052905(A347444(n)))-A025837(n)`
-/

namespace A337772.P2519555208501517867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A052905 (A347444 n).toNat).toNat - A025837 n

end

end A337772.P2519555208501517867

/-! ## A337772.P467002670072817765

`A001221((A141310(n)+n²)²)`
-/

namespace A337772.P467002670072817765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A141310 n + (n ^ 2 : ℤ)) ^ 2).toNat

end

end A337772.P467002670072817765

/-! ## A337772.P10500470122012328973

`∑{e}[∑[A005811(A045780(n+1))], #]`
-/

namespace A337772.P10500470122012328973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A045780 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A337772.P10500470122012328973

/-! ## A337772.P14056635124787952591

`A001221((A020639(n+1)+n²)²)`
-/

namespace A337772.P14056635124787952591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A020639 (n + 1) + (n ^ 2 : ℤ)) ^ 2).toNat

end

end A337772.P14056635124787952591

/-!
# A337776: a(n) is the order of A337775(n) (as defined in that sequence).

The programs for A337776, there is no canonical definition to state claims against.
-/

/-! ## A337776.P995473909216451104

`∑{e}[lcm(A070667(n+1), A083318(n)), #]`
-/

namespace A337776.P995473909216451104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070667 (n + 1)) (A083318 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A337776.P995473909216451104

/-! ## A337776.P10564450009372649992

`A309981(A184676(n+1)-A238660(n+1))`
-/

namespace A337776.P10564450009372649992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309981 (A184676 (n + 1) - A238660 (n + 1)).toNat

end

end A337776.P10564450009372649992

/-! ## A337776.P17970322253580996041

`A001221(A006955(n)*A060961(n))`
-/

namespace A337776.P17970322253580996041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006955 n * A060961 n).toNat

end

end A337776.P17970322253580996041

/-! ## A337776.P17908556702310257597

`A001221(A006955(n)*A309676(n))`
-/

namespace A337776.P17908556702310257597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006955 n * A309676 n).toNat

end

end A337776.P17908556702310257597

/-! ## A337776.P8105256443294472272

`A001221(A001752(n)*A076079(n+1))`
-/

namespace A337776.P8105256443294472272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001752 n * A076079 (n + 1)).toNat

end

end A337776.P8105256443294472272

/-!
# A337778: Odd composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 4 (mod m), where U(m)=A001353(m) and V(m)=A003500(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=4 and b=1, respectively.

The programs for A337778, there is no canonical definition to state claims against.
-/

/-! ## A337778.P12731677658419068000

`filter[A330206(n+1), A014578(#)]`
-/

namespace A337778.P12731677658419068000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A337778.P12731677658419068000

/-! ## A337778.P4765586272772452341

`filter[A330206(n+1), A187074(#)]`
-/

namespace A337778.P4765586272772452341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A337778.P4765586272772452341

/-! ## A337778.P16748211874314588691

`filter[A335673(n+1), A187074(#)]`
-/

namespace A337778.P16748211874314588691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A337778.P16748211874314588691

/-! ## A337778.P11153869001018135905

`filter[A330206(n+1), A359374(#)]`
-/

namespace A337778.P11153869001018135905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A337778.P11153869001018135905

/-! ## A337778.P11346179278014404574

`filter[A330206(n+1), A372573(#)]`
-/

namespace A337778.P11346179278014404574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A337778.P11346179278014404574

/-! ## A337778.P16926615572735875782

`filter[A330206(n+1), A372574(#)]`
-/

namespace A337778.P16926615572735875782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A337778.P16926615572735875782

/-! ## A337778.P16741600071622178080

`filter[A330206(n+1), A373136(#)]`
-/

namespace A337778.P16741600071622178080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A337778.P16741600071622178080

/-! ## A337778.P18200592855079966798

`filter[A330206(n+1), A373155(#)]`
-/

namespace A337778.P18200592855079966798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A337778.P18200592855079966798

/-! ## A337778.P10981390414517923172

`filter[A330206(n+1), A373156(#)]`
-/

namespace A337778.P10981390414517923172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A337778.P10981390414517923172

/-! ## A337778.P8410476547162272927

`filter[A330206(n+1), A373991(#)]`
-/

namespace A337778.P8410476547162272927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A337778.P8410476547162272927

/-! ## A337778.P15857993917740490451

`filter[A330206(n+1), A374039(#)]`
-/

namespace A337778.P15857993917740490451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A337778.P15857993917740490451

/-! ## A337778.P18178174221062734429

`filter[A330206(n+1), A374041(#)]`
-/

namespace A337778.P18178174221062734429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A337778.P18178174221062734429

/-! ## A337778.P1415549384334768356

`filter[A330206(n+1), A374043(#)]`
-/

namespace A337778.P1415549384334768356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A337778.P1415549384334768356

/-! ## A337778.P4022209817114145820

`filter[A335673(n+1), A372573(#)]`
-/

namespace A337778.P4022209817114145820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A337778.P4022209817114145820

/-! ## A337778.P15800984123110915334

`filter[A335673(n+1), A372574(#)]`
-/

namespace A337778.P15800984123110915334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A337778.P15800984123110915334

/-! ## A337778.P10154314153121911708

`filter[A335673(n+1), A373136(#)]`
-/

namespace A337778.P10154314153121911708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A337778.P10154314153121911708

/-! ## A337778.P9349751833033226755

`filter[A335673(n+1), A373155(#)]`
-/

namespace A337778.P9349751833033226755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A337778.P9349751833033226755

/-! ## A337778.P14233578801686127177

`filter[A335673(n+1), A373156(#)]`
-/

namespace A337778.P14233578801686127177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A337778.P14233578801686127177

/-! ## A337778.P3264161776712614315

`filter[A335673(n+1), A373991(#)]`
-/

namespace A337778.P3264161776712614315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A337778.P3264161776712614315

/-! ## A337778.P4968997409755104997

`filter[A335673(n+1), A374041(#)]`
-/

namespace A337778.P4968997409755104997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A337778.P4968997409755104997

/-!
# A337779: Odd composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 5 (mod m), where U(m)=A004254(m) and V(m)=A003501(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=5 and b=1, respectively.

The programs for A337779, there is no canonical definition to state claims against.
-/

/-! ## A337779.P14986137119624199178

`∩[A335674(n+1), A338009(n+1)]`
-/

namespace A337779.P14986137119624199178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337779.P14986137119624199178

/-!
# A337780: a(n)/A163403(n) = the total length of the lines drawn at generation n for Conant's dissection of a square with size 1.

The programs for A337780, there is no canonical definition to state claims against.
-/

/-! ## A337780.P6968391635733613096

`A070864(A148862(n))`
-/

namespace A337780.P6968391635733613096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (A148862 n).toNat

end

end A337780.P6968391635733613096

/-! ## A337780.P17894859857118203662

`A070864(A148863(n))`
-/

namespace A337780.P17894859857118203662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (A148863 n).toNat

end

end A337780.P17894859857118203662

/-! ## A337780.P8193346225055274522

`A234300(or(A082679(n), A326323(n)))`
-/

namespace A337780.P8193346225055274522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (Int.lor (A082679 n) (A326323 n)).toNat

end

end A337780.P8193346225055274522

/-! ## A337780.P8840814604673654044

`A234300(or(A082679(n), A336009(n)))`
-/

namespace A337780.P8840814604673654044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (Int.lor (A082679 n) (A336009 n)).toNat

end

end A337780.P8840814604673654044

/-! ## A337780.P5193414514725194990

`A333943(A347381(n+1)+A061255(n))`
-/

namespace A337780.P5193414514725194990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333943 (A347381 (n + 1) + A061255 n).toNat

end

end A337780.P5193414514725194990

/-!
# A337781: Odd composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 7 (mod m), where U(m)=A004187(m) and V(m)=A056854(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=7 and b=1, respectively.

The programs for A337781, there is no canonical definition to state claims against.
-/

/-! ## A337781.P10949701666185846887

`filter[A338007(n+1), A187074(#)]`
-/

namespace A337781.P10949701666185846887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A337781.P10949701666185846887

/-! ## A337781.P5874540089429745746

`filter[A338007(n+1), A359374(#)]`
-/

namespace A337781.P5874540089429745746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A337781.P5874540089429745746

/-! ## A337781.P13021502376439131175

`filter[A338007(n+1), A359377(#)]`
-/

namespace A337781.P13021502376439131175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A337781.P13021502376439131175

/-! ## A337781.P5264468436053162220

`filter[A338007(n+1), A372573(#)]`
-/

namespace A337781.P5264468436053162220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A337781.P5264468436053162220

/-! ## A337781.P3299101604530028936

`filter[A338007(n+1), A373139(#)]`
-/

namespace A337781.P3299101604530028936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A337781.P3299101604530028936

/-! ## A337781.P394803169103293379

`filter[A338007(n+1), A373154(#)]`
-/

namespace A337781.P394803169103293379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A337781.P394803169103293379

/-! ## A337781.P11922222031734931600

`filter[A338007(n+1), A373155(#)]`
-/

namespace A337781.P11922222031734931600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A337781.P11922222031734931600

/-! ## A337781.P2066975992024274423

`filter[A338007(n+1), A373156(#)]`
-/

namespace A337781.P2066975992024274423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A337781.P2066975992024274423

/-! ## A337781.P6178638945805165598

`filter[A338007(n+1), A374041(#)]`
-/

namespace A337781.P6178638945805165598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A337781.P6178638945805165598

/-! ## A337781.P5586524521297236715

`filter[A338007(n+1), A374043(#)]`
-/

namespace A337781.P5586524521297236715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A337781.P5586524521297236715

/-! ## A337781.P922330499531408973

`filter[A338007(n+1), A162289(#)]`
-/

namespace A337781.P922330499531408973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A337781.P922330499531408973

/-! ## A337781.P3286984920059076384

`filter[A338082(n+1), A162289(#)]`
-/

namespace A337781.P3286984920059076384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A337781.P3286984920059076384

/-! ## A337781.P7249075532274748800

`filter[A338007(n+1), A320106(#)]`
-/

namespace A337781.P7249075532274748800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A337781.P7249075532274748800

/-! ## A337781.P14960839383917867274

`filter[A338007(n+1), A354354(#)]`
-/

namespace A337781.P14960839383917867274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A337781.P14960839383917867274

/-! ## A337781.P6072888354089210022

`filter[A338007(n+1), A364250(#)]`
-/

namespace A337781.P6072888354089210022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364250 (f1 j).toNat = 1) n)

end

end A337781.P6072888354089210022

/-!
# A337782: Even composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 7 (mod m), where U(m)=A004187(m) and V(m)=A056854(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=7 and b=1, respectively.

The programs for A337782, there is no canonical definition to state claims against.
-/

/-! ## A337782.P15909619863055920088

`filter[A338312(n+1), A011558(#)]`
-/

namespace A337782.P15909619863055920088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A337782.P15909619863055920088

/-! ## A337782.P6985636156083169470

`filter[A338312(n+1), A358847(#)]`
-/

namespace A337782.P6985636156083169470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A337782.P6985636156083169470

/-! ## A337782.P14147329708850275436

`∩[A047201(n+1), A338312(n+1)]`
-/

namespace A337782.P14147329708850275436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337782.P14147329708850275436

/-! ## A337782.P8816938643475536030

`∩[A074215(n+1), A338312(n+1)]`
-/

namespace A337782.P8816938643475536030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337782.P8816938643475536030

/-! ## A337782.P7935497595784893851

`∩[A217562(n+1), A338312(n+1)]`
-/

namespace A337782.P7935497595784893851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337782.P7935497595784893851

/-!
# A337783: Even composite integers m such that U(m)^2 == 1 (mod m), where U(m)=A004187(m) is the m-th generalized Lucas number of parameters a=7 and b=1.

The programs for A337783, there is no canonical definition to state claims against.
-/

/-! ## A337783.P16369059731149202383

`A008621(n)*A333597(A254441(n+1))`
-/

namespace A337783.P16369059731149202383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A333597 (A254441 (n + 1)).toNat

end

end A337783.P16369059731149202383

/-! ## A337783.P4900957412268041940

`A144064(or(3, n))*A333597(A254441(n+1))`
-/

namespace A337783.P4900957412268041940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (Nat.lor 3 n) * A333597 (A254441 (n + 1)).toNat

end

end A337783.P4900957412268041940

/-! ## A337783.P1332881110248250325

`A000010(A020915(n))*A333597(A254441(n+1))`
-/

namespace A337783.P1332881110248250325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020915 n).toNat * A333597 (A254441 (n + 1)).toNat

end

end A337783.P1332881110248250325

/-!
# A337784: Smaller of two consecutive oblong numbers which are anagrams of each other.

The programs for A337784, there is no canonical definition to state claims against.
-/

/-! ## A337784.P16458318378999304416

`2*C(A181775(n+1), 2)`
-/

namespace A337784.P16458318378999304416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A181775 (n + 1)).toNat 2

end

end A337784.P16458318378999304416

/-! ## A337784.P2424109919361598046

`A181775(n+1)²-A181775(A348553(n))`
-/

namespace A337784.P2424109919361598046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181775 (n + 1) ^ 2 - A181775 (A348553 n).toNat

end

end A337784.P2424109919361598046

/-! ## A337784.P10315241940545454198

`(A328310(A000040(n+1))+A181775(n+1))*A181775(n+1)`
-/

namespace A337784.P10315241940545454198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A328310 (A000040 (n + 1)).toNat + A181775 (n + 1)) * A181775 (n + 1)

end

end A337784.P10315241940545454198

/-! ## A337784.P17211063368369751310

`(A181775(n+1)-A001222(A094460(n+1)))*A181775(n+1)`
-/

namespace A337784.P17211063368369751310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181775 (n + 1) - A001222 (A094460 (n + 1)).toNat) * A181775 (n + 1)

end

end A337784.P17211063368369751310

/-! ## A337784.P14567860592869249746

`A060798(A181775(n+1))`
-/

namespace A337784.P14567860592869249746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (A181775 (n + 1)).toNat

end

end A337784.P14567860592869249746

/-!
# A337785: Number of addition triangles whose sum is n (version 1).

The programs for A337785, there is no canonical definition to state claims against.
-/

/-! ## A337785.P9636096154013310423

`A044940(A264649(n+1))+A007879(n)`
-/

namespace A337785.P9636096154013310423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A264649 (n + 1)).toNat + A007879 n

end

end A337785.P9636096154013310423

/-! ## A337785.P4167860895892133444

`A152271(n)+A044940(A264649(n+1))`
-/

namespace A337785.P4167860895892133444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + A044940 (A264649 (n + 1)).toNat

end

end A337785.P4167860895892133444

/-! ## A337785.P14480819844619563728

`A152271(n)+A056977(A291709(3*n+4))`
-/

namespace A337785.P14480819844619563728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + A056977 (A291709 (3 * n + 4)).toNat

end

end A337785.P14480819844619563728

/-! ## A337785.P17138093285834877215

`A008619(gcd(A086932(n+1), A250266(n)))`
-/

namespace A337785.P17138093285834877215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.gcd (A086932 (n + 1)) (A250266 n))

end

end A337785.P17138093285834877215

/-! ## A337785.P13065908807219759128

`A360952(A014382(n))+A360952(n)`
-/

namespace A337785.P13065908807219759128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360952 (A014382 n).toNat + A360952 n

end

end A337785.P13065908807219759128

/-!
# A337786: Numbers of the form x^3 + x^2*y + x*y^2 + y^3 where x and y are positive integers, but having no such representation where x and y are coprime.

The programs for A337786, there is no canonical definition to state claims against.
-/

/-! ## A337786.P4169810864616074085

`∩[A140270(n+1), A336607(n+1)]`
-/

namespace A337786.P4169810864616074085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337786.P4169810864616074085

/-!
# A337787: Number of addition triangles whose sum is n (version 2).

The programs for A337787, there is no canonical definition to state claims against.
-/

/-! ## A337787.P10238858304695295615

`A008718(A032742(n+5)%A242906(2*(n+2)))`
-/

namespace A337787.P10238858304695295615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008718 (Int.tmod (A032742 (n + 5)) (A242906 (2 * (n + 2)))).toNat

end

end A337787.P10238858304695295615

/-! ## A337787.P2798235282342358862

`A017980(A260437(n+1)%A005849(n+1))`
-/

namespace A337787.P2798235282342358862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017980 (Int.tmod (A260437 (n + 1)) (A005849 (n + 1))).toNat

end

end A337787.P2798235282342358862

/-! ## A337787.P15043358526338396932

`A025764(A278529(n+1)%A093670(n+1))`
-/

namespace A337787.P15043358526338396932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025764 (Int.tmod (A278529 (n + 1)) (A093670 (n + 1))).toNat

end

end A337787.P15043358526338396932

/-! ## A337787.P9603988969433536690

`A025764(A260437(n+1))%A135791(n+1)`
-/

namespace A337787.P9603988969433536690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025764 (A260437 (n + 1)).toNat) (A135791 (n + 1))

end

end A337787.P9603988969433536690

/-! ## A337787.P5343741018508912644

`A025764(A278529(n+1))%A135791(n+1)`
-/

namespace A337787.P5343741018508912644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025764 (A278529 (n + 1)).toNat) (A135791 (n + 1))

end

end A337787.P5343741018508912644

/-!
# A337788: The number of primes between n exclusive and n+primepi(n) inclusive.

The programs for A337788, the canonical program `A337788.P1769067686899839551` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337788 has offset 1).

The definition of A337788 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337788.P1769067686899839551

`A000720(n+1+A000720(n+1))-A000720(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A337788

/-- `A000720(n+1+A000720(n+1))-A000720(n+1)` -/
def P1769067686899839551.Spec : Prop :=
  ∀ n, P1769067686899839551.a n = A337788 (n + 1)

theorem P1769067686899839551.correct : P1769067686899839551.Spec := by
  intro n
  simp only [A337788, Nat.add_sub_cancel]

end A337788

/-! ## A337788.P9834161492467509345

`A000720(A095117(n+1))-A000720(n+1)`
-/

namespace A337788.P9834161492467509345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095117 (n + 1)).toNat - A000720 (n + 1)

end

end A337788.P9834161492467509345

namespace A337788

/-- `A000720(A095117(n+1))-A000720(n+1)` -/
def P9834161492467509345.Spec : Prop :=
  ∀ n, P9834161492467509345.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P3352701098199621023

`1-A337978(n+1)+n`
-/

namespace A337788.P3352701098199621023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A337978 (n + 1) + (n : ℤ)

end

end A337788.P3352701098199621023

namespace A337788

/-- `1-A337978(n+1)+n` -/
def P3352701098199621023.Spec : Prop :=
  ∀ n, P3352701098199621023.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P5509232098702664039

`n-A065855(∑[A010051(n+1)+1])`
-/

namespace A337788.P5509232098702664039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A065855 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337788.P5509232098702664039

namespace A337788

/-- `n-A065855(∑[A010051(n+1)+1])` -/
def P5509232098702664039.Spec : Prop :=
  ∀ n, P5509232098702664039.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P2058909769214245229

`n-A065855(A095117(n+1))`
-/

namespace A337788.P2058909769214245229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A065855 (A095117 (n + 1)).toNat

end

end A337788.P2058909769214245229

namespace A337788

/-- `n-A065855(A095117(n+1))` -/
def P2058909769214245229.Spec : Prop :=
  ∀ n, P2058909769214245229.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P13816878876571029534

`n+1-A062298(∑[C(2, ∑{e}[n+1, #+1])]+n)`
-/

namespace A337788.P13816878876571029534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062298 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A337788.P13816878876571029534

namespace A337788

/-- `n+1-A062298(∑[C(2, ∑{e}[n+1, #+1])]+n)` -/
def P13816878876571029534.Spec : Prop :=
  ∀ n, P13816878876571029534.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P84447906815098097

`n+1-A062298(A036234(n+1)+n)`
-/

namespace A337788.P84447906815098097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062298 (A036234 (n + 1) + (n : ℤ)).toNat

end

end A337788.P84447906815098097

namespace A337788

/-- `n+1-A062298(A036234(n+1)+n)` -/
def P84447906815098097.Spec : Prop :=
  ∀ n, P84447906815098097.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P1370072447720233537

`n+1-A062298(∑[C(A000010(n+1), n)]+n)`
-/

namespace A337788.P1370072447720233537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062298 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A337788.P1370072447720233537

namespace A337788

/-- `n+1-A062298(∑[C(A000010(n+1), n)]+n)` -/
def P1370072447720233537.Spec : Prop :=
  ∀ n, P1370072447720233537.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P4374513897582216953

`n+1-A062298(∑[char[A000040(n+1)-1]]+1+n)`
-/

namespace A337788.P4374513897582216953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062298 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + n)

end

end A337788.P4374513897582216953

namespace A337788

/-- `n+1-A062298(∑[char[A000040(n+1)-1]]+1+n)` -/
def P4374513897582216953.Spec : Prop :=
  ∀ n, P4374513897582216953.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P14962412362863144790

`n+1-A062298(∑[floor(n/(A000203(n+1)-2))]+1+n)`
-/

namespace A337788.P14962412362863144790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A000203 (n + 1) - 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062298 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)).toNat

end

end A337788.P14962412362863144790

namespace A337788

/-- `n+1-A062298(∑[floor(n/(A000203(n+1)-2))]+1+n)` -/
def P14962412362863144790.Spec : Prop :=
  ∀ n, P14962412362863144790.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P2895220789087047588

`A036234(A095117(n+1))-A036234(n+1)`
-/

namespace A337788.P2895220789087047588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A095117 (n + 1)).toNat - A036234 (n + 1)

end

end A337788.P2895220789087047588

namespace A337788

/-- `A036234(A095117(n+1))-A036234(n+1)` -/
def P2895220789087047588.Spec : Prop :=
  ∀ n, P2895220789087047588.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P10892259748202621075

`A230980(A095117(n+1))-A230980(n+1)`
-/

namespace A337788.P10892259748202621075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A095117 (n + 1)).toNat - A230980 (n + 1)

end

end A337788.P10892259748202621075

namespace A337788

/-- `A230980(A095117(n+1))-A230980(n+1)` -/
def P10892259748202621075.Spec : Prop :=
  ∀ n, P10892259748202621075.a n = A337788 (n + 1)

end A337788

/-! ## A337788.P10026258154995531716

`1-A137588(A084792(n+1))+n`
-/

namespace A337788.P10026258154995531716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137588 (A084792 (n + 1)).toNat + (n : ℤ)

end

end A337788.P10026258154995531716

namespace A337788

/-- `1-A137588(A084792(n+1))+n` -/
def P10026258154995531716.Spec : Prop :=
  ∀ n, P10026258154995531716.a n = A337788 (n + 1)

end A337788

/-!
# A337789: Numbers k such that trajectory of k under repeated calculation of fecundity (x -> A070562(x)) eventually reaches 0.

The programs for A337789, there is no canonical definition to state claims against.
-/

/-! ## A337789.P1780285473977060005

`eq[1, A014963(A001595(A070562(n)))]`
-/

namespace A337789.P1780285473977060005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001595 (A070562 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337789.P1780285473977060005

/-! ## A337789.P8785370931987556054

`eq[A127693(A070561(n)), A178334(n+1)]`
-/

namespace A337789.P8785370931987556054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127693 (A070561 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337789.P8785370931987556054

/-!
# A337792: Total number of graceful labelings of the n-sun graph.

The programs for A337792, there is no canonical definition to state claims against.
-/

/-! ## A337792.P15076621768563655073

`4*(n+3)*A387807(n+3)`
-/

namespace A337792.P15076621768563655073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 3) : ℤ) * A387807 (n + 3)

end

end A337792.P15076621768563655073

/-!
# A337793: Number of graceful labelings of the complete bipartite graph K_{n,n}.

The programs for A337793, there is no canonical definition to state claims against.
-/

/-! ## A337793.P16180582405725777700

`A001223(A006275(n))*A014479(n)`
-/

namespace A337793.P16180582405725777700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A006275 n).toNat * A014479 n

end

end A337793.P16180582405725777700

/-!
# A337795: Total number of graceful labelings of the n-gear graph.

The programs for A337795, there is no canonical definition to state claims against.
-/

/-! ## A337795.P6623384747698496674

`4*(n+3)*A387798(n+3)`
-/

namespace A337795.P6623384747698496674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 3) : ℤ) * A387798 (n + 3)

end

end A337795.P6623384747698496674

/-!
# A337797: Number of partitions of the n-th n-gonal pyramidal number into n-gonal pyramidal numbers.

The programs for A337797, there is no canonical definition to state claims against.
-/

/-! ## A337797.P17964448436877329602

`A108954(A032298(n)+A001764(n))`
-/

namespace A337797.P17964448436877329602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A032298 n + A001764 n).toNat

end

end A337797.P17964448436877329602

/-! ## A337797.P18337951761440474585

`A061358(n!*comp[n²])^floor(atan(n))`
-/

namespace A337797.P18337951761440474585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061358 (Nat.factorial n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A337797.P18337951761440474585

/-! ## A337797.P1884829050335182314

`A051534(A026151(n))`
-/

namespace A337797.P1884829050335182314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (A026151 n).toNat

end

end A337797.P1884829050335182314

/-!
# A337799: Number of compositions (ordered partitions) of the n-th n-gonal pyramidal number into n-gonal pyramidal numbers.

The programs for A337799, there is no canonical definition to state claims against.
-/

/-! ## A337799.P16001270379820738558

`n*A111287(a(n-1)²)` with `a(0)=1`
-/

namespace A337799.P16001270379820738558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A111287 (a (n - 1) ^ 2).toNat

end

end A337799.P16001270379820738558

