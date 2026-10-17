import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
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
# A197800: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,1 for x=0,1,2,3,4.

The programs for A197800, there is no canonical definition to state claims against.
-/

/-! ## A197800.P1067413935291364678

`A197805(∑[n+2]+4)`
-/

namespace A197800.P1067413935291364678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197800.P1067413935291364678

/-! ## A197800.P14499272517303512313

`A197805(A167614(n+1))+A011739(n)`
-/

namespace A197800.P14499272517303512313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A167614 (n + 1)).toNat + A011739 n

end

end A197800.P14499272517303512313

/-! ## A197800.P14928314160815603066

`A197805(A167614(n+1))+A054900(n)`
-/

namespace A197800.P14928314160815603066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A167614 (n + 1)).toNat + A054900 n

end

end A197800.P14928314160815603066

/-! ## A197800.P4378741673302100941

`lcm(A016251(n), A197805(A167614(n+1)))`
-/

namespace A197800.P4378741673302100941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016251 n) (A197805 (A167614 (n + 1)).toNat)

end

end A197800.P4378741673302100941

/-! ## A197800.P8676387194780935124

`A197805(A167614(n+1))+A034432(n+1)`
-/

namespace A197800.P8676387194780935124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A167614 (n + 1)).toNat + A034432 (n + 1)

end

end A197800.P8676387194780935124

/-!
# A197801: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,1 for x=0,1,2,3,4.

The programs for A197801, there is no canonical definition to state claims against.
-/

/-! ## A197801.P8673493127408122282

`A197805(A374004(n+1))`
-/

namespace A197801.P8673493127408122282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A374004 (n + 1)).toNat

end

end A197801.P8673493127408122282

/-! ## A197801.P13219653847611197686

`A197805(A141214(n)+7)`
-/

namespace A197801.P13219653847611197686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A141214 n + 7).toNat

end

end A197801.P13219653847611197686

/-! ## A197801.P9634578889843623567

`A197805(A052905(n)+9)`
-/

namespace A197801.P9634578889843623567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A052905 n + 9).toNat

end

end A197801.P9634578889843623567

/-! ## A197801.P14187556750769289508

`A197805(A055999(n)+10)`
-/

namespace A197801.P14187556750769289508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A055999 n + 10).toNat

end

end A197801.P14187556750769289508

/-! ## A197801.P13481183735916910768

`A197805(A167614(n+2)+1)`
-/

namespace A197801.P13481183735916910768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A167614 (n + 2) + 1).toNat

end

end A197801.P13481183735916910768

/-!
# A197802: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,1 for x=0,1,2,3,4.

The programs for A197802, there is no canonical definition to state claims against.
-/

/-! ## A197802.P3997550829450603343

`A197805(A374005(n+1))`
-/

namespace A197802.P3997550829450603343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A374005 (n + 1)).toNat

end

end A197802.P3997550829450603343

/-! ## A197802.P6852599953294880739

`A197805(A155212(n)+13)`
-/

namespace A197802.P6852599953294880739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A155212 n + 13).toNat

end

end A197802.P6852599953294880739

/-! ## A197802.P15189745700571735025

`A197805(A056000(n)+15)`
-/

namespace A197802.P15189745700571735025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A056000 n + 15).toNat

end

end A197802.P15189745700571735025

/-! ## A197802.P10783618149716399594

`A197805(eq[7, A066657(n)])`
-/

namespace A197802.P10783618149716399594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197802.P10783618149716399594

/-! ## A197802.P15583583994550458720

`A197805(eq[6, A131818(n+1)])`
-/

namespace A197802.P15583583994550458720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197802.P15583583994550458720

/-!
# A197803: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,1 for x=0,1,2,3,4.

The programs for A197803, there is no canonical definition to state claims against.
-/

/-! ## A197803.P14639036585926032722

`A197805(A374007(n+1))`
-/

namespace A197803.P14639036585926032722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A374007 (n + 1)).toNat

end

end A197803.P14639036585926032722

/-! ## A197803.P11661410775308671113

`A197805(A056115(n)+21)`
-/

namespace A197803.P11661410775308671113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A056115 n + 21).toNat

end

end A197803.P11661410775308671113

/-! ## A197803.P17077453485680149419

`A197805(A167614(n+4)+3)`
-/

namespace A197803.P17077453485680149419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A167614 (n + 4) + 3).toNat

end

end A197803.P17077453485680149419

/-! ## A197803.P8649891120157677959

`A197805(A000096(n+4)+7)`
-/

namespace A197803.P8649891120157677959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A000096 (n + 4) + 7).toNat

end

end A197803.P8649891120157677959

/-! ## A197803.P8539578832252912484

`A197805(eq[7, A131818(n+1)])`
-/

namespace A197803.P8539578832252912484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197803.P8539578832252912484

/-!
# A197804: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,1,0,1 for x=0,1,2,3,4.

The programs for A197804, there is no canonical definition to state claims against.
-/

/-! ## A197804.P13638272691315804661

`A197805(A374008(n+1))`
-/

namespace A197804.P13638272691315804661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A374008 (n + 1)).toNat

end

end A197804.P13638272691315804661

/-! ## A197804.P9435467628783375664

`A197805(eq[11, A066657(n)])`
-/

namespace A197804.P9435467628783375664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197804.P9435467628783375664

/-! ## A197804.P13928597093401907040

`A197805(A133263(n+6)+5)`
-/

namespace A197804.P13928597093401907040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A133263 (n + 6) + 5).toNat

end

end A197804.P13928597093401907040

/-! ## A197804.P10038734581295336648

`A197805(eq[8, A131818(n+1)])`
-/

namespace A197804.P10038734581295336648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197804.P10038734581295336648

/-! ## A197804.P10277429028950986746

`A197805(eq[4, A219347(n)])`
-/

namespace A197804.P10277429028950986746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197804.P10277429028950986746

/-!
# A197805: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,1,0,1 for x=0,1,2,3,4.

The programs for A197805, there is no canonical definition to state claims against.
-/

/-! ## A197805.P10425195551984317452

`A197207(n+1)+A028930(A174912(n))`
-/

namespace A197805.P10425195551984317452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (n + 1) + A028930 (A174912 n).toNat

end

end A197805.P10425195551984317452

/-! ## A197805.P11832365156579059168

`A197207(n+1)+A051516(A157630(n))`
-/

namespace A197805.P11832365156579059168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (n + 1) + A051516 (A157630 n).toNat

end

end A197805.P11832365156579059168

/-! ## A197805.P6984206527565430112

`A197207(n+1)+A174875(A157177(n))`
-/

namespace A197805.P6984206527565430112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (n + 1) + A174875 (A157177 n).toNat

end

end A197805.P6984206527565430112

/-! ## A197805.P8184620417894002699

`A197207(n+1)+A102679(A222608(n+1))`
-/

namespace A197805.P8184620417894002699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197207 (n + 1) + A102679 (A222608 (n + 1)).toNat

end

end A197805.P8184620417894002699

/-! ## A197805.P14302377314724295002

`A275962(A063759(2*n+3))+A197207(n+1)`
-/

namespace A197805.P14302377314724295002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A063759 (2 * n + 3)).toNat + A197207 (n + 1)

end

end A197805.P14302377314724295002

/-!
# A197818: Walsh matrix antidiagonals converted to decimal.

The programs for A197818, there is no canonical definition to state claims against.
-/

/-! ## A197818.P5308282001241955412

`or(A001317(n), A126988(A041052(n)))`
-/

namespace A197818.P5308282001241955412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001317 n) (A126988 (A041052 n).toNat)

end

end A197818.P5308282001241955412

/-! ## A197818.P517469457027827698

`or(A001317(n), A204814(A038315(n)))`
-/

namespace A197818.P517469457027827698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001317 n) (A204814 (A038315 n).toNat)

end

end A197818.P517469457027827698

/-! ## A197818.P13446515964568540629

`or(A053576(n), A166880(A166884(n)))`
-/

namespace A197818.P13446515964568540629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053576 n) (A166880 (A166884 n).toNat)

end

end A197818.P13446515964568540629

/-! ## A197818.P14928322072437930136

`or(A001317(n), A224838(A187926(n)))`
-/

namespace A197818.P14928322072437930136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001317 n) (A224838 (A187926 n).toNat)

end

end A197818.P14928322072437930136

/-! ## A197818.P519765206703853080

`A281442(A239895(n+1))+A001317(n)`
-/

namespace A197818.P519765206703853080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281442 (A239895 (n + 1)).toNat + A001317 n

end

end A197818.P519765206703853080

/-!
# A197851: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,2,1,0,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197851, there is no canonical definition to state claims against.
-/

/-! ## A197851.P7944924226289385743

`abs(∑[A001057(A183375(n+1))])`
-/

namespace A197851.P7944924226289385743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A183375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A197851.P7944924226289385743

/-!
# A197852: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,6,0,0,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A197852, there is no canonical definition to state claims against.
-/

/-! ## A197852.P9396793007918081861

`A158973(∑[Δ[n²]^n]+n)`
-/

namespace A197852.P9396793007918081861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158973 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A197852.P9396793007918081861

/-!
# A197854: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,4,3,1,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197854, there is no canonical definition to state claims against.
-/

/-! ## A197854.P8616867685673607394

`A305801(A000079(∑[∑{p}[n, #]]))`
-/

