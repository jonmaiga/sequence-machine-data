import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A018401: Divisors of 340.

The programs for A018401, there is no canonical definition to state claims against.
-/

/-! ## A018401.P17803559832221119379

`eq[1, A106618(lcm(20, n)/20)]`
-/

namespace A018401.P17803559832221119379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (SequenceMachineLib.roundAway ((Nat.lcm 20 n : ℚ) / 20)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018401.P17803559832221119379

/-! ## A018401.P18423395488429640380

`A018589(A350349(n+1))`
-/

namespace A018401.P18423395488429640380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018589 (A350349 (n + 1)).toNat

end

end A018401.P18423395488429640380

/-! ## A018401.P2682988278055997388

`A357977(A328009(n+1))`
-/

namespace A018401.P2682988278055997388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357977 (A328009 (n + 1)).toNat

end

end A018401.P2682988278055997388

/-! ## A018401.P3201955467396049505

`eq[1, A106621(A106618(n))]`
-/

namespace A018401.P3201955467396049505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106618 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018401.P3201955467396049505

/-! ## A018401.P16669173219582527138

`A018589(∑[A001221(n+2)])`
-/

namespace A018401.P16669173219582527138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018589 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018401.P16669173219582527138

/-!
# A018402: Divisors of 342.

The programs for A018402, there is no canonical definition to state claims against.
-/

/-! ## A018402.P11392241863805537557

`a(n-1)+a(A276151(n))` with `a(0)=1`
-/

namespace A018402.P11392241863805537557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A276151 n).toNat

end

end A018402.P11392241863805537557

/-! ## A018402.P1715302236037282190

`A245453(A276076(n))`
-/

namespace A018402.P1715302236037282190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A276076 n).toNat

end

end A018402.P1715302236037282190

/-! ## A018402.P5227747641962484716

`A245453(A276086(n))`
-/

namespace A018402.P5227747641962484716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A276086 n).toNat

end

end A018402.P5227747641962484716

/-! ## A018402.P17251358716379345890

`A245453(A346101(n))`
-/

namespace A018402.P17251358716379345890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A346101 n).toNat

end

end A018402.P17251358716379345890

/-! ## A018402.P18312800445860766901

`A245453(A392596(n))`
-/

namespace A018402.P18312800445860766901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A392596 n).toNat

end

end A018402.P18312800445860766901

/-!
# A018403: Divisors of 344.

The programs for A018403, there is no canonical definition to state claims against.
-/

/-! ## A018403.P8821148070557278524

`2*round(n/5)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=43`
-/

namespace A018403.P8821148070557278524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 43] fun n a =>
  2 * SequenceMachineLib.roundAway ((n : ℚ) / 5) * a (n - 1)

end

end A018403.P8821148070557278524

/-! ## A018403.P4510274888485887451

`A018735(n+2)-2^n`
-/

namespace A018403.P4510274888485887451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018735 (n + 2) - (2 ^ n : ℤ)

end

end A018403.P4510274888485887451

/-! ## A018403.P8227919725696035877

`A018593(∑[char[4*n]]+n)`
-/

namespace A018403.P8227919725696035877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018593 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A018403.P8227919725696035877

/-! ## A018403.P13935042686738534988

