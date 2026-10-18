import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A251000: Number of (6+1)X(n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251000, there is no canonical definition to state claims against.
-/

/-! ## A251000.P10305441912275821763

`A250994(A166136(n+4))`
-/

namespace A251000.P10305441912275821763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A166136 (n + 4)).toNat

end

end A251000.P10305441912275821763

/-! ## A251000.P16112405709258786909

`A250994(A056115(n)+21)`
-/

namespace A251000.P16112405709258786909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A056115 n + 21).toNat

end

end A251000.P16112405709258786909

/-! ## A251000.P13853390960213533178

`A250994(A167499(n+4)+1)`
-/

namespace A251000.P13853390960213533178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A167499 (n + 4) + 1).toNat

end

end A251000.P13853390960213533178

/-! ## A251000.P13199502020006867243

`A250994(A077169(n+6)+1)`
-/

namespace A251000.P13199502020006867243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A077169 (n + 6) + 1).toNat

end

end A251000.P13199502020006867243

/-! ## A251000.P14001917891607526969

`A250994(A167614(n+4)+3)`
-/

namespace A251000.P14001917891607526969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A167614 (n + 4) + 3).toNat

end

end A251000.P14001917891607526969

/-!
# A251001: Number of (7+1) X (n+1) 0..2 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251001, there is no canonical definition to state claims against.
-/

/-! ## A251001.P16645212248972046927

`A250994(A056119(n)+28)`
-/

namespace A251001.P16645212248972046927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A056119 n + 28).toNat

end

end A251001.P16645212248972046927

/-! ## A251001.P11860346716016072685

`A250994(eq[11, A066657(n)])`
-/

namespace A251001.P11860346716016072685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251001.P11860346716016072685

/-! ## A251001.P4300740538431650417

`A250994(A167499(n+5)+2)`
-/

namespace A251001.P4300740538431650417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A167499 (n + 5) + 2).toNat

end

end A251001.P4300740538431650417

/-! ## A251001.P7298252074622298940

`A250994(A133263(n+6)+5)`
-/

namespace A251001.P7298252074622298940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A133263 (n + 6) + 5).toNat

end

end A251001.P7298252074622298940

/-! ## A251001.P6168584326684938848

`A250994(A000124(n+6)+6)`
-/

namespace A251001.P6168584326684938848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250994 (A000124 (n + 6) + 6).toNat

end

end A251001.P6168584326684938848

/-!
# A251002: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251002, there is no canonical definition to state claims against.
-/

/-! ## A251002.P9508226536404359094

`A251010((n+1)²+n²)`
-/

namespace A251002.P9508226536404359094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 ((n + 1) ^ 2 + n ^ 2)

end

end A251002.P9508226536404359094

/-!
# A251003: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251003, there is no canonical definition to state claims against.
-/

/-! ## A251003.P10204494057513639881

`A251010(∑[n]+1)`
-/

namespace A251003.P10204494057513639881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251003.P10204494057513639881

/-! ## A251003.P15371104172819138619

`record[root(A251010(n+1), A038738(n+1))]`
-/

namespace A251003.P15371104172819138619
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251010 (n + 1) : ℝ) ^ (1 / (A038738 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251003.P15371104172819138619

/-! ## A251003.P10451971095852083159

`record[root(A251010(n+1), A297762(n+1))]`
-/

namespace A251003.P10451971095852083159
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251010 (n + 1) : ℝ) ^ (1 / (A297762 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251003.P10451971095852083159

/-! ## A251003.P11367439961934262755

`record[gcd(A205341(n+1), A251010(n+1))]`
-/

namespace A251003.P11367439961934262755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205341 (n + 1)) (A251010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251003.P11367439961934262755

/-! ## A251003.P8726096938500043291

`record[(2-A002260(n+1))*A251010(n+1)]`
-/

namespace A251003.P8726096938500043291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002260 (n + 1)) * A251010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251003.P8726096938500043291

/-!
# A251004: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251004, there is no canonical definition to state claims against.
-/

/-! ## A251004.P12780612895493268597

`A251010(∑[n+1]+2)`
-/

namespace A251004.P12780612895493268597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251004.P12780612895493268597

/-! ## A251004.P12458993457771356159

`record[A010054(n)*A251010(n+2)]`
-/

namespace A251004.P12458993457771356159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251004.P12458993457771356159

/-! ## A251004.P10690269798989870409

`record[root(A251010(n+3), A297762(n+4))]`
-/

namespace A251004.P10690269798989870409
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251010 (n + 3) : ℝ) ^ (1 / (A297762 (n + 4) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251004.P10690269798989870409

/-! ## A251004.P14333921255508538332

`record[gcd(A144074(n+2), A251010(n+2))]`
-/

namespace A251004.P14333921255508538332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144074 (n + 2)) (A251010 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251004.P14333921255508538332

/-! ## A251004.P13753936341041577384

`record[root(A251010(n+3), A105615(n))]`
-/

namespace A251004.P13753936341041577384
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251010 (n + 3) : ℝ) ^ (1 / (A105615 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251004.P13753936341041577384

/-!
# A251005: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251005, there is no canonical definition to state claims against.
-/

/-! ## A251005.P10299666583780399991

`A251010(∑[n+2]+4)`
-/

namespace A251005.P10299666583780399991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251005.P10299666583780399991

/-! ## A251005.P3344120093494838452

`or(A000007(n), A251010(A167614(n+1)))`
-/

namespace A251005.P3344120093494838452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251010 (A167614 (n + 1)).toNat)

end

end A251005.P3344120093494838452

/-! ## A251005.P18266979923233604791

`A251010(A167614(n+1))*A319101(n+1)`
-/

namespace A251005.P18266979923233604791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A167614 (n + 1)).toNat * A319101 (n + 1)

end

end A251005.P18266979923233604791

/-! ## A251005.P6892866690174866358

`A251010(A167614(n+1))*A323022(n+2)`
-/

namespace A251005.P6892866690174866358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A167614 (n + 1)).toNat * A323022 (n + 2)

end

end A251005.P6892866690174866358

/-! ## A251005.P2398252801864044689

`A251010(A167614(n+1))%A251006(n+1)`
-/

namespace A251005.P2398252801864044689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251010 (A167614 (n + 1)).toNat) (A251006 (n + 1))

end

end A251005.P2398252801864044689

/-!
# A251006: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251006, there is no canonical definition to state claims against.
-/

/-! ## A251006.P8580985435435162832

`A251010(A167614(n+2)+1)`
-/

namespace A251006.P8580985435435162832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A167614 (n + 2) + 1).toNat

end

end A251006.P8580985435435162832

/-!
# A251007: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having its maximum diagonal element less than the absolute difference of its antidiagonal elements.

The programs for A251007, there is no canonical definition to state claims against.
-/

/-! ## A251007.P6680080584701387083

`A251010(A374005(n+1))`
-/

namespace A251007.P6680080584701387083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A374005 (n + 1)).toNat

end

end A251007.P6680080584701387083

/-! ## A251007.P5641241755095198663

`A251010(abs(2*n-A055999(n+3)))`
-/

namespace A251007.P5641241755095198663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 |(2 * n : ℤ) - A055999 (n + 3)|.toNat

end

end A251007.P5641241755095198663

/-! ## A251007.P16739411791584357892

`A251010(A046691(n+3))`
-/

namespace A251007.P16739411791584357892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A046691 (n + 3)).toNat

end

end A251007.P16739411791584357892

/-! ## A251007.P5091470798985112605

`A251010(Δ[A023545(n+1)])`
-/

namespace A251007.P5091470798985112605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (f1 (n + 1) - f1 n).toNat

end

end A251007.P5091470798985112605

/-! ## A251007.P5937139303183241116

`A251010(eq[5, A200370(n+1)])`
-/

namespace A251007.P5937139303183241116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251007.P5937139303183241116

/-!
# A251008: 

The programs for A251008, there is no canonical definition to state claims against.
-/

/-! ## A251008.P17523780444586833781

`A251010(A167499(n+4)+1)`
-/

namespace A251008.P17523780444586833781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A167499 (n + 4) + 1).toNat

end

end A251008.P17523780444586833781

/-! ## A251008.P8421694340314920961

`A251010(A000096(n+5)+1-n)`
-/

namespace A251008.P8421694340314920961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A000096 (n + 5) + 1 - (n : ℤ)).toNat

end

end A251008.P8421694340314920961

/-! ## A251008.P14707415505287292943

`A251010(A055999(n+3)+1)`
-/

namespace A251008.P14707415505287292943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A055999 (n + 3) + 1).toNat

end

end A251008.P14707415505287292943

/-! ## A251008.P4327784064522751859

`A251010(A000096(n+5)-4)`
-/

namespace A251008.P4327784064522751859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A000096 (n + 5) - 4).toNat

end

end A251008.P4327784064522751859

/-!
# A251009: 

The programs for A251009, there is no canonical definition to state claims against.
-/

/-! ## A251009.P7864695659756947477

`A251010(A000096(n+5)+n+2)`
-/

namespace A251009.P7864695659756947477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251010 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A251009.P7864695659756947477

/-!
# A251011: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251011, there is no canonical definition to state claims against.
-/

/-! ## A251011.P13626101504170202155

`A251019((n+1)²+n²)`
-/

namespace A251011.P13626101504170202155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 ((n + 1) ^ 2 + n ^ 2)

end

end A251011.P13626101504170202155

/-!
# A251012: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251012, there is no canonical definition to state claims against.
-/

/-! ## A251012.P9350352186561145450

`A251019(∑[n]+1)`
-/

namespace A251012.P9350352186561145450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251012.P9350352186561145450

/-! ## A251012.P2068235920166052941

`record[root(A251019(n+1), A022166(n))]`
-/

namespace A251012.P2068235920166052941
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 1) : ℝ) ^ (1 / (A022166 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251012.P2068235920166052941

/-! ## A251012.P2519001904548387595

`record[root(A251019(n+1), A137153(n))]`
-/

namespace A251012.P2519001904548387595
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 1) : ℝ) ^ (1 / (A137153 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251012.P2519001904548387595

/-! ## A251012.P15863017879081235833

`record[gcd(A002262(n), A251019(n+1))]`
-/

namespace A251012.P15863017879081235833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251019 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251012.P15863017879081235833

/-! ## A251012.P9635911437150758339

`record[root(A251019(n+1), A033877(n+1))]`
-/

namespace A251012.P9635911437150758339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 1) : ℝ) ^ (1 / (A033877 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251012.P9635911437150758339

/-!
# A251013: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251013, there is no canonical definition to state claims against.
-/

/-! ## A251013.P5487442247592061940

`A251019(∑[n+1]+2)`
-/

namespace A251013.P5487442247592061940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251013.P5487442247592061940

/-! ## A251013.P10951517043299781285

`record[gcd(A002262(n), A251019(n+2))]`
-/

namespace A251013.P10951517043299781285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251019 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251013.P10951517043299781285

/-! ## A251013.P9749258888255183107

`record[root(A251019(n+2), A033877(n+1))]`
-/

namespace A251013.P9749258888255183107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 2) : ℝ) ^ (1 / (A033877 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251013.P9749258888255183107

/-! ## A251013.P8537233835823611993

`record[root(A251019(n+3), A143494(n+2))]`
-/

namespace A251013.P8537233835823611993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 3) : ℝ) ^ (1 / (A143494 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251013.P8537233835823611993

/-! ## A251013.P6194148503482582819

`record[root(A251019(n+2), A022166(n+2))]`
-/

namespace A251013.P6194148503482582819
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251019 (n + 2) : ℝ) ^ (1 / (A022166 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251013.P6194148503482582819

/-!
# A251014: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251014, there is no canonical definition to state claims against.
-/

/-! ## A251014.P1609923870369830487

`A251019(∑[n+2]+4)`
-/

namespace A251014.P1609923870369830487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251014.P1609923870369830487

/-! ## A251014.P5926698742048753545

`or(A251019(A167614(n+1)), A316867(n))`
-/

namespace A251014.P5926698742048753545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A251019 (A167614 (n + 1)).toNat) (A316867 n)

end

end A251014.P5926698742048753545

/-! ## A251014.P3445814421557721230

`A251019(A167614(n+1))+A244415(2*n+1)`
-/

namespace A251014.P3445814421557721230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A167614 (n + 1)).toNat + A244415 (2 * n + 1)

end

end A251014.P3445814421557721230

/-! ## A251014.P3933523016505157992

`A055396(2*(n+1))*A251019(A167614(n+1))`
-/

namespace A251014.P3933523016505157992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 1)) * A251019 (A167614 (n + 1)).toNat