namespace A197854.P8616867685673607394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (A000079 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A197854.P8616867685673607394

/-! ## A197854.P4050631074425066850

`A305801(A035470(n+1)^A001318(n))`
-/

namespace A197854.P4050631074425066850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (SequenceMachineLib.roundAway ((A035470 (n + 1) : ℚ) ^ (A001318 n : ℤ))).toNat

end

end A197854.P4050631074425066850

/-!
# A197855: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,5,2,1,1,1,2 for x=0,1,2,3,4,5,6.

The programs for A197855, there is no canonical definition to state claims against.
-/

/-! ## A197855.P311120410803032405

`A138994(A000088(n))+A067029(n+1)`
-/

namespace A197855.P311120410803032405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138994 (A000088 n).toNat + A067029 (n + 1)

end

end A197855.P311120410803032405

/-! ## A197855.P4119681819686811196

`A348553(A294198(n+1)+A187894(n))`
-/

namespace A197855.P4119681819686811196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A294198 (n + 1) + A187894 n).toNat

end

end A197855.P4119681819686811196

/-!
# A197857: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,1,2,2,3,2,0 for x=0,1,2,3,4,5,6.

The programs for A197857, there is no canonical definition to state claims against.
-/

/-! ## A197857.P2991900290945079851

`A314088(Δ[A323949(n)]²)`
-/

namespace A197857.P2991900290945079851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314088 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A197857.P2991900290945079851

/-!
# A197858: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,0,4,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A197858, there is no canonical definition to state claims against.
-/

/-! ## A197858.P6837978217955317010

`A134885(2^a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A197858.P6837978217955317010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A134885 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A197858.P6837978217955317010

/-!
# A197859: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,0,1,2,2,0 for x=0,1,2,3,4,5,6.

The programs for A197859, there is no canonical definition to state claims against.
-/

/-! ## A197859.P13283517921097253162

`A194417(A359922(n+1))`
-/

namespace A197859.P13283517921097253162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 (A359922 (n + 1)).toNat

end

end A197859.P13283517921097253162

/-!
# A197860: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,3,2,1,1,2,1 for x=0,1,2,3,4,5,6.

The programs for A197860, there is no canonical definition to state claims against.
-/

/-! ## A197860.P3056331896393855484

`A322866(C(32, ∑[∑{e}[n, #]]))`
-/

namespace A197860.P3056331896393855484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322866 (Nat.choose 32 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A197860.P3056331896393855484

/-!
# A197861: Prime divisor of n which appears the fewest times previously in the sequence, with ties to the smaller prime.

The programs for A197861, there is no canonical definition to state claims against.
-/

/-! ## A197861.P13127694278578594589

`A006530(n*A073202(A073202(n+1))+2)`
-/

namespace A197861.P13127694278578594589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n : ℤ) * A073202 (A073202 (n + 1)).toNat + 2).toNat

end

end A197861.P13127694278578594589

/-! ## A197861.P15685629589935417796

`A006530(A363627(A363501(A363627(n+2))))`
-/

namespace A197861.P15685629589935417796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A363627 (A363501 (A363627 (n + 2)).toNat).toNat).toNat

end

end A197861.P15685629589935417796

/-! ## A197861.P6342214513086803661

`A197862(A334953(n+2))`
-/

namespace A197861.P6342214513086803661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197862 (A334953 (n + 2)).toNat

end

end A197861.P6342214513086803661

/-! ## A197861.P14726320970057745386

`A006530(2*A323707(n+2))`
-/

namespace A197861.P14726320970057745386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A323707 (n + 2)).toNat

end

end A197861.P14726320970057745386

/-! ## A197861.P4005359778150182377

`A033677(A033677(n+2)*A331048(3*n+4))`
-/

namespace A197861.P4005359778150182377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A033677 (n + 2) * A331048 (3 * n + 4)).toNat

end

end A197861.P4005359778150182377

/-!
# A197862: Prime divisor of n which appears the fewest times previously in the sequence, with ties to the larger prime.

The programs for A197862, there is no canonical definition to state claims against.
-/

/-! ## A197862.P11338408636935246196

`A006530(A125746(n+2)%A125745(n+2))`
-/

namespace A197862.P11338408636935246196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A125746 (n + 2)) (A125745 (n + 2))).toNat

end

end A197862.P11338408636935246196

/-! ## A197862.P15956556621512648937

`p?[A006530(A327526(n+1))%A211821(n+1)]`
-/

namespace A197862.P15956556621512648937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A327526 (n + 1)).toNat) (A211821 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A197862.P15956556621512648937

/-! ## A197862.P1889403070104941999

`A088387(A217434(n+2))%A100039(A217434(n+1))`
-/

namespace A197862.P1889403070104941999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088387 (A217434 (n + 2)).toNat) (A100039 (A217434 (n + 1)).toNat)

end

end A197862.P1889403070104941999

/-! ## A197862.P12901183276748000248

`A088387(A217434(n+2)%A100039(n+1))`
-/

namespace A197862.P12901183276748000248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (Int.tmod (A217434 (n + 2)) (A100039 (n + 1))).toNat

end

end A197862.P12901183276748000248

/-! ## A197862.P15714278091371869057

`A088387(A236563(n+2))`
-/

namespace A197862.P15714278091371869057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A236563 (n + 2)).toNat

end

end A197862.P15714278091371869057

/-!
# A197863: Smallest powerful number that is a multiple of n.

The programs for A197863, the canonical program `A197863.P13943752865780075999` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197863 has offset 1).

The definition of A197863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197863.P13943752865780075999

`lcm(n+1, ∏{p}[n+1, #²])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A197863

/-- `lcm(n+1, ∏{p}[n+1, #²])` -/
def P13943752865780075999.Spec : Prop :=
  ∀ n, (P13943752865780075999.a n : ℤ) = A197863 (n + 1)

theorem P13943752865780075999.correct : P13943752865780075999.Spec := by
  intro n
  simp only [A197863, Nat.add_sub_cancel]

end A197863

/-! ## A197863.P9874776626253308872

`(n+1)²/gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])`
-/

namespace A197863.P9874776626253308872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ)

end

end A197863.P9874776626253308872

namespace A197863

/-- `(n+1)²/gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])` -/
def P9874776626253308872.Spec : Prop :=
  ∀ n, P9874776626253308872.a n = (A197863 (n + 1) : ℚ)

end A197863

/-! ## A197863.P2674146346642152748

`(n+1)*∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A197863.P2674146346642152748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))

end

end A197863.P2674146346642152748

namespace A197863

/-- `(n+1)*∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P2674146346642152748.Spec : Prop :=
  ∀ n, P2674146346642152748.a n = (A197863 (n + 1) : ℚ)

end A197863

/-! ## A197863.P618205374624486698

`(n+1)*A055231(n+1)`
-/

namespace A197863.P618205374624486698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055231 (n + 1)

end

end A197863.P618205374624486698

namespace A197863

/-- `(n+1)*A055231(n+1)` -/
def P618205374624486698.Spec : Prop :=
  ∀ n, P618205374624486698.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P10661669236592710194

`lcm(n+1, A048798(n+1))`
-/

namespace A197863.P10661669236592710194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A048798 (n + 1))

end

end A197863.P10661669236592710194

namespace A197863

/-- `lcm(n+1, A048798(n+1))` -/
def P10661669236592710194.Spec : Prop :=
  ∀ n, (P10661669236592710194.a n : ℤ) = A197863 (n + 1)

end A197863

/-! ## A197863.P7692427860130541530

`(n+1)²/A057521(n+1)`
-/

namespace A197863.P7692427860130541530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A057521 (n + 1) : ℚ)

end

end A197863.P7692427860130541530

namespace A197863

/-- `(n+1)²/A057521(n+1)` -/
def P7692427860130541530.Spec : Prop :=
  ∀ n, P7692427860130541530.a n = (A197863 (n + 1) : ℚ)

end A197863

/-! ## A197863.P6623959906690287701

`(n+1)*A007913(A007948(n+1))`
-/

namespace A197863.P6623959906690287701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007913 (A007948 (n + 1)).toNat

end

end A197863.P6623959906690287701

namespace A197863

/-- `(n+1)*A007913(A007948(n+1))` -/
def P6623959906690287701.Spec : Prop :=
  ∀ n, P6623959906690287701.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P14348267147295513491

`(n+1)*A007913(A056192(n+1))`
-/

namespace A197863.P14348267147295513491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007913 (A056192 (n + 1)).toNat

end

end A197863.P14348267147295513491

namespace A197863

/-- `(n+1)*A007913(A056192(n+1))` -/
def P14348267147295513491.Spec : Prop :=
  ∀ n, P14348267147295513491.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P10090576737325754316

`A062378(n+1)*A078615(n+1)`
-/

namespace A197863.P10090576737325754316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (n + 1) * A078615 (n + 1)

end

end A197863.P10090576737325754316

namespace A197863

/-- `A062378(n+1)*A078615(n+1)` -/
def P10090576737325754316.Spec : Prop :=
  ∀ n, P10090576737325754316.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P17283473976215660032

`(n+1)*A007913(A353897(n+1))`
-/

namespace A197863.P17283473976215660032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007913 (A353897 (n + 1)).toNat

end

end A197863.P17283473976215660032

namespace A197863

/-- `(n+1)*A007913(A353897(n+1))` -/
def P17283473976215660032.Spec : Prop :=
  ∀ n, P17283473976215660032.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P15930479223652137219

`(n+1)*A007913(A360539(n+1))`
-/

namespace A197863.P15930479223652137219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007913 (A360539 (n + 1)).toNat