`A109681(3*a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A018403.P13935042686738534988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109681 (3 * a (n - 1)).toNat - a (n - 1)

end

end A018403.P13935042686738534988

/-!
# A018404: Divisors of 345.

The programs for A018404, there is no canonical definition to state claims against.
-/

/-! ## A018404.P10452866279157365487

`eq[23, A106616(lcm(23, n))]`
-/

namespace A018404.P10452866279157365487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (Nat.lcm 23 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018404.P10452866279157365487

/-! ## A018404.P9036915884496447858

`eq[n, gcd(690, A227140(n))]`
-/

namespace A018404.P9036915884496447858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 690 (A227140 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018404.P9036915884496447858

/-! ## A018404.P2168854345527241267

`A003549(∑[∑[char[6*n]]!])`
-/

namespace A018404.P2168854345527241267
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003549 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018404.P2168854345527241267

/-!
# A018405: Divisors of 348.

The programs for A018405, there is no canonical definition to state claims against.
-/

/-! ## A018405.P7671443672118758808

`A332213(A018343(n+1))`
-/

namespace A018405.P7671443672118758808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018343 (n + 1)).toNat

end

end A018405.P7671443672118758808

/-! ## A018405.P15723325651831194147

`A332808(A018369(n+1))`
-/

namespace A018405.P15723325651831194147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018369 (n + 1)).toNat

end

end A018405.P15723325651831194147

/-! ## A018405.P12889633403189344819

`record[A032742(A018597(n+1))]`
-/

namespace A018405.P12889633403189344819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018405.P12889633403189344819

/-! ## A018405.P649234460604331032

`A002472(6*A018419(n+1))`
-/

namespace A018405.P649234460604331032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (6 * A018419 (n + 1)).toNat

end

end A018405.P649234460604331032

/-! ## A018405.P11497931977082182360

`A332213(eq[19, A051724(lcm(19, n))])`
-/

namespace A018405.P11497931977082182360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Nat.lcm 19 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018405.P11497931977082182360

/-!
# A018406: Divisors of 350.

The programs for A018406, there is no canonical definition to state claims against.
-/

/-! ## A018406.P7711585980054069909

`A064614(A018501(n+1))`
-/

namespace A018406.P7711585980054069909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018501 (n + 1)).toNat

end

end A018406.P7711585980054069909

/-! ## A018406.P3515740897060192824

`A186101(or(1, A018501(n+1)))`
-/

namespace A018406.P3515740897060192824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (Int.lor 1 (A018501 (n + 1))).toNat

end

end A018406.P3515740897060192824

/-! ## A018406.P14380872674408538044

`A276465(A104144(n)+n+1)`
-/

namespace A018406.P14380872674408538044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276465 (A104144 n + (n + 1 : ℤ)).toNat

end

end A018406.P14380872674408538044

/-! ## A018406.P6422474814734093764

`filter[A018598(n+1), A166486(#)]`
-/

namespace A018406.P6422474814734093764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A018406.P6422474814734093764

/-! ## A018406.P14385126242041047590

`A186101(A018501(-xor(n, -1)))`
-/

namespace A018406.P14385126242041047590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (A018501 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A018406.P14385126242041047590

/-!
# A018407: Divisors of 351.

The programs for A018407, there is no canonical definition to state claims against.
-/

/-! ## A018407.P12137040112190609677

`eq[27, A106614(lcm(27, n))]`
-/

namespace A018407.P12137040112190609677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (Nat.lcm 27 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018407.P12137040112190609677

/-! ## A018407.P7274611106268149424

`eq[n, gcd(n, A045580(n+1))]`
-/

namespace A018407.P7274611106268149424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A045580 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018407.P7274611106268149424

/-! ## A018407.P17446457620290712885

`A057260(A008813(n))`
-/

namespace A018407.P17446457620290712885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057260 (A008813 n).toNat

end

end A018407.P17446457620290712885

/-! ## A018407.P9842397626423791559

`A368738(A057743(n))`
-/

namespace A018407.P9842397626423791559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368738 (A057743 n).toNat

end

end A018407.P9842397626423791559

/-!
# A018408: Divisors of 352.

The programs for A018408, there is no canonical definition to state claims against.
-/

/-! ## A018408.P17144935709446941684

`eq[lcm(32, n)/32, gcd(11, n)]`
-/

namespace A018408.P17144935709446941684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 32 n : ℚ) / 32

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A018408.P17144935709446941684

/-! ## A018408.P5261044418450411900

`A018600(comp[10*n])`
-/

namespace A018408.P5261044418450411900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018408.P5261044418450411900

/-! ## A018408.P2435662158590747638

`A003596(A079064(n+1))`
-/

namespace A018408.P2435662158590747638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (A079064 (n + 1)).toNat

end

end A018408.P2435662158590747638

/-! ## A018408.P6130473915622541441

`A003596(A219955(n+1))`
-/

namespace A018408.P6130473915622541441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (A219955 (n + 1)).toNat

end

end A018408.P6130473915622541441

/-! ## A018408.P7292905394819153855

`A332808(A018442(n+1))`
-/

namespace A018408.P7292905394819153855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018442 (n + 1)).toNat

end

end A018408.P7292905394819153855

/-!
# A018409: Divisors of 354.

The programs for A018409, there is no canonical definition to state claims against.
-/

/-! ## A018409.P6155360482718078332

`59*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A018409.P6155360482718078332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  59 * a (n - 4)

end

end A018409.P6155360482718078332

/-! ## A018409.P15037102401766049289

`record[∏{p}[A018602(n+1), #]]`
-/

namespace A018409.P15037102401766049289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018602 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018409.P15037102401766049289

/-! ## A018409.P18099144442276948099

`A046530(A018668(n+1))`
-/

namespace A018409.P18099144442276948099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A018668 (n + 1)).toNat

end

end A018409.P18099144442276948099

/-! ## A018409.P10635292184029922940

`A064989(A018719(n+1))`
-/

namespace A018409.P10635292184029922940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A018719 (n + 1)).toNat

end

end A018409.P10635292184029922940

/-!
# A018410: Divisors of 356.

The programs for A018410, there is no canonical definition to state claims against.
-/

/-! ## A018410.P7336657238200416528

`89*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018410.P7336657238200416528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  89 * a (n - 3)

end

end A018410.P7336657238200416528

/-!
# A018411: Divisors of 357.

The programs for A018411, there is no canonical definition to state claims against.
-/

/-! ## A018411.P17981572268133729808

`record[gcd(n, A299335(n))]`
-/

namespace A018411.P17981572268133729808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A299335 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018411.P17981572268133729808

/-! ## A018411.P90992820900651951

`record[∏{p}[n, A174034(#)]]`
-/

namespace A018411.P90992820900651951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A174034 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018411.P90992820900651951

/-! ## A018411.P80683260697166805

`eq[51, lcm(51, A106608(n))]`
-/

namespace A018411.P80683260697166805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 51 (A106608 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018411.P80683260697166805

/-! ## A018411.P16341581369801521024

`record[gcd(n+8, A246695(n))]`
-/

namespace A018411.P16341581369801521024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 8 : ℤ) (A246695 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018411.P16341581369801521024

/-!
# A018412: Divisors of 360.

The programs for A018412, there is no canonical definition to state claims against.
-/

/-! ## A018412.P14815374845460364022

`∪[5*eq[72, lcm(72, n)], lt[(72*n)%(n+1), 1]+1]`
-/

namespace A018412.P14815374845460364022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 72 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n % (n + 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f5 j < f6 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A018412.P14815374845460364022

/-! ## A018412.P9231755762354564430

`A129644(n+33)`
-/

namespace A018412.P9231755762354564430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129644 (n + 33)

end

end A018412.P9231755762354564430

/-! ## A018412.P8066206146331337327

`eq[45, lcm(45, A106609(n))]`
-/

namespace A018412.P8066206146331337327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 45 (A106609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018412.P8066206146331337327

/-! ## A018412.P16004630009381840154

`eq[1, A106621(A106619(n))]`
-/

namespace A018412.P16004630009381840154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018412.P16004630009381840154

/-! ## A018412.P14509176673896691930

`record[A032742(A018609(n+1))]`
-/

namespace A018412.P14509176673896691930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018412.P14509176673896691930

/-!
# A018414: Divisors of 364.

The programs for A018414, there is no canonical definition to state claims against.
-/

/-! ## A018414.P10973816507515543747

`A018614(∑[A002635(n)])`
-/

namespace A018414.P10973816507515543747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018614 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018414.P10973816507515543747

/-! ## A018414.P897603181639249686

`A235027(A018385(n+1))`
-/

namespace A018414.P897603181639249686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018385 (n + 1)).toNat

end

end A018414.P897603181639249686

/-! ## A018414.P8824889739052670053

`A018614(record[A003977(n+1)])`
-/

namespace A018414.P8824889739052670053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018614 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A018414.P8824889739052670053

/-! ## A018414.P1415042217755219381

`record[A032742(A018614(n+1))]`
-/

namespace A018414.P1415042217755219381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018414.P1415042217755219381

/-! ## A018414.P15772061301229641724

`record[gcd(A126759(n), A220892(n))]`
-/

namespace A018414.P15772061301229641724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126759 n) (A220892 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018414.P15772061301229641724

/-!
# A018415: Divisors of 366.

The programs for A018415, there is no canonical definition to state claims against.
-/

/-! ## A018415.P7550336115626778915

`eq[30, lcm(30, A234743(n))]`
-/

namespace A018415.P7550336115626778915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 30 (A234743 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018415.P7550336115626778915

/-! ## A018415.P17793601076828681259

`A064554(A018290(n+1))`
-/

namespace A018415.P17793601076828681259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064554 (A018290 (n + 1)).toNat

end

end A018415.P17793601076828681259

/-! ## A018415.P10213707529389902324

`A064989(A018771(n+1))`
-/

namespace A018415.P10213707529389902324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A018771 (n + 1)).toNat

end

end A018415.P10213707529389902324

/-! ## A018415.P10590311441957202944

`A267099(A018472(n+1))`
-/

namespace A018415.P10590311441957202944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A018472 (n + 1)).toNat

end

end A018415.P10590311441957202944

/-!
# A018416: Divisors of 368.

The programs for A018416, there is no canonical definition to state claims against.
-/

/-! ## A018416.P3634019390779576684

`eq[2, A033758(n)]`
-/

namespace A018416.P3634019390779576684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018416.P3634019390779576684

/-! ## A018416.P4066512598444425429

`2^(n+1)-A018575(n+1)`
-/

namespace A018416.P4066512598444425429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A018575 (n + 1)

end

end A018416.P4066512598444425429

/-! ## A018416.P16156347091212280305

`record[gcd(46*a(n-1), A007318(n))]` with `a(0)=1`
-/

namespace A018416.P16156347091212280305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.gcd (46 * f1 (n - 1) : ℤ) (A007318 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018416.P16156347091212280305

/-! ## A018416.P18371427509092786315

`A018618(∑{digits}[n, floor(#/6)]+n+1)`
-/

namespace A018416.P18371427509092786315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018618 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum + (n + 1 : ℤ)).toNat

end

end A018416.P18371427509092786315

/-!
# A018418: Divisors of 370.

The programs for A018418, there is no canonical definition to state claims against.
-/

/-! ## A018418.P9813357139040714692

`A018620(comp[3*n])`
-/

namespace A018418.P9813357139040714692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018620 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018418.P9813357139040714692

/-! ## A018418.P2504180519676499851

`∏{p}[A018620(comp[∑[n-1]]), #]`
-/

namespace A018418.P2504180519676499851
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018620 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A018418.P2504180519676499851

/-! ## A018418.P6513375429688540762

`A029939(A325094(n))`
-/

namespace A018418.P6513375429688540762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029939 (A325094 n).toNat

end

end A018418.P6513375429688540762

/-! ## A018418.P13377910325875426231

`A029939(A191614(n+1))`
-/

namespace A018418.P13377910325875426231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029939 (A191614 (n + 1)).toNat

end

end A018418.P13377910325875426231

/-!
# A018419: Divisors of 372.

The programs for A018419, there is no canonical definition to state claims against.
-/

/-! ## A018419.P16793481791067126683

`eq[31, lcm(31, A051724(n))]`
-/

namespace A018419.P16793481791067126683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 31 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018419.P16793481791067126683

/-! ## A018419.P8336918670886652156

`eq[lcm(12, n)/12, A288638(lcm(12, n)/12)]`
-/

namespace A018419.P8336918670886652156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 n : ℚ) / 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A018419.P8336918670886652156

/-! ## A018419.P6469635626490298575

`A071786(A245481(n+1))`
-/

namespace A018419.P6469635626490298575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A245481 (n + 1)).toNat

end

end A018419.P6469635626490298575

/-! ## A018419.P1633594659392173171

`A332213(A018369(n+1))`
-/

namespace A018419.P1633594659392173171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018369 (n + 1)).toNat

end

end A018419.P1633594659392173171

/-! ## A018419.P3745566603833102283

`A332808(A018460(n+1))`
-/

namespace A018419.P3745566603833102283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018460 (n + 1)).toNat

end

end A018419.P3745566603833102283

/-!
# A018420: Divisors of 374.

The programs for A018420, there is no canonical definition to state claims against.
-/

/-! ## A018420.P507760105039347776

`record[∏{p}[A018625(n+1), #]]`
-/

namespace A018420.P507760105039347776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018625 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018420.P507760105039347776

/-! ## A018420.P5639742965074750804

`A064989(A018621(n+1))`
-/

namespace A018420.P5639742965074750804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A018621 (n + 1)).toNat

end

end A018420.P5639742965074750804

/-! ## A018420.P1596019318699913590

`A018625(A060632(n)+n)`
-/

namespace A018420.P1596019318699913590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018625 (A060632 n + (n : ℤ)).toNat

end

end A018420.P1596019318699913590

/-! ## A018420.P13625843918443507177

`∏{p}[A161715(n), A194638(#)]`
-/

namespace A018420.P13625843918443507177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A194638 p

end

end A018420.P13625843918443507177

/-!
# A018421: Divisors of 375.

The programs for A018421, there is no canonical definition to state claims against.
-/

/-! ## A018421.P1381847546166086950

`5*gcd((2*n)!, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A018421.P1381847546166086950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 * Nat.gcd (Nat.factorial (2 * n)) (a (n - 2))

end

end A018421.P1381847546166086950

/-! ## A018421.P2589355137812615966

`floor(n/12)+5*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A018421.P2589355137812615966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(n : ℚ) / 12⌋ + 5 * a (n - 2)

end

end A018421.P2589355137812615966

/-! ## A018421.P12493167933724005921

`5*a(n-2)-floor(n/12)` with `a(0)=1, a(1)=3`
-/

namespace A018421.P12493167933724005921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 * a (n - 2) - ⌊(n : ℚ) / 12⌋

end

end A018421.P12493167933724005921

/-! ## A018421.P18032538007809987310

`(gcd(n, a(n-1)+2)+4)*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A018421.P18032538007809987310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Nat.gcd n (a (n - 1) + 2) + 4) * a (n - 2)

end

end A018421.P18032538007809987310

/-!
# A018422: Divisors of 376.

The programs for A018422, there is no canonical definition to state claims against.
-/

/-! ## A018422.P9507014516186229431

`A018627(comp[5*n])`
-/

namespace A018422.P9507014516186229431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018627 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018422.P9507014516186229431

/-! ## A018422.P8508050443539976520

`xor(2^n-1, A247064(∑[2^n]))`
-/

namespace A018422.P8508050443539976520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) (A247064 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A018422.P8508050443539976520

/-! ## A018422.P17705878952407459231

`A166327(n+1)-2^((n+1)%5)`
-/

namespace A018422.P17705878952407459231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166327 (n + 1) - (2 ^ ((n + 1) % 5) : ℤ)

end

end A018422.P17705878952407459231

/-! ## A018422.P14338023236613608423

`xor(A018560(n+1)-2^n, 2^n)`
-/

namespace A018422.P14338023236613608423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018560 (n + 1) - (2 ^ n : ℤ)) (2 ^ n : ℤ)

end

end A018422.P14338023236613608423

/-!
# A018423: Divisors of 378.

The programs for A018423, there is no canonical definition to state claims against.
-/

/-! ## A018423.P1334823529176917793

`∪[2*∪[ceil(7*3^(n-2)), 3^(2^n+1)], A018326(n+1)]`
-/

namespace A018423.P1334823529176917793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (2 ^ n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A018423.P1334823529176917793

/-! ## A018423.P1954958986377604055

`record[A032742(A018629(n+1))]`
-/

namespace A018423.P1954958986377604055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018629 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018423.P1954958986377604055

/-! ## A018423.P6496652704345446533

`record[A025480(A018629(n+2))]`
-/

namespace A018423.P6496652704345446533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A018629 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018423.P6496652704345446533

/-! ## A018423.P8188081721842359088

`filter[A018629(n+1), A166486(#)]`
-/

namespace A018423.P8188081721842359088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A018423.P8188081721842359088

/-! ## A018423.P10875663304041224330

`filter[A018629(n+1), A359832(#)]`
-/

namespace A018423.P10875663304041224330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A018423.P10875663304041224330

/-!
# A018424: Divisors of 380.

The programs for A018424, there is no canonical definition to state claims against.
-/

/-! ## A018424.P5498057122837942055

`eq[1, A106621(A106620(n))]`
-/

namespace A018424.P5498057122837942055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018424.P5498057122837942055

/-! ## A018424.P14045168235562691402

`A133040(A029118(n)+n)`
-/

namespace A018424.P14045168235562691402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133040 (A029118 n + (n : ℤ)).toNat

end

end A018424.P14045168235562691402

/-! ## A018424.P1748800323342512972

`A018631(∑[A001221(n+2)])`
-/

namespace A018424.P1748800323342512972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018631 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018424.P1748800323342512972

/-! ## A018424.P9213721921406638046

`record[A007948(A018631(n+1))]`
-/

namespace A018424.P9213721921406638046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A018631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018424.P9213721921406638046

/-! ## A018424.P10055125861102082178

`record[A108738(A133040(n+1))]`
-/

namespace A018424.P10055125861102082178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A133040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018424.P10055125861102082178

/-!
# A018425: Divisors of 384.

The programs for A018425, there is no canonical definition to state claims against.
-/

/-! ## A018425.P8280873618510886352

`floor(2*atan(n))*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A018425.P8280873618510886352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌊2 * Real.arctan (n : ℝ)⌋ * a (n - 2)

end

end A018425.P8280873618510886352

/-! ## A018425.P16827823955880528568

`a(round(atan(n)))*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A018425.P16827823955880528568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (SequenceMachineLib.roundAway (Real.arctan (n : ℝ))).toNat * a (n - 2)

end

end A018425.P16827823955880528568

/-! ## A018425.P261858526635857084

`round(root(n+1, 3))*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A018425.P261858526635857084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (3 : ℝ))) * a (n - 2)

end

end A018425.P261858526635857084

/-! ## A018425.P17647935676002539073

`record[ceil(root(n, 4))*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A018425.P17647935676002539073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 2, 3] fun n f1 =>
  ⌈(n : ℝ) ^ (1 / (4 : ℝ))⌉ * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018425.P17647935676002539073

/-! ## A018425.P3182600269086212323

`A029744(comp[(4*n)²])`
-/

namespace A018425.P3182600269086212323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018425.P3182600269086212323

/-!
# A018426: Divisors of 385.

The programs for A018426, there is no canonical definition to state claims against.
-/

/-! ## A018426.P2185157557386600945

`record[∑{d}[(n+1)*∏{p}[n+1, #], gcd(30, #)]]`
-/

namespace A018426.P2185157557386600945
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd 30 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018426.P2185157557386600945

/-! ## A018426.P15444965008893394836

`record[∏{p}[n, A053671(#)]]`
-/

namespace A018426.P15444965008893394836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A053671 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018426.P15444965008893394836

/-! ## A018426.P7006113652148345083

`record[∏{p}[n, A247877(#)]]`
-/

namespace A018426.P7006113652148345083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A247877 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018426.P7006113652148345083

/-! ## A018426.P11036520657117958151

`record[gcd(n-1-or(n, n-2-2*n), A283900(n+1))]`
-/

namespace A018426.P11036520657117958151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1 - Int.lor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ))) (A283900 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018426.P11036520657117958151

/-!
# A018428: Divisors of 388.

The programs for A018428, there is no canonical definition to state claims against.
-/

/-! ## A018428.P4999523312294827191

`97*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018428.P4999523312294827191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  97 * a (n - 3)

end

end A018428.P4999523312294827191

/-!
# A018429: Divisors of 390.

The programs for A018429, there is no canonical definition to state claims against.
-/

/-! ## A018429.P460252315021415508

`record[gcd((39*n)²+39, A070321(n+1))]`
-/

namespace A018429.P460252315021415508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((39 * n) ^ 2 + 39 : ℤ) (A070321 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018429.P460252315021415508

/-! ## A018429.P13200653086388400625

`A332808(A018396(n+1))`
-/

namespace A018429.P13200653086388400625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018396 (n + 1)).toNat

end

end A018429.P13200653086388400625

/-! ## A018429.P6657262752895830385

`record[A007947(A018642(n+1))]`
-/

namespace A018429.P6657262752895830385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A018642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018429.P6657262752895830385

/-! ## A018429.P9135866417828571389

`record[gcd(A110654(n), A212393(n))]`
-/

namespace A018429.P9135866417828571389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110654 n) (A212393 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018429.P9135866417828571389

/-! ## A018429.P5295036709009911096

`filter[A018642(n+1), A008966(#)]`
-/

namespace A018429.P5295036709009911096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A018429.P5295036709009911096

/-!
# A018430: Divisors of 392.

The programs for A018430, there is no canonical definition to state claims against.
-/

/-! ## A018430.P8034981363563525307

`A018645(comp[n²])/2`
-/

namespace A018430.P8034981363563525307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A018430.P8034981363563525307

/-! ## A018430.P12882112381568406282

`record[gcd(n, A151782(3*n+1))]`
-/

namespace A018430.P12882112381568406282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A151782 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018430.P12882112381568406282

/-! ## A018430.P2956434288677311874

`A018645(record[A029238(n)])`
-/

namespace A018430.P2956434288677311874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018645 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A018430.P2956434288677311874

/-! ## A018430.P7137547262874309581

`A018645(A336109(n+1))`
-/

namespace A018430.P7137547262874309581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018645 (A336109 (n + 1)).toNat

end

end A018430.P7137547262874309581

/-! ## A018430.P4500933164153711748

`A018645(lt[A321436(n), 1])`
-/

namespace A018430.P4500933164153711748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321436 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018645 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A018430.P4500933164153711748

/-!
# A018431: Divisors of 396.

The programs for A018431, there is no canonical definition to state claims against.
-/

/-! ## A018431.P10164879986401376621

`eq[36, lcm(36, A106612(n))]`
-/

namespace A018431.P10164879986401376621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 36 (A106612 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018431.P10164879986401376621

/-! ## A018431.P5954492505002164502

`record[A007948(A018649(n+1))]`
-/

namespace A018431.P5954492505002164502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A018649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018431.P5954492505002164502

/-! ## A018431.P5032854546625166220

`filter[A018649(n+1), A168181(#)]`
-/

namespace A018431.P5032854546625166220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A018431.P5032854546625166220

/-! ## A018431.P8692424416111964506

`filter[A018649(n+1), A212793(#)]`
-/

namespace A018431.P8692424416111964506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A018431.P8692424416111964506

/-! ## A018431.P1001971743907510027

`filter[A018649(n+1), A355823(#)]`
-/

namespace A018431.P1001971743907510027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A018431.P1001971743907510027

/-!
# A018432: Divisors of 399.

The programs for A018432, there is no canonical definition to state claims against.
-/

/-! ## A018432.P13217734578396133579

`record[∏{p}[A261072(n+1), #]]`
-/

namespace A018432.P13217734578396133579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261072 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018432.P13217734578396133579

/-! ## A018432.P13015966010354742168

`record[gcd(A001105(19*n)+19, 1-2*n)]`
-/

namespace A018432.P13015966010354742168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001105 (19 * n) + 19) (1 - (2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018432.P13015966010354742168

/-! ## A018432.P3346962397011060500

`record[gcd(A017500(3*n+4)+n, n+1)]`
-/

namespace A018432.P3346962397011060500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017500 (3 * n + 4) + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018432.P3346962397011060500

/-! ## A018432.P16351720594464069599

`record[gcd((38*n)²+38, A261969(2*n+1))]`
-/

namespace A018432.P16351720594464069599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((38 * n) ^ 2 + 38 : ℤ) (A261969 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018432.P16351720594464069599

/-!
# A018433: Divisors of 400.

The programs for A018433, there is no canonical definition to state claims against.
-/

/-! ## A018433.P7689899525623566477

`A174843(690+n)`
-/

namespace A018433.P7689899525623566477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174843 (690 + n)

end

end A018433.P7689899525623566477

/-! ## A018433.P2115962773408714984

`∪[A133020(2*n+1), eq[80, lcm(80, n)]]`
-/

namespace A018433.P2115962773408714984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133020 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  80

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 80 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A018433.P2115962773408714984

/-! ## A018433.P6570666094667688549

`A072010(A018645(n+1))`
-/

namespace A018433.P6570666094667688549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (A018645 (n + 1)).toNat

end

end A018433.P6570666094667688549

/-! ## A018433.P7166475350383829859

`A133020(A032519(n)+1)`
-/

namespace A018433.P7166475350383829859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133020 (A032519 n + 1).toNat

end

end A018433.P7166475350383829859

/-! ## A018433.P2400632971946407067

`A133075(A032519(n)+1)`
-/

namespace A018433.P2400632971946407067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133075 (A032519 n + 1).toNat

end

end A018433.P2400632971946407067

/-!
# A018434: Divisors of 402.

The programs for A018434, there is no canonical definition to state claims against.
-/

/-! ## A018434.P13558734141901680711

`A018655(Δ[A340648(n)])`
-/

namespace A018434.P13558734141901680711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018655 (f1 (n + 1) - f1 n).toNat

end

end A018434.P13558734141901680711

/-! ## A018434.P8290752362487569804

`A097246(A018507(n+1))`
-/

namespace A018434.P8290752362487569804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (A018507 (n + 1)).toNat

end

end A018434.P8290752362487569804

/-! ## A018434.P3811621118387604587

`A235201(A018395(n+1))`
-/

namespace A018434.P3811621118387604587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018395 (n + 1)).toNat

end

end A018434.P3811621118387604587

/-! ## A018434.P2768922380383376760

`A332808(A018456(n+1))`
-/

namespace A018434.P2768922380383376760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018456 (n + 1)).toNat

end

end A018434.P2768922380383376760

/-!
# A018435: Divisors of 404.

The programs for A018435, there is no canonical definition to state claims against.
-/

/-! ## A018435.P1705257880914050181

`A018658(comp[n*comp[∑[n]]])`
-/

namespace A018435.P1705257880914050181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018658 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018435.P1705257880914050181

/-!
# A018436: Divisors of 405.

The programs for A018436, there is no canonical definition to state claims against.
-/

/-! ## A018436.P4809411080707755912

`a(ceil((n+2)/10))*a(n-2)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A018436.P4809411080707755912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a ⌈(n + 2 : ℚ) / 10⌉.toNat * a (n - 2)

end

end A018436.P4809411080707755912

/-! ## A018436.P14727136843195726761

`record[a(floor((n+1)/4))*a(n-2)]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=5`
-/

namespace A018436.P14727136843195726761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 5] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / 4⌋.toNat * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018436.P14727136843195726761

/-! ## A018436.P9224607092463430823

`A119265(n+46)`
-/

namespace A018436.P9224607092463430823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119265 (n + 46)

end

end A018436.P9224607092463430823

/-! ## A018436.P10880532341025631543

`A083658(comp[10*n])`
-/

namespace A018436.P10880532341025631543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018436.P10880532341025631543

/-! ## A018436.P341419530002964669

`a(n-2)*p?[A046816(n)]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A018436.P341419530002964669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 2) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A018436.P341419530002964669

/-!
# A018437: Divisors of 406.

The programs for A018437, there is no canonical definition to state claims against.
-/

/-! ## A018437.P18166160352726237503

`A018660(comp[3*n])`
-/

namespace A018437.P18166160352726237503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018660 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018437.P18166160352726237503

/-! ## A018437.P11347268930261733830

`A061898(A018404(n+1))`
-/

namespace A018437.P11347268930261733830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A018404 (n + 1)).toNat

end

end A018437.P11347268930261733830

/-! ## A018437.P16212602709103461597

`A064554(A245480(n+1))`
-/

namespace A018437.P16212602709103461597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064554 (A245480 (n + 1)).toNat

end

end A018437.P16212602709103461597

/-! ## A018437.P17259895807762595022

`A332808(A018392(n+1))`
-/

namespace A018437.P17259895807762595022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018392 (n + 1)).toNat

end

end A018437.P17259895807762595022

/-!
# A018438: Divisors of 408.

The programs for A018438, there is no canonical definition to state claims against.
-/

/-! ## A018438.P5858513181941138024

`eq[51, lcm(51, A106609(n))]`
-/

namespace A018438.P5858513181941138024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 51 (A106609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018438.P5858513181941138024

/-! ## A018438.P6570571669398912935

`A116912(A018387(n+1))`
-/

namespace A018438.P6570571669398912935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018387 (n + 1)).toNat

end

end A018438.P6570571669398912935

/-! ## A018438.P4893079149303950631

`A077609(A293880(n+83))`
-/

namespace A018438.P4893079149303950631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (A293880 (n + 83)).toNat

end

end A018438.P4893079149303950631

/-! ## A018438.P15852140376405354983

`record[A078898(A018662(n+1))]`
-/

namespace A018438.P15852140376405354983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A018662 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018438.P15852140376405354983

/-! ## A018438.P6244297273548695345

`filter[A018662(n+1), A307430(#)]`
-/

namespace A018438.P6244297273548695345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A018438.P6244297273548695345

/-!
# A018439: Divisors of 410.

The programs for A018439, there is no canonical definition to state claims against.
-/

/-! ## A018439.P13052889340224817431

`A361317(3^n)`
-/

namespace A018439.P13052889340224817431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361317 (3 ^ n)

end

end A018439.P13052889340224817431

/-! ## A018439.P4554368273869430656

`A018664(lt[n, lcm(3, n)])`
-/

namespace A018439.P4554368273869430656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018664 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A018439.P4554368273869430656

/-! ## A018439.P14286017802965367867

`A018664(∑[log2(gcd(2, n))]+n)`
-/

namespace A018439.P14286017802965367867
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018664 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ))).toNat