end

end A251014.P3933523016505157992

/-! ## A251014.P10525363212392787492

`A251019(A167614(n+1))%A054215(n+1)`
-/

namespace A251014.P10525363212392787492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251019 (A167614 (n + 1)).toNat) (A054215 (n + 1))

end

end A251014.P10525363212392787492

/-!
# A251015: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251015, there is no canonical definition to state claims against.
-/

/-! ## A251015.P15508338220063551512

`A251019(A167614(n+2)+1)`
-/

namespace A251015.P15508338220063551512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A167614 (n + 2) + 1).toNat

end

end A251015.P15508338220063551512

/-! ## A251015.P14145756963510571161

`A251019(eq[4, A057728(n+1)])`
-/

namespace A251015.P14145756963510571161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251015.P14145756963510571161

/-! ## A251015.P1072513576685373555

`A251019(A155212(n+1)-n)`
-/

namespace A251015.P1072513576685373555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A155212 (n + 1) - (n : ℤ)).toNat

end

end A251015.P1072513576685373555

/-!
# A251016: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements less than the maximum of its antidiagonal elements.

The programs for A251016, there is no canonical definition to state claims against.
-/

/-! ## A251016.P17663424624432805394

`A251019(A374005(n+1))`
-/

namespace A251016.P17663424624432805394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A374005 (n + 1)).toNat

end

end A251016.P17663424624432805394

/-! ## A251016.P11936152854738592251

`A251019(A155212(n)+13)`
-/

namespace A251016.P11936152854738592251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A155212 n + 13).toNat

end

end A251016.P11936152854738592251

/-! ## A251016.P12628656487970896287

`A251019(eq[8, A057728(n+1)])`
-/

namespace A251016.P12628656487970896287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251016.P12628656487970896287

/-!
# A251017: 

The programs for A251017, there is no canonical definition to state claims against.
-/

/-! ## A251017.P13052335403728050600

`A251019(A000217(n+5)+6)`
-/

namespace A251017.P13052335403728050600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A000217 (n + 5) + 6).toNat

end

end A251017.P13052335403728050600

/-! ## A251017.P17078585204434086594

`A251019(A161680(n+7)-n)`
-/

namespace A251017.P17078585204434086594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A161680 (n + 7) - (n : ℤ)).toNat

end

end A251017.P17078585204434086594

/-!
# A251018: 

The programs for A251018, there is no canonical definition to state claims against.
-/

/-! ## A251018.P13838367899696615502

`A251019(A167499(n+5)+2)`
-/

namespace A251018.P13838367899696615502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A167499 (n + 5) + 2).toNat

end

end A251018.P13838367899696615502

/-! ## A251018.P811015454723958006

`A251019(A161680(n+7)+n+1)`
-/

namespace A251018.P811015454723958006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251019 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A251018.P811015454723958006

/-!
# A251020: Number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251020, there is no canonical definition to state claims against.
-/

/-! ## A251020.P112951758811784856

`A251028(∑[4*n]+1)`
-/

namespace A251020.P112951758811784856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251020.P112951758811784856

/-! ## A251020.P4108905004056058152

`lcm(2, A251028(A001844(n)))`
-/

namespace A251020.P4108905004056058152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251028 (A001844 n).toNat)

end

end A251020.P4108905004056058152

/-! ## A251020.P18353090028102396911

`record[A251028(A330613(n+1))]`
-/

namespace A251020.P18353090028102396911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251020.P18353090028102396911

/-! ## A251020.P6945756438829242091

`record[A003982(n)*A251028(n+1)]`
-/

namespace A251020.P6945756438829242091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251020.P6945756438829242091

/-! ## A251020.P8478621309901877995

`record[gcd(A003987(n), A251028(n+1))]`
-/

namespace A251020.P8478621309901877995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251028 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251020.P8478621309901877995

/-!
# A251021: Number of (n+1) X (1+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251021, there is no canonical definition to state claims against.
-/

/-! ## A251021.P5442121229381228240

`A251028(∑[n]+1)`
-/

namespace A251021.P5442121229381228240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251021.P5442121229381228240

/-! ## A251021.P1699918975821182226

`record[A251028(A056536(n+1))]`
-/

namespace A251021.P1699918975821182226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251021.P1699918975821182226

/-! ## A251021.P12027065974941040546

`record[A251028(A114091(n+1))]`
-/

namespace A251021.P12027065974941040546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251021.P12027065974941040546

/-! ## A251021.P9373256564210881262

`record[A251028(A226387(n+1))]`
-/

namespace A251021.P9373256564210881262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A226387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251021.P9373256564210881262

/-! ## A251021.P3416773385162370904

`record[A251028(A249742(n+1))]`
-/

namespace A251021.P3416773385162370904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251021.P3416773385162370904

/-!
# A251022: Number of (n+1)X(2+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251022, there is no canonical definition to state claims against.
-/

/-! ## A251022.P1428597976881225694

`A251028(∑[n+1]+2)`
-/

namespace A251022.P1428597976881225694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251022.P1428597976881225694

/-! ## A251022.P668631674904887211

`record[A251028(A056536(n+1)+1)]`
-/

namespace A251022.P668631674904887211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251022.P668631674904887211

/-! ## A251022.P4671267226192324154

`record[A251028(A114091(n+1)+1)]`
-/

namespace A251022.P4671267226192324154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251022.P4671267226192324154

/-! ## A251022.P3206817353792520207

`record[A010054(n)*A251028(n+2)]`
-/

namespace A251022.P3206817353792520207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251022.P3206817353792520207

/-! ## A251022.P1003746039809412144

`or(char[2], A251028(A000124(n+1)+1))`
-/

namespace A251022.P1003746039809412144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251028 (A000124 (n + 1) + 1).toNat)

end

end A251022.P1003746039809412144

/-!
# A251023: Number of (n+1)X(3+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251023, there is no canonical definition to state claims against.
-/

/-! ## A251023.P1466901668448246983

`A251028(∑[n+2]+4)`
-/

namespace A251023.P1466901668448246983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251023.P1466901668448246983

/-! ## A251023.P12123485098702837631

`or(char[1], A251028(A167614(n+1)))`
-/

namespace A251023.P12123485098702837631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251028 (A167614 (n + 1)).toNat)

end

end A251023.P12123485098702837631

/-! ## A251023.P1634753946923183420

`or(char[1], A251028(A034856(n+1)+5))`
-/

namespace A251023.P1634753946923183420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251028 (A034856 (n + 1) + 5).toNat)

end

end A251023.P1634753946923183420

/-! ## A251023.P11665630029863348535

`A251028(A167614(n+1))+A185284(n)`
-/

namespace A251023.P11665630029863348535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A167614 (n + 1)).toNat + A185284 n

end

end A251023.P11665630029863348535

/-! ## A251023.P11859149444864756327

`A178489(n+1)*A251028(A167614(n+1))`
-/

namespace A251023.P11859149444864756327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (n + 1) * A251028 (A167614 (n + 1)).toNat

end

end A251023.P11859149444864756327

/-!
# A251024: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251024, there is no canonical definition to state claims against.
-/

/-! ## A251024.P13249912023591199709

`A251028(∑[n+3]+7)`
-/

namespace A251024.P13249912023591199709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251024.P13249912023591199709

/-! ## A251024.P10745303707758238469

`or(char[2], A251028(A027379(n+1)+7))`
-/

namespace A251024.P10745303707758238469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251028 (A027379 (n + 1) + 7).toNat)

end

end A251024.P10745303707758238469

/-! ## A251024.P6709927445249184942

`A007318(C(2, n))*A251028(A027379(n+1)+7)`
-/

namespace A251024.P6709927445249184942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251028 (A027379 (n + 1) + 7).toNat

end

end A251024.P6709927445249184942

/-! ## A251024.P5473613164008789930

`A251028(A027379(n+1)+7)+char[A000045(n+11)]`
-/

namespace A251024.P5473613164008789930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 11)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A027379 (n + 1) + 7).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A251024.P5473613164008789930

/-! ## A251024.P14657282502299656156

`A000041(C(2, n+2))*A251028(A027379(n+1)+7)`
-/

namespace A251024.P14657282502299656156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A251028 (A027379 (n + 1) + 7).toNat

end

end A251024.P14657282502299656156

/-!
# A251025: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251025, there is no canonical definition to state claims against.
-/

/-! ## A251025.P2170383100988366974

`A251028(∑[n+4]+11)`
-/

namespace A251025.P2170383100988366974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A251025.P2170383100988366974

/-! ## A251025.P6188198844956877134

`or(char[2], A251028(A167499(n+3)))`
-/

namespace A251025.P6188198844956877134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251028 (A167499 (n + 3)).toNat)

end

end A251025.P6188198844956877134

/-! ## A251025.P7402045001386458028

`A251028(A056000(n)+15)+char[24]`
-/

namespace A251025.P7402045001386458028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251025.P7402045001386458028

/-! ## A251025.P16591631363619317536

`A007318(C(2, n))*A251028(A056000(n)+15)`
-/

namespace A251025.P16591631363619317536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251028 (A056000 n + 15).toNat

end

end A251025.P16591631363619317536

/-! ## A251025.P14135287883308666573

`A251028(A056000(n)+15)/A007318(C(3, n))`
-/

namespace A251025.P14135287883308666573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251028 (A056000 n + 15).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A251025.P14135287883308666573

/-!
# A251026: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251026, there is no canonical definition to state claims against.
-/

/-! ## A251026.P8051636282839013791

`A251028(A166136(n+4))`
-/

namespace A251026.P8051636282839013791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A166136 (n + 4)).toNat

end

end A251026.P8051636282839013791

/-! ## A251026.P12498747933055099673

`A251028(A056115(n)+21)`
-/

namespace A251026.P12498747933055099673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A056115 n + 21).toNat

end

end A251026.P12498747933055099673

/-! ## A251026.P10255943357400451345

`A251028(A167499(n+4)+1)`
-/

namespace A251026.P10255943357400451345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A167499 (n + 4) + 1).toNat

end

end A251026.P10255943357400451345

/-! ## A251026.P18192852042987629056

`A251028(A133263(n+5)+4)`
-/

namespace A251026.P18192852042987629056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A133263 (n + 5) + 4).toNat

end

end A251026.P18192852042987629056

/-! ## A251026.P15241040252047355188

`A251028(A000124(n+5)+5)`
-/

namespace A251026.P15241040252047355188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A000124 (n + 5) + 5).toNat

end

end A251026.P15241040252047355188

/-!
# A251027: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

The programs for A251027, there is no canonical definition to state claims against.
-/

/-! ## A251027.P4358712243503946783

`A251028(A056119(n)+28)`
-/

namespace A251027.P4358712243503946783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A056119 n + 28).toNat

end

end A251027.P4358712243503946783

/-! ## A251027.P5672293178833563532

`A251028(A166136(n+5)+1)`
-/

namespace A251027.P5672293178833563532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A166136 (n + 5) + 1).toNat

end

end A251027.P5672293178833563532

/-! ## A251027.P8064228204451795339

`A251028(A167499(n+5)+2)`
-/

namespace A251027.P8064228204451795339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A167499 (n + 5) + 2).toNat

end

end A251027.P8064228204451795339

/-! ## A251027.P4896113643380989008

`A251028(A167614(n+5)+4)`
-/

namespace A251027.P4896113643380989008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A167614 (n + 5) + 4).toNat

end

end A251027.P4896113643380989008

/-! ## A251027.P16582047132774319030

`A251028(A133263(n+6)+5)`
-/

namespace A251027.P16582047132774319030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251028 (A133263 (n + 6) + 5).toNat

end

end A251027.P16582047132774319030

/-!
# A251029: Number of (n+1) X (n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251029, there is no canonical definition to state claims against.
-/

/-! ## A251029.P5315263465970783333

`A251037(∑[4*n]+1)`
-/

namespace A251029.P5315263465970783333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251029.P5315263465970783333