end

end A197863.P15930479223652137219

namespace A197863

/-- `(n+1)*A007913(A360539(n+1))` -/
def P15930479223652137219.Spec : Prop :=
  ∀ n, P15930479223652137219.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P1814685902270135756

`(n+1)*A007913(A367168(n+1))`
-/

namespace A197863.P1814685902270135756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007913 (A367168 (n + 1)).toNat

end

end A197863.P1814685902270135756

namespace A197863

/-- `(n+1)*A007913(A367168(n+1))` -/
def P1814685902270135756.Spec : Prop :=
  ∀ n, P1814685902270135756.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P12588943756700350387

`(n+1)*A367168(A350389(n+1))`
-/

namespace A197863.P12588943756700350387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A367168 (A350389 (n + 1)).toNat

end

end A197863.P12588943756700350387

namespace A197863

/-- `(n+1)*A367168(A350389(n+1))` -/
def P12588943756700350387.Spec : Prop :=
  ∀ n, P12588943756700350387.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P17836465020322722511

`(n+1)*A360539(A368886(n+1))`
-/

namespace A197863.P17836465020322722511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360539 (A368886 (n + 1)).toNat

end

end A197863.P17836465020322722511

namespace A197863

/-- `(n+1)*A360539(A368886(n+1))` -/
def P17836465020322722511.Spec : Prop :=
  ∀ n, P17836465020322722511.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P5760834135282765331

`A053143(n+1)/A055229(n+1)`
-/

namespace A197863.P5760834135282765331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A197863.P5760834135282765331

namespace A197863

/-- `A053143(n+1)/A055229(n+1)` -/
def P5760834135282765331.Spec : Prop :=
  ∀ n, P5760834135282765331.a n = (A197863 (n + 1) : ℚ)

end A197863

/-! ## A197863.P1360677211305866026

`A064549((n+1)/A071773(n+1))`
-/

namespace A197863.P1360677211305866026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A071773 (n + 1) : ℚ))).toNat

end

end A197863.P1360677211305866026

namespace A197863

/-- `A064549((n+1)/A071773(n+1))` -/
def P1360677211305866026.Spec : Prop :=
  ∀ n, P1360677211305866026.a n = A197863 (n + 1)

end A197863

/-! ## A197863.P8991996699677346644

`gcd(A053143(n+1), A356192(n+1))`
-/

namespace A197863.P8991996699677346644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053143 (n + 1)) (A356192 (n + 1))

end

end A197863.P8991996699677346644

namespace A197863

/-- `gcd(A053143(n+1), A356192(n+1))` -/
def P8991996699677346644.Spec : Prop :=
  ∀ n, (P8991996699677346644.a n : ℤ) = A197863 (n + 1)

end A197863

/-! ## A197863.P429490030375626540

`lcm(A000027(n+1), A055491(n+1))`
-/

namespace A197863.P429490030375626540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A055491 (n + 1))

end

end A197863.P429490030375626540

namespace A197863

/-- `lcm(A000027(n+1), A055491(n+1))` -/
def P429490030375626540.Spec : Prop :=
  ∀ n, (P429490030375626540.a n : ℤ) = A197863 (n + 1)

end A197863

/-! ## A197863.P8721373002382233952

`lcm(A005451(n+1), A078615(n+1))`
-/

namespace A197863.P8721373002382233952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005451 (n + 1)) (A078615 (n + 1))

end

end A197863.P8721373002382233952

namespace A197863

/-- `lcm(A005451(n+1), A078615(n+1))` -/
def P8721373002382233952.Spec : Prop :=
  ∀ n, (P8721373002382233952.a n : ℤ) = A197863 (n + 1)

end A197863

/-! ## A197863.P14932184759012036674

`lcm(A055032(n+1), A360541(n+1))`
-/

namespace A197863.P14932184759012036674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055032 (n + 1)) (A360541 (n + 1))

end

end A197863.P14932184759012036674

namespace A197863

/-- `lcm(A055032(n+1), A360541(n+1))` -/
def P14932184759012036674.Spec : Prop :=
  ∀ n, (P14932184759012036674.a n : ℤ) = A197863 (n + 1)

end A197863

/-!
# A197864: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,2,2,0,3,2,0 for x=0,1,2,3,4,5,6.

The programs for A197864, there is no canonical definition to state claims against.
-/

/-! ## A197864.P517545211431489493

`A171926(A348857(n))`
-/

namespace A197864.P517545211431489493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171926 (A348857 n).toNat

end

end A197864.P517545211431489493

/-!
# A197865: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,1,1,1,2,1 for x=0,1,2,3,4,5,6.

The programs for A197865, there is no canonical definition to state claims against.
-/

/-! ## A197865.P4383671812659910421

`A214871(A000288(n)*A362046(3*n+2))`
-/

namespace A197865.P4383671812659910421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214871 (A000288 n * A362046 (3 * n + 2)).toNat

end

end A197865.P4383671812659910421

/-!
# A197867: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,0,2,1,0,2 for x=0,1,2,3,4,5,6.

The programs for A197867, there is no canonical definition to state claims against.
-/

/-! ## A197867.P4649266117103458280

`∑[∑[A115384(A329871(n))]]`
-/

namespace A197867.P4649266117103458280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A329871 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197867.P4649266117103458280

/-!
# A197868: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,4,3,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197868, there is no canonical definition to state claims against.
-/

/-! ## A197868.P17401605860276801125

`A276880(∑[n!]-n)`
-/

namespace A197868.P17401605860276801125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276880 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A197868.P17401605860276801125

/-!
# A197869: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,4,0,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197869, there is no canonical definition to state claims against.
-/

/-! ## A197869.P15499014806161444651

`A018424(A265058(n))-A341495(n)`
-/

namespace A197869.P15499014806161444651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018424 (A265058 n).toNat - A341495 n

end

end A197869.P15499014806161444651

/-! ## A197869.P3693664290513239246

`A293437(n+1)+A060715(A381911(n))`
-/

namespace A197869.P3693664290513239246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293437 (n + 1) + A060715 (A381911 n).toNat

end

end A197869.P3693664290513239246

/-!
# A197870: Expansion of false theta series variation of Ramanujan theta function psi(x).

The programs for A197870, the canonical program `A197870.P1067447650284756042` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197870 has offset 0).

The definition of A197870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197870.P18060774409875689093

`Δ[round(sqrt(2*n))%2]`
-/

namespace A197870.P18060774409875689093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A197870.P18060774409875689093

namespace A197870

/-- `Δ[round(sqrt(2*n))%2]` -/
def P18060774409875689093.Spec : Prop :=
  ∀ n, P18060774409875689093.a n = A197870 n

end A197870

/-! ## A197870.P1345796705713641282

`Δ[and(1, round(sqrt(2*n)))]`
-/

namespace A197870.P1345796705713641282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A197870.P1345796705713641282

namespace A197870

/-- `Δ[and(1, round(sqrt(2*n)))]` -/
def P1345796705713641282.Spec : Prop :=
  ∀ n, P1345796705713641282.a n = A197870 n

end A197870

/-! ## A197870.P17451930354228592874

`Δ[or(round(sqrt(2*n)), -2)]`
-/

namespace A197870.P17451930354228592874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A197870.P17451930354228592874

namespace A197870

/-- `Δ[or(round(sqrt(2*n)), -2)]` -/
def P17451930354228592874.Spec : Prop :=
  ∀ n, P17451930354228592874.a n = A197870 n

end A197870

/-! ## A197870.P1022143708047347418

`Δ[gcd(4, round(sqrt(2*n))²+1)]`
-/

namespace A197870.P1022143708047347418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A197870.P1022143708047347418

namespace A197870

/-- `Δ[gcd(4, round(sqrt(2*n))²+1)]` -/
def P1022143708047347418.Spec : Prop :=
  ∀ n, P1022143708047347418.a n = A197870 n

end A197870

/-! ## A197870.P5888773802031413912

`-(-1)^comp[∑[4*n]]%(char[∑[n]]+1)`
-/