end

end A018439.P14286017802965367867

/-! ## A018439.P18344184748442051648

`record[gcd(n+1, A002309(3*n+1))]`
-/

namespace A018439.P18344184748442051648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002309 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018439.P18344184748442051648

/-!
# A018440: Divisors of 412.

The programs for A018440, there is no canonical definition to state claims against.
-/

/-! ## A018440.P4034084254102577559

`A018666(comp[4*n])`
-/

namespace A018440.P4034084254102577559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018666 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018440.P4034084254102577559

/-!
# A018441: Divisors of 414.

The programs for A018441, there is no canonical definition to state claims against.
-/

/-! ## A018441.P12179615766629684049

`A246200(A038754(n))`
-/

namespace A018441.P12179615766629684049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A038754 n).toNat

end

end A018441.P12179615766629684049

/-! ## A018441.P943779674692082579

`A246200(A182522(n+1))`
-/

namespace A018441.P943779674692082579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A182522 (n + 1)).toNat

end

end A018441.P943779674692082579

/-! ## A018441.P7615523253893438144

`A246200(A062318(n+1)+1)`
-/

namespace A018441.P7615523253893438144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A062318 (n + 1) + 1).toNat

end

end A018441.P7615523253893438144

/-! ## A018441.P12062089470940574297

`filter[A018669(n+1), A166486(#)]`
-/