/-! ## A251029.P10789082234254655363

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A251037(n+1))]`
-/

namespace A251029.P10789082234254655363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A251037 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251029.P10789082234254655363

/-! ## A251029.P14755961402529345172

`and(-1, A251037(A001844(n)))`
-/

namespace A251029.P14755961402529345172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A251037 (A001844 n).toNat)

end

end A251029.P14755961402529345172

/-! ## A251029.P2007511528581898780

`record[A251037(A330613(n+1))]`
-/

namespace A251029.P2007511528581898780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251029.P2007511528581898780

/-!
# A251030: Number of (n+1)X(1+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251030, there is no canonical definition to state claims against.
-/

/-! ## A251030.P7016176718937225015

`A251037(∑[n+1])`
-/

namespace A251030.P7016176718937225015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251030.P7016176718937225015

/-! ## A251030.P15270432587647697718

`record[A251037(A133825(n))]`
-/

namespace A251030.P15270432587647697718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251030.P15270432587647697718

/-! ## A251030.P5786324493069679161

`record[A251037(A106255(n+1))]`
-/

namespace A251030.P5786324493069679161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251030.P5786324493069679161

/-! ## A251030.P10618761465686906834

`record[A251037(A130270(n+1))]`
-/

namespace A251030.P10618761465686906834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251030.P10618761465686906834

/-! ## A251030.P14774744696965804310

`record[A251037(A257506(n+1))]`
-/

namespace A251030.P14774744696965804310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251030.P14774744696965804310

/-!
# A251031: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251031, there is no canonical definition to state claims against.
-/

/-! ## A251031.P12516745025982824128

`A251037(∑[n+2])`
-/

namespace A251031.P12516745025982824128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251031.P12516745025982824128

/-! ## A251031.P2597677988938431418

`record[A251037(A257506(n+2)-1)]`
-/

namespace A251031.P2597677988938431418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A257506 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251031.P2597677988938431418

/-! ## A251031.P13278586529590555216

`record[gcd(A105422(n+1), A251037(n+2))]`
-/

namespace A251031.P13278586529590555216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 (n + 1)) (A251037 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251031.P13278586529590555216

/-! ## A251031.P15698316755730494585

`A251037(A000096(n+1))%A251044(n+1)`
-/

namespace A251031.P15698316755730494585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251037 (A000096 (n + 1)).toNat) (A251044 (n + 1))

end

end A251031.P15698316755730494585

/-! ## A251031.P15601958996888903958

`A251037(A117142(2*(n+1)))%A112141(n+4)`
-/

namespace A251031.P15601958996888903958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251037 (A117142 (2 * (n + 1))).toNat) (A112141 (n + 4))

end

end A251031.P15601958996888903958

/-!
# A251032: Number of (n+1)X(3+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251032, there is no canonical definition to state claims against.
-/

/-! ## A251032.P7870955231047062056

`A251037(∑[n+3]+1)`
-/

namespace A251032.P7870955231047062056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251032.P7870955231047062056

/-! ## A251032.P1541339019969978447

`A214249(n)*A251037(Δ[A008778(n)])`
-/

namespace A251032.P1541339019969978447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214249 n * A251037 (f1 (n + 1) - f1 n).toNat

end

end A251032.P1541339019969978447

/-!
# A251033: Number of (n+1)X(4+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251033, there is no canonical definition to state claims against.
-/

/-! ## A251033.P8276626434667607471

`A251037(∑[n+4]+3)`
-/

namespace A251033.P8276626434667607471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A251033.P8276626434667607471

/-! ## A251033.P18281954031384971365

`A251037(A052905(n+1)+2)+A023533(3*(n+1))`
-/

namespace A251033.P18281954031384971365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A052905 (n + 1) + 2).toNat + A023533 (3 * (n + 1))

end

end A251033.P18281954031384971365

/-!
# A251034: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251034, there is no canonical definition to state claims against.
-/

/-! ## A251034.P6142183932139158814

`A251037(∑[n+5]+6)`
-/

namespace A251034.P6142183932139158814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A251034.P6142183932139158814

/-! ## A251034.P8519677414967742944

`A251037(A027379(n+3)-1)+A065744(n+1)`
-/

namespace A251034.P8519677414967742944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A027379 (n + 3) - 1).toNat + A065744 (n + 1)

end

end A251034.P8519677414967742944

/-!
# A251035: Number of (n+1)X(6+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251035, there is no canonical definition to state claims against.
-/

/-! ## A251035.P8320680100742080267

`A251037(A052905(n+3))`
-/

namespace A251035.P8320680100742080267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A052905 (n + 3)).toNat

end

end A251035.P8320680100742080267

/-! ## A251035.P6746063013989310621

`A251037(A302537(n)+15)`
-/

namespace A251035.P6746063013989310621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A302537 n + 15).toNat

end

end A251035.P6746063013989310621

/-! ## A251035.P9833359335933576951

`A251037(A056119(n)+16)`
-/

namespace A251035.P9833359335933576951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A056119 n + 16).toNat

end

end A251035.P9833359335933576951

/-! ## A251035.P10602935447389730295

`A251037(eq[3, A219347(n)])`
-/

namespace A251035.P10602935447389730295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251035.P10602935447389730295

/-! ## A251035.P6930302732584283692

`A251037(eq[5, A193592(n)])`
-/

namespace A251035.P6930302732584283692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251035.P6930302732584283692

/-!
# A251036: Number of (n+1)X(7+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251036, there is no canonical definition to state claims against.
-/

/-! ## A251036.P9314425988091740894

`A251037(eq[4, A219347(n)])`
-/

namespace A251036.P9314425988091740894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251036.P9314425988091740894

/-! ## A251036.P15195541596832708315

`A251037(eq[6, A193592(n)])`
-/

namespace A251036.P15195541596832708315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251036.P15195541596832708315

/-! ## A251036.P6068843294661291439

`A251037(A141214(n+4)-3)`
-/

namespace A251036.P6068843294661291439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A141214 (n + 4) - 3).toNat

end

end A251036.P6068843294661291439

/-! ## A251036.P9110148660763376418

`A251037(eq[6, A243060(n+1)])`
-/

namespace A251036.P9110148660763376418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251036.P9110148660763376418

/-! ## A251036.P8083597925645945333

`A251037(eq[7, A200370(n+1)])`
-/

namespace A251036.P8083597925645945333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251036.P8083597925645945333

/-!
# A251038: Number of (1+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251038, there is no canonical definition to state claims against.
-/

/-! ## A251038.P13155054419766046270

`A251037(∑[n]+1)`
-/

namespace A251038.P13155054419766046270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251038.P13155054419766046270

/-! ## A251038.P1056073013732065064

`and(-1, A251037(A000124(n)))`
-/

namespace A251038.P1056073013732065064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A251037 (A000124 n).toNat)

end

end A251038.P1056073013732065064

/-! ## A251038.P1504664576945797978

`record[A251037(A166017(n+1))]`
-/

namespace A251038.P1504664576945797978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251038.P1504664576945797978

/-! ## A251038.P12986579549494164359

`record[A251037(Δ[A053436(n+1)])]`
-/

namespace A251038.P12986579549494164359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251038.P12986579549494164359

/-! ## A251038.P2034438157232906166

`record[A010054(n)*A251037(n+1)]`
-/

namespace A251038.P2034438157232906166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251038.P2034438157232906166

/-!
# A251039: Number of (2+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251039, there is no canonical definition to state claims against.
-/

/-! ## A251039.P11869091226409104384

`A251037(∑[n+1]+2)`
-/

namespace A251039.P11869091226409104384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251039.P11869091226409104384

/-! ## A251039.P2939040241021427137

`record[A023531(n)*A251037(n+3)]`
-/

namespace A251039.P2939040241021427137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A251037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251039.P2939040241021427137

/-! ## A251039.P6143948541369423379

`record[gcd(A025581(n), A251037(n+3))]`
-/

namespace A251039.P6143948541369423379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A251037 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251039.P6143948541369423379

/-! ## A251039.P15564061032964790187

`record[A010054(n+1)*A251037(n+3)]`
-/

namespace A251039.P15564061032964790187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A251037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251039.P15564061032964790187

/-! ## A251039.P3926688170626291307

`record[root(A251037(n+3), A243060(n+1))]`
-/

namespace A251039.P3926688170626291307
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251037 (n + 3) : ℝ) ^ (1 / (A243060 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251039.P3926688170626291307

/-!
# A251040: Number of (3+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251040, there is no canonical definition to state claims against.
-/

/-! ## A251040.P14757131573096912193

`A251037(∑[n+2]+4)`
-/

namespace A251040.P14757131573096912193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251040.P14757131573096912193

/-! ## A251040.P7999546226204126070

`A251037(A167614(n+1))+A011731(n)`
-/

namespace A251040.P7999546226204126070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167614 (n + 1)).toNat + A011731 n

end

end A251040.P7999546226204126070

/-! ## A251040.P16562216769456143152

`A251037(A167614(n+1))+A025437(n)`
-/

namespace A251040.P16562216769456143152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167614 (n + 1)).toNat + A025437 n

end

end A251040.P16562216769456143152

/-! ## A251040.P8945356948916375914

`A251037(A167614(n+1))+A025469(n)`
-/

namespace A251040.P8945356948916375914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167614 (n + 1)).toNat + A025469 n

end

end A251040.P8945356948916375914

/-! ## A251040.P10154409125548677661

`A251037(A167614(n+1))+A185284(n)`
-/

namespace A251040.P10154409125548677661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167614 (n + 1)).toNat + A185284 n

end

end A251040.P10154409125548677661

/-!
# A251041: Number of (4+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251041, there is no canonical definition to state claims against.
-/

/-! ## A251041.P5668797137374503918

`A251037(∑[n+3]+7)`
-/

namespace A251041.P5668797137374503918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251041.P5668797137374503918

/-!
# A251042: Number of (5+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251042, there is no canonical definition to state claims against.
-/

/-! ## A251042.P13334796355090821248

`A251037(A167499(n+3))`
-/

namespace A251042.P13334796355090821248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167499 (n + 3)).toNat

end

end A251042.P13334796355090821248

/-! ## A251042.P3181493110916549464

`A251037(A155212(n)+13)`
-/

namespace A251042.P3181493110916549464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A155212 n + 13).toNat

end

end A251042.P3181493110916549464

/-! ## A251042.P724301288564142583

`A251037(A056000(n)+15)`
-/

namespace A251042.P724301288564142583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A056000 n + 15).toNat

end

end A251042.P724301288564142583

/-! ## A251042.P10365286760589621990

`A251037(eq[7, A066657(n)])`
-/

namespace A251042.P10365286760589621990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251042.P10365286760589621990

/-! ## A251042.P13867652537148531758

`A251037(A167614(n+3)+2)`
-/

namespace A251042.P13867652537148531758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167614 (n + 3) + 2).toNat

end

end A251042.P13867652537148531758

/-!
# A251043: Number of (6+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251043, there is no canonical definition to state claims against.
-/

/-! ## A251043.P17406244156826137345

`A251037(A056115(n)+21)`
-/

namespace A251043.P17406244156826137345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A056115 n + 21).toNat

end

end A251043.P17406244156826137345

/-! ## A251043.P4057922381466118293

`A251037(A167499(n+4)+1)`
-/

namespace A251043.P4057922381466118293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167499 (n + 4) + 1).toNat

end

end A251043.P4057922381466118293

/-! ## A251043.P2036867117231948820

`A251037(A077169(n+6)+1)`
-/

namespace A251043.P2036867117231948820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A077169 (n + 6) + 1).toNat

end

end A251043.P2036867117231948820

/-! ## A251043.P14654080163121131731

`A251037(A167614(n+4)+3)`
-/

namespace A251043.P14654080163121131731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167614 (n + 4) + 3).toNat

end

end A251043.P14654080163121131731

/-! ## A251043.P4118484152422940917

`A251037(A000124(n+5)+5)`
-/

namespace A251043.P4118484152422940917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A000124 (n + 5) + 5).toNat

end

end A251043.P4118484152422940917

/-!
# A251044: Number of (7+1)X(n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A251044, there is no canonical definition to state claims against.
-/

/-! ## A251044.P15340786520773998288

`A251037(A302537(n)+27)`
-/

namespace A251044.P15340786520773998288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A302537 n + 27).toNat

end

end A251044.P15340786520773998288

/-! ## A251044.P7245096252537544533

`A251037(A056119(n)+28)`
-/

namespace A251044.P7245096252537544533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A056119 n + 28).toNat

end

end A251044.P7245096252537544533

/-! ## A251044.P1436061625233321610

`A251037(eq[11, A066657(n)])`
-/

namespace A251044.P1436061625233321610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251044.P1436061625233321610

/-! ## A251044.P7918813346447818731

`A251037(A167499(n+5)+2)`
-/

namespace A251044.P7918813346447818731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167499 (n + 5) + 2).toNat

end

end A251044.P7918813346447818731

/-! ## A251044.P16148741182405235635

`A251037(A167614(n+5)+4)`
-/

namespace A251044.P16148741182405235635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251037 (A167614 (n + 5) + 4).toNat

end

end A251044.P16148741182405235635

/-!
# A251045: Squarefree part of A098550(n).

The programs for A251045, there is no canonical definition to state claims against.
-/

/-! ## A251045.P1600261071448026717

`A007913(A098550(n+1))`
-/

namespace A251045.P1600261071448026717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A098550 (n + 1)).toNat

end

end A251045.P1600261071448026717

/-! ## A251045.P12466117325068066102

`A251089(n+1)/A336643(A098550(n+1))`
-/

namespace A251045.P12466117325068066102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251089 (n + 1) : ℚ) / (A336643 (A098550 (n + 1)).toNat : ℚ)

end

end A251045.P12466117325068066102

/-! ## A251045.P11956160132442904863

`A098552(A098551(n+1))-A326128(A098550(n+1))`
-/

namespace A251045.P11956160132442904863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (n + 1)).toNat - A326128 (A098550 (n + 1)).toNat

end

end A251045.P11956160132442904863

/-! ## A251045.P18063114057977371058

`∏{p}[A071975(A098550(n+1)), A304328(#)]`
-/

namespace A251045.P18063114057977371058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A098550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A304328 p

end

end A251045.P18063114057977371058

/-! ## A251045.P6032029450097025294

`A056135(4*A098550(n+1))`
-/

namespace A251045.P6032029450097025294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (4 * A098550 (n + 1)).toNat

end

end A251045.P6032029450097025294

/-! ## A251045.P18149267605557349448

`A076686(16*A098550(n+1))`
-/

namespace A251045.P18149267605557349448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (16 * A098550 (n + 1)).toNat

end

end A251045.P18149267605557349448

/-! ## A251045.P12183375114829334554

`A336643(A098550(n+1)*A251089(n+1))`
-/

namespace A251045.P12183375114829334554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A098550 (n + 1) * A251089 (n + 1)).toNat

end

end A251045.P12183375114829334554

/-! ## A251045.P10601126561318747836

`A336643(A098550(n+1)²)/A336643(A098550(n+1))`
-/

namespace A251045.P10601126561318747836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336643 (A098550 (n + 1) ^ 2).toNat : ℚ) / (A336643 (A098550 (n + 1)).toNat : ℚ)