namespace A197870.P5888773802031413912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-((-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (((if ∃ j, f3 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A197870.P5888773802031413912

namespace A197870

/-- `-(-1)^comp[∑[4*n]]%(char[∑[n]]+1)` -/
def P5888773802031413912.Spec : Prop :=
  ∀ n, P5888773802031413912.a n = A197870 n

end A197870

/-! ## A197870.P13949248311083306477

`char[∑[n]]*A066170(n)`
-/

namespace A197870.P13949248311083306477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A066170 n

end

end A197870.P13949248311083306477

namespace A197870

/-- `char[∑[n]]*A066170(n)` -/
def P13949248311083306477.Spec : Prop :=
  ∀ n, P13949248311083306477.a n = A197870 n

end A197870

/-! ## A197870.P6742068549995889389

`char[∑[n]]*A097807(n)`
-/

namespace A197870.P6742068549995889389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A097807 n

end

end A197870.P6742068549995889389

namespace A197870

/-- `char[∑[n]]*A097807(n)` -/
def P6742068549995889389.Spec : Prop :=
  ∀ n, P6742068549995889389.a n = A197870 n

end A197870

/-! ## A197870.P9979829113838751730

`char[∑[n]]*A112465(n)`
-/

namespace A197870.P9979829113838751730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A112465 n

end

end A197870.P9979829113838751730

namespace A197870

/-- `char[∑[n]]*A112465(n)` -/
def P9979829113838751730.Spec : Prop :=
  ∀ n, P9979829113838751730.a n = A197870 n

end A197870

/-! ## A197870.P15440365690803404948

`char[∑[n]]*A129818(n)`
-/

namespace A197870.P15440365690803404948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A129818 n

end

end A197870.P15440365690803404948

namespace A197870

/-- `char[∑[n]]*A129818(n)` -/
def P15440365690803404948.Spec : Prop :=
  ∀ n, P15440365690803404948.a n = A197870 n

end A197870

/-! ## A197870.P5312535141126075019

`char[∑[n]]*A130595(n)`
-/

namespace A197870.P5312535141126075019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A130595 n

end

end A197870.P5312535141126075019

namespace A197870

/-- `char[∑[n]]*A130595(n)` -/
def P5312535141126075019.Spec : Prop :=
  ∀ n, P5312535141126075019.a n = A197870 n

end A197870

/-! ## A197870.P13926546527131825271

`char[∑[n]]*A303872(n)`
-/

namespace A197870.P13926546527131825271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A303872 n

end

end A197870.P13926546527131825271

namespace A197870

/-- `char[∑[n]]*A303872(n)` -/
def P13926546527131825271.Spec : Prop :=
  ∀ n, P13926546527131825271.a n = A197870 n

end A197870

/-! ## A197870.P3083294570730690420

`Δ[2/a(A083920(n))]` with `a(0)=1`
-/

namespace A197870.P3083294570730690420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (A083920 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A197870.P3083294570730690420

namespace A197870

/-- `Δ[2/a(A083920(n))]` -/
def P3083294570730690420.Spec : Prop :=
  ∀ n, P3083294570730690420.a n = (A197870 n : ℚ)

end A197870

/-! ## A197870.P9192059993008062066

`char[∑[n]]*A140756(n+1)`
-/

namespace A197870.P9192059993008062066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A140756 (n + 1)

end

end A197870.P9192059993008062066

namespace A197870

/-- `char[∑[n]]*A140756(n+1)` -/
def P9192059993008062066.Spec : Prop :=
  ∀ n, P9192059993008062066.a n = A197870 n

end A197870

/-! ## A197870.P12353641624593666221

`(char[comp[∑[n]]]-1)^(A001614(n+1)+1)`
-/

namespace A197870.P12353641624593666221
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1 : ℚ) ^ (A001614 (n + 1) + 1 : ℤ)

end

end A197870.P12353641624593666221

namespace A197870

/-- `(char[comp[∑[n]]]-1)^(A001614(n+1)+1)` -/
def P12353641624593666221.Spec : Prop :=
  ∀ n, P12353641624593666221.a n = (A197870 n : ℚ)

end A197870

/-! ## A197870.P1067447650284756042

`A009531(A198954(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A197870

/-- `A009531(A198954(n))` -/
def P1067447650284756042.Spec : Prop :=
  ∀ n, P1067447650284756042.a n = A197870 n

theorem P1067447650284756042.correct : P1067447650284756042.Spec := by
  intro n
  simp only [A197870]

end A197870

/-! ## A197870.P2411675328315718228

`A154955(A131225(n+1))`
-/

namespace A197870.P2411675328315718228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A131225 (n + 1)).toNat

end

end A197870.P2411675328315718228

namespace A197870

/-- `A154955(A131225(n+1))` -/
def P2411675328315718228.Spec : Prop :=
  ∀ n, P2411675328315718228.a n = A197870 n

end A197870

/-! ## A197870.P13740808648010870572

`A166692(n)-A166918(n)`
-/

namespace A197870.P13740808648010870572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n - A166918 n

end

end A197870.P13740808648010870572

namespace A197870

/-- `A166692(n)-A166918(n)` -/
def P13740808648010870572.Spec : Prop :=
  ∀ n, P13740808648010870572.a n = A197870 n

end A197870

/-! ## A197870.P1626305621547763129

`A010054(n)*A076756(n)`
-/

namespace A197870.P1626305621547763129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A076756 n

end

end A197870.P1626305621547763129

namespace A197870

/-- `A010054(n)*A076756(n)` -/
def P1626305621547763129.Spec : Prop :=
  ∀ n, P1626305621547763129.a n = A197870 n

end A197870

/-! ## A197870.P13639514274607873890

`A010054(n)*A091698(n)`
-/

namespace A197870.P13639514274607873890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A091698 n

end

end A197870.P13639514274607873890

namespace A197870

/-- `A010054(n)*A091698(n)` -/
def P13639514274607873890.Spec : Prop :=
  ∀ n, P13639514274607873890.a n = A197870 n

end A197870

/-! ## A197870.P9926241601635746446

`A010054(n)*A104495(n)`
-/

namespace A197870.P9926241601635746446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A104495 n

end

end A197870.P9926241601635746446

namespace A197870

/-- `A010054(n)*A104495(n)` -/
def P9926241601635746446.Spec : Prop :=
  ∀ n, P9926241601635746446.a n = A197870 n

end A197870

/-!
# A197873: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,3,3,1,0,1,1 for x=0,1,2,3,4,5,6.

The programs for A197873, there is no canonical definition to state claims against.
-/

/-! ## A197873.P2061127355599878035

`A007095(A114841(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A197873.P2061127355599878035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007095 (A114841 (a (n - 1)).toNat).toNat

end

end A197873.P2061127355599878035

/-!
# A197874: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,2,2,4,2,2,0 for x=0,1,2,3,4,5,6.

The programs for A197874, there is no canonical definition to state claims against.
-/

/-! ## A197874.P15409651928867163832

`A323623(A372304(n))`
-/

namespace A197874.P15409651928867163832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323623 (A372304 n).toNat

end

end A197874.P15409651928867163832

/-!
# A197875: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,2,2,0,2,1 for x=0,1,2,3,4,5,6.

The programs for A197875, there is no canonical definition to state claims against.
-/

/-! ## A197875.P11085400008860605882

`A103826(A265062(n²))`
-/

namespace A197875.P11085400008860605882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103826 (A265062 (n ^ 2)).toNat

end

end A197875.P11085400008860605882

/-!
# A197876: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,2,2,1,2,1 for x=0,1,2,3,4,5,6.

The programs for A197876, there is no canonical definition to state claims against.
-/

/-! ## A197876.P7457728504011120652

`A195185((n+1)^n)+3*n`
-/

namespace A197876.P7457728504011120652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195185 ((n + 1) ^ n) + (3 * n : ℤ)

end

end A197876.P7457728504011120652

/-!
# A197877: Smallest number m such that A096535(m) = n.

The programs for A197877, there is no canonical definition to state claims against.
-/

/-! ## A197877.P14299519997943387835

`C(A000032(a(n-1))+n+9, 2)` with `a(0)=2, a(1)=0, a(2)=5, a(3)=6`
-/

namespace A197877.P14299519997943387835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 5, 6] fun n a =>
  Nat.choose (A000032 (a (n - 1)) + (n : ℤ) + 9).toNat 2

end

end A197877.P14299519997943387835

/-!
# A197878: a(n) = floor(2*(1 + sqrt(2))*n).

The programs for A197878, the canonical program `A197878.P2347654644511512118` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197878 has offset 1).

The definition of A197878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197878.P6668847403680317225

`floor((sqrt(8)+2)*(n+1))`
-/

namespace A197878.P6668847403680317225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (8 : ℝ) + 2) * (n + 1 : ℝ)⌋

end

end A197878.P6668847403680317225

namespace A197878

/-- `floor((sqrt(8)+2)*(n+1))` -/
def P6668847403680317225.Spec : Prop :=
  ∀ n, P6668847403680317225.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P2347654644511512118

`∑[A018245(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A197878

/-- `∑[A018245(n+1)]` -/
def P2347654644511512118.Spec : Prop :=
  ∀ n, P2347654644511512118.a n = A197878 (n + 1)

theorem P2347654644511512118.correct : P2347654644511512118.Spec := by
  intro n
  simp only [A197878, Nat.add_sub_cancel]

end A197878

/-! ## A197878.P4577115377908775929

`A184921(n+1)+1`
-/

namespace A197878.P4577115377908775929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184921 (n + 1) + 1

end

end A197878.P4577115377908775929

namespace A197878

/-- `A184921(n+1)+1` -/
def P4577115377908775929.Spec : Prop :=
  ∀ n, P4577115377908775929.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P17463836576653737838

`∑[5-Δ[A195177(n)]]`
-/

namespace A197878.P17463836576653737838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197878.P17463836576653737838

namespace A197878

/-- `∑[5-Δ[A195177(n)]]` -/
def P17463836576653737838.Spec : Prop :=
  ∀ n, P17463836576653737838.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P9311882579795320805

`∑[A276858(n+1)+2]`
-/

namespace A197878.P9311882579795320805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276858 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197878.P9311882579795320805

namespace A197878

/-- `∑[A276858(n+1)+2]` -/
def P9311882579795320805.Spec : Prop :=
  ∀ n, P9311882579795320805.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P17115329584500085563

`A190337(n+1)-(n+1)`
-/

namespace A197878.P17115329584500085563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (n + 1) - (n + 1 : ℤ)

end

end A197878.P17115329584500085563

namespace A197878

/-- `A190337(n+1)-(n+1)` -/
def P17115329584500085563.Spec : Prop :=
  ∀ n, P17115329584500085563.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P11460671628850245123

`A198263(n+1)+Δ[n²]`
-/

namespace A197878.P11460671628850245123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A197878.P11460671628850245123

namespace A197878

/-- `A198263(n+1)+Δ[n²]` -/
def P11460671628850245123.Spec : Prop :=
  ∀ n, P11460671628850245123.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P14460467011400690570

`A022842(n+1)+2*(n+1)`
-/

namespace A197878.P14460467011400690570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) + (2 * (n + 1) : ℤ)

end

end A197878.P14460467011400690570

namespace A197878

/-- `A022842(n+1)+2*(n+1)` -/
def P14460467011400690570.Spec : Prop :=
  ∀ n, P14460467011400690570.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P13970395682296877349

`A187393(n+1)-2*(n+1)`
-/

namespace A197878.P13970395682296877349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187393 (n + 1) - (2 * (n + 1) : ℤ)

end

end A197878.P13970395682296877349

namespace A197878

/-- `A187393(n+1)-2*(n+1)` -/
def P13970395682296877349.Spec : Prop :=
  ∀ n, P13970395682296877349.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P9068997709448200696

`A017053(n)-A182766(n+1)`
-/

namespace A197878.P9068997709448200696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A182766 (n + 1)

end

end A197878.P9068997709448200696

namespace A197878

/-- `A017053(n)-A182766(n+1)` -/
def P9068997709448200696.Spec : Prop :=
  ∀ n, P9068997709448200696.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P1124679368437869637

`A016969(n)-A187394(n+1)`
-/

namespace A197878.P1124679368437869637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A187394 (n + 1)

end

end A197878.P1124679368437869637

namespace A197878

/-- `A016969(n)-A187394(n+1)` -/
def P1124679368437869637.Spec : Prop :=
  ∀ n, P1124679368437869637.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P7022339652257269714

`A003153(n+1)+A003151(n+1)`
-/

namespace A197878.P7022339652257269714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1) + A003151 (n + 1)

end

end A197878.P7022339652257269714

namespace A197878

/-- `A003153(n+1)+A003151(n+1)` -/
def P7022339652257269714.Spec : Prop :=
  ∀ n, P7022339652257269714.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P14510746206178661488

`A022846(n+1)+A001952(n+1)`
-/

namespace A197878.P14510746206178661488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1) + A001952 (n + 1)

end

end A197878.P14510746206178661488

namespace A197878

/-- `A022846(n+1)+A001952(n+1)` -/
def P14510746206178661488.Spec : Prop :=
  ∀ n, P14510746206178661488.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P5681931766107995466

`A197879(n+1)+A022804(n+1)`
-/

namespace A197878.P5681931766107995466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (n + 1) + A022804 (n + 1)

end

end A197878.P5681931766107995466

namespace A197878

/-- `A197879(n+1)+A022804(n+1)` -/
def P5681931766107995466.Spec : Prop :=
  ∀ n, P5681931766107995466.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P2584359064649172895

`A186222(n+1)+A080754(n+1)`
-/

namespace A197878.P2584359064649172895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1) + A080754 (n + 1)

end

end A197878.P2584359064649172895

namespace A197878

/-- `A186222(n+1)+A080754(n+1)` -/
def P2584359064649172895.Spec : Prop :=
  ∀ n, P2584359064649172895.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P1043583425591119484

`A022842(n+1)+A000027(n+1)+n+1`
-/

namespace A197878.P1043583425591119484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) + A000027 (n + 1) + (n + 1 : ℤ)

end

end A197878.P1043583425591119484

namespace A197878

/-- `A022842(n+1)+A000027(n+1)+n+1` -/
def P1043583425591119484.Spec : Prop :=
  ∀ n, P1043583425591119484.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P10418432483061192033

`Δ[∑[A198263(n)]+n²]`
-/

namespace A197878.P10418432483061192033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A197878.P10418432483061192033

namespace A197878

/-- `Δ[∑[A198263(n)]+n²]` -/
def P10418432483061192033.Spec : Prop :=
  ∀ n, P10418432483061192033.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P8879594884623393300

`A003151(2*(n+1))`
-/

namespace A197878.P8879594884623393300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (2 * (n + 1))

end

end A197878.P8879594884623393300

namespace A197878

/-- `A003151(2*(n+1))` -/
def P8879594884623393300.Spec : Prop :=
  ∀ n, P8879594884623393300.a n = A197878 (n + 1)

end A197878

/-! ## A197878.P14198392847713034853

`A082845(Δ[n²])+2`
-/

namespace A197878.P14198392847713034853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A197878.P14198392847713034853

namespace A197878

/-- `A082845(Δ[n²])+2` -/
def P14198392847713034853.Spec : Prop :=
  ∀ n, P14198392847713034853.a n = A197878 (n + 1)

end A197878

/-!
# A197879: Parity of floor(n*sqrt(8)).

The programs for A197879, the canonical program `A197879.P4266122216531450186` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197879 has offset 1).

The definition of A197879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197879.P5426900717932975851

`floor((n+1)*sqrt(8))%2`
-/

namespace A197879.P5426900717932975851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (8 : ℝ)⌋ 2

end

end A197879.P5426900717932975851

namespace A197879

/-- `floor((n+1)*sqrt(8))%2` -/
def P5426900717932975851.Spec : Prop :=
  ∀ n, P5426900717932975851.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P10406439391387608405

`and(1, floor((n+1)*sqrt(8)))`
-/

namespace A197879.P10406439391387608405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n + 1 : ℝ) * Real.sqrt (8 : ℝ)⌋

end

end A197879.P10406439391387608405

namespace A197879

/-- `and(1, floor((n+1)*sqrt(8)))` -/
def P10406439391387608405.Spec : Prop :=
  ∀ n, P10406439391387608405.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P5057948219329141533

`log2(gcd(2, floor((sqrt(8)+2)*(n+1))-1))`
-/

namespace A197879.P5057948219329141533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (⌊(Real.sqrt (8 : ℝ) + 2) * (n + 1 : ℝ)⌋ - 1) : ℝ)

end

end A197879.P5057948219329141533

namespace A197879

/-- `log2(gcd(2, floor((sqrt(8)+2)*(n+1))-1))` -/
def P5057948219329141533.Spec : Prop :=
  ∀ n, P5057948219329141533.a n = (A197879 (n + 1) : ℝ)

end A197879

/-! ## A197879.P10490583474474742303

`floor((n+1)*sqrt(8))-2*floor((n+1)*sqrt(2))`
-/

namespace A197879.P10490583474474742303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (8 : ℝ)⌋ - 2 * ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A197879.P10490583474474742303

namespace A197879

/-- `floor((n+1)*sqrt(8))-2*floor((n+1)*sqrt(2))` -/
def P10490583474474742303.Spec : Prop :=
  ∀ n, P10490583474474742303.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P4266122216531450186

`(A022842(n+1)%2)²`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A197879

/-- `(A022842(n+1)%2)²` -/
def P4266122216531450186.Spec : Prop :=
  ∀ n, P4266122216531450186.a n = A197879 (n + 1)

theorem P4266122216531450186.correct : P4266122216531450186.Spec := by
  intro n
  simp only [A197879, Nat.add_sub_cancel]

end A197879

/-! ## A197879.P263503817400727124

`(A195178(n+1)%2)²`
-/

namespace A197879.P263503817400727124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195178 (n + 1)) 2 ^ 2

end

end A197879.P263503817400727124

namespace A197879

/-- `(A195178(n+1)%2)²` -/
def P263503817400727124.Spec : Prop :=
  ∀ n, P263503817400727124.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P12924017702567275762

`sqrt(A197878(n+1)%2)`
-/

namespace A197879.P12924017702567275762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A197878 (n + 1)) 2 : ℝ)

end

end A197879.P12924017702567275762

namespace A197879

/-- `sqrt(A197878(n+1)%2)` -/
def P12924017702567275762.Spec : Prop :=
  ∀ n, P12924017702567275762.a n = (A197879 (n + 1) : ℝ)

end A197879

/-! ## A197879.P14216616684537536047

`floor(1/A024539(n+1))`
-/

namespace A197879.P14216616684537536047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A024539 (n + 1) : ℚ)⌋

end

end A197879.P14216616684537536047

namespace A197879

/-- `floor(1/A024539(n+1))` -/
def P14216616684537536047.Spec : Prop :=
  ∀ n, P14216616684537536047.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P14015971543739567528

`floor(A190544(n+1)/2)`
-/

namespace A197879.P14015971543739567528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190544 (n + 1) : ℚ) / 2⌋

end

end A197879.P14015971543739567528

namespace A197879

/-- `floor(A190544(n+1)/2)` -/
def P14015971543739567528.Spec : Prop :=
  ∀ n, P14015971543739567528.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P8754635947649763146

`floor(2*n/A024538(n+1))`
-/

namespace A197879.P8754635947649763146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / (A024538 (n + 1) : ℚ))⌋

end

end A197879.P8754635947649763146

namespace A197879

/-- `floor(2*n/A024538(n+1))` -/
def P8754635947649763146.Spec : Prop :=
  ∀ n, P8754635947649763146.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P5860426396711488732

`A039982(A121488(n+1))`
-/

namespace A197879.P5860426396711488732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A121488 (n + 1)).toNat

end

end A197879.P5860426396711488732

namespace A197879

/-- `A039982(A121488(n+1))` -/
def P5860426396711488732.Spec : Prop :=
  ∀ n, P5860426396711488732.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P11913935200635636001

`A000035(A195178(n+1))`
-/

namespace A197879.P11913935200635636001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195178 (n + 1)).toNat

end

end A197879.P11913935200635636001

namespace A197879

/-- `A000035(A195178(n+1))` -/
def P11913935200635636001.Spec : Prop :=
  ∀ n, P11913935200635636001.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P3041468196876064935

`A188297(A022846(n+1))`
-/

namespace A197879.P3041468196876064935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (A022846 (n + 1)).toNat

end

end A197879.P3041468196876064935

namespace A197879

/-- `A188297(A022846(n+1))` -/
def P3041468196876064935.Spec : Prop :=
  ∀ n, P3041468196876064935.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P10401819848357714401

`A288213(A087057(n+1))`
-/

namespace A197879.P10401819848357714401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288213 (A087057 (n + 1)).toNat

end

end A197879.P10401819848357714401

namespace A197879

/-- `A288213(A087057(n+1))` -/
def P10401819848357714401.Spec : Prop :=
  ∀ n, P10401819848357714401.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P8260102544092100951

`A159684(n*A001030(n+1))`
-/

namespace A197879.P8260102544092100951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 ((n : ℤ) * A001030 (n + 1)).toNat

end

end A197879.P8260102544092100951

namespace A197879

/-- `A159684(n*A001030(n+1))` -/
def P8260102544092100951.Spec : Prop :=
  ∀ n, P8260102544092100951.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P15242210360848313391

`A083035(2*(n+1))`
-/

namespace A197879.P15242210360848313391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (2 * (n + 1))

end

end A197879.P15242210360848313391

namespace A197879

/-- `A083035(2*(n+1))` -/
def P15242210360848313391.Spec : Prop :=
  ∀ n, P15242210360848313391.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P5832997059906917638

`A080764(2*n+1)*A104521(2*n+1)`
-/

namespace A197879.P5832997059906917638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (2 * n + 1) * A104521 (2 * n + 1)

end

end A197879.P5832997059906917638

namespace A197879

/-- `A080764(2*n+1)*A104521(2*n+1)` -/
def P5832997059906917638.Spec : Prop :=
  ∀ n, P5832997059906917638.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P14803039648379936207

`A159684(A003153(n+1)-2)`
-/

namespace A197879.P14803039648379936207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A003153 (n + 1) - 2).toNat

end

end A197879.P14803039648379936207

namespace A197879

/-- `A159684(A003153(n+1)-2)` -/
def P14803039648379936207.Spec : Prop :=
  ∀ n, P14803039648379936207.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P17453034397438342876

`A144611(A003153(n+1))`
-/

namespace A197879.P17453034397438342876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A003153 (n + 1)).toNat

end

end A197879.P17453034397438342876

namespace A197879

/-- `A144611(A003153(n+1))` -/
def P17453034397438342876.Spec : Prop :=
  ∀ n, P17453034397438342876.a n = A197879 (n + 1)

end A197879

/-! ## A197879.P2273974795825830841

`A000035(A022842(n+1))`
-/

namespace A197879.P2273974795825830841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022842 (n + 1)).toNat

end

end A197879.P2273974795825830841

namespace A197879

/-- `A000035(A022842(n+1))` -/
def P2273974795825830841.Spec : Prop :=
  ∀ n, P2273974795825830841.a n = A197879 (n + 1)

end A197879

/-!
# A197880: Squarefree part of ((2n-1)!)^(2n-3).

The programs for A197880, there is no canonical definition to state claims against.
-/

/-! ## A197880.P8715129915621381812

`A055204(Δ[n²])`
-/

namespace A197880.P8715129915621381812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A197880.P8715129915621381812

/-! ## A197880.P14792111912762455113

`and(-1, A055204(2*n+1))`
-/

namespace A197880.P14792111912762455113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A055204 (2 * n + 1))

end

end A197880.P14792111912762455113

/-! ## A197880.P10285582592755184148

`abs(1-A055204(n+1+n))+1`
-/

namespace A197880.P10285582592755184148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A055204 (n + 1 + n)| + 1

end

end A197880.P10285582592755184148

/-! ## A197880.P15866237042106220171

`A055204(2*n+1)+A000007(n+1)`
-/

namespace A197880.P15866237042106220171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (2 * n + 1) + A000007 (n + 1)

end

end A197880.P15866237042106220171

/-! ## A197880.P307443873721393818

`A055230(2*n+1)*A055773(2*n+1)`
-/

namespace A197880.P307443873721393818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (2 * n + 1) * A055773 (2 * n + 1)

end

end A197880.P307443873721393818

/-! ## A197880.P3265471123142994036

`A055204(2*n+1)*A147661(2*(n+1))`
-/

namespace A197880.P3265471123142994036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055204 (2 * n + 1) * A147661 (2 * (n + 1))

end

end A197880.P3265471123142994036

/-! ## A197880.P6092835537793398761

`A249831((n+1)*(2*n+3))`
-/

namespace A197880.P6092835537793398761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249831 ((n + 1) * (2 * n + 3))

end

end A197880.P6092835537793398761

/-! ## A197880.P16840573238903441723

`A065887(2*n+1)/A055772(2*n+1)`
-/

namespace A197880.P16840573238903441723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065887 (2 * n + 1) : ℚ) / (A055772 (2 * n + 1) : ℚ)

end

end A197880.P16840573238903441723

/-!
# A197881: Number of times n occurs in A197863.

The programs for A197881, the canonical program `A197881.P10260950731511024877` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197881 has offset 1).

The definition of A197881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197881.P10260950731511024877

`∏{e}[n+1, C(#, C(2, #))]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A197881

/-- `∏{e}[n+1, C(#, C(2, #))]` -/
def P10260950731511024877.Spec : Prop :=
  ∀ n, (P10260950731511024877.a n : ℤ) = A197881 (n + 1)

theorem P10260950731511024877.correct : P10260950731511024877.Spec := by
  intro n
  simp only [A197881, Nat.add_sub_cancel]

end A197881

/-! ## A197881.P10041007524728432669

`∏{e}[n+1, dr(10%#²)]`
-/

namespace A197881.P10041007524728432669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.digitalRoot ((10 % Nat.factorization (f1 n) p ^ 2 : ℕ) : ℤ)

end

end A197881.P10041007524728432669

namespace A197881

/-- `∏{e}[n+1, dr(10%#²)]` -/
def P10041007524728432669.Spec : Prop :=
  ∀ n, (P10041007524728432669.a n : ℤ) = A197881 (n + 1)

end A197881

/-! ## A197881.P8451505695317358199

`∏{e}[n+1, ceil(acot(#-2))]`
-/

namespace A197881.P8451505695317358199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot ((Nat.factorization (f1 n) p : ℤ) - 2 : ℝ)⌉

end

end A197881.P8451505695317358199

namespace A197881

/-- `∏{e}[n+1, ceil(acot(#-2))]` -/
def P8451505695317358199.Spec : Prop :=
  ∀ n, P8451505695317358199.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P10237918200506349704

`∏{e}[n+1, (6%#²)%5]`
-/

namespace A197881.P10237918200506349704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 6 % Nat.factorization (f1 n) p ^ 2 % 5

end

end A197881.P10237918200506349704

namespace A197881

/-- `∏{e}[n+1, (6%#²)%5]` -/
def P10237918200506349704.Spec : Prop :=
  ∀ n, (P10237918200506349704.a n : ℤ) = A197881 (n + 1)

end A197881

/-! ## A197881.P13743852783732852607

`∏{e}[n+1, floor(root(4, #))%4]`
-/

namespace A197881.P13743852783732852607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod ⌊(4 : ℝ) ^ (1 / (Nat.factorization (f1 n) p : ℝ))⌋ 4

end

end A197881.P13743852783732852607

namespace A197881

/-- `∏{e}[n+1, floor(root(4, #))%4]` -/
def P13743852783732852607.Spec : Prop :=
  ∀ n, P13743852783732852607.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P10228557427463638910

`∏{e}[n+1, A131836(#²)]`
-/

namespace A197881.P10228557427463638910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A131836 (Nat.factorization (f1 n) p ^ 2)

end

end A197881.P10228557427463638910

namespace A197881

/-- `∏{e}[n+1, A131836(#²)]` -/
def P10228557427463638910.Spec : Prop :=
  ∀ n, P10228557427463638910.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P18202367281542420581

`∏{e}[n+1, A319610(#²)]`
-/

namespace A197881.P18202367281542420581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A319610 (Nat.factorization (f1 n) p ^ 2)

end

end A197881.P18202367281542420581

namespace A197881

/-- `∏{e}[n+1, A319610(#²)]` -/
def P18202367281542420581.Spec : Prop :=
  ∀ n, P18202367281542420581.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P12464794725736025126

`A332712(A058035(n+1))`
-/

namespace A197881.P12464794725736025126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332712 (A058035 (n + 1)).toNat

end

end A197881.P12464794725736025126

namespace A197881

/-- `A332712(A058035(n+1))` -/
def P12464794725736025126.Spec : Prop :=
  ∀ n, P12464794725736025126.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P10531825994796937406

`A332712(A360539(n+1))`
-/

namespace A197881.P10531825994796937406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332712 (A360539 (n + 1)).toNat

end

end A197881.P10531825994796937406

namespace A197881

/-- `A332712(A360539(n+1))` -/
def P10531825994796937406.Spec : Prop :=
  ∀ n, P10531825994796937406.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P7783756316989940913

`A332712(A385007(n+1))`
-/

namespace A197881.P7783756316989940913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332712 (A385007 (n + 1)).toNat

end

end A197881.P7783756316989940913

namespace A197881

/-- `A332712(A385007(n+1))` -/
def P7783756316989940913.Spec : Prop :=
  ∀ n, P7783756316989940913.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P12483729404975312739

`A112526(n+1)*A365498(n+1)`
-/

namespace A197881.P12483729404975312739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) * A365498 (n + 1)

end

end A197881.P12483729404975312739

namespace A197881

/-- `A112526(n+1)*A365498(n+1)` -/
def P12483729404975312739.Spec : Prop :=
  ∀ n, P12483729404975312739.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P10671550606098693039

`A112526(n+1)*A368885(n+1)`
-/

namespace A197881.P10671550606098693039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) * A368885 (n + 1)

end

end A197881.P10671550606098693039

namespace A197881

/-- `A112526(n+1)*A368885(n+1)` -/
def P10671550606098693039.Spec : Prop :=
  ∀ n, P10671550606098693039.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P13255752506295743616

`A369309(n+1)/A190867(n+1)`
-/

namespace A197881.P13255752506295743616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369309 (n + 1) : ℚ) / (A190867 (n + 1) : ℚ)

end

end A197881.P13255752506295743616

namespace A197881

/-- `A369309(n+1)/A190867(n+1)` -/
def P13255752506295743616.Spec : Prop :=
  ∀ n, P13255752506295743616.a n = (A197881 (n + 1) : ℚ)

end A197881

/-! ## A197881.P4157435117667182196

`A379012(n+1)/A368248(n+1)`
-/

namespace A197881.P4157435117667182196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379012 (n + 1) : ℚ) / (A368248 (n + 1) : ℚ)

end

end A197881.P4157435117667182196

namespace A197881

/-- `A379012(n+1)/A368248(n+1)` -/
def P4157435117667182196.Spec : Prop :=
  ∀ n, P4157435117667182196.a n = (A197881 (n + 1) : ℚ)

end A197881

/-! ## A197881.P4579185263051935594

`lcm(A307423(n+1), A368885(n+1))`
-/

namespace A197881.P4579185263051935594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A307423 (n + 1)) (A368885 (n + 1))

end

end A197881.P4579185263051935594

namespace A197881

/-- `lcm(A307423(n+1), A368885(n+1))` -/
def P4579185263051935594.Spec : Prop :=
  ∀ n, (P4579185263051935594.a n : ℤ) = A197881 (n + 1)

end A197881

/-! ## A197881.P6558767147757941826

`and(A061389(n+1), A368885(n+1))`
-/

namespace A197881.P6558767147757941826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061389 (n + 1)) (A368885 (n + 1))