namespace A018441.P12062089470940574297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A018441.P12062089470940574297

/-!
# A018442: Divisors of 416.

The programs for A018442, there is no canonical definition to state claims against.
-/

/-! ## A018442.P16541374286852532426

`A018671(comp[10*n])`
-/

namespace A018442.P16541374286852532426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018671 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018442.P16541374286852532426

/-! ## A018442.P5934200595897751592

`eq[32, lcm(32, A106614(n))]`
-/

namespace A018442.P5934200595897751592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 32 (A106614 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018442.P5934200595897751592

/-! ## A018442.P14610914823071659535

`A107326(A079064(n+1))`
-/

namespace A018442.P14610914823071659535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (A079064 (n + 1)).toNat

end

end A018442.P14610914823071659535

/-! ## A018442.P7381148672394876978

`A107326(A219955(n+1))`
-/

namespace A018442.P7381148672394876978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (A219955 (n + 1)).toNat

end

end A018442.P7381148672394876978

/-! ## A018442.P8030300068764683952

`A332808(A018408(n+1))`
-/

namespace A018442.P8030300068764683952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018408 (n + 1)).toNat

end

end A018442.P8030300068764683952

/-!
# A018443: Divisors of 418.

The programs for A018443, there is no canonical definition to state claims against.
-/

/-! ## A018443.P5942365769845779253

`record[∏{p}[A018674(n+1), #]]`
-/

namespace A018443.P5942365769845779253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018674 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018443.P5942365769845779253

/-! ## A018443.P13011291279644628629

`∏{p}[A018420(n+1), or(2, #)]`
-/

namespace A018443.P13011291279644628629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018420 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 2 p

end

end A018443.P13011291279644628629

/-! ## A018443.P17284679755700959753

`A064989(A018709(n+1))`
-/

namespace A018443.P17284679755700959753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A018709 (n + 1)).toNat

end

end A018443.P17284679755700959753

/-! ## A018443.P16786400504693825751

`A332808(A018485(n+1))`
-/

namespace A018443.P16786400504693825751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018485 (n + 1)).toNat

end

end A018443.P16786400504693825751

/-!
# A018444: Divisors of 420.

The programs for A018444, there is no canonical definition to state claims against.
-/

/-! ## A018444.P6861854683926559956

`record[gcd(28*30*n, A066990(n+1))]`
-/

namespace A018444.P6861854683926559956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (28 * (30 * n) : ℤ) (A066990 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018444.P6861854683926559956

/-! ## A018444.P17752421911855470664

`record[A000026(A002473(n+1))]`
-/

namespace A018444.P17752421911855470664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018444.P17752421911855470664

/-! ## A018444.P18348002854199466427

`record[A000026(A018676(n+1))]`
-/

namespace A018444.P18348002854199466427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A018676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018444.P18348002854199466427

/-! ## A018444.P12330989100215031918

`record[A071785(A000026(n+1))]`
-/

namespace A018444.P12330989100215031918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A000026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018444.P12330989100215031918

/-! ## A018444.P769427070593333025

`record[A000026(A178858(n+1))]`
-/

namespace A018444.P769427070593333025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A178858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018444.P769427070593333025

/-!
# A018445: Divisors of 423.

The programs for A018445, there is no canonical definition to state claims against.
-/

/-! ## A018445.P9368993120697287215

`47*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A018445.P9368993120697287215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  47 * a (n - 3)

end

end A018445.P9368993120697287215

/-!
# A018446: Divisors of 424.

The programs for A018446, there is no canonical definition to state claims against.
-/

/-! ## A018446.P6098103693854918916

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=53`
-/

namespace A018446.P6098103693854918916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 53] fun n a =>
  2 * a (n - 1)

end

end A018446.P6098103693854918916

/-! ## A018446.P2554771556568085076

`record[gcd(53*n, A312289(n))]`
-/

namespace A018446.P2554771556568085076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (53 * n : ℤ) (A312289 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018446.P2554771556568085076

/-! ## A018446.P5131036957019033910

`or(2^n, A018380(n+1))`
-/

namespace A018446.P5131036957019033910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A018380 (n + 1))

end

end A018446.P5131036957019033910

/-! ## A018446.P10777614128330073939

`floor(sqrt(A177912(floor(n/4)+1))*2^n)`
-/

namespace A018446.P10777614128330073939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A177912 (⌊(n : ℚ) / 4⌋ + 1).toNat : ℝ) * (2 ^ n : ℝ)⌋

end

end A018446.P10777614128330073939

/-!
# A018447: Divisors of 425.

The programs for A018447, there is no canonical definition to state claims against.
-/

/-! ## A018447.P1617945500406489856

`a(n-2)*a(n-3)` with `a(0)=1, a(1)=5, a(2)=17, a(3)=25`
-/

namespace A018447.P1617945500406489856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 17, 25] fun n a =>
  a (n - 2) * a (n - 3)

end

end A018447.P1617945500406489856

/-!
# A018448: Divisors of 426.

The programs for A018448, there is no canonical definition to state claims against.
-/

/-! ## A018448.P6025282107101839886

`eq[3, A286617(lcm(3, n))]`
-/

namespace A018448.P6025282107101839886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286617 (Nat.lcm 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018448.P6025282107101839886

/-! ## A018448.P4971439794626328750

`eq[426%(n+1), A353479(n+1)]+1`
-/

namespace A018448.P4971439794626328750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  426 % (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A018448.P4971439794626328750

/-! ## A018448.P7215130543226561495

`record[gcd((n+1)²*(-1)^n, A187206(2*n+5))]`
-/

namespace A018448.P7215130543226561495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 1) ^ 2 : ℤ) * (-1) ^ n) (A187206 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018448.P7215130543226561495

/-! ## A018448.P2606990656648306038

`A018683(comp[-(n+1)*∏{e}[n+1, (-C(2, #))^#]])`
-/

namespace A018448.P2606990656648306038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.choose 2 (Nat.factorization (f2 n) p) : ℤ)) ^ Nat.factorization (f2 n) p))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018683 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A018448.P2606990656648306038

/-!
# A018449: Divisors of 428.

The programs for A018449, there is no canonical definition to state claims against.
-/

/-! ## A018449.P5912570855604516016

`A018686(comp[(2*n)²])`
-/

namespace A018449.P5912570855604516016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018686 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018449.P5912570855604516016

/-!
# A018450: Divisors of 429.

The programs for A018450, there is no canonical definition to state claims against.
-/

/-! ## A018450.P9633880549853490364

`∏{p}[A018375(n+1), or(1, #)]`
-/

namespace A018450.P9633880549853490364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018450.P9633880549853490364

/-! ## A018450.P5797588356063759547

`record[gcd(n^3+n+91, A000217(n+8))]`
-/