end

end A251045.P10601126561318747836

/-! ## A251045.P10437693119803737987

`A056554(A098550(n+1)²)`
-/

namespace A251045.P10437693119803737987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (A098550 (n + 1) ^ 2).toNat

end

end A251045.P10437693119803737987

/-! ## A251045.P14077544164605081498

`A056554(A098550(n+1)^2)`
-/

namespace A251045.P14077544164605081498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (A098550 (n + 1) ^ 2).toNat

end

end A251045.P14077544164605081498

/-!
# A251046: Squarefree part of A098548(n).

The programs for A251046, there is no canonical definition to state claims against.
-/

/-! ## A251046.P9280226365963815151

`A007913(A098548(n+1))`
-/

namespace A251046.P9280226365963815151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A098548 (n + 1)).toNat

end

end A251046.P9280226365963815151

/-! ## A251046.P8512558081012363418

`A007913(∪[A251535(n)+1, A251535(n)])`
-/

namespace A251046.P8512558081012363418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A251046.P8512558081012363418

/-! ## A251046.P16944192605769532203

`A251045(A098551(A098548(A098551(A098550(n+1)))))`
-/

namespace A251046.P16944192605769532203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251045 (A098551 (A098548 (A098551 (A098550 (n + 1)).toNat).toNat).toNat).toNat

end

end A251046.P16944192605769532203

/-! ## A251046.P2257112358667909458

`A056135(4*A098548(n+1))`
-/

namespace A251046.P2257112358667909458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (4 * A098548 (n + 1)).toNat

end

end A251046.P2257112358667909458

/-! ## A251046.P15893872434339136953

`A076686(4*A098548(n+1))`
-/

namespace A251046.P15893872434339136953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (4 * A098548 (n + 1)).toNat

end

end A251046.P15893872434339136953

/-!
# A251047: Number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251047, there is no canonical definition to state claims against.
-/

/-! ## A251047.P593208026893537459

`A251055(∑[4*n]+1)`
-/

namespace A251047.P593208026893537459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251047.P593208026893537459

/-! ## A251047.P15888477437965228981

`lcm((-1)^∑{e}[n+1, #], A251055(n²+(n+1)²))`
-/

namespace A251047.P15888477437965228981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A251055 (n ^ 2 + (n + 1) ^ 2))

end

end A251047.P15888477437965228981

/-! ## A251047.P13748927031946009543

`record[A251055(Δ[A235355(n)])]`
-/

namespace A251047.P13748927031946009543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251047.P13748927031946009543

/-! ## A251047.P18171776775236337939

`A251055(A001844(n))+char[20]`
-/

namespace A251047.P18171776775236337939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251047.P18171776775236337939

/-! ## A251047.P13588057612641853340

`record[A003982(n)*A251055(n+1)]`
-/

namespace A251047.P13588057612641853340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251047.P13588057612641853340

/-!
# A251048: Number of (n+1) X (1+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251048, there is no canonical definition to state claims against.
-/

/-! ## A251048.P13694948886483753975

`A251055(∑[n]+1)`
-/

namespace A251048.P13694948886483753975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251048.P13694948886483753975

/-! ## A251048.P1959534186470814980

`record[A251055(A329854(n))]`
-/

namespace A251048.P1959534186470814980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251048.P1959534186470814980

/-! ## A251048.P6780385009969449122

`record[A251055(A056536(n+1))]`
-/

namespace A251048.P6780385009969449122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251048.P6780385009969449122

/-! ## A251048.P180886552020941237

`record[A251055(A276954(n+1))]`
-/

namespace A251048.P180886552020941237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251048.P180886552020941237

/-! ## A251048.P13730119634517564288

`record[A251055(A286235(n+1))]`
-/

namespace A251048.P13730119634517564288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251048.P13730119634517564288

/-!
# A251049: Number of (n+1) X (2+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251049, there is no canonical definition to state claims against.
-/

/-! ## A251049.P11519284490934076971

`A251055(∑[n+1]+2)`
-/

namespace A251049.P11519284490934076971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251049.P11519284490934076971

/-! ## A251049.P7756932612772790457

`record[A251055(A329854(n)+1)]`
-/

namespace A251049.P7756932612772790457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A329854 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251049.P7756932612772790457

/-! ## A251049.P1882062460258459637

`record[A251055(A061579(n)+3)]`
-/

namespace A251049.P1882062460258459637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A061579 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251049.P1882062460258459637

/-! ## A251049.P1035488550396418854

`record[A251055(A056536(n+1)+1)]`
-/

namespace A251049.P1035488550396418854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251049.P1035488550396418854

/-! ## A251049.P6882046063186939155

`record[A251055(A286235(n+1)+1)]`
-/

namespace A251049.P6882046063186939155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251049.P6882046063186939155

/-!
# A251050: Number of (n+1) X (3+1) 0..3 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251050, there is no canonical definition to state claims against.
-/

/-! ## A251050.P4419096888736205523

`A251055(∑[n+2]+4)`
-/

namespace A251050.P4419096888736205523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251050.P4419096888736205523

/-! ## A251050.P9719773377313228682

`or(char[2], A251055(A167614(n+1)))`
-/

namespace A251050.P9719773377313228682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251055 (A167614 (n + 1)).toNat)

end

end A251050.P9719773377313228682

/-! ## A251050.P14821082977699879467

`record[gcd(A025581(n), A251055(n+4))]`
-/

namespace A251050.P14821082977699879467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A251055 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251050.P14821082977699879467

/-! ## A251050.P11242498255916359601

`A251055(A046691(n)+7)+C(n, 64)`
-/

namespace A251050.P11242498255916359601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A046691 n + 7).toNat + (Nat.choose n 64 : ℤ)

end

end A251050.P11242498255916359601

/-! ## A251050.P15831879276510329088

`A251055(A167614(n+1))+A185284(n)`
-/

namespace A251050.P15831879276510329088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A167614 (n + 1)).toNat + A185284 n

end

end A251050.P15831879276510329088

/-!
# A251051: Number of (n+1)X(4+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251051, there is no canonical definition to state claims against.
-/

/-! ## A251051.P4430564770983141640

`A251055(∑[n+3]+7)`
-/

namespace A251051.P4430564770983141640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251051.P4430564770983141640

/-! ## A251051.P15721087403916755076

`A251055(A141214(n)+7)+char[29]`
-/

namespace A251051.P15721087403916755076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251051.P15721087403916755076

/-! ## A251051.P1919716344454845745

`A251055(A052905(n)+9)+char[28]`
-/

namespace A251051.P1919716344454845745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251051.P1919716344454845745

/-! ## A251051.P17841145302815320369

`A007318(C(3, n))*A251055(A052905(n)+9)`
-/

namespace A251051.P17841145302815320369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A251055 (A052905 n + 9).toNat

end

end A251051.P17841145302815320369

/-! ## A251051.P4446596859928790136

`A000041(C(2, n+2))*A251055(A141214(n)+7)`
-/

namespace A251051.P4446596859928790136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A251055 (A141214 n + 7).toNat

end

end A251051.P4446596859928790136

/-!
# A251052: Number of (n+1)X(5+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251052, there is no canonical definition to state claims against.
-/

/-! ## A251052.P13077702437611649554

`A251055(∑[n+4]+11)`
-/

namespace A251052.P13077702437611649554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A251052.P13077702437611649554

/-! ## A251052.P627106494212471666

`A251055(A167499(n+3))%A017024(n)`
-/

namespace A251052.P627106494212471666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251055 (A167499 (n + 3)).toNat) (A017024 n)

end

end A251052.P627106494212471666

/-! ## A251052.P8285810026744697227

`A251055(A374005(n+1))+A019590(2*n+5)`
-/

namespace A251052.P8285810026744697227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A374005 (n + 1)).toNat + A019590 (2 * n + 5)

end

end A251052.P8285810026744697227

/-! ## A251052.P16415834422975961724

`A251055(A167499(n+3))*A286852(A000040(n+1))`
-/

namespace A251052.P16415834422975961724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A167499 (n + 3)).toNat * A286852 (A000040 (n + 1)).toNat

end

end A251052.P16415834422975961724

/-! ## A251052.P675567356159787977

`or(A025441(n), A251055(A046691(n+3)))`
-/

namespace A251052.P675567356159787977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025441 n) (A251055 (A046691 (n + 3)).toNat)

end

end A251052.P675567356159787977

/-!
# A251053: Number of (n+1)X(6+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251053, there is no canonical definition to state claims against.
-/

/-! ## A251053.P8196691754203257069

`A251055(∑[n+5]+16)`
-/

namespace A251053.P8196691754203257069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251053.P8196691754203257069

/-! ## A251053.P18244164751553319785

`A040699(2*n+1)*A251055(A374007(n+1))`
-/

namespace A251053.P18244164751553319785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040699 (2 * n + 1) * A251055 (A374007 (n + 1)).toNat

end

end A251053.P18244164751553319785

/-!
# A251054: Number of (n+1)X(7+1) 0..3 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251054, there is no canonical definition to state claims against.
-/

/-! ## A251054.P14966584234209423364

`A251055(A374008(n+1))`
-/

namespace A251054.P14966584234209423364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A374008 (n + 1)).toNat

end

end A251054.P14966584234209423364

/-! ## A251054.P11044088608683269791

`A251055(A056119(n)+28)`
-/

namespace A251054.P11044088608683269791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A056119 n + 28).toNat

end

end A251054.P11044088608683269791

/-! ## A251054.P14913502985569245596

`A251055(A000124(n+6)+6)`
-/

namespace A251054.P14913502985569245596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A000124 (n + 6) + 6).toNat

end

end A251054.P14913502985569245596

/-! ## A251054.P6434693017888697736

`A251055(A000096(n+5)+8)`
-/

namespace A251054.P6434693017888697736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A000096 (n + 5) + 8).toNat

end

end A251054.P6434693017888697736

/-! ## A251054.P9252659797059103513