end

end A197881.P6558767147757941826

namespace A197881

/-- `and(A061389(n+1), A368885(n+1))` -/
def P6558767147757941826.Spec : Prop :=
  ∀ n, P6558767147757941826.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P1116640356218096270

`and(A365498(n+1), A368885(n+1))`
-/

namespace A197881.P1116640356218096270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A365498 (n + 1)) (A368885 (n + 1))

end

end A197881.P1116640356218096270

namespace A197881

/-- `and(A365498(n+1), A368885(n+1))` -/
def P1116640356218096270.Spec : Prop :=
  ∀ n, P1116640356218096270.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P14374349143714951931

`and(A368885(n+1), A380922(n+1))`
-/

namespace A197881.P14374349143714951931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A368885 (n + 1)) (A380922 (n + 1))

end

end A197881.P14374349143714951931

namespace A197881

/-- `and(A368885(n+1), A380922(n+1))` -/
def P14374349143714951931.Spec : Prop :=
  ∀ n, P14374349143714951931.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P13732693128859147472

`A355683(n+1)²*A368885(n+1)`
-/

namespace A197881.P13732693128859147472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 (n + 1) ^ 2 * A368885 (n + 1)

end

end A197881.P13732693128859147472

namespace A197881

/-- `A355683(n+1)²*A368885(n+1)` -/
def P13732693128859147472.Spec : Prop :=
  ∀ n, P13732693128859147472.a n = A197881 (n + 1)