namespace A018450.P5797588356063759547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 3 + n + 91 : ℤ) (A000217 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018450.P5797588356063759547

/-! ## A018450.P17166972629071367629

`record[gcd((n+1)/2^val(n+1, 2), A322597(5*n+1))]`
-/

namespace A018450.P17166972629071367629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A322597 (5 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018450.P17166972629071367629

/-! ## A018450.P4997973061014689022

`A109492(∑[A089408(n)])`
-/

namespace A018450.P4997973061014689022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109492 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018450.P4997973061014689022

/-!
# A018451: Divisors of 430.

The programs for A018451, there is no canonical definition to state claims against.
-/

/-! ## A018451.P52751726411353517

`43*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A018451.P52751726411353517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  43 * a (n - 4)

end

end A018451.P52751726411353517

/-! ## A018451.P3741947461480805776

`record[gcd(10*(25*n-18), lcm(6, (n+1)^3)/6)]`
-/

namespace A018451.P3741947461480805776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 * ((25 * n : ℤ) - 18)) (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018451.P3741947461480805776

/-! ## A018451.P12429413935510588605

`A132418(lt[tan(n+2), 0])`
-/

namespace A018451.P12429413935510588605
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132418 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A018451.P12429413935510588605

/-! ## A018451.P17846640602577654605

`A132418(lt[tan(n), 0]-2)`
-/

namespace A018451.P17846640602577654605
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132418 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n - 2)

end

end A018451.P17846640602577654605

/-!
# A018452: Divisors of 432.

The programs for A018452, there is no canonical definition to state claims against.
-/

/-! ## A018452.P4766659446190396055

`eq[1, A106619(lcm(24, n)/24)]`
-/

namespace A018452.P4766659446190396055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (SequenceMachineLib.roundAway ((Nat.lcm 24 n : ℚ) / 24)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018452.P4766659446190396055

/-! ## A018452.P5074999232383540576

`eq[6, A053166(A298026(n))]`
-/

namespace A018452.P5074999232383540576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A298026 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018452.P5074999232383540576

/-! ## A018452.P17087744927144108622

`record[A032742(A018690(n+1))]`
-/

namespace A018452.P17087744927144108622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018452.P17087744927144108622

/-! ## A018452.P4817849954012812172

`record[A065331(A178861(n+1))]`
-/

namespace A018452.P4817849954012812172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A178861 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018452.P4817849954012812172

/-! ## A018452.P196258474466254577

`record[A065331(A198343(n+1))]`
-/

namespace A018452.P196258474466254577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A198343 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018452.P196258474466254577

/-!
# A018453: Divisors of 434.

The programs for A018453, there is no canonical definition to state claims against.
-/

/-! ## A018453.P10477263715168543541

`A018692(comp[3*n])`
-/

namespace A018453.P10477263715168543541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018692 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018453.P10477263715168543541

/-! ## A018453.P3669560146909287653

`A152092(comp[n²])/3`
-/

namespace A018453.P3669560146909287653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152092 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 3

end

end A018453.P3669560146909287653

/-! ## A018453.P13967014797445494338

`∏{p}[A018377(n+1), or(2, #)]`
-/

namespace A018453.P13967014797445494338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 2 p

end

end A018453.P13967014797445494338

/-! ## A018453.P7416488754387256293

`∏{p}[A018386(n+1), or(2, #)]`
-/

namespace A018453.P7416488754387256293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 2 p

end

end A018453.P7416488754387256293

/-!
# A018454: Divisors of 435.

The programs for A018454, there is no canonical definition to state claims against.
-/

/-! ## A018454.P10605080679664408778

`29*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=15`
-/

namespace A018454.P10605080679664408778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 15] fun n a =>
  29 * a (n - 4)

end

end A018454.P10605080679664408778

/-! ## A018454.P16317824137355155601

`record[∏{p}[n, A054906(#²)]]`
-/

namespace A018454.P16317824137355155601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A054906 (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018454.P16317824137355155601

/-! ## A018454.P6362700764925346585

`∏{p}[A018377(n+1), or(1, #)]`
-/

namespace A018454.P6362700764925346585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018454.P6362700764925346585

/-! ## A018454.P10352218178298680918

`A333645(5*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A018454.P10352218178298680918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A333645 (5 * a (n - 2)).toNat

end

end A018454.P10352218178298680918

/-!
# A018455: Divisors of 436.

The programs for A018455, there is no canonical definition to state claims against.
-/

/-! ## A018455.P7215070655797549771

`A018694(comp[4*n])`
-/

namespace A018455.P7215070655797549771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018694 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018455.P7215070655797549771

/-!
# A018456: Divisors of 438.

The programs for A018456, there is no canonical definition to state claims against.
-/

/-! ## A018456.P4742766445438789440

`record[∏{p}[A018698(n+1), #]]`
-/

namespace A018456.P4742766445438789440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018698 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018456.P4742766445438789440

/-! ## A018456.P10551990502424217253

`A044909(A035522(n))`
-/

namespace A018456.P10551990502424217253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044909 (A035522 n).toNat

end

end A018456.P10551990502424217253

/-! ## A018456.P6641487559633442282

`A044909(A038754(n))`
-/

namespace A018456.P6641487559633442282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044909 (A038754 n).toNat

end

end A018456.P6641487559633442282

/-! ## A018456.P10251682096625824821

`A071786(A018340(n+1))`
-/

namespace A018456.P10251682096625824821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018340 (n + 1)).toNat

end

end A018456.P10251682096625824821

/-!
# A018457: Divisors of 440.

The programs for A018457, there is no canonical definition to state claims against.
-/

/-! ## A018457.P5717372567901311289

`eq[22, lcm(22, A106621(n))]`
-/

namespace A018457.P5717372567901311289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 22 (A106621 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018457.P5717372567901311289

/-! ## A018457.P17245751909401096946

`eq[40, lcm(40, A106612(n))]`
-/

namespace A018457.P17245751909401096946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 40 (A106612 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018457.P17245751909401096946

/-! ## A018457.P918437480519207393

`A332808(A018498(n+1))`
-/

namespace A018457.P918437480519207393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018498 (n + 1)).toNat

end

end A018457.P918437480519207393

/-! ## A018457.P12251691631843355060

`A340364(A018589(n+1))`
-/

namespace A018457.P12251691631843355060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340364 (A018589 (n + 1)).toNat

end

end A018457.P12251691631843355060

/-! ## A018457.P16553184385144367159

`A332808(A174843(905+n))`
-/

namespace A018457.P16553184385144367159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A174843 (905 + n)).toNat

end

end A018457.P16553184385144367159

/-!
# A018458: Divisors of 441.

The programs for A018458, there is no canonical definition to state claims against.
-/

/-! ## A018458.P15190413706825167808

`record[gcd(n, A232866(n+1)²)]`
-/

namespace A018458.P15190413706825167808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A232866 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018458.P15190413706825167808

/-! ## A018458.P5988725879934184778

`record[lcm(2, A018700(n+1))/2]`
-/

namespace A018458.P5988725879934184778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A018700 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018458.P5988725879934184778

/-! ## A018458.P8178263788100809641

`record[gcd(or(1, n), A061048(n+7))]`
-/

namespace A018458.P8178263788100809641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 1 n : ℤ) (A061048 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018458.P8178263788100809641

/-! ## A018458.P10761018362100562202

`record[gcd(C(n+1, 2), A116842(n+1))]`
-/

namespace A018458.P10761018362100562202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) 2 : ℤ) (A116842 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018458.P10761018362100562202

/-! ## A018458.P16138450000162576082

`record[gcd(lcm(4, n+1)/4, A014738(n+3))]`
-/

namespace A018458.P16138450000162576082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)) (A014738 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018458.P16138450000162576082

/-!
# A018459: Divisors of 442.

The programs for A018459, there is no canonical definition to state claims against.
-/

/-! ## A018459.P6767932681220023371

`eq[34, lcm(34, A106614(n))]`
-/

namespace A018459.P6767932681220023371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 34 (A106614 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018459.P6767932681220023371

/-! ## A018459.P5727580226153103941

`eq[gcd(26, n), A106618(n)]`
-/

namespace A018459.P5727580226153103941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 26 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018459.P5727580226153103941

/-! ## A018459.P11991803132414428981

`A064989(A018750(n+1))`
-/

namespace A018459.P11991803132414428981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A018750 (n + 1)).toNat

end

end A018459.P11991803132414428981

/-! ## A018459.P831937146236953936

`∩[A087007(n+1), A346992(n+1)]`
-/

namespace A018459.P831937146236953936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018459.P831937146236953936

/-!
# A018460: Divisors of 444.

The programs for A018460, there is no canonical definition to state claims against.
-/

/-! ## A018460.P12727923466098668862

`A057889(A018484(n+1))`
-/

namespace A018460.P12727923466098668862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018484 (n + 1)).toNat

end

end A018460.P12727923466098668862

/-! ## A018460.P6053761956055025931

`A071786(A018698(n+1))`
-/

namespace A018460.P6053761956055025931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018698 (n + 1)).toNat

end

end A018460.P6053761956055025931

/-! ## A018460.P12881118560206051677

`A091204(A018521(n+1))`
-/

namespace A018460.P12881118560206051677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (A018521 (n + 1)).toNat

end

end A018460.P12881118560206051677

/-! ## A018460.P7592269683292850982

`A064554(A245481(n+1))`
-/

namespace A018460.P7592269683292850982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064554 (A245481 (n + 1)).toNat

end

end A018460.P7592269683292850982

/-! ## A018460.P587903576926866729

`A332213(A018405(n+1))`
-/

namespace A018460.P587903576926866729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018405 (n + 1)).toNat

end

end A018460.P587903576926866729

/-!
# A018461: Divisors of 448.

The programs for A018461, there is no canonical definition to state claims against.
-/

/-! ## A018461.P9532601841333912384

`A018708(comp[13*n])`
-/

namespace A018461.P9532601841333912384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018708 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018461.P9532601841333912384

/-! ## A018461.P17653081385466219252

`eq[1, A106615(lcm(32, n)/32)]`
-/