`A251055(A000217(n+6)+7)`
-/

namespace A251054.P9252659797059103513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251055 (A000217 (n + 6) + 7).toNat

end

end A251054.P9252659797059103513

/-!
# A251058: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251058, there is no canonical definition to state claims against.
-/

/-! ## A251058.P13755058478912852549

`A251065((n+1)²+n²)`
-/

namespace A251058.P13755058478912852549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 ((n + 1) ^ 2 + n ^ 2)

end

end A251058.P13755058478912852549

/-!
# A251059: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251059, there is no canonical definition to state claims against.
-/

/-! ## A251059.P5457061272496124049

`A251065(∑[n+2])`
-/

namespace A251059.P5457061272496124049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251059.P5457061272496124049

/-! ## A251059.P7861972508802086522

`A251065(A117142(2*n+2))+A000007(n+1)`
-/

namespace A251059.P7861972508802086522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A117142 (2 * n + 2)).toNat + A000007 (n + 1)

end

end A251059.P7861972508802086522

/-!
# A251060: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251060, there is no canonical definition to state claims against.
-/

/-! ## A251060.P10484612882353803059

`A251065(∑[n+3]+1)`
-/

namespace A251060.P10484612882353803059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251060.P10484612882353803059

/-! ## A251060.P927777237686297609

`record[A251065(A198464(n+1))]`
-/

namespace A251060.P927777237686297609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251060.P927777237686297609

/-!
# A251061: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251061, there is no canonical definition to state claims against.
-/

/-! ## A251061.P17023901400483978702

`A251065(A141214(n+1))`
-/

namespace A251061.P17023901400483978702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A141214 (n + 1)).toNat

end

end A251061.P17023901400483978702

/-! ## A251061.P1772053704257843472

`A251065(A027379(n+2))`
-/

namespace A251061.P1772053704257843472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A027379 (n + 2)).toNat

end

end A251061.P1772053704257843472

/-! ## A251061.P6556633077650027785

`A251065(A055998(n+2))`
-/

namespace A251061.P6556633077650027785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A055998 (n + 2)).toNat

end

end A251061.P6556633077650027785

/-! ## A251061.P13679258635473615442

`A251065(A155212(n)+5)`
-/

namespace A251061.P13679258635473615442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A155212 n + 5).toNat

end

end A251061.P13679258635473615442

/-! ## A251061.P7704460983516866092

`A251065(eq[3, A193592(n)])`
-/

namespace A251061.P7704460983516866092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251061.P7704460983516866092

/-!
# A251062: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251062, there is no canonical definition to state claims against.
-/

/-! ## A251062.P7382006868532437730

`A251065(eq[4, A193592(n)])`
-/

namespace A251062.P7382006868532437730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251062.P7382006868532437730

/-! ## A251062.P14523007025190632240

`A251065(eq[5, A239144(n)])`
-/

namespace A251062.P14523007025190632240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251062.P14523007025190632240

/-! ## A251062.P504346320738341797

`A251065(Δ[A023545(n+1)])`
-/

namespace A251062.P504346320738341797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (f1 (n + 1) - f1 n).toNat

end

end A251062.P504346320738341797

/-! ## A251062.P9795827278905909675

`A251065(eq[8, A057728(n+1)])`
-/

namespace A251062.P9795827278905909675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251062.P9795827278905909675

/-! ## A251062.P5198685860672427065

`A251065(eq[2, A049286(n+1)-2])`
-/

namespace A251062.P5198685860672427065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251062.P5198685860672427065

/-!
# A251063: Number of (n+1)X(6+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251063, there is no canonical definition to state claims against.
-/

/-! ## A251063.P4625830910415460817

`A251065(eq[3, A219347(n)])`
-/

namespace A251063.P4625830910415460817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251063.P4625830910415460817

/-! ## A251063.P15065905896581489110

`A251065(eq[5, A193592(n)])`
-/

namespace A251063.P15065905896581489110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251063.P15065905896581489110

/-! ## A251063.P60698875823724335

`A251065(eq[8, A258709(n)])`
-/

namespace A251063.P60698875823724335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251063.P60698875823724335

/-! ## A251063.P9282884822132088553

`A251065(eq[6, A200370(n+1)])`
-/

namespace A251063.P9282884822132088553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251063.P9282884822132088553

/-! ## A251063.P9771824641986631196

`A251065(eq[7, A049286(n+1)])`
-/

namespace A251063.P9771824641986631196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251063.P9771824641986631196

/-!
# A251064: Number of (n+1) X (7+1) 0..2 arrays with no 2 X 2 subblock having x11-x00 less than x10-x01.

The programs for A251064, there is no canonical definition to state claims against.
-/

/-! ## A251064.P8352592791264396100

`A251065(eq[6, A193592(n)])`
-/

namespace A251064.P8352592791264396100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251064.P8352592791264396100

/-! ## A251064.P15997468616375631840

`A251065(eq[2, A219347(n)-2])`
-/

namespace A251064.P15997468616375631840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251064.P15997468616375631840

/-!
# A251066: Number of (2+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251066, there is no canonical definition to state claims against.
-/

/-! ## A251066.P2191499137049492240

`A251065(∑[n+1]+2)`
-/

namespace A251066.P2191499137049492240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251066.P2191499137049492240

/-! ## A251066.P8169902477282662028

`record[A103452(n)*A251065(n+3)]`
-/

namespace A251066.P8169902477282662028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A251065 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251066.P8169902477282662028

/-! ## A251066.P17709051679996741813

`record[gcd(A025581(n), A251065(n+3))]`
-/

namespace A251066.P17709051679996741813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A251065 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251066.P17709051679996741813

/-!
# A251067: Number of (3+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251067, there is no canonical definition to state claims against.
-/

/-! ## A251067.P13780509184407845711

`A251065(∑[n+2]+4)`
-/

namespace A251067.P13780509184407845711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251067.P13780509184407845711

/-! ## A251067.P16462125111221597137

`lcm(A158388(n), A251065(A167614(n+1)))`
-/

namespace A251067.P16462125111221597137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A251065 (A167614 (n + 1)).toNat)

end

end A251067.P16462125111221597137

/-! ## A251067.P17772758235654412960

`or(A000007(n), A251065(A167614(n+1)))`
-/

namespace A251067.P17772758235654412960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251065 (A167614 (n + 1)).toNat)

end

end A251067.P17772758235654412960

/-! ## A251067.P17256286607036747559

`or(A000038(n), A251065(A167614(n+1)))`
-/

namespace A251067.P17256286607036747559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251065 (A167614 (n + 1)).toNat)

end

end A251067.P17256286607036747559

/-! ## A251067.P15683262002228093206

`or(A111332(n), A251065(A167614(n+1)))`
-/

namespace A251067.P15683262002228093206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111332 n) (A251065 (A167614 (n + 1)).toNat)

end

end A251067.P15683262002228093206

/-!
# A251068: Number of (4+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251068, there is no canonical definition to state claims against.
-/

/-! ## A251068.P8520150632527335388

`A251065(A141214(n)+7)`
-/

namespace A251068.P8520150632527335388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A141214 n + 7).toNat

end

end A251068.P8520150632527335388

/-! ## A251068.P8702676849862640005

`A251065(A052905(n)+9)`
-/

namespace A251068.P8702676849862640005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A052905 n + 9).toNat

end

end A251068.P8702676849862640005

/-! ## A251068.P7440219614072002485

`A251065(A055999(n)+10)`
-/

namespace A251068.P7440219614072002485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A055999 n + 10).toNat

end

end A251068.P7440219614072002485

/-! ## A251068.P6157733926645766772

`A251065(A167614(n+2)+1)`
-/

namespace A251068.P6157733926645766772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A167614 (n + 2) + 1).toNat

end

end A251068.P6157733926645766772

/-! ## A251068.P3152430345234716871

`A251065(eq[5, A131818(n+1)])`
-/

namespace A251068.P3152430345234716871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251068.P3152430345234716871

/-!
# A251069: Number of (5+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251069, there is no canonical definition to state claims against.
-/

/-! ## A251069.P5499881383716287802

`A251065(A167499(n+3))`
-/

namespace A251069.P5499881383716287802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A167499 (n + 3)).toNat

end

end A251069.P5499881383716287802

/-! ## A251069.P11479325190055088452

`A251065(A155212(n)+13)`
-/

namespace A251069.P11479325190055088452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A155212 n + 13).toNat

end

end A251069.P11479325190055088452

/-! ## A251069.P7601137859303445378

`A251065(A056000(n)+15)`
-/

namespace A251069.P7601137859303445378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A056000 n + 15).toNat

end

end A251069.P7601137859303445378

/-! ## A251069.P742238178859478494

`A251065(A051936(n+4)+14)`
-/

namespace A251069.P742238178859478494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A051936 (n + 4) + 14).toNat

end

end A251069.P742238178859478494

/-! ## A251069.P6001306845587626098

`A251065(eq[6, A131818(n+1)])`
-/

namespace A251069.P6001306845587626098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251069.P6001306845587626098

/-!
# A251070: Number of (6+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251070, there is no canonical definition to state claims against.
-/

/-! ## A251070.P2878173151815667271

`A251065(∑[n+5]+16)`
-/

namespace A251070.P2878173151815667271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251070.P2878173151815667271

/-!
# A251071: Number of (7+1)X(n+1) 0..2 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251071, there is no canonical definition to state claims against.
-/

/-! ## A251071.P15028149853675385347

`A251065(A167499(n+5)+2)`
-/

namespace A251071.P15028149853675385347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A167499 (n + 5) + 2).toNat

end

end A251071.P15028149853675385347

/-! ## A251071.P6085434121266233988

`A251065(eq[8, A131818(n+1)])`
-/

namespace A251071.P6085434121266233988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251071.P6085434121266233988

/-! ## A251071.P9893148489943121661

`A251065(A000217(n+7)-n)`
-/

namespace A251071.P9893148489943121661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (A000217 (n + 7) - (n : ℤ)).toNat

end

end A251071.P9893148489943121661

/-!
# A251072: Number A(n,k) of tilings of a 3k X n rectangle using 3n k-ominoes of shape I; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A251072, there is no canonical definition to state claims against.
-/

/-! ## A251072.P3101569043680648769

`A147249(A350733(n))`
-/

namespace A251072.P3101569043680648769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147249 (A350733 n).toNat

end

end A251072.P3101569043680648769

/-! ## A251072.P18239923630504629704

`A147249(A058294(n+1)+1)`
-/

namespace A251072.P18239923630504629704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147249 (A058294 (n + 1) + 1).toNat

end

end A251072.P18239923630504629704

/-! ## A251072.P10111849726626381846

`gcd(A004442(C(n, 5)), A022182(n))`
-/

namespace A251072.P10111849726626381846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (Nat.choose n 5)) (A022182 n)

end

end A251072.P10111849726626381846

/-! ## A251072.P9199133387366207921

`A119788(A227010(3*n+1)-8)`
-/

namespace A251072.P9199133387366207921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A227010 (3 * n + 1) - 8).toNat

end

end A251072.P9199133387366207921

/-! ## A251072.P14695380059781061692

`A196929(or(10, A196929(3*n+4)))`
-/

namespace A251072.P14695380059781061692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (Int.lor 10 (A196929 (3 * n + 4))).toNat

end

end A251072.P14695380059781061692

/-!
# A251073: Number of tilings of a 9 X n rectangle using 3n trominoes of shape I.

The programs for A251073, there is no canonical definition to state claims against.
-/

/-! ## A251073.P9564687378346193126

`A251072(∑[n+3]+n+3)`
-/

namespace A251073.P9564687378346193126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A251073.P9564687378346193126

/-! ## A251073.P2689227343586863756

`A251072(A046691(n+2))%A001700(2*(n+1))`
-/

namespace A251073.P2689227343586863756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251072 (A046691 (n + 2)).toNat) (A001700 (2 * (n + 1)))

end

end A251073.P2689227343586863756

/-!
# A251074: Number of tilings of a 12 X n rectangle using 3n tetrominoes of shape I.

The programs for A251074, there is no canonical definition to state claims against.
-/

/-! ## A251074.P3152163284660173293

`A251072(A052905(n+2))`
-/

namespace A251074.P3152163284660173293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A052905 (n + 2)).toNat

end

end A251074.P3152163284660173293

/-! ## A251074.P17500779605885095654

`A251072(eq[4, A025581(n)])`
-/