end A197881

/-! ## A197881.P13353486432237086830

`∑{d}[n+1, A008683(#)*A357669((n+1)/#)]`
-/

namespace A197881.P13353486432237086830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A357669 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A197881.P13353486432237086830

namespace A197881

/-- `∑{d}[n+1, A008683(#)*A357669((n+1)/#)]` -/
def P13353486432237086830.Spec : Prop :=
  ∀ n, P13353486432237086830.a n = A197881 (n + 1)

end A197881

/-!
# A197882: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,2,1,1,1 for x=0,1,2,3,4.

The programs for A197882, there is no canonical definition to state claims against.
-/

/-! ## A197882.P3569301279736750830

`A197889(∑[4*n]+1)`
-/

namespace A197882.P3569301279736750830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197882.P3569301279736750830

/-! ## A197882.P11172465802020492902

`record[A197889(Δ[A235355(n)])]`
-/

namespace A197882.P11172465802020492902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197882.P11172465802020492902

/-! ## A197882.P2782800369990523488

`record[A197889(A330613(n+1))]`
-/

namespace A197882.P2782800369990523488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197882.P2782800369990523488

/-! ## A197882.P12283096608437121688

`record[A003982(n)*A197889(n+1)]`
-/

namespace A197882.P12283096608437121688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197882.P12283096608437121688