namespace A018461.P17653081385466219252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (SequenceMachineLib.roundAway ((Nat.lcm 32 n : ℚ) / 32)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018461.P17653081385466219252

/-! ## A018461.P17740535282647551812

`A029746(lt[ceil(lcm(2, n+1)/4), 7])`
-/

namespace A018461.P17740535282647551812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A018461.P17740535282647551812

/-! ## A018461.P10434552796732716286

`A029746(lt[(n+1)/2^val(n+1, 2), 12])`
-/

namespace A018461.P10434552796732716286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A018461.P10434552796732716286

/-!
# A018462: Divisors of 450.

The programs for A018462, there is no canonical definition to state claims against.
-/

/-! ## A018462.P1629195109711769635

`eq[25, lcm(25, A106619(n))]`
-/

namespace A018462.P1629195109711769635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 25 (A106619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018462.P1629195109711769635

/-! ## A018462.P4737056478264236541

`record[gcd(n+1, A187168(2*n+1))]`
-/

namespace A018462.P4737056478264236541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A187168 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018462.P4737056478264236541

/-! ## A018462.P15711238629017610395

`record[A032742(A018710(n+1))]`
-/

namespace A018462.P15711238629017610395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018462.P15711238629017610395

/-! ## A018462.P2626968457847567427

`record[A186646(A035303(n+1))]`
-/

namespace A018462.P2626968457847567427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (A035303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018462.P2626968457847567427

/-! ## A018462.P13477711274838594161

`record[A054576(A329469(n+1))]`
-/

namespace A018462.P13477711274838594161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A329469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018462.P13477711274838594161

/-!
# A018463: Divisors of 452.

The programs for A018463, there is no canonical definition to state claims against.
-/

/-! ## A018463.P18176558966833672531

`A018713(comp[4*n])`
-/

namespace A018463.P18176558966833672531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018713 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018463.P18176558966833672531

/-!
# A018464: Divisors of 455.

The programs for A018464, there is no canonical definition to state claims against.
-/

/-! ## A018464.P14947660689312293394

`record[∏{p}[n, A297709(#)]]`
-/

namespace A018464.P14947660689312293394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A297709 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018464.P14947660689312293394

/-! ## A018464.P17644406391201573491

`record[∏{p}[n, A320116(#)]]`
-/

namespace A018464.P17644406391201573491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A320116 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018464.P17644406391201573491

/-! ## A018464.P1969638809423901118

`record[gcd(C(n, 4), A139391(n+1))]`
-/

namespace A018464.P1969638809423901118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n 4 : ℤ) (A139391 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018464.P1969638809423901118

/-! ## A018464.P3149669923434314121

`record[gcd(or(1, n), A156636(3*(n+1)))]`
-/

namespace A018464.P3149669923434314121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 1 n : ℤ) (A156636 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018464.P3149669923434314121

/-!
# A018465: Divisors of 456.

The programs for A018465, there is no canonical definition to state claims against.
-/

/-! ## A018465.P251819040826022156

`A332213(A018387(n+1))`
-/

namespace A018465.P251819040826022156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018387 (n + 1)).toNat

end

end A018465.P251819040826022156

/-! ## A018465.P11863121387248614898

`record[A032742(A018718(n+1))]`
-/

namespace A018465.P11863121387248614898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018718 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018465.P11863121387248614898

/-! ## A018465.P5647781738201752261

`A176095(3*A018438(n+1))`
-/

namespace A018465.P5647781738201752261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (3 * A018438 (n + 1)).toNat

end

end A018465.P5647781738201752261

/-! ## A018465.P5605289171064714495

`filter[A018718(n+1), A307430(#)]`
-/

namespace A018465.P5605289171064714495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A018465.P5605289171064714495

/-! ## A018465.P9466639162311532144

`filter[A018718(n+1), A370598(#)]`
-/

namespace A018465.P9466639162311532144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A018465.P9466639162311532144

/-!
# A018466: Divisors of 459.

The programs for A018466, there is no canonical definition to state claims against.
-/

/-! ## A018466.P8580232340997735210

`A057258(A026267(n+1))`
-/

namespace A018466.P8580232340997735210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057258 (A026267 (n + 1)).toNat

end

end A018466.P8580232340997735210

/-! ## A018466.P11837557369802412279

`A057258(A026483(n+1))`
-/

namespace A018466.P11837557369802412279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057258 (A026483 (n + 1)).toNat

end

end A018466.P11837557369802412279

/-! ## A018466.P16937485465579567676

`A057258(A124067(n+1))`
-/

namespace A018466.P16937485465579567676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057258 (A124067 (n + 1)).toNat

end

end A018466.P16937485465579567676

/-! ## A018466.P8155533471688795641

`A018721(A187977(n+1))`
-/

namespace A018466.P8155533471688795641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018721 (A187977 (n + 1)).toNat

end

end A018466.P8155533471688795641

/-!
# A018467: Divisors of 460.

The programs for A018467, there is no canonical definition to state claims against.
-/

/-! ## A018467.P1861649907619982571

`eq[1, A110063(A106621(n))]`
-/

namespace A018467.P1861649907619982571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110063 (A106621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018467.P1861649907619982571

/-! ## A018467.P7327989760575950083

`filter[A018722(n+1), A075743(#)]`
-/

namespace A018467.P7327989760575950083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075743 (f1 j).toNat = 1) n)

end

end A018467.P7327989760575950083

/-! ## A018467.P4188560337918425549

`filter[A018722(n+1), A168181(#)]`
-/

namespace A018467.P4188560337918425549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A018467.P4188560337918425549

/-! ## A018467.P8783365201260954831

`filter[A018722(n+1), A212793(#)]`
-/

namespace A018467.P8783365201260954831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A018467.P8783365201260954831

/-! ## A018467.P17691219049891749813

`filter[A018722(n+1), A355823(#)]`
-/

namespace A018467.P17691219049891749813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A018467.P17691219049891749813

/-!
# A018468: Divisors of 462.

The programs for A018468, there is no canonical definition to state claims against.
-/

/-! ## A018468.P9139059350961208298

`record[gcd((21*n)²+21, (n+1)/4^val(n+1, 4))]`
-/

namespace A018468.P9139059350961208298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((21 * n) ^ 2 + 21 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018468.P9139059350961208298

/-! ## A018468.P16832346375403645635

`record[gcd(n+1, A255177(11*n))]`
-/

namespace A018468.P16832346375403645635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A255177 (11 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018468.P16832346375403645635

/-! ## A018468.P10127702506445290573

`record[gcd((n+1)/10^val(n+1, 10), A158603(n))]`
-/

namespace A018468.P10127702506445290573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) (A158603 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018468.P10127702506445290573

/-! ## A018468.P12537003872076286176

`record[A072438(A246867(n))]`
-/

namespace A018468.P12537003872076286176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A246867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018468.P12537003872076286176

/-! ## A018468.P16569594846578687755

`record[A347230(A018723(n+1))]`
-/

namespace A018468.P16569594846578687755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347230 (A018723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018468.P16569594846578687755

/-!
# A018469: Divisors of 464.

The programs for A018469, there is no canonical definition to state claims against.
-/

/-! ## A018469.P17168088510118231504

`record[gcd(n, A255298(n)²)]`
-/

namespace A018469.P17168088510118231504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A255298 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018469.P17168088510118231504

/-! ## A018469.P10054992558683138771

`2^n-3*A001949(n)`
-/

namespace A018469.P10054992558683138771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 3 * A001949 n

end

end A018469.P10054992558683138771

/-! ## A018469.P14470744859034737611

`2^(n+2)-3*A119610(n+1)`
-/

namespace A018469.P14470744859034737611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - 3 * A119610 (n + 1)

end

end A018469.P14470744859034737611

/-! ## A018469.P18393514835997316628

`2*a(n-1)-A379461(n+1)` with `a(0)=1`
-/

namespace A018469.P18393514835997316628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A379461 (n + 1)

end

end A018469.P18393514835997316628

/-!
# A018470: Divisors of 465.

The programs for A018470, there is no canonical definition to state claims against.
-/

/-! ## A018470.P15527992124547013685

`record[gcd(n+8, A015223(n))]`
-/

namespace A018470.P15527992124547013685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 8 : ℤ) (A015223 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018470.P15527992124547013685

/-! ## A018470.P17204646284025218524

`∏{p}[A018386(n+1), or(1, #)]`
-/

namespace A018470.P17204646284025218524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018470.P17204646284025218524

/-! ## A018470.P5404151075410780745

`record[gcd(or(1, n), A157825(n+3))]`
-/

namespace A018470.P5404151075410780745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 1 n : ℤ) (A157825 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018470.P5404151075410780745

/-! ## A018470.P8294042084910672304

`eq[n, gcd(n, A213481(3*n+4))]`
-/

namespace A018470.P8294042084910672304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A213481 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018470.P8294042084910672304

/-!
# A018471: Divisors of 468.

The programs for A018471, there is no canonical definition to state claims against.
-/

/-! ## A018471.P12597135146809513296

`∪[lt[(36*n)%(n+1), 1]+1, A008595(lt[(36*n)%(n+1), 1]+1)]`
-/

namespace A018471.P12597135146809513296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n % (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n % (n + 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (SequenceMachineLib.nth (fun j => f5 j < f6 j) n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A018471.P12597135146809513296

/-! ## A018471.P1660762488847149083

`record[A007948(A018731(n+1))]`
-/

namespace A018471.P1660762488847149083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A018731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018471.P1660762488847149083

/-! ## A018471.P5666051501537125

`record[A025480(A018731(n+2))]`
-/

namespace A018471.P5666051501537125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A018731 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018471.P5666051501537125

/-! ## A018471.P3734446291340889831

`filter[A018731(n+1), A168181(#)]`
-/

namespace A018471.P3734446291340889831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A018471.P3734446291340889831

/-! ## A018471.P4894826559426615281

`filter[A018731(n+1), A212793(#)]`
-/

namespace A018471.P4894826559426615281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A018471.P4894826559426615281

/-!
# A018472: Divisors of 470.

The programs for A018472, there is no canonical definition to state claims against.
-/

/-! ## A018472.P16597201736693466318

`A018733(comp[3*n])`
-/

namespace A018472.P16597201736693466318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018733 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018472.P16597201736693466318

/-! ## A018472.P10824989336199186911

`∏{p}[A018733(comp[∑[n-1]]), #]`
-/

namespace A018472.P10824989336199186911
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018733 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A018472.P10824989336199186911

/-! ## A018472.P17672432677578065363

`A072027(A050614(n))`
-/

namespace A018472.P17672432677578065363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072027 (A050614 n).toNat

end

end A018472.P17672432677578065363

/-! ## A018472.P6333627850894044571

`A064614(A018601(n+1))`
-/

namespace A018472.P6333627850894044571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018601 (n + 1)).toNat

end

end A018472.P6333627850894044571

/-!
# A018473: Divisors of 472.

The programs for A018473, there is no canonical definition to state claims against.
-/

/-! ## A018473.P14519716145018227329

`record[Δ[-A168521(n+4)]]`
-/

namespace A018473.P14519716145018227329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168521 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018473.P14519716145018227329

/-! ## A018473.P17572419510603192410

`or(2^n, A018403(n+1))`
-/

namespace A018473.P17572419510603192410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A018403 (n + 1))

end

end A018473.P17572419510603192410

/-! ## A018473.P2616851490248449618

`A018735(floor(5*n/4)+1)`
-/

namespace A018473.P2616851490248449618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018735 (⌊5 * ((n : ℚ) / 4)⌋ + 1).toNat

end

end A018473.P2616851490248449618

/-! ## A018473.P899699100094921591

`or(A018735(n+2)-2^n, 2*round(n/5)*a(n-1))` with `a(0)=1`
-/

namespace A018473.P899699100094921591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A018735 (n + 2) - (2 ^ n : ℤ)) (2 * SequenceMachineLib.roundAway ((n : ℚ) / 5) * a (n - 1))

end

end A018473.P899699100094921591

/-!
# A018474: Divisors of 474.

The programs for A018474, there is no canonical definition to state claims against.
-/

/-! ## A018474.P4786715313199646108

`eq[lcm(n, 474), 474]`
-/

namespace A018474.P4786715313199646108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n 474

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  474

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018474.P4786715313199646108

/-! ## A018474.P7115002632825069361

`record[∏{p}[A018738(n+1), #]]`
-/

namespace A018474.P7115002632825069361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018738 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018474.P7115002632825069361

/-! ## A018474.P5179553823095674398

`record[gcd(A000217(32*n+1)+9, n+1)]`
-/

namespace A018474.P5179553823095674398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (32 * n + 1) + 9) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018474.P5179553823095674398

/-! ## A018474.P2900812655762435616

`A332808(A018448(n+1))`
-/

namespace A018474.P2900812655762435616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018448 (n + 1)).toNat

end

end A018474.P2900812655762435616

/-!
# A018475: Divisors of 475.

The programs for A018475, there is no canonical definition to state claims against.
-/

/-! ## A018475.P6915551097494497627

`n*a(n-1)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=25, a(4)=95`
-/

namespace A018475.P6915551097494497627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 19, 25, 95] fun n a =>
  n * a (n - 1)

end

end A018475.P6915551097494497627

/-!
# A018476: Divisors of 476.

The programs for A018476, there is no canonical definition to state claims against.
-/

/-! ## A018476.P1566456704948144326

`eq[34, lcm(34, A106615(n))]`
-/

namespace A018476.P1566456704948144326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 34 (A106615 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018476.P1566456704948144326

/-! ## A018476.P13239980483666996466

`eq[gcd(28, n), A106618(n)]`
-/

namespace A018476.P13239980483666996466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 28 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018476.P13239980483666996466

/-! ## A018476.P8006291724297319311

`A235199(A328009(n+1))`
-/

namespace A018476.P8006291724297319311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A328009 (n + 1)).toNat

end

end A018476.P8006291724297319311

/-! ## A018476.P3088058406508137097

`A018740(∑[A001221(n+2)])`
-/

namespace A018476.P3088058406508137097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018740 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018476.P3088058406508137097

/-! ## A018476.P3271868481738057108

`record[A032742(A018740(n+1))]`
-/

namespace A018476.P3271868481738057108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018476.P3271868481738057108

/-!
# A018477: Divisors of 477.

The programs for A018477, there is no canonical definition to state claims against.
-/

/-! ## A018477.P16884972852628861314

`3*a(n-1)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=53`
-/

namespace A018477.P16884972852628861314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 53] fun n a =>
  3 * a (n - 1)