namespace A251074.P17500779605885095654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251074.P17500779605885095654

/-! ## A251074.P1575622073491792247

`A251072(A034856(n+4)-3)`
-/

namespace A251074.P1575622073491792247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A034856 (n + 4) - 3).toNat

end

end A251074.P1575622073491792247

/-! ## A251074.P1717282904728648176

`A251072(A000217(n+5)-5)`
-/

namespace A251074.P1717282904728648176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A000217 (n + 5) - 5).toNat

end

end A251074.P1717282904728648176

/-! ## A251074.P6523736072616129165

`A251072(A000124(n+5)-6)`
-/

namespace A251074.P6523736072616129165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A000124 (n + 5) - 6).toNat

end

end A251074.P6523736072616129165

/-!
# A251075: Number of tilings of a 18 X n rectangle using 3n hexominoes of shape I.

The programs for A251075, there is no canonical definition to state claims against.
-/

/-! ## A251075.P1028362412566079871

`A251072(eq[6, A025581(n)])`
-/

namespace A251075.P1028362412566079871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251075.P1028362412566079871

/-! ## A251075.P13522485465306720373

`A251072(A056000(n+3)+3)`
-/

namespace A251075.P13522485465306720373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A056000 (n + 3) + 3).toNat

end

end A251075.P13522485465306720373

/-! ## A251075.P5897129901426000209

`A251072(A027379(n+5)-4)`
-/

namespace A251075.P5897129901426000209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A027379 (n + 5) - 4).toNat

end

end A251075.P5897129901426000209

/-! ## A251075.P14946435726458925634

`A251072(A034856(n+6)-5)`
-/

namespace A251075.P14946435726458925634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A034856 (n + 6) - 5).toNat

end

end A251075.P14946435726458925634

/-! ## A251075.P13148808633790019152

`A251072(A000217(n+7)-7)`
-/

namespace A251075.P13148808633790019152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A000217 (n + 7) - 7).toNat

end

end A251075.P13148808633790019152

/-!
# A251076: Number of tilings of a 21 X n rectangle using 3n heptominoes of shape I.

The programs for A251076, there is no canonical definition to state claims against.
-/

/-! ## A251076.P16204205138861210347

`A251072(A155212(n+4))`
-/

namespace A251076.P16204205138861210347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A155212 (n + 4)).toNat

end

end A251076.P16204205138861210347

/-! ## A251076.P1079354348535715491

`A251072(eq[7, A025581(n)])`
-/

namespace A251076.P1079354348535715491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251076.P1079354348535715491

/-! ## A251076.P17866086422695078409

`A251072(A000217(n+8)-8)`
-/

namespace A251076.P17866086422695078409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A000217 (n + 8) - 8).toNat

end

end A251076.P17866086422695078409

/-! ## A251076.P3393684586189583293

`A251072(eq[8, A004736(n+1)])`
-/

namespace A251076.P3393684586189583293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251076.P3393684586189583293

/-! ## A251076.P13843806185803112987

`A251072(A005843(n)+A141214(n+3)+10)`
-/

namespace A251076.P13843806185803112987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A005843 n + (A141214 (n + 3) + 10)).toNat

end

end A251076.P13843806185803112987

/-!
# A251077: Number of tilings of a 24 X n rectangle using 3n octominoes of shape I.

The programs for A251077, there is no canonical definition to state claims against.
-/

/-! ## A251077.P16651638643360626236

`A251072(eq[8, A025581(n)])`
-/

namespace A251077.P16651638643360626236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251077.P16651638643360626236

/-! ## A251077.P3923798158595859745

`A251072(A055999(n+6)-3)`
-/

namespace A251077.P3923798158595859745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A055999 (n + 6) - 3).toNat

end

end A251077.P3923798158595859745

/-! ## A251077.P6136732058986490136

`A251072(A000217(n+9)-9)`
-/

namespace A251077.P6136732058986490136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A000217 (n + 9) - 9).toNat

end

end A251077.P6136732058986490136

/-! ## A251077.P201937392778115370

`A251072(eq[9, A004736(n+1)])`
-/

namespace A251077.P201937392778115370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251077.P201937392778115370

/-! ## A251077.P12055617541385554552

`A058314(3*(n+1))^(A241462(n+1)%2)`
-/

namespace A251077.P12055617541385554552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058314 (3 * (n + 1)) : ℚ) ^ (Int.tmod (A241462 (n + 1)) 2 : ℤ)

end

end A251077.P12055617541385554552

/-!
# A251078: Number of tilings of a 27 X n rectangle using 3n nonominoes of shape I.

The programs for A251078, there is no canonical definition to state claims against.
-/

/-! ## A251078.P278814205714551902

`A251072(eq[9, A025581(n)])`
-/

namespace A251078.P278814205714551902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251078.P278814205714551902

/-! ## A251078.P4117723808344692004

`A251072(A155212(n+6)-2)`
-/

namespace A251078.P4117723808344692004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A155212 (n + 6) - 2).toNat

end

end A251078.P4117723808344692004

/-! ## A251078.P953539112370663901

`A251072(eq[10, A004736(n+1)])`
-/

namespace A251078.P953539112370663901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251078.P953539112370663901

/-! ## A251078.P15429676392860459789

`A251072(A000096(n+8)+n+1)`
-/

namespace A251078.P15429676392860459789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A251078.P15429676392860459789

/-! ## A251078.P5117343977411566974

`A251072(A055998(n+7)+n+3)`
-/

namespace A251078.P5117343977411566974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A055998 (n + 7) + (n + 3 : ℤ)).toNat

end

end A251078.P5117343977411566974

/-!
# A251079: Number of tilings of a 30 X n rectangle using 3n decominoes of shape I.

The programs for A251079, there is no canonical definition to state claims against.
-/

/-! ## A251079.P11171249385051189544

`A251072(eq[10, A025581(n)])`
-/

namespace A251079.P11171249385051189544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251079.P11171249385051189544

/-! ## A251079.P15480975279195335936

`A251072(A000124(n+11)-12)`
-/

namespace A251079.P15480975279195335936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A000124 (n + 11) - 12).toNat

end

end A251079.P15480975279195335936

/-! ## A251079.P4439941500068976454

`A251072(A055998(n+8)+n+3)`
-/

namespace A251079.P4439941500068976454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251072 (A055998 (n + 8) + (n + 3 : ℤ)).toNat

end

end A251079.P4439941500068976454

/-! ## A251079.P10849855161827864042

`A241971(A111696(n))`
-/

namespace A251079.P10849855161827864042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (A111696 n).toNat

end

end A251079.P10849855161827864042

/-! ## A251079.P2216165982517021378

`A358577(C(∑{d}[n, #%#²], A131242(n)))`
-/

namespace A251079.P2216165982517021378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358577 (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d % d ^ 2) (A131242 n).toNat)

end

end A251079.P2216165982517021378

/-!
# A251080: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251080, there is no canonical definition to state claims against.
-/

/-! ## A251080.P12428869311913317381

`A251088(∑[4*n]+1)`
-/

namespace A251080.P12428869311913317381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251080.P12428869311913317381

/-! ## A251080.P1963307391293465405

`lcm(4*floor(n/4)-2*floor(n/2)+1, A251088(n²+(n+1)²))`
-/

namespace A251080.P1963307391293465405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * ⌊(n : ℚ) / 4⌋ - 2 * ⌊(n : ℚ) / 2⌋ + 1) (A251088 (n ^ 2 + (n + 1) ^ 2))

end

end A251080.P1963307391293465405

/-! ## A251080.P18071562958950632189

`and(-1, A251088(A001844(n)))`
-/

namespace A251080.P18071562958950632189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A251088 (A001844 n).toNat)

end

end A251080.P18071562958950632189

/-! ## A251080.P5454813831155064939

`record[A003982(n)*A251088(n+1)]`
-/

namespace A251080.P5454813831155064939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251080.P5454813831155064939

/-! ## A251080.P12384738641584968886

`record[gcd(A003987(n), A251088(n+1))]`
-/

namespace A251080.P12384738641584968886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251088 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251080.P12384738641584968886

/-!
# A251081: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251081, there is no canonical definition to state claims against.
-/

/-! ## A251081.P11658562085813858995

`A251088(∑[n]+1)`
-/

namespace A251081.P11658562085813858995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251081.P11658562085813858995

/-! ## A251081.P7233167599638039386

`record[A251088(A056536(n+1))]`
-/

namespace A251081.P7233167599638039386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251081.P7233167599638039386

/-! ## A251081.P3883349339868835393

`record[A251088(A249742(n+1))]`
-/

namespace A251081.P3883349339868835393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251081.P3883349339868835393

/-! ## A251081.P13102890900322035049

`record[A251088(A267104(n+1))]`
-/

namespace A251081.P13102890900322035049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251081.P13102890900322035049

/-! ## A251081.P13147002684206023048

`or(char[1], A251088(A000124(n)))`
-/

namespace A251081.P13147002684206023048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251088 (A000124 n).toNat)

end

end A251081.P13147002684206023048

/-!
# A251082: Number of (n+1) X (2+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251082, there is no canonical definition to state claims against.
-/

/-! ## A251082.P2009098444442720954

`A251088(∑[n+1]+2)`
-/

namespace A251082.P2009098444442720954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251082.P2009098444442720954

/-! ## A251082.P12483592748638485061

`record[A251088(A056536(n+1)+1)]`
-/

namespace A251082.P12483592748638485061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251082.P12483592748638485061

/-! ## A251082.P9057363201442846075

`and(1, n)!*A251088(A000096(n)+3)`
-/

namespace A251082.P9057363201442846075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A251088 (A000096 n + 3).toNat

end

end A251082.P9057363201442846075

/-! ## A251082.P63103772800007229

`A251088(A000096(n)+3)^A000041(C(n, 64))`
-/

namespace A251082.P63103772800007229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251088 (A000096 n + 3).toNat : ℚ) ^ (A000041 (Nat.choose n 64) : ℤ)

end

end A251082.P63103772800007229

/-! ## A251082.P7503950370878798937

`A000041(C(2, n+2))*A251088(A000096(n)+3)`
-/

namespace A251082.P7503950370878798937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A251088 (A000096 n + 3).toNat

end

end A251082.P7503950370878798937

/-!
# A251083: Number of (n+1) X (3+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251083, there is no canonical definition to state claims against.
-/

/-! ## A251083.P2217727051401679429

`A251088(∑[n+2]+4)`
-/

namespace A251083.P2217727051401679429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251083.P2217727051401679429

/-! ## A251083.P4536522369797460318

`or(char[2], A251088(A046691(n)+7))`
-/

namespace A251083.P4536522369797460318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251088 (A046691 n + 7).toNat)

end

end A251083.P4536522369797460318

/-! ## A251083.P10616855531834892175

`lcm((-1)^n, A251088(A167614(n+1)))`
-/

namespace A251083.P10616855531834892175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A251088 (A167614 (n + 1)).toNat)

end

end A251083.P10616855531834892175

/-! ## A251083.P2790012165657183921

`A251088(A167614(n+1))+A025469(n)`
-/

namespace A251083.P2790012165657183921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A167614 (n + 1)).toNat + A025469 n

end

end A251083.P2790012165657183921

/-! ## A251083.P5829238112387761923

`A251088(A167614(n+1))+A185284(n)`
-/

namespace A251083.P5829238112387761923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A167614 (n + 1)).toNat + A185284 n

end

end A251083.P5829238112387761923

/-!
# A251084: Number of (n+1) X (4+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251084, there is no canonical definition to state claims against.
-/

/-! ## A251084.P7076149820163291983

`A251088(∑[n+3]+7)`
-/

namespace A251084.P7076149820163291983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251084.P7076149820163291983

/-! ## A251084.P1113916921182462969

`lcm(2, A251088(A167499(n+2)-1))`
-/

namespace A251084.P1113916921182462969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251088 (A167499 (n + 2) - 1).toNat)

end

end A251084.P1113916921182462969

/-! ## A251084.P6576364358814363544

`A007318(C(2, n))*A251088(A167499(n+2)-1)`
-/

namespace A251084.P6576364358814363544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251088 (A167499 (n + 2) - 1).toNat

end

end A251084.P6576364358814363544

/-! ## A251084.P3041390385577412876

`A251088(A167499(n+2)-1)/A007318(C(n, 2))`
-/

namespace A251084.P3041390385577412876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251088 (A167499 (n + 2) - 1).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A251084.P3041390385577412876