/-!
# A197883: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,1,1 for x=0,1,2,3,4.

The programs for A197883, there is no canonical definition to state claims against.
-/

/-! ## A197883.P8366799300512695022

`A197889(∑[n+1]+2)`
-/

namespace A197883.P8366799300512695022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197883.P8366799300512695022

/-! ## A197883.P13533451823508164161

`A197889(A134869(n+1)+1)+char[16]`
-/

namespace A197883.P13533451823508164161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A134869 (n + 1) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197883.P13533451823508164161

/-! ## A197883.P5646003448244198070

`A197889(A167487(n)-5)%A123894(n)`
-/

namespace A197883.P5646003448244198070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197889 (A167487 n - 5).toNat) (A123894 n)

end

end A197883.P5646003448244198070

/-! ## A197883.P4218699484674681821

`A197889(A000096(n)+3)*A323022(n+1)`
-/

namespace A197883.P4218699484674681821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A000096 n + 3).toNat * A323022 (n + 1)

end

end A197883.P4218699484674681821

/-! ## A197883.P5147246160512288344

`A197889(A000096(n)+3)+A122840(2*n+5)`
-/

namespace A197883.P5147246160512288344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A000096 n + 3).toNat + A122840 (2 * n + 5)

end

end A197883.P5147246160512288344

/-!
# A197884: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,1,1 for x=0,1,2,3,4.

The programs for A197884, there is no canonical definition to state claims against.
-/

/-! ## A197884.P16127870738324472967

`A197889(∑[n+2]+4)`
-/

namespace A197884.P16127870738324472967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197884.P16127870738324472967

/-! ## A197884.P12422542299705527724

`record[A197889(A016028(n+1))]`
-/

namespace A197884.P12422542299705527724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197884.P12422542299705527724

/-! ## A197884.P6834519622609400979

`A197889(A167614(n+1))+char[16]`
-/

namespace A197884.P6834519622609400979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197884.P6834519622609400979

/-! ## A197884.P17702221360765116221

`record[A197889(n+4)/A126331(n)]`
-/

namespace A197884.P17702221360765116221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197889 (n + 4) : ℚ) / (A126331 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197884.P17702221360765116221

/-! ## A197884.P10621980271329984402

`record[gcd(A197889(n+1), A303913(n))]`
-/

namespace A197884.P10621980271329984402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197889 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197884.P10621980271329984402

/-!
# A197885: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,1,1 for x=0,1,2,3,4.

The programs for A197885, there is no canonical definition to state claims against.
-/

/-! ## A197885.P7850682286490990214

`A197889(∑[n+3]+7)`
-/

namespace A197885.P7850682286490990214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197885.P7850682286490990214

/-! ## A197885.P7203378414851036477

`A197889(A027379(n+2))%A154142(2*(n+1))`
-/

namespace A197885.P7203378414851036477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197889 (A027379 (n + 2)).toNat) (A154142 (2 * (n + 1)))

end

end A197885.P7203378414851036477

/-! ## A197885.P16602115482876637049

`gcd(A014197(2*n+1), A197889(A027379(n+2)))`
-/

namespace A197885.P16602115482876637049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014197 (2 * n + 1)) (A197889 (A027379 (n + 2)).toNat)

end

end A197885.P16602115482876637049

/-!
# A197886: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,1,1 for x=0,1,2,3,4.

The programs for A197886, there is no canonical definition to state claims against.
-/

/-! ## A197886.P2040179317951817008

`A197889(A374005(n+1))`
-/

namespace A197886.P2040179317951817008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A374005 (n + 1)).toNat

end

end A197886.P2040179317951817008

/-! ## A197886.P12741889920006739624

`A197889(A167499(n+3))`
-/

namespace A197886.P12741889920006739624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A167499 (n + 3)).toNat

end

end A197886.P12741889920006739624

/-! ## A197886.P8934213228243383767

`A197889(A077169(n+5))`
-/

namespace A197886.P8934213228243383767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A077169 (n + 5)).toNat

end

end A197886.P8934213228243383767

/-! ## A197886.P3639389019915182332

`A197889(A155212(n)+13)`
-/

namespace A197886.P3639389019915182332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A155212 n + 13).toNat

end

end A197886.P3639389019915182332