end

end A018477.P16884972852628861314

/-!
# A018478: Divisors of 480.

The programs for A018478, there is no canonical definition to state claims against.
-/

/-! ## A018478.P14732791171878901724

`eq[1, A293485(n+1)]+1`
-/

namespace A018478.P14732791171878901724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293485 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A018478.P14732791171878901724

/-! ## A018478.P13400291941870438129

`lt[A250207(n+1), 3]+1`
-/

namespace A018478.P13400291941870438129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250207 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018478.P13400291941870438129

/-! ## A018478.P10206858492827250598

`eq[gcd(3, n), A106609(lcm(20, n)/20)]`
-/

namespace A018478.P10206858492827250598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway ((Nat.lcm 20 n : ℚ) / 20)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018478.P10206858492827250598

/-! ## A018478.P17839893383013864837

`record[gcd(60*(6*(n+2)²+2), A071785(n+1))]`
-/

namespace A018478.P17839893383013864837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (60 * (6 * (n + 2) ^ 2 + 2) : ℤ) (A071785 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018478.P17839893383013864837

/-! ## A018478.P11593093135590742957

`A235489(A134950(n+1))`
-/

namespace A018478.P11593093135590742957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A134950 (n + 1)).toNat

end

end A018478.P11593093135590742957

/-!
# A018479: Divisors of 483.

The programs for A018479, there is no canonical definition to state claims against.
-/

/-! ## A018479.P6871173077213215445

`∏{p}[A018392(n+1), or(1, #)]`
-/

namespace A018479.P6871173077213215445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018479.P6871173077213215445

/-! ## A018479.P12547499795002094567

`∏{p}[A018404(n+1), or(2, #)]`
-/

namespace A018479.P12547499795002094567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018404 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 2 p

end

end A018479.P12547499795002094567

/-! ## A018479.P2840442624786054131

`3^(n%2)*A018392(or(1, n))`
-/

namespace A018479.P2840442624786054131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A018392 (Nat.lor 1 n)

end

end A018479.P2840442624786054131

/-! ## A018479.P16981591604092562385

`record[gcd(or(1, 1-(n+1)²), A173960(n+3))]`
-/

namespace A018479.P16981591604092562385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lor 1 (1 - ((n + 1) ^ 2 : ℤ))) (A173960 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018479.P16981591604092562385

/-!
# A018480: Divisors of 484.

The programs for A018480, there is no canonical definition to state claims against.
-/

/-! ## A018480.P13986960793254208587

`11*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018480.P13986960793254208587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  11 * a (n - 3)

end

end A018480.P13986960793254208587

/-! ## A018480.P15874504128700894003

`record[Δ[A018749(n+1)]]`
-/

namespace A018480.P15874504128700894003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018749 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018480.P15874504128700894003

/-! ## A018480.P9450027494005864337

`record[gcd(n, A165843(n+1))]`
-/

namespace A018480.P9450027494005864337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A165843 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018480.P9450027494005864337

/-! ## A018480.P16508801387844876338

`A003596(∑[∑[char[3*n]]])`
-/

namespace A018480.P16508801387844876338
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018480.P16508801387844876338

/-! ## A018480.P672798840517681285

`A008593(a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018480.P672798840517681285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A008593 (a (n - 3)).toNat

end

end A018480.P672798840517681285

/-!
# A018481: Divisors of 486.

The programs for A018481, there is no canonical definition to state claims against.
-/

/-! ## A018481.P7230077566118127983

`∑[3^floor(n*acot(2))]`
-/

namespace A018481.P7230077566118127983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℝ) * SequenceMachineLib.acot (2 : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018481.P7230077566118127983

/-! ## A018481.P4491742287363756004

`3*a(dr(2-n))` with `a(0)=1, a(1)=2`
-/

namespace A018481.P4491742287363756004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (SequenceMachineLib.digitalRoot (2 - (n : ℤ)))

end

end A018481.P4491742287363756004

/-! ## A018481.P3581169871428717498

`∑[3^val((n+1)!, 4)]`
-/

namespace A018481.P3581169871428717498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (Nat.factorial (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018481.P3581169871428717498

/-! ## A018481.P6058783012970190340

`char[12]+3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A018481.P6058783012970190340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 * a (n - 2)

end

end A018481.P6058783012970190340

/-! ## A018481.P8508659005936907671

`(3*a(n-2))%(61*n)` with `a(0)=1, a(1)=2`
-/

namespace A018481.P8508659005936907671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 2) % (61 * n)

end

end A018481.P8508659005936907671

/-!
# A018482: Divisors of 488.

The programs for A018482, there is no canonical definition to state claims against.
-/

/-! ## A018482.P13552410398522712168

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=61`
-/

namespace A018482.P13552410398522712168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 61] fun n a =>
  2 * a (n - 1)

end

end A018482.P13552410398522712168

/-! ## A018482.P9117857613563233471

`A018754(comp[5*n])`
-/

namespace A018482.P9117857613563233471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018754 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018482.P9117857613563233471

/-! ## A018482.P3536895655281366768

`A337925(2*a(n-1))` with `a(0)=1`
-/

namespace A018482.P3536895655281366768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337925 (2 * a (n - 1)).toNat

end

end A018482.P3536895655281366768

/-! ## A018482.P13478024273163988314

`A390052(2*a(n-1))` with `a(0)=1`
-/

namespace A018482.P13478024273163988314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390052 (2 * a (n - 1)).toNat

end

end A018482.P13478024273163988314

/-!
# A018483: Divisors of 490.

The programs for A018483, there is no canonical definition to state claims against.
-/

/-! ## A018483.P9770901852108599358

`eq[gcd(5, n), A106608(lcm(14, n)/14)]`
-/

namespace A018483.P9770901852108599358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (SequenceMachineLib.roundAway ((Nat.lcm 14 n : ℚ) / 14)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018483.P9770901852108599358

/-! ## A018483.P13779452258659199700

`A064614(A018617(n+1))`
-/

namespace A018483.P13779452258659199700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018617 (n + 1)).toNat

end

end A018483.P13779452258659199700

/-! ## A018483.P9897959551554878728

`record[A026741(A018756(n+1))]`
-/

namespace A018483.P9897959551554878728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A018756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018483.P9897959551554878728

/-! ## A018483.P3204334979057084755

`record[gcd(A052938(n), A282851(n))]`
-/

namespace A018483.P3204334979057084755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052938 n) (A282851 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018483.P3204334979057084755

/-! ## A018483.P7753868918827528830

`filter[A018756(n+1), A166486(#)]`
-/

namespace A018483.P7753868918827528830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A018483.P7753868918827528830

/-!
# A018484: Divisors of 492.

The programs for A018484, there is no canonical definition to state claims against.
-/

/-! ## A018484.P15105678384466664968

`A018758(A047504(n+1))`
-/

namespace A018484.P15105678384466664968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018758 (A047504 (n + 1)).toNat

end

end A018484.P15105678384466664968

/-! ## A018484.P9337303225133049688

`A057889(A018460(n+1))`
-/

namespace A018484.P9337303225133049688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018460 (n + 1)).toNat

end

end A018484.P9337303225133049688

/-! ## A018484.P18418887991737908689

`A091204(A018616(n+1))`
-/

namespace A018484.P18418887991737908689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (A018616 (n + 1)).toNat

end

end A018484.P18418887991737908689

/-! ## A018484.P17442705263983651240

`record[A007948(A018758(n+1))]`
-/

namespace A018484.P17442705263983651240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A018758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018484.P17442705263983651240

/-! ## A018484.P12379339043790530720

`filter[A018758(n+1), A168181(#)]`
-/

namespace A018484.P12379339043790530720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A018484.P12379339043790530720

/-!
# A018485: Divisors of 494.

The programs for A018485, there is no canonical definition to state claims against.
-/

/-! ## A018485.P10969537612865237621

`A064614(A018621(n+1))`
-/

namespace A018485.P10969537612865237621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018621 (n + 1)).toNat

end

end A018485.P10969537612865237621

/-! ## A018485.P1022018824069829030

`A116912(A018643(n+1))`
-/

namespace A018485.P1022018824069829030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018643 (n + 1)).toNat

end

end A018485.P1022018824069829030

/-! ## A018485.P15787344461182807810

`record[A325314(A018761(n+1))]`
-/

namespace A018485.P15787344461182807810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (A018761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018485.P15787344461182807810

/-! ## A018485.P10266881315777682034

`record[gcd(n, A010010(A048967(n)))]`
-/

namespace A018485.P10266881315777682034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A010010 (A048967 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018485.P10266881315777682034

/-!
# A018486: Divisors of 495.

The programs for A018486, there is no canonical definition to state claims against.
-/

/-! ## A018486.P16966228257554659501

`A332808(A018533(n+1))`
-/

namespace A018486.P16966228257554659501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018533 (n + 1)).toNat

end

end A018486.P16966228257554659501

/-! ## A018486.P16016393234342664620

`A064988(A344826(n+1))`
-/

namespace A018486.P16016393234342664620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A344826 (n + 1)).toNat

end

end A018486.P16016393234342664620

/-! ## A018486.P17088792615621573856

`A182469(A043653(n+2))`
-/

namespace A018486.P17088792615621573856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182469 (A043653 (n + 2)).toNat

end

end A018486.P17088792615621573856

/-! ## A018486.P10649360420842751317

`record[A000265(A018762(n+1))]`
-/

namespace A018486.P10649360420842751317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A018762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018486.P10649360420842751317

/-! ## A018486.P4748409832598951195

`record[A319986(A000026(n+1))]`
-/

namespace A018486.P4748409832598951195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319986 (A000026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018486.P4748409832598951195

/-!
# A018487: Divisors of 496.

The programs for A018487, there is no canonical definition to state claims against.
-/

/-! ## A018487.P11298174061597809411

`ceil(2^(cos(ϕ)+n))`
-/

namespace A018487.P11298174061597809411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ (Real.cos Real.goldenRatio + (n : ℝ))⌉

end

end A018487.P11298174061597809411

/-! ## A018487.P8514877908583005664

`ceil(2^(cot(ϕ)+n))`
-/

namespace A018487.P8514877908583005664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ (Real.cot Real.goldenRatio + (n : ℝ))⌉

end

end A018487.P8514877908583005664

/-! ## A018487.P14295011334714608754

`2*a(n-1)-char[5]` with `a(0)=1`
-/

namespace A018487.P14295011334714608754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018487.P14295011334714608754

/-! ## A018487.P14392432730379470640

`ceil((30*2^n+1)/31)`
-/

namespace A018487.P14392432730379470640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(30 * 2 ^ n + 1 : ℚ) / 31⌉

end

end A018487.P14392432730379470640

/-! ## A018487.P712855832468364650

`round(sqrt(4^n*cos(π/9)))`
-/

namespace A018487.P712855832468364650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((4 ^ n : ℝ) * Real.cos (Real.pi / 9)))