/-! ## A251084.P13639022071974401804

`A251088(A167499(n+2)-1)%A000045(n+31)`
-/

namespace A251084.P13639022071974401804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251088 (A167499 (n + 2) - 1).toNat) (A000045 (n + 31))

end

end A251084.P13639022071974401804

/-!
# A251085: Number of (n+1) X (5+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251085, there is no canonical definition to state claims against.
-/

/-! ## A251085.P906098309607363026

`A251088(A374005(n+1))`
-/

namespace A251085.P906098309607363026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A374005 (n + 1)).toNat

end

end A251085.P906098309607363026

/-! ## A251085.P126782258328186186

`A251088(A167499(n+3))`
-/

namespace A251085.P126782258328186186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A167499 (n + 3)).toNat

end

end A251085.P126782258328186186

/-! ## A251085.P1944041250241377313

`A251088(A155212(n)+13)`
-/

namespace A251085.P1944041250241377313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A155212 n + 13).toNat

end

end A251085.P1944041250241377313

/-! ## A251085.P4539375448478192825

`A251088(A056000(n)+15)`
-/

namespace A251085.P4539375448478192825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A056000 n + 15).toNat

end

end A251085.P4539375448478192825

/-! ## A251085.P13495924531335317993

`A251088(A167614(n+3)+2)`
-/

namespace A251085.P13495924531335317993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A167614 (n + 3) + 2).toNat

end

end A251085.P13495924531335317993

/-!
# A251086: Number of (n+1) X (6+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251086, there is no canonical definition to state claims against.
-/

/-! ## A251086.P2234530519700349316

`A251088(∑[n+5]+16)`
-/

namespace A251086.P2234530519700349316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251086.P2234530519700349316

/-! ## A251086.P7183415894708088058

`lcm(2, A251088(A052905(n+3)))`
-/

namespace A251086.P7183415894708088058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251088 (A052905 (n + 3)).toNat)

end

end A251086.P7183415894708088058

/-! ## A251086.P16290287701128527158

`A251088(A052905(n+3))%A251087(n+1)`
-/

namespace A251086.P16290287701128527158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251088 (A052905 (n + 3)).toNat) (A251087 (n + 1))

end

end A251086.P16290287701128527158

/-!
# A251087: Number of (n+1) X (7+1) 0..2 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the absolute difference of its antidiagonal elements.

The programs for A251087, there is no canonical definition to state claims against.
-/

/-! ## A251087.P3095131509409482777

`A251088(A374008(n+1))`
-/

namespace A251087.P3095131509409482777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A374008 (n + 1)).toNat

end

end A251087.P3095131509409482777

/-! ## A251087.P12798941865142145015

`A251088(A000124(n+6)+6)`
-/

namespace A251087.P12798941865142145015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A000124 (n + 6) + 6).toNat

end

end A251087.P12798941865142145015

/-! ## A251087.P4787553654001813137

`A251088(A000096(n+5)+8)`
-/

namespace A251087.P4787553654001813137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A000096 (n + 5) + 8).toNat

end

end A251087.P4787553654001813137

/-! ## A251087.P4030966110603736364

`A251088(A000217(n+6)+7)`
-/

namespace A251087.P4030966110603736364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A000217 (n + 6) + 7).toNat

end

end A251087.P4030966110603736364

/-! ## A251087.P2073495222520237942

`A251088(A161680(n+7)+7)`
-/

namespace A251087.P2073495222520237942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251088 (A161680 (n + 7) + 7).toNat

end

end A251087.P2073495222520237942

/-!
# A251089: Squarefree kernel of A098550(n).

The programs for A251089, there is no canonical definition to state claims against.
-/

/-! ## A251089.P15465593840937024860

`∏{p}[A098550(n+1), #]`
-/

namespace A251089.P15465593840937024860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251089.P15465593840937024860

/-! ## A251089.P2535255368123154897

`A007947(A098550(n+1))`
-/

namespace A251089.P2535255368123154897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A098550 (n + 1)).toNat

end

end A251089.P2535255368123154897

/-! ## A251089.P16972110542537385052

`∏{p}[A098552(A098551(n+1)), #]`
-/

namespace A251089.P16972110542537385052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251089.P16972110542537385052

/-! ## A251089.P2842935898551881284

`lcm(A008836(n+1), A062953(A098550(n+1)))`
-/

namespace A251089.P2842935898551881284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A062953 (A098550 (n + 1)).toNat)

end

end A251089.P2842935898551881284

/-! ## A251089.P3766202689317370895

`∏{p}[A098551(A098552(Δ[n²]-n)), #]`
-/

namespace A251089.P3766202689317370895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A098552 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251089.P3766202689317370895

/-! ## A251089.P12779391947489616759

`gcd(A068510(n+1), A098550(n+1))`
-/

namespace A251089.P12779391947489616759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068510 (n + 1)) (A098550 (n + 1))

end

end A251089.P12779391947489616759

/-! ## A251089.P1111009277177485424

`A336643(A098550(n+1)²)`
-/

namespace A251089.P1111009277177485424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A098550 (n + 1) ^ 2).toNat

end

end A251089.P1111009277177485424

/-! ## A251089.P14245880707785393230

`A071773(A098550(n+1)²)`
-/

namespace A251089.P14245880707785393230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A098550 (n + 1) ^ 2).toNat

end

end A251089.P14245880707785393230

/-! ## A251089.P10761521563103193126

`A071773(A098550(n+1)*A098550(n+1))`
-/

namespace A251089.P10761521563103193126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A098550 (n + 1) * A098550 (n + 1)).toNat

end

end A251089.P10761521563103193126

/-!
# A251090: Squarefree kernel of A098548(n).

The programs for A251090, there is no canonical definition to state claims against.
-/

/-! ## A251090.P4274715108042546002

`∏{p}[A098548(n+1), #]`
-/

namespace A251090.P4274715108042546002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251090.P4274715108042546002

/-! ## A251090.P3620801165500723506

`A007947(A098548(n+1))`
-/

namespace A251090.P3620801165500723506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A098548 (n + 1)).toNat

end

end A251090.P3620801165500723506

/-! ## A251090.P3558028520596076221

`∏{p}[∪[A251535(n)+1, A251535(n)], #]`
-/

namespace A251090.P3558028520596076221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A251090.P3558028520596076221

/-! ## A251090.P11464964183015934196

`∏{p}[A251535(A004526(n))+A059841(n+1), #]`
-/

namespace A251090.P11464964183015934196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + A059841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A251090.P11464964183015934196

/-! ## A251090.P9160018294973745176

`A251089(A098551(A098548(A098551(A098550(n+1)))))`
-/

namespace A251090.P9160018294973745176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251089 (A098551 (A098548 (A098551 (A098550 (n + 1)).toNat).toNat).toNat).toNat

end

end A251090.P9160018294973745176

/-! ## A251090.P5476926766950363416

`A336643(A098548(n+1)²)`
-/

namespace A251090.P5476926766950363416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A098548 (n + 1) ^ 2).toNat

end

end A251090.P5476926766950363416

/-! ## A251090.P14952875710880253088

`A336643(A098548(n+1)*A098548(n+1))`
-/

namespace A251090.P14952875710880253088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A098548 (n + 1) * A098548 (n + 1)).toNat

end

end A251090.P14952875710880253088

/-! ## A251090.P10851247248040576846

`gcd(A002110(n), A098548(n+1))`
-/

namespace A251090.P10851247248040576846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A098548 (n + 1))

end

end A251090.P10851247248040576846

/-!
# A251091: a(n) = n^2 / gcd(n+2, 4).

The programs for A251091, the canonical program `A251091.P12513217065155171978` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251091 has offset 0).

The definition of A251091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251091.P13177780278785995303

`n²/gcd(4, n+2)`
-/

namespace A251091.P13177780278785995303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (Nat.gcd 4 (n + 2) : ℚ)

end

end A251091.P13177780278785995303

namespace A251091

/-- `n²/gcd(4, n+2)` -/
def P13177780278785995303.Spec : Prop :=
  ∀ n, P13177780278785995303.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P1695634396930888788

`n²/gcd(8, n²)%6`
-/

namespace A251091.P1695634396930888788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / ((Nat.gcd 8 (n ^ 2) % 6 : ℕ) : ℚ)

end

end A251091.P1695634396930888788

namespace A251091

/-- `n²/gcd(8, n²)%6` -/
def P1695634396930888788.Spec : Prop :=
  ∀ n, P1695634396930888788.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P12719905839462099816

`lcm(n+2, n²)/(n+2)`
-/

namespace A251091.P12719905839462099816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (n ^ 2) : ℚ) / (n + 2 : ℚ)

end

end A251091.P12719905839462099816

namespace A251091

/-- `lcm(n+2, n²)/(n+2)` -/
def P12719905839462099816.Spec : Prop :=
  ∀ n, P12719905839462099816.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P12513217065155171978

`gcd(n, ∑[n]²)*gcd(n, ∑[n])`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251091

/-- `gcd(n, ∑[n]²)*gcd(n, ∑[n])` -/
def P12513217065155171978.Spec : Prop :=
  ∀ n, (P12513217065155171978.a n : ℤ) = A251091 n

theorem P12513217065155171978.correct : P12513217065155171978.Spec := by
  intro n
  simp only [A251091]

end A251091

/-! ## A251091.P17910482795386070444

`n*n/gcd(2-n, 2*n)`
-/

namespace A251091.P17910482795386070444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) / (Int.gcd (2 - (n : ℤ)) (2 * n : ℤ) : ℚ))

end

end A251091.P17910482795386070444

namespace A251091

/-- `n*n/gcd(2-n, 2*n)` -/
def P17910482795386070444.Spec : Prop :=
  ∀ n, P17910482795386070444.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P13925929751141999973

`gcd(∑[n]²², C(n²+1, 2))`
-/

namespace A251091.P13925929751141999973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) (Nat.choose (n ^ 2 + 1) 2)

end

end A251091.P13925929751141999973

namespace A251091

/-- `gcd(∑[n]²², C(n²+1, 2))` -/
def P13925929751141999973.Spec : Prop :=
  ∀ n, (P13925929751141999973.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P3063638069801048724

`n²/(((n+1)^3)%4+1)`
-/

namespace A251091.P3063638069801048724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (((n + 1) ^ 3 % 4 + 1 : ℕ) : ℚ)

end

end A251091.P3063638069801048724

namespace A251091

/-- `n²/(((n+1)^3)%4+1)` -/
def P3063638069801048724.Spec : Prop :=
  ∀ n, P3063638069801048724.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P12200675089028558106

`n²/∑[3/a(n-2)]` with `a(0)=2, a(1)=-1, a(2)=3`
-/

namespace A251091.P12200675089028558106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, -1, 3] fun n f1 =>
  3 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251091.P12200675089028558106

namespace A251091

/-- `n²/∑[3/a(n-2)]` -/
def P12200675089028558106.Spec : Prop :=
  ∀ n, P12200675089028558106.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P6870128697474406894

`A181900(gcd(n, ∑[n]))`
-/

namespace A251091.P6870128697474406894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A251091.P6870128697474406894

namespace A251091

/-- `A181900(gcd(n, ∑[n]))` -/
def P6870128697474406894.Spec : Prop :=
  ∀ n, P6870128697474406894.a n = A251091 n

end A251091

/-! ## A251091.P2702300174303195764

`gcd(∑[n]²², A037270(n))`
-/

namespace A251091.P2702300174303195764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℤ) (A037270 n)

end

end A251091.P2702300174303195764

namespace A251091

/-- `gcd(∑[n]²², A037270(n))` -/
def P2702300174303195764.Spec : Prop :=
  ∀ n, (P2702300174303195764.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P6271285447077184025

`n/A062828(n+1)*∑[n]`
-/

namespace A251091.P6271285447077184025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A062828 (n + 1) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A251091.P6271285447077184025

namespace A251091

/-- `n/A062828(n+1)*∑[n]` -/
def P6271285447077184025.Spec : Prop :=
  ∀ n, P6271285447077184025.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P11940163689466765207

`A181900(A026741(n))`
-/

namespace A251091.P11940163689466765207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 (A026741 n).toNat

end

end A251091.P11940163689466765207

namespace A251091

/-- `A181900(A026741(n))` -/
def P11940163689466765207.Spec : Prop :=
  ∀ n, P11940163689466765207.a n = A251091 n

end A251091

/-! ## A251091.P10130239422446651579

`A129194(A283971(n))`
-/

namespace A251091.P10130239422446651579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (A283971 n).toNat

end

end A251091.P10130239422446651579

namespace A251091

/-- `A129194(A283971(n))` -/
def P10130239422446651579.Spec : Prop :=
  ∀ n, P10130239422446651579.a n = A251091 n

end A251091

/-! ## A251091.P12001070861350902641

`A026741(n)*A283971(n)`
-/

namespace A251091.P12001070861350902641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A283971 n

end

end A251091.P12001070861350902641

namespace A251091

/-- `A026741(n)*A283971(n)` -/
def P12001070861350902641.Spec : Prop :=
  ∀ n, P12001070861350902641.a n = A251091 n

end A251091

/-! ## A251091.P2675884195762214149

`A181900(n)/A089146(n)`
-/

namespace A251091.P2675884195762214149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181900 n : ℚ) / (A089146 n : ℚ)