/-! ## A197886.P3379750174753961471

`A197889(A056000(n)+15)`
-/

namespace A197886.P3379750174753961471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A056000 n + 15).toNat

end

end A197886.P3379750174753961471

/-!
# A197887: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,1,1 for x=0,1,2,3,4.

The programs for A197887, there is no canonical definition to state claims against.
-/

/-! ## A197887.P10038760384448630802

`A197889(∑[n+5]+16)`
-/

namespace A197887.P10038760384448630802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A197887.P10038760384448630802

/-! ## A197887.P15903730866668338641

`A197889(A000217(n+5)+6)+A007031(n+1)`
-/

namespace A197887.P15903730866668338641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A000217 (n + 5) + 6).toNat + A007031 (n + 1)

end

end A197887.P15903730866668338641

/-!
# A197888: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,1,1 for x=0,1,2,3,4.

The programs for A197888, there is no canonical definition to state claims against.
-/

/-! ## A197888.P1926458780930285520

`A197889(A374008(n+1))`
-/

namespace A197888.P1926458780930285520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A374008 (n + 1)).toNat

end

end A197888.P1926458780930285520

/-! ## A197888.P8732783807266295359

`A197889(A056119(n)+28)`
-/

namespace A197888.P8732783807266295359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A056119 n + 28).toNat

end

end A197888.P8732783807266295359

/-! ## A197888.P1336650498765677503

`A197889(eq[11, A066657(n)])`
-/

namespace A197888.P1336650498765677503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197888.P1336650498765677503

/-! ## A197888.P17916484915393057832

`A197889(A167614(n+5)+4)`
-/

namespace A197888.P17916484915393057832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A167614 (n + 5) + 4).toNat

end

end A197888.P17916484915393057832

/-! ## A197888.P14244550339286844622

`A197889(A000124(n+6)+6)`
-/

namespace A197888.P14244550339286844622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197889 (A000124 (n + 6) + 6).toNat

end

end A197888.P14244550339286844622

/-!
# A197890: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,1,1 for x=0,1,2,3,4.

The programs for A197890, there is no canonical definition to state claims against.
-/

/-! ## A197890.P5487075405564231047

`A197896(∑[4*n]+1)`
-/

namespace A197890.P5487075405564231047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197890.P5487075405564231047

/-! ## A197890.P3689567858512014184

`record[A197896(A152271(n²))]`
-/

namespace A197890.P3689567858512014184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197890.P3689567858512014184

/-! ## A197890.P9560157299752096301

`record[A197896(∑[A266981(n)])]`
-/

namespace A197890.P9560157299752096301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197890.P9560157299752096301

/-! ## A197890.P16298796371022053179

`record[A197896(Δ[A235355(n)])]`
-/

namespace A197890.P16298796371022053179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197890.P16298796371022053179

/-!
# A197891: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,1 for x=0,1,2,3,4.

The programs for A197891, there is no canonical definition to state claims against.
-/

/-! ## A197891.P15391291005100859640

`A197896(∑[n+2]+4)`
-/

namespace A197891.P15391291005100859640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197891.P15391291005100859640

/-! ## A197891.P18052448434860354542

`A197896(A167614(n+1))+char[16]`
-/

namespace A197891.P18052448434860354542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197891.P18052448434860354542

/-! ## A197891.P1049405501721476204

`A197896(A167499(n)+n)+char[19]`
-/

namespace A197891.P1049405501721476204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197891.P1049405501721476204

/-! ## A197891.P2295943612687754340

`A243832(n)+A197896(A167614(n+1))`
-/

namespace A197891.P2295943612687754340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243832 n + A197896 (A167614 (n + 1)).toNat

end

end A197891.P2295943612687754340

/-! ## A197891.P17375066154578970004

`A243836(n)+A197896(A167614(n+1))`
-/

namespace A197891.P17375066154578970004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n + A197896 (A167614 (n + 1)).toNat

end

end A197891.P17375066154578970004

/-!
# A197892: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,1 for x=0,1,2,3,4.

The programs for A197892, there is no canonical definition to state claims against.
-/

/-! ## A197892.P2087004693305123655

`A197896(∑[n+3]+7)`
-/

namespace A197892.P2087004693305123655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197892.P2087004693305123655

/-!
# A197893: Number of n X 5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,1 for x=0,1,2,3,4.

The programs for A197893, there is no canonical definition to state claims against.
-/

/-! ## A197893.P1971073749669011193

`A197896(∑[n+4]+11)`
-/

namespace A197893.P1971073749669011193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A197893.P1971073749669011193

/-! ## A197893.P3497281066096278474

`A197896(A046691(n+3))%A357404(n+4)`
-/

namespace A197893.P3497281066096278474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197896 (A046691 (n + 3)).toNat) (A357404 (n + 4))

end

end A197893.P3497281066096278474

/-!
# A197894: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,1 for x=0,1,2,3,4.

The programs for A197894, there is no canonical definition to state claims against.
-/

/-! ## A197894.P7229098535195657548

`A197896(A374007(n+1))`
-/

namespace A197894.P7229098535195657548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A374007 (n + 1)).toNat

end

end A197894.P7229098535195657548

/-! ## A197894.P9983284482312516679

`A197896(A166136(n+4))`
-/

namespace A197894.P9983284482312516679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A166136 (n + 4)).toNat

end

end A197894.P9983284482312516679

/-! ## A197894.P5863431878852799411

`A197896(A056115(n)+21)`
-/

namespace A197894.P5863431878852799411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A056115 n + 21).toNat

end

end A197894.P5863431878852799411

/-! ## A197894.P10363238973477153120

`A197896(A167499(n+4)+1)`
-/

namespace A197894.P10363238973477153120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A167499 (n + 4) + 1).toNat

end

end A197894.P10363238973477153120

/-! ## A197894.P15881329079421110711

`A197896(A077169(n+6)+1)`
-/

namespace A197894.P15881329079421110711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A077169 (n + 6) + 1).toNat

end

end A197894.P15881329079421110711

/-!
# A197895: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,1 for x=0,1,2,3,4.

The programs for A197895, there is no canonical definition to state claims against.
-/

/-! ## A197895.P12480673395603934632

`A197896(A374008(n+1))`
-/

namespace A197895.P12480673395603934632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A374008 (n + 1)).toNat

end

end A197895.P12480673395603934632

/-! ## A197895.P9254610163774390169

`A197896(A056119(n)+28)`
-/

namespace A197895.P9254610163774390169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A056119 n + 28).toNat

end

end A197895.P9254610163774390169

/-! ## A197895.P17320716424113652764

`A197896(eq[11, A066657(n)])`
-/

namespace A197895.P17320716424113652764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197895.P17320716424113652764

/-! ## A197895.P12728292638312262315

`A197896(A166136(n+5)+1)`
-/

namespace A197895.P12728292638312262315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (A166136 (n + 5) + 1).toNat

end

end A197895.P12728292638312262315

/-! ## A197895.P10236990639053525467

`A197896(eq[8, A131818(n+1)])`
-/

namespace A197895.P10236990639053525467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197895.P10236990639053525467

/-!
# A197896: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,1,1 for x=0,1,2,3,4.

The programs for A197896, there is no canonical definition to state claims against.
-/

/-! ## A197896.P14561984133632905543

`A198013(n+1)-A186034(A022167(n))`
-/

namespace A197896.P14561984133632905543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (n + 1) - A186034 (A022167 n).toNat

end

end A197896.P14561984133632905543

/-! ## A197896.P7542870456598704635

`A198013(n+1)-A037800(A176791(n))`
-/

namespace A197896.P7542870456598704635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (n + 1) - A037800 (A176791 n).toNat

end

end A197896.P7542870456598704635

/-! ## A197896.P14109035955794407270

`A198013(n+1)-A107846(A154336(n))`
-/

namespace A197896.P14109035955794407270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (n + 1) - A107846 (A154336 n).toNat

end

end A197896.P14109035955794407270

/-! ## A197896.P18150537591305861929

`A198013(n+1)-A184159(A099594(n))`
-/

namespace A197896.P18150537591305861929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (n + 1) - A184159 (A099594 n).toNat

end

end A197896.P18150537591305861929

/-! ## A197896.P6995470277327059939

`A198013(n+1)-A318950(A008459(n))`
-/

namespace A197896.P6995470277327059939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (n + 1) - A318950 (A008459 n).toNat

end

end A197896.P6995470277327059939

/-!
# A197897: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,0,3,0,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A197897, there is no canonical definition to state claims against.
-/

/-! ## A197897.P16065114089897990820

`∑{d}[A100449(n), A320270(#)]`
-/

namespace A197897.P16065114089897990820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320270 d

end

end A197897.P16065114089897990820

/-!
# A197898: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,3,2,0,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197898, there is no canonical definition to state claims against.
-/

/-! ## A197898.P16780264937281616122

`A227821(n+2)-A210717(A260594(2*(n+2)))`
-/

namespace A197898.P16780264937281616122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227821 (n + 2) - A210717 (A260594 (2 * (n + 2))).toNat

end

end A197898.P16780264937281616122

/-!
# A197899: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,5,0,0,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A197899, there is no canonical definition to state claims against.
-/

/-! ## A197899.P11262954046146405065

`A337635(A154435(3*n+1)+A003724(2*(n+1)))`
-/

namespace A197899.P11262954046146405065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A154435 (3 * n + 1) + A003724 (2 * (n + 1))).toNat

end

end A197899.P11262954046146405065