end

end A018487.P712855832468364650

/-!
# A018488: Divisors of 498.

The programs for A018488, there is no canonical definition to state claims against.
-/

/-! ## A018488.P12789220410950762859

`A332808(A018531(n+1))`
-/

namespace A018488.P12789220410950762859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018531 (n + 1)).toNat

end

end A018488.P12789220410950762859

/-! ## A018488.P6155137984875803953

`A328443(A073786(n+1))`
-/

namespace A018488.P6155137984875803953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328443 (A073786 (n + 1)).toNat

end

end A018488.P6155137984875803953

/-! ## A018488.P6651647139059789337

`A018765(comp[A108724(n+1)])`
-/

namespace A018488.P6651647139059789337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108724 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018765 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A018488.P6651647139059789337

/-! ## A018488.P12265380583607567307

`A018765(A004524(3*n)+1)`
-/

namespace A018488.P12265380583607567307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018765 (A004524 (3 * n) + 1).toNat

end

end A018488.P12265380583607567307

/-!
# A018489: Divisors of 500.

The programs for A018489, there is no canonical definition to state claims against.
-/

/-! ## A018489.P4695961537197605388

`record[Δ[A079002(n+1)]]`
-/

namespace A018489.P4695961537197605388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018489.P4695961537197605388

/-! ## A018489.P15301807506722667850

`A245478(n+1)+char[13]`
-/

namespace A018489.P15301807506722667850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018489.P15301807506722667850

/-! ## A018489.P14625773908406543871

`record[Δ[Δ[A159765(n+1)]]]`
-/

namespace A018489.P14625773908406543871
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018489.P14625773908406543871

/-! ## A018489.P4270002594368248683

`A245478(lcm(13, n)/13+1)`
-/

namespace A018489.P4270002594368248683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (SequenceMachineLib.roundAway ((Nat.lcm 13 n : ℚ) / 13 + 1)).toNat

end

end A018489.P4270002594368248683

/-! ## A018489.P4468127151336065665

`A327938(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A018489.P4468127151336065665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327938 (a (n - 1)).toNat + a (n - 1)

end

end A018489.P4468127151336065665

/-!
# A018490: Divisors of 504.

The programs for A018490, there is no canonical definition to state claims against.
-/

/-! ## A018490.P4297978917628476799

`eq[1, A293483(n+1)]+1`
-/

namespace A018490.P4297978917628476799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A018490.P4297978917628476799

/-! ## A018490.P1870918870702341086

`eq[2, A293483(A008706(n))]`
-/

namespace A018490.P1870918870702341086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293483 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018490.P1870918870702341086

/-! ## A018490.P647440990787470651

`record[A032742(A018772(n+1))]`
-/

namespace A018490.P647440990787470651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018490.P647440990787470651

/-! ## A018490.P2896440696736332908

`record[A060791(A165412(n+1))]`
-/

namespace A018490.P2896440696736332908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A165412 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018490.P2896440696736332908

/-! ## A018490.P17333938876440491764

`record[A025480(A018772(n+2))]`
-/

namespace A018490.P17333938876440491764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A018772 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018490.P17333938876440491764

/-!
# A018491: Divisors of 506.

The programs for A018491, there is no canonical definition to state claims against.
-/

/-! ## A018491.P12358174851145308635

`record[gcd((22*n)²+22, A085079(n+1))]`
-/

namespace A018491.P12358174851145308635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((22 * n) ^ 2 + 22 : ℤ) (A085079 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018491.P12358174851145308635

/-! ## A018491.P11504326297961161896

`record[gcd(ceil((1/4+n)²), A033951(3*n))]`
-/

namespace A018491.P11504326297961161896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈((1 : ℚ) / 4 + (n : ℚ)) ^ 2⌉ (A033951 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018491.P11504326297961161896

/-! ## A018491.P12842964502409369263

`record[gcd(n*((2*n)²-3), A256650(3*n+1))]`
-/

namespace A018491.P12842964502409369263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * (((2 * n) ^ 2 : ℤ) - 3)) (A256650 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018491.P12842964502409369263

/-! ## A018491.P62122186253141206

`A019565(A033052(n))`
-/

namespace A018491.P62122186253141206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A033052 n).toNat

end

end A018491.P62122186253141206

/-!
# A018493: Divisors of 508.

The programs for A018493, there is no canonical definition to state claims against.
-/

/-! ## A018493.P14738790476462353287

`2^(n+4)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018493.P14738790476462353287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (2 ^ (n + 4) : ℤ) - a (n - 3)

end

end A018493.P14738790476462353287

/-!
# A018494: Divisors of 510.

The programs for A018494, there is no canonical definition to state claims against.
-/

/-! ## A018494.P4719491176813036356

`A076752(A018438(n+1))`
-/

namespace A018494.P4719491176813036356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (A018438 (n + 1)).toNat

end

end A018494.P4719491176813036356

/-! ## A018494.P4785204860831395075

`A234741(A018626(n+1))`
-/

namespace A018494.P4785204860831395075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234741 (A018626 (n + 1)).toNat

end

end A018494.P4785204860831395075

/-! ## A018494.P2948503778973732808

`A235487(A018524(n+1))`
-/

namespace A018494.P2948503778973732808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A018524 (n + 1)).toNat

end

end A018494.P2948503778973732808

/-! ## A018494.P14764929078580243731

`record[A032742(A018779(n+1))]`
-/

namespace A018494.P14764929078580243731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A018779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018494.P14764929078580243731

/-! ## A018494.P10620470092235117635

`filter[A018779(n+1), A008966(#)]`
-/

namespace A018494.P10620470092235117635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A018494.P10620470092235117635

/-!
# A018495: Divisors of 513.

The programs for A018495, there is no canonical definition to state claims against.
-/

/-! ## A018495.P2809094538600492699

`record[gcd(or(4, n), A081585(2*n))]`
-/

namespace A018495.P2809094538600492699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 4 n : ℤ) (A081585 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018495.P2809094538600492699

/-! ## A018495.P8890590711915083055

`record[gcd(A296076(n+1)^9+1, n+1)]`
-/

namespace A018495.P8890590711915083055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296076 (n + 1) ^ 9 + 1) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018495.P8890590711915083055

/-! ## A018495.P16759667600131836736

`record[gcd((n+1)/(1/8)^3-1, A052938(n))]`
-/

namespace A018495.P16759667600131836736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((1 : ℚ) / 8) ^ 3 - 1)) (A052938 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018495.P16759667600131836736

/-! ## A018495.P5128802072559577458

`record[A264975(A284554(n))]`
-/

namespace A018495.P5128802072559577458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A284554 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018495.P5128802072559577458

/-!
# A018496: Divisors of 516.

The programs for A018496, there is no canonical definition to state claims against.
-/

/-! ## A018496.P11406664892659456902

`eq[gcd(43, n), A051724(n)]`
-/

namespace A018496.P11406664892659456902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 43 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018496.P11406664892659456902

/-! ## A018496.P18195473021268473364

`A332213(A018460(n+1))`
-/

namespace A018496.P18195473021268473364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018460 (n + 1)).toNat

end

end A018496.P18195473021268473364

/-! ## A018496.P13877385806002615253

`and(A018521(n+1), A018602(n+1))`
-/

namespace A018496.P13877385806002615253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018521 (n + 1)) (A018602 (n + 1))

end

end A018496.P13877385806002615253

/-! ## A018496.P12666982428210346682

`2*A018419(n+1)-A018343(n+1)`
-/

namespace A018496.P12666982428210346682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018419 (n + 1) - A018343 (n + 1)

end

end A018496.P12666982428210346682

/-! ## A018496.P2814373925911612591

`(A018655(n+1)+A018343(n+1))/2`
-/

namespace A018496.P2814373925911612591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018655 (n + 1) + A018343 (n + 1) : ℚ) / 2

end

end A018496.P2814373925911612591

/-!
# A018497: Divisors of 518.

The programs for A018497, there is no canonical definition to state claims against.
-/

/-! ## A018497.P13619342371815340748

`record[gcd(3*C(n, 3)+1+n, A080855(2*n))]`
-/

namespace A018497.P13619342371815340748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * Nat.choose n 3 + 1 + n : ℤ) (A080855 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018497.P13619342371815340748

/-! ## A018497.P6727069885782324002

`A037454(A004655(n))`
-/

namespace A018497.P6727069885782324002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A004655 n).toNat

end

end A018497.P6727069885782324002

/-! ## A018497.P10809449000795071606

`A061898(A018470(n+1))`
-/

namespace A018497.P10809449000795071606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A018470 (n + 1)).toNat

end

end A018497.P10809449000795071606

/-! ## A018497.P4552363256793667159

`A064614(A018641(n+1))`
-/

namespace A018497.P4552363256793667159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018641 (n + 1)).toNat

end

end A018497.P4552363256793667159

/-!
# A018498: Divisors of 520.

The programs for A018498, there is no canonical definition to state claims against.
-/

/-! ## A018498.P16252702609425375

`A174843(905+n)`
-/

namespace A018498.P16252702609425375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174843 (905 + n)

end

end A018498.P16252702609425375

/-! ## A018498.P846539643140341127

`eq[26, lcm(26, A106621(n))]`
-/

namespace A018498.P846539643140341127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 26 (A106621 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018498.P846539643140341127

/-! ## A018498.P16853230143929170174

`record[gcd(n+1, A004968(n))]`
-/

namespace A018498.P16853230143929170174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A004968 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018498.P16853230143929170174

/-! ## A018498.P3942555171034601366

`A332808(A018457(n+1))`
-/

namespace A018498.P3942555171034601366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018457 (n + 1)).toNat

end

end A018498.P3942555171034601366

/-! ## A018498.P6908806947691175932

`record[gcd(A004968(n), A269658(n))]`
-/

namespace A018498.P6908806947691175932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004968 n) (A269658 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018498.P6908806947691175932

/-!
# A018499: Divisors of 522.

The programs for A018499, there is no canonical definition to state claims against.
-/

/-! ## A018499.P1339198498988220275

`A235138(6*A276086(n))`
-/

namespace A018499.P1339198498988220275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235138 (6 * A276086 n).toNat

end

end A018499.P1339198498988220275

/-! ## A018499.P17235012605565406380

`A308920(2*n+1)+A109814(A000244(n))`
-/

namespace A018499.P17235012605565406380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308920 (2 * n + 1) + A109814 (A000244 n).toNat

end

end A018499.P17235012605565406380