end

end A251091.P2675884195762214149

namespace A251091

/-- `A181900(n)/A089146(n)` -/
def P2675884195762214149.Spec : Prop :=
  ∀ n, P2675884195762214149.a n = (A251091 n : ℚ)

end A251091

/-! ## A251091.P10720601309843268311

`gcd(A002411(n), A075664(n))`
-/

namespace A251091.P10720601309843268311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002411 n) (A075664 n)

end

end A251091.P10720601309843268311

namespace A251091

/-- `gcd(A002411(n), A075664(n))` -/
def P10720601309843268311.Spec : Prop :=
  ∀ n, (P10720601309843268311.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P7731222556639201964

`gcd(A078876(n), A100242(n))`
-/

namespace A251091.P7731222556639201964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078876 n) (A100242 n)

end

end A251091.P7731222556639201964

namespace A251091

/-- `gcd(A078876(n), A100242(n))` -/
def P7731222556639201964.Spec : Prop :=
  ∀ n, (P7731222556639201964.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P1324580604615454626

`gcd(A037270(n), A309335(n))`
-/

namespace A251091.P1324580604615454626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037270 n) (A309335 n)

end

end A251091.P1324580604615454626

namespace A251091

/-- `gcd(A037270(n), A309335(n))` -/
def P1324580604615454626.Spec : Prop :=
  ∀ n, (P1324580604615454626.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P10545788174793586348

`gcd(A129194(n), A245940(n))`
-/

namespace A251091.P10545788174793586348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129194 n) (A245940 n)

end

end A251091.P10545788174793586348

namespace A251091

/-- `gcd(A129194(n), A245940(n))` -/
def P10545788174793586348.Spec : Prop :=
  ∀ n, (P10545788174793586348.a n : ℤ) = A251091 n

end A251091

/-! ## A251091.P2045829513129408407

`gcd(A101376(n), A309336(n))`
-/

namespace A251091.P2045829513129408407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101376 n) (A309336 n)

end

end A251091.P2045829513129408407

namespace A251091

/-- `gcd(A101376(n), A309336(n))` -/
def P2045829513129408407.Spec : Prop :=
  ∀ n, (P2045829513129408407.a n : ℤ) = A251091 n

end A251091

/-!
# A251092: a(n) is the number of primes in the n-th group of consecutive primes among the odd numbers.

The programs for A251092, the canonical program `A251092.P10184513225157479240` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251092 has offset 1).

The definition of A251092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251092.P11072842220190961574

`Δ[record[A062302(n+2)]]`
-/

namespace A251092.P11072842220190961574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251092.P11072842220190961574

namespace A251092

/-- `Δ[record[A062302(n+2)]]` -/
def P11072842220190961574.Spec : Prop :=
  ∀ n, P11072842220190961574.a n = A251092 (n + 1)

end A251092

/-! ## A251092.P14044591656852952556

`Δ[comp[A155752(n+1)]]`
-/

namespace A251092.P14044591656852952556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A251092.P14044591656852952556

namespace A251092

/-- `Δ[comp[A155752(n+1)]]` -/
def P14044591656852952556.Spec : Prop :=
  ∀ n, P14044591656852952556.a n = A251092 (n + 1)

end A251092

/-! ## A251092.P10184513225157479240

`Δ[lt[1, A074927(n+1)]]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A251092

/-- `Δ[lt[1, A074927(n+1)]]` -/
def P10184513225157479240.Spec : Prop :=
  ∀ n, P10184513225157479240.a n = A251092 (n + 1)

theorem P10184513225157479240.correct : P10184513225157479240.Spec := by
  intro n
  simp only [A251092, Nat.add_sub_cancel]

end A251092

/-! ## A251092.P7505613336312580078

`Δ[lt[A062301(n+2), 1]]`
-/

namespace A251092.P7505613336312580078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A251092.P7505613336312580078

namespace A251092

/-- `Δ[lt[A062301(n+2), 1]]` -/
def P7505613336312580078.Spec : Prop :=
  ∀ n, P7505613336312580078.a n = A251092 (n + 1)

end A251092

/-!
# A251093: Number of (n+1)X(n+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251093, there is no canonical definition to state claims against.
-/

/-! ## A251093.P6844468977433958635

`A251100(∑[4*n]+1)`
-/

namespace A251093.P6844468977433958635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251093.P6844468977433958635

/-! ## A251093.P2017248028415551677

`record[A003982(n)*A251100(n+1)]`
-/

namespace A251093.P2017248028415551677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251093.P2017248028415551677

/-! ## A251093.P16554547037420431661

`record[gcd(A114327(n), A251100(n+1))]`
-/

namespace A251093.P16554547037420431661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251100 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251093.P16554547037420431661

/-! ## A251093.P6433708214807023600

`or(A000007(n), A251100(A001844(n)))`
-/

namespace A251093.P6433708214807023600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251100 (A001844 n).toNat)

end

end A251093.P6433708214807023600

/-! ## A251093.P15381610261352559548

`A251100(A001844(n))/A007318(∑[n])`
-/

namespace A251093.P15381610261352559548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251100 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A251093.P15381610261352559548

/-!
# A251094: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251094, there is no canonical definition to state claims against.
-/

/-! ## A251094.P17449547279842284482

`A251100(∑[n+1]+2)`
-/

namespace A251094.P17449547279842284482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251094.P17449547279842284482

/-! ## A251094.P11387236866548741845

`record[A251100(A008795(n)+2)]`
-/

namespace A251094.P11387236866548741845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251094.P11387236866548741845

/-! ## A251094.P14070077740686501203

`record[gcd(A221542(n+1), A251100(n+2))]`
-/

namespace A251094.P14070077740686501203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221542 (n + 1)) (A251100 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251094.P14070077740686501203

/-! ## A251094.P1376086244236657188

`record[A251100(abs(A201163(n)))]`
-/

namespace A251094.P1376086244236657188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251094.P1376086244236657188

/-!
# A251095: Number of (n+1)X(3+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251095, there is no canonical definition to state claims against.
-/

/-! ## A251095.P11080699841861410205

`A251100(∑[n+2]+4)`
-/

namespace A251095.P11080699841861410205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251095.P11080699841861410205

/-! ## A251095.P4866804742393038825

`record[A251100(A008795(n)+3)]`
-/

namespace A251095.P4866804742393038825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251095.P4866804742393038825

/-! ## A251095.P1210715015242068208

`A251100(A167614(n+1))+A185284(n)`
-/

namespace A251095.P1210715015242068208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A167614 (n + 1)).toNat + A185284 n

end

end A251095.P1210715015242068208

/-! ## A251095.P4503953194017445584

`or(A000007(n), A251100(A167614(n+1)))`
-/

namespace A251095.P4503953194017445584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251100 (A167614 (n + 1)).toNat)

end

end A251095.P4503953194017445584

/-! ## A251095.P15230608544066212366

`A251100(A167614(n+1))%A251096(n+1)`
-/

namespace A251095.P15230608544066212366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251100 (A167614 (n + 1)).toNat) (A251096 (n + 1))

end

end A251095.P15230608544066212366

/-!
# A251096: Number of (n+1)X(4+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251096, there is no canonical definition to state claims against.
-/

/-! ## A251096.P3813178753601960463

`A251100(A374004(n+1))`
-/

namespace A251096.P3813178753601960463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A374004 (n + 1)).toNat

end

end A251096.P3813178753601960463

/-! ## A251096.P18155070065210801003

`A251100(A052905(n)+9)`
-/

namespace A251096.P18155070065210801003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A052905 n + 9).toNat

end

end A251096.P18155070065210801003

/-! ## A251096.P6339154244865552094

`A251100(A055999(n)+10)`
-/

namespace A251096.P6339154244865552094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A055999 n + 10).toNat

end

end A251096.P6339154244865552094

/-! ## A251096.P18129154687414672225

`A251100(A167614(n+2)+1)`
-/

namespace A251096.P18129154687414672225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A167614 (n + 2) + 1).toNat

end

end A251096.P18129154687414672225

/-! ## A251096.P10210474891455935068

`A251100(Δ[A264443(n)-n²])`
-/

namespace A251096.P10210474891455935068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (f1 (n + 1) - f1 n).toNat

end

end A251096.P10210474891455935068

/-!
# A251097: Number of (n+1)X(5+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251097, there is no canonical definition to state claims against.
-/

/-! ## A251097.P12876665356270589073

`A251100(A374005(n+1))`
-/

namespace A251097.P12876665356270589073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A374005 (n + 1)).toNat

end

end A251097.P12876665356270589073

/-! ## A251097.P8080690736622637200

`A251100(Δ[A264443(n)])`
-/

namespace A251097.P8080690736622637200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (f1 (n + 1) - f1 n).toNat

end

end A251097.P8080690736622637200

/-! ## A251097.P10972132086661985648

`A251100(eq[3, A152157(n)])`
-/

namespace A251097.P10972132086661985648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251097.P10972132086661985648

/-! ## A251097.P10635522304180122909

`A251100(eq[4, A193592(n)])`
-/

namespace A251097.P10635522304180122909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251097.P10635522304180122909

/-! ## A251097.P4817408732609444330

`A251100(Δ[A023545(n+1)])`
-/

namespace A251097.P4817408732609444330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (f1 (n + 1) - f1 n).toNat

end

end A251097.P4817408732609444330

/-!
# A251098: Number of (n+1)X(6+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251098, there is no canonical definition to state claims against.
-/

/-! ## A251098.P13943420221960759202

`A251100(A374007(n+1))`
-/

namespace A251098.P13943420221960759202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A374007 (n + 1)).toNat

end

end A251098.P13943420221960759202

/-! ## A251098.P6577660106286348185

`A251100(eq[7, A131818(n+1)])`
-/

namespace A251098.P6577660106286348185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251098.P6577660106286348185

/-! ## A251098.P1103997803143191056

`A251100(A052905(n+3))`
-/

namespace A251098.P1103997803143191056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A052905 (n + 3)).toNat

end

end A251098.P1103997803143191056

/-! ## A251098.P14281058292102130740

`A251100(eq[5, A193592(n)])`
-/

namespace A251098.P14281058292102130740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251098.P14281058292102130740

/-! ## A251098.P13964147374512066492

`A251100(eq[16, A057728(n+1)])`
-/

namespace A251098.P13964147374512066492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251098.P13964147374512066492

/-!
# A251099: Number of (n+1)X(7+1) 0..1 arrays with no 2X2 subblock having its minimum diagonal element less than its minimum antidiagonal element.

The programs for A251099, there is no canonical definition to state claims against.
-/

/-! ## A251099.P11340936621856931507

`A251100(A374008(n+1))`
-/

namespace A251099.P11340936621856931507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A374008 (n + 1)).toNat

end

end A251099.P11340936621856931507

/-! ## A251099.P15686592994298038039

`A251100(A000217(n+6)+7)`
-/

namespace A251099.P15686592994298038039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A000217 (n + 6) + 7).toNat

end

end A251099.P15686592994298038039

/-! ## A251099.P14121812447874332762

`A251100(A027379(n+4)+10)`
-/

namespace A251099.P14121812447874332762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (A027379 (n + 4) + 10).toNat

end

end A251099.P14121812447874332762

/-! ## A251099.P8892303763728954694

`A251100(eq[8, A131818(n+1)])`
-/

namespace A251099.P8892303763728954694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251099.P8892303763728954694

/-! ## A251099.P5830875365626030632

`A251100(eq[6, A193592(n)])`
-/

namespace A251099.P5830875365626030632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251099.P5830875365626030632

