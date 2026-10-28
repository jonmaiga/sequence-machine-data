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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A244700: Number of length n+4 0..8 arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..8 introduced in 0..8 order.

The programs for A244700, there is no canonical definition to state claims against.
-/

/-! ## A244700.P14461876696729697268

`A244702(A055999(n+5)-1)`
-/

namespace A244700.P14461876696729697268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A055999 (n + 5) - 1).toNat

end

end A244700.P14461876696729697268

/-! ## A244700.P10819651671265426338

`A244702(A000096(n+7)-6)`
-/

namespace A244700.P10819651671265426338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000096 (n + 7) - 6).toNat

end

end A244700.P10819651671265426338

/-! ## A244700.P5353988802882709334

`A244702(A000217(n+8)-7)`
-/

namespace A244700.P5353988802882709334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000217 (n + 8) - 7).toNat

end

end A244700.P5353988802882709334

/-! ## A244700.P14494550815127329666

`A244702(A000124(n+8)-8)`
-/

namespace A244700.P14494550815127329666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000124 (n + 8) - 8).toNat

end

end A244700.P14494550815127329666

/-! ## A244700.P11180983023750796192

`A244702(eq[15, A099375(n)]+1)`
-/

namespace A244700.P11180983023750796192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244700.P11180983023750796192

/-!
# A244701: Number of length n+4 0..9 arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..9 introduced in 0..9 order.

The programs for A244701, there is no canonical definition to state claims against.
-/

/-! ## A244701.P12341418336331476159

`A244702(A155212(n+5))`
-/

namespace A244701.P12341418336331476159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A155212 (n + 5)).toNat

end

end A244701.P12341418336331476159

/-! ## A244701.P4527535531459491305

`A244702(A055999(n+6)-2)`
-/

namespace A244701.P4527535531459491305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A055999 (n + 6) - 2).toNat

end

end A244701.P4527535531459491305

/-! ## A244701.P4252587164445360383

`A244702(A052905(n+6)-3)`
-/

namespace A244701.P4252587164445360383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A052905 (n + 6) - 3).toNat

end

end A244701.P4252587164445360383

/-! ## A244701.P15758140766664361772

`A244702(A000217(n+9)-8)`
-/

namespace A244701.P15758140766664361772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000217 (n + 9) - 8).toNat

end

end A244701.P15758140766664361772

/-! ## A244701.P9815759136272042996

`A244702(A000096(n+7)+n+2)`
-/

namespace A244701.P9815759136272042996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A244701.P9815759136272042996

/-!
# A244702: T(n,k)=Number of length n+4 0..k arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..k introduced in 0..k order.

The programs for A244702, there is no canonical definition to state claims against.
-/

/-! ## A244702.P4106151681172461895

`A244185(n+1)+A001222(A001947(n))`
-/

namespace A244702.P4106151681172461895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244185 (n + 1) + A001222 (A001947 n).toNat

end

end A244702.P4106151681172461895

/-!
# A244703: Number of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) 2.

The programs for A244703, there is no canonical definition to state claims against.
-/

/-! ## A244703.P13347092517214141730

`A244657(∑[n+2]+4)`
-/

namespace A244703.P13347092517214141730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244703.P13347092517214141730

/-! ## A244703.P1653318159148334335

`gcd(n, n+1)*A244657(A167614(n+1))`
-/

namespace A244703.P1653318159148334335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A244657 (A167614 (n + 1)).toNat

end

end A244703.P1653318159148334335

/-! ## A244703.P8875830692533971398

`A244657(A055998(n)+6)%A245123(n)`
-/

namespace A244703.P8875830692533971398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244657 (A055998 n + 6).toNat) (A245123 (n + 11))

end

end A244703.P8875830692533971398

/-! ## A244703.P6927743182245960956

`or(A000007(n), A244657(A055998(n)+6))`
-/

namespace A244703.P6927743182245960956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A244657 (A055998 n + 6).toNat)

end

end A244703.P6927743182245960956

/-! ## A244703.P6504094274164452407

`A244657(A167499(n)+n)%A000051(n)`
-/

namespace A244703.P6504094274164452407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244657 (A167499 n + (n : ℤ)).toNat) (A000051 n)

end

end A244703.P6504094274164452407

/-! ## A244703.P14435809436515624955

`A244657(A055998(n)+6)+A000007(n+1)`
-/

namespace A244703.P14435809436515624955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A055998 n + 6).toNat + A000007 (n + 1)

end

end A244703.P14435809436515624955

/-! ## A244703.P2995417682243869349

`A244657(A034856(n+1)+5)%A000747(n)`
-/

namespace A244703.P2995417682243869349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244657 (A034856 (n + 1) + 5).toNat) (A000747 n)

end

end A244703.P2995417682243869349

/-! ## A244703.P9660928921171540934

`A001222(A002496(n+1))*A244657(A055998(n)+6)`
-/

namespace A244703.P9660928921171540934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002496 (n + 1)).toNat * A244657 (A055998 n + 6).toNat

end

end A244703.P9660928921171540934

/-!
# A244704: Number of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) 3.

The programs for A244704, there is no canonical definition to state claims against.
-/

/-! ## A244704.P10370674437615573686

`A244657(∑[n+3]+7)`
-/

namespace A244704.P10370674437615573686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A244704.P10370674437615573686

/-! ## A244704.P15330365280182032380

`A244657(A167614(n+2)+1)%(8*a(n-1))` with `a(0)=1`
-/

namespace A244704.P15330365280182032380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A244657 (A167614 (n + 2) + 1).toNat) (8 * a (n - 1))

end

end A244704.P15330365280182032380

/-! ## A244704.P1533016500915005190

`or(A000007(n), A244657(A052905(n)+9))`
-/

namespace A244704.P1533016500915005190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A244657 (A052905 n + 9).toNat)

end

end A244704.P1533016500915005190

/-! ## A244704.P5447581069984281274

`A244657(A167614(n+2)+1)%A184189(n+1)`
-/

namespace A244704.P5447581069984281274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244657 (A167614 (n + 2) + 1).toNat) (A184189 (n + 1))

end

end A244704.P5447581069984281274

/-! ## A244704.P12749970393447756183

`(A005408(n)-2*n)*A244657(A052905(n)+9)`
-/

namespace A244704.P12749970393447756183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * A244657 (A052905 n + 9).toNat

end

end A244704.P12749970393447756183

/-! ## A244704.P5657984873239672739

`A244657(A167614(n+2)+1)^A014973(2*(n+1))`
-/

namespace A244704.P5657984873239672739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244657 (A167614 (n + 2) + 1).toNat : ℚ) ^ (A014973 (2 * (n + 1)) : ℤ)

end

end A244704.P5657984873239672739

/-! ## A244704.P13275793148056340360

`A244657(A167614(n+2)+1)+A008683(A081447(n+1))`
-/

namespace A244704.P13275793148056340360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A167614 (n + 2) + 1).toNat + A008683 (A081447 (n + 1)).toNat

end

end A244704.P13275793148056340360

/-! ## A244704.P11504774455926399063

`A244657(A167614(n+2)+1)+A008683(A081449(n+1))`
-/

namespace A244704.P11504774455926399063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A167614 (n + 2) + 1).toNat + A008683 (A081449 (n + 1)).toNat

end

end A244704.P11504774455926399063

/-! ## A244704.P4819794809998385740

`A000188(A065091(n+1))*A244657(A167614(n+2)+1)`
-/

namespace A244704.P4819794809998385740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A065091 (n + 1)).toNat * A244657 (A167614 (n + 2) + 1).toNat

end

end A244704.P4819794809998385740

/-! ## A244704.P10166136470287396279

`A000188(A112037(n+2))*A244657(A167614(n+2)+1)`
-/

namespace A244704.P10166136470287396279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A112037 (n + 2)).toNat * A244657 (A167614 (n + 2) + 1).toNat

end

end A244704.P10166136470287396279

/-!
# A244705: Number of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) 4.

The programs for A244705, there is no canonical definition to state claims against.
-/

/-! ## A244705.P2253948283823459440

`A244657(A167499(n+3))`
-/

namespace A244705.P2253948283823459440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A167499 (n + 3)).toNat

end

end A244705.P2253948283823459440

/-! ## A244705.P10298133586109601803

`A244657(A056000(n)+15)`
-/

namespace A244705.P10298133586109601803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A056000 n + 15).toNat

end

end A244705.P10298133586109601803

/-! ## A244705.P14577247195966565434

`A244657(A000217(n+4)+5)`
-/

namespace A244705.P14577247195966565434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000217 (n + 4) + 5).toNat

end

end A244705.P14577247195966565434

/-! ## A244705.P10007846274855580865

`A244657(Δ[A008778(n+1)]+7)`
-/

namespace A244705.P10007846274855580865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (f1 (n + 1) - f1 n + 7).toNat

end

end A244705.P10007846274855580865

/-! ## A244705.P2327195913451952643

`A244657(A000124(n+5)-(n+1))`
-/

namespace A244705.P2327195913451952643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A244705.P2327195913451952643

/-! ## A244705.P2330464973041423557

`A244657(A005408(n+5)+A000124(n+2))`
-/

namespace A244705.P2330464973041423557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A005408 (n + 5) + A000124 (n + 2)).toNat

end

end A244705.P2330464973041423557

/-!
# A244706: Number of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) 5.

The programs for A244706, there is no canonical definition to state claims against.
-/

/-! ## A244706.P10071571327790776769

`A244657(A167499(n+4)+1)`
-/

namespace A244706.P10071571327790776769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A167499 (n + 4) + 1).toNat

end

end A244706.P10071571327790776769

/-! ## A244706.P15671785813462280673

`A244657(A000124(n+5)+5)`
-/

namespace A244706.P15671785813462280673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000124 (n + 5) + 5).toNat

end

end A244706.P15671785813462280673

/-! ## A244706.P480571596906674719

`A244657(A000096(n+4)+7)`
-/

namespace A244706.P480571596906674719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000096 (n + 4) + 7).toNat

end

end A244706.P480571596906674719

/-! ## A244706.P5386658871945756745

`A244657(A000217(n+5)+6)`
-/

namespace A244706.P5386658871945756745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000217 (n + 5) + 6).toNat

end

end A244706.P5386658871945756745

/-! ## A244706.P13981436459350082312

`A244657(A002620(n+2)+A002620(n+9))`
-/

namespace A244706.P13981436459350082312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A244706.P13981436459350082312

/-!
# A244707: Number of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) 6.

The programs for A244707, there is no canonical definition to state claims against.
-/

/-! ## A244707.P3037285056433101543

`A244657(A166136(n+5)+1)`
-/

namespace A244707.P3037285056433101543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A166136 (n + 5) + 1).toNat

end

end A244707.P3037285056433101543

/-! ## A244707.P4696930740212116249

`A244657(A167499(n+5)+2)`
-/

namespace A244707.P4696930740212116249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A167499 (n + 5) + 2).toNat

end

end A244707.P4696930740212116249

/-! ## A244707.P11197553055466276966

`A244657(A167614(n+5)+4)`
-/

namespace A244707.P11197553055466276966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A167614 (n + 5) + 4).toNat

end

end A244707.P11197553055466276966

/-! ## A244707.P6878894252061360597

`A244657(A000217(n+6)+7)`
-/

namespace A244707.P6878894252061360597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000217 (n + 6) + 7).toNat

end

end A244707.P6878894252061360597

/-! ## A244707.P15645266819713946848

`A244657(A055999(n+6)-(3*n+11))`
-/

namespace A244707.P15645266819713946848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A055999 (n + 6) - (3 * n + 11 : ℤ)).toNat

end

end A244707.P15645266819713946848

/-! ## A244707.P15233806996537622111

`A244657(A005408(n+8)+A000124(n+4))`
-/

namespace A244707.P15233806996537622111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A244707.P15233806996537622111

/-!
# A244708: Number of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) 7.

The programs for A244708, there is no canonical definition to state claims against.
-/

/-! ## A244708.P4701283142245808869

`A244657(A167499(n+6)+3)`
-/

namespace A244708.P4701283142245808869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A167499 (n + 6) + 3).toNat

end

end A244708.P4701283142245808869

/-! ## A244708.P8639164917400392932

`A244657(A000096(n+6)+9)`
-/

namespace A244708.P8639164917400392932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000096 (n + 6) + 9).toNat

end

end A244708.P8639164917400392932

/-! ## A244708.P1302613290350569924

`A244657(A000217(n+7)+8)`
-/

namespace A244708.P1302613290350569924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000217 (n + 7) + 8).toNat

end

end A244708.P1302613290350569924

/-! ## A244708.P3708039803185352437

`A244657(A000124(n+9)-2*(n+5))`
-/

namespace A244708.P3708039803185352437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000124 (n + 9) - (2 * (n + 5) : ℤ)).toNat

end

end A244708.P3708039803185352437

/-! ## A244708.P5122677903564526127

`A244657(A026741(A161680(n+4)+A161680(n+12)))`
-/

namespace A244708.P5122677903564526127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A026741 (A161680 (n + 4) + A161680 (n + 12)).toNat).toNat

end

end A244708.P5122677903564526127

/-!
# A244709: Number of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) 8.

The programs for A244709, there is no canonical definition to state claims against.
-/

/-! ## A244709.P10624169216357141872

`A244657(A167499(n+7)+4)`
-/

namespace A244709.P10624169216357141872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A167499 (n + 7) + 4).toNat

end

end A244709.P10624169216357141872

/-! ## A244709.P14804297592082513386

`A244657(A000124(n+8)+8)`
-/

namespace A244709.P14804297592082513386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000124 (n + 8) + 8).toNat

end

end A244709.P14804297592082513386

/-! ## A244709.P17005239037661915651

`A244657(A000217(n+8)+9)`
-/

namespace A244709.P17005239037661915651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000217 (n + 8) + 9).toNat

end

end A244709.P17005239037661915651

/-! ## A244709.P6133463844358133035

`A244657(A161680(n+9)+9)`
-/

namespace A244709.P6133463844358133035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A161680 (n + 9) + 9).toNat

end

end A244709.P6133463844358133035

/-! ## A244709.P16114992469037517575

`A244657(A057427(n)+A000096(n+7)+9)`
-/

namespace A244709.P16114992469037517575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A057427 n + (A000096 (n + 7) + 9)).toNat

end

end A244709.P16114992469037517575

/-!
# A244710: Number of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) 9.

The programs for A244710, there is no canonical definition to state claims against.
-/

/-! ## A244710.P617717111907514382

`A244657(A133263(n+9)+8)`
-/

namespace A244710.P617717111907514382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A133263 (n + 9) + 8).toNat

end

end A244710.P617717111907514382

/-! ## A244710.P12747470008377552327

`A244657(A000217(n+9)+10)`
-/

namespace A244710.P12747470008377552327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000217 (n + 9) + 10).toNat

end

end A244710.P12747470008377552327

/-! ## A244710.P12508060918532969057

`A244657(eq[11, A131818(n+1)])`
-/

namespace A244710.P12508060918532969057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244710.P12508060918532969057

/-! ## A244710.P14336958180268492740

`A244657(A051942(n+9)+55)`
-/

namespace A244710.P14336958180268492740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A051942 (n + 9) + 55).toNat

end

end A244710.P14336958180268492740

/-! ## A244710.P1542108779623716974

`A244657(A002620(n+5)+A002620(n+14))`
-/

namespace A244710.P1542108779623716974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A002620 (n + 5) + A002620 (n + 14)).toNat

end

end A244710.P1542108779623716974

/-!
# A244711: Number of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) 10.

The programs for A244711, there is no canonical definition to state claims against.
-/

/-! ## A244711.P10559031309375228777

`A244657(A000217(n+10)+11)`
-/

namespace A244711.P10559031309375228777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000217 (n + 10) + 11).toNat

end

end A244711.P10559031309375228777

/-! ## A244711.P15990426785129759979

`A244657(eq[12, A131818(n+1)])`
-/

namespace A244711.P15990426785129759979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244711.P15990426785129759979

/-! ## A244711.P8331234686067263279

`A244657(A133263(n+11)-(n+2))`
-/

namespace A244711.P8331234686067263279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A133263 (n + 11) - (n + 2 : ℤ)).toNat

end

end A244711.P8331234686067263279

/-! ## A244711.P1172147696319594815

`A244657(A000124(n+12)-A005408(n+6))`
-/

namespace A244711.P1172147696319594815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A000124 (n + 12) - A005408 (n + 6)).toNat

end

end A244711.P1172147696319594815

/-! ## A244711.P520278908464780031

`A244657(A005408(n+14)+A000124(n+8))`
-/

namespace A244711.P520278908464780031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A005408 (n + 14) + A000124 (n + 8)).toNat

end

end A244711.P520278908464780031

/-!
# A244712: Number of 2n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) n.

The programs for A244712, there is no canonical definition to state claims against.
-/

/-! ## A244712.P10422674181334750269

`A244657(2*(n²+1+n))`
-/

namespace A244712.P10422674181334750269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (2 * (n ^ 2 + 1 + n))

end

end A244712.P10422674181334750269

/-! ## A244712.P6102897823655989784

`A244657(A058331(n))-A000007(n)`
-/

namespace A244712.P6102897823655989784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A058331 n).toNat - A000007 n

end

end A244712.P6102897823655989784

/-! ## A244712.P671403192429541487

`A244657(A058331(n))%A054662(n+1)`
-/

namespace A244712.P671403192429541487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244657 (A058331 n).toNat) (A054662 (n + 1))

end

end A244712.P671403192429541487

/-! ## A244712.P9043916620867997332

`char[A249745(n+1)]*A244657(A058331(n))`
-/

namespace A244712.P9043916620867997332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A244657 (A058331 n).toNat

end

end A244712.P9043916620867997332

/-! ## A244712.P5451686802460760480

`A244657(A058331(n))-A325280(∑[n])`
-/

namespace A244712.P5451686802460760480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (A058331 n).toNat - A325280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244712.P5451686802460760480

/-!
# A244713: Positive numbers primitively represented by the binary quadratic form (1, 1, -2).

The programs for A244713, the canonical program `A244713.P5863910682907189677` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244713 has offset 1).

The definition of A244713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244713.P15676393991613007709

`ogf((1+3x+3x^2+3x^3+3x^4+3x^5+2x^6+x^7+3x^8+3x^9+2x^10)/(1-x-x^11+x^12))`
-/

namespace A244713.P15676393991613007709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 3, 3, 3, 2, 1, 3, 3, 2] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A244713.P15676393991613007709

namespace A244713

/-- `ogf((1+3x+3x^2+3x^3+3x^4+3x^5+2x^6+x^7+3x^8+3x^9+2x^10)/(1-x-x^11+x^12))` -/
def P15676393991613007709.Spec : Prop :=
  ∀ n, P15676393991613007709.a n = A244713 (n + 1)

end A244713

/-! ## A244713.P3135267856663616854

`∪[∑[A040073(n+2)], A016777(n)]`
-/

namespace A244713.P3135267856663616854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A244713.P3135267856663616854

namespace A244713

/-- `∪[∑[A040073(n+2)], A016777(n)]` -/
def P3135267856663616854.Spec : Prop :=
  ∀ n, (P3135267856663616854.a n : ℤ) = A244713 (n + 1)

end A244713

/-! ## A244713.P5863910682907189677

`∪[A016777(n), A056991(A049636(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244713

/-- `∪[A016777(n), A056991(A049636(n))]` -/
def P5863910682907189677.Spec : Prop :=
  ∀ n, (P5863910682907189677.a n : ℤ) = A244713 (n + 1)

theorem P5863910682907189677.correct : P5863910682907189677.Spec := by
  intro n
  simp only [A244713, Nat.add_sub_cancel]

end A244713

/-! ## A244713.P9334651324925480880

`A056991(lt[xor(3, n), A117900(2*(n+1))])`
-/

namespace A244713.P9334651324925480880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117900 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A244713.P9334651324925480880

namespace A244713

/-- `A056991(lt[xor(3, n), A117900(2*(n+1))])` -/
def P9334651324925480880.Spec : Prop :=
  ∀ n, P9334651324925480880.a n = A244713 (n + 1)

end A244713

/-! ## A244713.P3617813178147229090

`eq[A047789(A047789(n))², A047789(n+4)]`
-/

namespace A244713.P3617813178147229090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047789 (A047789 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047789 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244713.P3617813178147229090

namespace A244713

/-- `eq[A047789(A047789(n))², A047789(n+4)]` -/
def P3617813178147229090.Spec : Prop :=
  ∀ n, (P3617813178147229090.a n : ℤ) = A244713 (n + 1)

end A244713

/-!
# A244714: Number of compositions of n with exactly 2 transitions between different parts.

The programs for A244714, there is no canonical definition to state claims against.
-/

/-! ## A244714.P12205449620044012320

`A238130(A133263(n+4))`
-/

namespace A244714.P12205449620044012320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A133263 (n + 4)).toNat

end

end A244714.P12205449620044012320

/-! ## A244714.P9412735894443116558

`A238130(A155212(n)+10)`
-/

namespace A244714.P9412735894443116558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A155212 n + 10).toNat

end

end A244714.P9412735894443116558

/-! ## A244714.P12949077688406205442

`A238130(A000124(n+4)+1)`
-/

namespace A244714.P12949077688406205442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000124 (n + 4) + 1).toNat

end

end A244714.P12949077688406205442

/-! ## A244714.P13591608515784432565

`A238130(A167614(n+3)-1)`
-/

namespace A244714.P13591608515784432565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (n + 3) - 1).toNat

end

end A244714.P13591608515784432565

/-! ## A244714.P2191948407726614037

`A238130(A000096(n+3)+3)`
-/

namespace A244714.P2191948407726614037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000096 (n + 3) + 3).toNat

end

end A244714.P2191948407726614037

/-! ## A244714.P4153719496866635916

`A238130(A052905(n+1)+7)`
-/

namespace A244714.P4153719496866635916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A052905 (n + 1) + 7).toNat

end

end A244714.P4153719496866635916

/-! ## A244714.P14783855517401212399

`A238130(A055999(n+1)+8)`
-/

namespace A244714.P14783855517401212399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A055999 (n + 1) + 8).toNat

end

end A244714.P14783855517401212399

/-!
# A244715: Number of compositions of n with exactly 3 transitions between different parts.

The programs for A244715, there is no canonical definition to state claims against.
-/

/-! ## A244715.P8974178203057781203

`A238130(A167614(n+5))`
-/

namespace A244715.P8974178203057781203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (n + 5)).toNat

end

end A244715.P8974178203057781203

/-! ## A244715.P3028743027811102338

`A238130(A152950(n+7))`
-/

namespace A244715.P3028743027811102338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A152950 (n + 7)).toNat

end

end A244715.P3028743027811102338

/-! ## A244715.P853055008079290280

`record[A238130(A000124(n)+2)]`
-/

namespace A244715.P853055008079290280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000124 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244715.P853055008079290280

/-! ## A244715.P8005680839235997252

`record[A238130(A167499(n)+n)]`
-/

namespace A244715.P8005680839235997252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167499 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244715.P8005680839235997252

/-! ## A244715.P6211115213658274878

`record[A238130(A133263(n+1)-n)]`
-/

namespace A244715.P6211115213658274878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A133263 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244715.P6211115213658274878

/-! ## A244715.P7962185399453271656

`record[A238130(A167614(A008620(n)))]`
-/

namespace A244715.P7962185399453271656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244715.P7962185399453271656

/-! ## A244715.P4467944812465194928

`record[A238130(A167614(A028310(n)))]`
-/

namespace A244715.P4467944812465194928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244715.P4467944812465194928

/-! ## A244715.P15926261100255107771

`record[A238130(A167614(A028920(n)))]`
-/

namespace A244715.P15926261100255107771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244715.P15926261100255107771

/-! ## A244715.P1124128288824807789

`record[A238130(A167614(A052938(n)))]`
-/

namespace A244715.P1124128288824807789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244715.P1124128288824807789

/-! ## A244715.P8901553676007435471

`record[A238130(A167614(A065033(n)))]`
-/

namespace A244715.P8901553676007435471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244715.P8901553676007435471

/-! ## A244715.P1699129012140117099

`record[A238130(A167614(A248180(n)))]`
-/

namespace A244715.P1699129012140117099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (A248180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244715.P1699129012140117099

/-!
# A244716: Number of compositions of n with exactly 4 transitions between different parts.

The programs for A244716, there is no canonical definition to state claims against.
-/

/-! ## A244716.P9387289269040717771

`A238130(A167614(n+6)+1)`
-/

namespace A244716.P9387289269040717771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (n + 6) + 1).toNat

end

end A244716.P9387289269040717771

/-! ## A244716.P13993954550230837012

`A238130(A000217(n+7)+4)`
-/

namespace A244716.P13993954550230837012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000217 (n + 7) + 4).toNat

end

end A244716.P13993954550230837012

/-! ## A244716.P4952552341909658555

`A238130(A046691(n+5)+8)`
-/

namespace A244716.P4952552341909658555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A046691 (n + 5) + 8).toNat

end

end A244716.P4952552341909658555

/-! ## A244716.P13521059750907029067

`A238130(A000124(n+8)-(n+5))`
-/

namespace A244716.P13521059750907029067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000124 (n + 8) - (n + 5 : ℤ)).toNat

end

end A244716.P13521059750907029067

/-! ## A244716.P15145200670893974712

`A238130(A055999(n)+A008574(n+8))`
-/

namespace A244716.P15145200670893974712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A055999 n + A008574 (n + 8)).toNat

end

end A244716.P15145200670893974712

/-!
# A244717: Number of compositions of n with exactly 5 transitions between different parts.

The programs for A244717, there is no canonical definition to state claims against.
-/

/-! ## A244717.P11804148267619274933

`record[A238130(A155212(n)+13)]`
-/

namespace A244717.P11804148267619274933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A155212 n + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244717.P11804148267619274933

/-! ## A244717.P8963492978979615550

`A238130(A167614(n+8)+2)`
-/

namespace A244717.P8963492978979615550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (n + 8) + 2).toNat

end

end A244717.P8963492978979615550

/-! ## A244717.P13201284667234133832

`A238130(A000124(n+9)+4)`
-/

namespace A244717.P13201284667234133832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000124 (n + 9) + 4).toNat

end

end A244717.P13201284667234133832

/-! ## A244717.P15004448822755081240

`A238130(A000217(n+9)+5)`
-/

namespace A244717.P15004448822755081240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000217 (n + 9) + 5).toNat

end

end A244717.P15004448822755081240

/-! ## A244717.P12741917295491284852

`A238130(A052905(n+6)+10)`
-/

namespace A244717.P12741917295491284852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A052905 (n + 6) + 10).toNat

end

end A244717.P12741917295491284852

/-!
# A244718: Number of compositions of n with exactly 6 transitions between different parts.

The programs for A244718, there is no canonical definition to state claims against.
-/

/-! ## A244718.P9244946257253060365

`A238130(A167614(n+9)+3)`
-/

namespace A244718.P9244946257253060365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167614 (n + 9) + 3).toNat

end

end A244718.P9244946257253060365

/-! ## A244718.P13518106268775233694

`A238130(A000096(n+9)+7)`
-/

namespace A244718.P13518106268775233694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000096 (n + 9) + 7).toNat

end

end A244718.P13518106268775233694

/-! ## A244718.P11151266236425831282

`A238130(A000217(n+10)+6)`
-/

namespace A244718.P11151266236425831282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000217 (n + 10) + 6).toNat

end

end A244718.P11151266236425831282

/-! ## A244718.P16569945170405591244

`A238130(A052905(n+7)+11)`
-/

namespace A244718.P16569945170405591244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A052905 (n + 7) + 11).toNat

end

end A244718.P16569945170405591244

/-! ## A244718.P1409409964551921676

`A238130(A134227(n+9)-(n-1))`
-/

namespace A244718.P1409409964551921676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A134227 (n + 9) - ((n : ℤ) - 1)).toNat

end

end A244718.P1409409964551921676

/-!
# A244719: Number of compositions of n with exactly 7 transitions between different parts.

The programs for A244719, there is no canonical definition to state claims against.
-/

/-! ## A244719.P11970385683784775689

`A238130(A000217(n+12)+7)`
-/

namespace A244719.P11970385683784775689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000217 (n + 12) + 7).toNat

end

end A244719.P11970385683784775689

/-! ## A244719.P6334856774421239370

`A238130(A055999(n+10)-n)`
-/

namespace A244719.P6334856774421239370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A055999 (n + 10) - (n : ℤ)).toNat

end

end A244719.P6334856774421239370

/-! ## A244719.P2909144512295491697

`record[A238130(A167499(n+5)+2)]`
-/

namespace A244719.P2909144512295491697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A167499 (n + 5) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244719.P2909144512295491697

/-! ## A244719.P10089537539447107901

`record[A238130(A133263(n+6)+5)]`
-/

namespace A244719.P10089537539447107901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A133263 (n + 6) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244719.P10089537539447107901

/-! ## A244719.P11571354485829679018

`record[A238130(A000096(n+5)+8)]`
-/

namespace A244719.P11571354485829679018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A000096 (n + 5) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244719.P11571354485829679018

/-! ## A244719.P2447796943415831210

`record[A238130(A034856(n+5)+9)]`
-/

namespace A244719.P2447796943415831210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A034856 (n + 5) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244719.P2447796943415831210

/-!
# A244720: Number of compositions of n with exactly 8 transitions between different parts.

The programs for A244720, there is no canonical definition to state claims against.
-/

/-! ## A244720.P9777994646885156734

`A238130(A161680(n+14)+8)`
-/

namespace A244720.P9777994646885156734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A161680 (n + 14) + 8).toNat

end

end A244720.P9777994646885156734

/-! ## A244720.P2873692323405512809

`A238130(A055999(n+11)-n)`
-/

namespace A244720.P2873692323405512809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A055999 (n + 11) - (n : ℤ)).toNat

end

end A244720.P2873692323405512809

/-!
# A244721: Number of compositions of n with exactly 9 transitions between different parts.

The programs for A244721, there is no canonical definition to state claims against.
-/

/-! ## A244721.P7475278798125172022

`A238130(A055999(n+13)-(n+1))`
-/

namespace A244721.P7475278798125172022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A055999 (n + 13) - (n + 1 : ℤ)).toNat

end

end A244721.P7475278798125172022

/-!
# A244722: Number of compositions of n with exactly 10 transitions between different parts.

The programs for A244722, there is no canonical definition to state claims against.
-/

/-! ## A244722.P6912873182259619342

`A238130(A055999(n+14)-(n+1))`
-/

namespace A244722.P6912873182259619342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A055999 (n + 14) - (n + 1 : ℤ)).toNat

end

end A244722.P6912873182259619342

/-!
# A244723: Nonprimes n such that, mu(n) = mu(phi(n)).

The programs for A244723, the canonical program `A244723.P2769561214562301981` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244723 has offset 1).

The definition of A244723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244723.P17928519046230207105

`∪[A049199(n+1), A305729(n+1)]`
-/

namespace A244723.P17928519046230207105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244723.P17928519046230207105

namespace A244723

/-- `∪[A049199(n+1), A305729(n+1)]` -/
def P17928519046230207105.Spec : Prop :=
  ∀ n, (P17928519046230207105.a n : ℤ) = A244723 (n + 1)

end A244723

/-! ## A244723.P7155212123215961753

`∪[A049199(n+1), A306146(n+1)]`
-/

namespace A244723.P7155212123215961753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244723.P7155212123215961753

namespace A244723

/-- `∪[A049199(n+1), A306146(n+1)]` -/
def P7155212123215961753.Spec : Prop :=
  ∀ n, (P7155212123215961753.a n : ℤ) = A244723 (n + 1)

end A244723

/-! ## A244723.P2769561214562301981

`filter[A255199(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A244723

/-- `filter[A255199(n+1), A005171(#)]` -/
def P2769561214562301981.Spec : Prop :=
  ∀ n, P2769561214562301981.a n = A244723 (n + 1)

theorem P2769561214562301981.correct : P2769561214562301981.Spec := by
  intro n
  simp only [A244723, Nat.add_sub_cancel]

end A244723

/-! ## A244723.P17012064654333988454

`∩[A018252(n+1), A255199(n+1)]`
-/

namespace A244723.P17012064654333988454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244723.P17012064654333988454

namespace A244723

/-- `∩[A018252(n+1), A255199(n+1)]` -/
def P17012064654333988454.Spec : Prop :=
  ∀ n, (P17012064654333988454.a n : ℤ) = A244723 (n + 1)

end A244723

/-! ## A244723.P8294288275210738595

`∩[A141468(n+1), A255199(n+1)]`
-/

namespace A244723.P8294288275210738595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244723.P8294288275210738595

namespace A244723

/-- `∩[A141468(n+1), A255199(n+1)]` -/
def P8294288275210738595.Spec : Prop :=
  ∀ n, (P8294288275210738595.a n : ℤ) = A244723 (n + 1)

end A244723

/-! ## A244723.P8800072477821512237

`∩[A174891(n+1), A255199(n+1)]`
-/

namespace A244723.P8800072477821512237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244723.P8800072477821512237

namespace A244723

/-- `∩[A174891(n+1), A255199(n+1)]` -/
def P8800072477821512237.Spec : Prop :=
  ∀ n, (P8800072477821512237.a n : ℤ) = A244723 (n + 1)

end A244723

/-! ## A244723.P11138217713515778394

`∩[A255199(n+1), A257586(n+1)]`
-/

namespace A244723.P11138217713515778394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244723.P11138217713515778394

namespace A244723

/-- `∩[A255199(n+1), A257586(n+1)]` -/
def P11138217713515778394.Spec : Prop :=
  ∀ n, (P11138217713515778394.a n : ℤ) = A244723 (n + 1)

end A244723

/-! ## A244723.P18012364309100087250

`∩[A056653(n+1), A255199(n+1)]`
-/

namespace A244723.P18012364309100087250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244723.P18012364309100087250

namespace A244723

/-- `∩[A056653(n+1), A255199(n+1)]` -/
def P18012364309100087250.Spec : Prop :=
  ∀ n, (P18012364309100087250.a n : ℤ) = A244723 (n + 1)

end A244723

/-! ## A244723.P13185105702411730428

`∩[A065090(n+1), A255199(n+1)]`
-/

namespace A244723.P13185105702411730428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244723.P13185105702411730428

namespace A244723

/-- `∩[A065090(n+1), A255199(n+1)]` -/
def P13185105702411730428.Spec : Prop :=
  ∀ n, (P13185105702411730428.a n : ℤ) = A244723 (n + 1)

end A244723

/-! ## A244723.P3075806319338023232

`record[A191558(A255199(n+1))]`
-/

namespace A244723.P3075806319338023232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A255199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244723.P3075806319338023232

namespace A244723

/-- `record[A191558(A255199(n+1))]` -/
def P3075806319338023232.Spec : Prop :=
  ∀ n, P3075806319338023232.a n = A244723 (n + 1)

end A244723

/-! ## A244723.P4109716432804590231

`lt[A055672(n), char[A255199(n+1)]]`
-/

namespace A244723.P4109716432804590231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A244723.P4109716432804590231

namespace A244723

/-- `lt[A055672(n), char[A255199(n+1)]]` -/
def P4109716432804590231.Spec : Prop :=
  ∀ n, (P4109716432804590231.a n : ℤ) = A244723 (n + 1)

end A244723

/-!
# A244725: a(n) = 5*n^3.

The programs for A244725, the canonical program `A244725.P9953252963365247945` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244725 has offset 0).

The definition of A244725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n^3` (program `A244725.P9953252963365247945`, by `A244725.P9953252963365247945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244725.P9953252963365247945

`5*n^3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244725

/-- `5*n^3` -/
def P9953252963365247945.Spec : Prop :=
  ∀ n, (P9953252963365247945.a n : ℤ) = A244725 n

theorem P9953252963365247945.correct : P9953252963365247945.Spec := by
  intro n
  simp only [A244725]

end A244725

/-!
# A244726: a(n) = 6*n^3.

The programs for A244726, the canonical program `A244726.P8868489498822434277` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244726 has offset 0).

The definition of A244726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n^3` (program `A244726.P8868489498822434277`, by `A244726.P8868489498822434277.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244726.P8868489498822434277

`6*n^3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244726

/-- `6*n^3` -/
def P8868489498822434277.Spec : Prop :=
  ∀ n, (P8868489498822434277.a n : ℤ) = A244726 n

theorem P8868489498822434277.correct : P8868489498822434277.Spec := by
  intro n
  simp only [A244726]

end A244726

/-!
# A244727: a(n) = 7*n^3.

The programs for A244727, the canonical program `A244727.P13582992381757210735` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244727 has offset 0).

The definition of A244727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n^3` (program `A244727.P13582992381757210735`, by `A244727.P13582992381757210735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244727.P13582992381757210735

`7*n^3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244727

/-- `7*n^3` -/
def P13582992381757210735.Spec : Prop :=
  ∀ n, (P13582992381757210735.a n : ℤ) = A244727 n

theorem P13582992381757210735.correct : P13582992381757210735.Spec := by
  intro n
  simp only [A244727]

end A244727

/-!
# A244728: a(n) = 9*n^3.

The programs for A244728, the canonical program `A244728.P12967673147782739013` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244728 has offset 0).

The definition of A244728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n^3` (program `A244728.P12967673147782739013`, by `A244728.P12967673147782739013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244728.P12967673147782739013

`9*n^3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244728

/-- `9*n^3` -/
def P12967673147782739013.Spec : Prop :=
  ∀ n, (P12967673147782739013.a n : ℤ) = A244728 n

theorem P12967673147782739013.correct : P12967673147782739013.Spec := by
  intro n
  simp only [A244728]

end A244728

/-!
# A244729: a(n) = 10*n^3.

The programs for A244729, the canonical program `A244729.P14054250596976457784` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244729 has offset 0).

The definition of A244729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n^3` (program `A244729.P14054250596976457784`, by `A244729.P14054250596976457784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244729.P14054250596976457784

`10*n^3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244729

/-- `10*n^3` -/
def P14054250596976457784.Spec : Prop :=
  ∀ n, (P14054250596976457784.a n : ℤ) = A244729 n

theorem P14054250596976457784.correct : P14054250596976457784.Spec := by
  intro n
  simp only [A244729]

end A244729

/-!
# A244730: a(n) = 2*n^4.

The programs for A244730, the canonical program `A244730.P3543314597448209460` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244730 has offset 0).

The definition of A244730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^4` (program `A244730.P3543314597448209460`, by `A244730.P3543314597448209460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244730.P3543314597448209460

`2*n^4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244730

/-- `2*n^4` -/
def P3543314597448209460.Spec : Prop :=
  ∀ n, (P3543314597448209460.a n : ℤ) = A244730 n

theorem P3543314597448209460.correct : P3543314597448209460.Spec := by
  intro n
  simp only [A244730]

end A244730

/-!
# A244731: Fixed points of the permutations A244724 and A244732.

The programs for A244731, there is no canonical definition to state claims against.
-/

/-! ## A244731.P9695328149374013358

`record[gcd(n+1, A244724(n+1))]`
-/

namespace A244731.P9695328149374013358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A244724 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244731.P9695328149374013358

/-! ## A244731.P5562138869612165371

`eq[n+1, A244732(n+1)]+1`
-/

namespace A244731.P5562138869612165371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244731.P5562138869612165371

/-! ## A244731.P9404073655961483810

`eq[n, A244724(A028310(n))]`
-/

namespace A244731.P9404073655961483810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244724 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244731.P9404073655961483810

/-! ## A244731.P3538691914257925028

`record[gcd(A053698(n), A244732(n+1))]`
-/

namespace A244731.P3538691914257925028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053698 n) (A244732 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244731.P3538691914257925028

/-! ## A244731.P14496041805155432234

`record[gcd(A244724(n+1), A326178(n))]`
-/

namespace A244731.P14496041805155432234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244724 (n + 1)) (A326178 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244731.P14496041805155432234

/-!
# A244732: Inverse permutation to A244724.

The programs for A244732, there is no canonical definition to state claims against.
-/

/-! ## A244732.P7840335488412817523

`A064744(A128365(n+1))+n`
-/

namespace A244732.P7840335488412817523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064744 (A128365 (n + 1)).toNat + (n : ℤ)

end

end A244732.P7840335488412817523

/-! ## A244732.P2397231060997314353

`A077168(n)+Δ[A253641(A077168(n))]`
-/

namespace A244732.P2397231060997314353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n + (f1 (n + 1) - f1 n)

end

end A244732.P2397231060997314353

/-! ## A244732.P4099791412408064983

`A088696(A081254(n+1))+Δ[A296134(n+1)]`
-/

namespace A244732.P4099791412408064983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088696 (A081254 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A244732.P4099791412408064983

/-!
# A244733: Semiprimes sp such that sp plus its digit sum is a perfect square.

The programs for A244733, there is no canonical definition to state claims against.
-/

/-! ## A244733.P928206611541850510

`∩[A066564(n+1), A344872(n+1)]`
-/

namespace A244733.P928206611541850510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244733.P928206611541850510

/-! ## A244733.P12340962385973794999

`∩[A001358(n+1), A066564(n+1)]`
-/

namespace A244733.P12340962385973794999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244733.P12340962385973794999

/-! ## A244733.P12916159706657960421

`filter[A066564(n+2), A064911(#)]`
-/

namespace A244733.P12916159706657960421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A244733.P12916159706657960421

/-! ## A244733.P14830683034516790167

`filter[A066564(n+2), A280710(#)]`
-/

namespace A244733.P14830683034516790167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A244733.P14830683034516790167

/-! ## A244733.P9939170603067633057

`∩[A006881(n+1), A066564(n+1)]`
-/

namespace A244733.P9939170603067633057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244733.P9939170603067633057

/-!
# A244734: Numerators of the triangle T(n,k) = (n*(n+1)/2 + k + 1)/(k+1) for n >= k >= 0.

The programs for A244734, the canonical program `A244734.P1874380478709244094` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244734 has offset 0).

The definition of A244734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244734.P1874380478709244094

`(n+1)/gcd(n+1, A057944(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244734

/-- `(n+1)/gcd(n+1, A057944(n))` -/
def P1874380478709244094.Spec : Prop :=
  ∀ n, P1874380478709244094.a n = (A244734 n : ℚ)

end A244734

/-! ## A244734.P9205164673682702647

`(n+1)/gcd(Δ[n²]-n, A002260(n+1))`
-/

namespace A244734.P9205164673682702647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A002260 (n + 1)) : ℚ)

end

end A244734.P9205164673682702647

namespace A244734

/-- `(n+1)/gcd(Δ[n²]-n, A002260(n+1))` -/
def P9205164673682702647.Spec : Prop :=
  ∀ n, P9205164673682702647.a n = (A244734 n : ℚ)

end A244734

/-! ## A244734.P4162394363655430437

`2*(n+1)/gcd(A158405(n+1)+1, 2*(n+1))`
-/

namespace A244734.P4162394363655430437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Int.gcd (A158405 (n + 1) + 1) (2 * (n + 1) : ℤ) : ℚ)

end

end A244734.P4162394363655430437

namespace A244734

/-- `2*(n+1)/gcd(A158405(n+1)+1, 2*(n+1))` -/
def P4162394363655430437.Spec : Prop :=
  ∀ n, P4162394363655430437.a n = (A244734 n : ℚ)

end A244734

/-! ## A244734.P9560886923490524634

`(n+1)/gcd(A002262(n)+1, A048671(n+1))`
-/

namespace A244734.P9560886923490524634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A002262 n + 1) (A048671 (n + 1)) : ℚ)

end

end A244734.P9560886923490524634

namespace A244734

/-- `(n+1)/gcd(A002262(n)+1, A048671(n+1))` -/
def P9560886923490524634.Spec : Prop :=
  ∀ n, P9560886923490524634.a n = (A244734 n : ℚ)

end A244734

/-! ## A244734.P12174022921132746487

`lcm(n+1, A000005(A059268(n)))/A002260(n+1)`
-/

namespace A244734.P12174022921132746487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000005 (A059268 n).toNat) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A244734.P12174022921132746487

namespace A244734

/-- `lcm(n+1, A000005(A059268(n)))/A002260(n+1)` -/
def P12174022921132746487.Spec : Prop :=
  ∀ n, P12174022921132746487.a n = (A244734 n : ℚ)

end A244734

/-! ## A244734.P3759777762924234756

`A054531(∑[n]+1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A244734.P3759777762924234756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ))).toNat

end

end A244734.P3759777762924234756

namespace A244734

/-- `A054531(∑[n]+1-C(∑[char[∑[n]]], 2)+n)` -/
def P3759777762924234756.Spec : Prop :=
  ∀ n, P3759777762924234756.a n = A244734 n

end A244734

/-! ## A244734.P13427058209422472474

`A054531(A002260(n+1)+∑[n])`
-/

namespace A244734.P13427058209422472474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A002260 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A244734.P13427058209422472474

namespace A244734

/-- `A054531(A002260(n+1)+∑[n])` -/
def P13427058209422472474.Spec : Prop :=
  ∀ n, P13427058209422472474.a n = A244734 n

end A244734

/-! ## A244734.P15711118181904438684

`A054531(∑[n]+A002262(n)+1)`
-/

namespace A244734.P15711118181904438684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A002262 n + 1)).toNat

end

end A244734.P15711118181904438684

namespace A244734

/-- `A054531(∑[n]+A002262(n)+1)` -/
def P15711118181904438684.Spec : Prop :=
  ∀ n, P15711118181904438684.a n = A244734 n

end A244734

/-! ## A244734.P9781138175756553837

`A054531(∑[n+1]-A057944(n))`
-/

namespace A244734.P9781138175756553837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057944 n).toNat

end

end A244734.P9781138175756553837

namespace A244734

/-- `A054531(∑[n+1]-A057944(n))` -/
def P9781138175756553837.Spec : Prop :=
  ∀ n, P9781138175756553837.a n = A244734 n

end A244734

/-! ## A244734.P18367948830178265301

`A277227(∑[n+1]-A002262(n))`
-/

namespace A244734.P18367948830178265301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002262 n).toNat

end

end A244734.P18367948830178265301

namespace A244734

/-- `A277227(∑[n+1]-A002262(n))` -/
def P18367948830178265301.Spec : Prop :=
  ∀ n, P18367948830178265301.a n = A244734 n

end A244734

/-!
# A244735: a(n) = (prime(n) mod 5) mod 2.

The programs for A244735, the canonical program `A244735.P11987392546740618289` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244735 has offset 1).

The definition of A244735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+1)%5)%2` (program `A244735.P11987392546740618289`, by `A244735.P11987392546740618289.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244735.P11987392546740618289

`(A000040(n+1)%5)%2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244735

/-- `(A000040(n+1)%5)%2` -/
def P11987392546740618289.Spec : Prop :=
  ∀ n, P11987392546740618289.a n = A244735 (n + 1)

theorem P11987392546740618289.correct : P11987392546740618289.Spec := by
  intro n
  simp only [A244735, Nat.add_sub_cancel]

end A244735

/-! ## A244735.P2604854835092176558

`A004679(n+1)%2`
-/

namespace A244735.P2604854835092176558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004679 (n + 1)) 2

end

end A244735.P2604854835092176558

namespace A244735

/-- `A004679(n+1)%2` -/
def P2604854835092176558.Spec : Prop :=
  ∀ n, P2604854835092176558.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P8665477361551316467

`A039703(n+1)%2`
-/

namespace A244735.P8665477361551316467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039703 (n + 1)) 2

end

end A244735.P8665477361551316467

namespace A244735

/-- `A039703(n+1)%2` -/
def P8665477361551316467.Spec : Prop :=
  ∀ n, P8665477361551316467.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P17819192544792808369

`A098996(n+1)²%5`
-/

namespace A244735.P17819192544792808369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098996 (n + 1) ^ 2) 5

end

end A244735.P17819192544792808369

namespace A244735

/-- `A098996(n+1)²%5` -/
def P17819192544792808369.Spec : Prop :=
  ∀ n, P17819192544792808369.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P13234273748733733954

`A262247(n+1)²%5`
-/

namespace A244735.P13234273748733733954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262247 (n + 1) ^ 2) 5

end

end A244735.P13234273748733733954

namespace A244735

/-- `A262247(n+1)²%5` -/
def P13234273748733733954.Spec : Prop :=
  ∀ n, P13234273748733733954.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P8766482523340086083

`and(1, Δ[A007504(n)]%5)`
-/

namespace A244735.P8766482523340086083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (f1 (n + 1) - f1 n) 5)

end

end A244735.P8766482523340086083

namespace A244735

/-- `and(1, Δ[A007504(n)]%5)` -/
def P8766482523340086083.Spec : Prop :=
  ∀ n, P8766482523340086083.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P15350173405916981867

`and(1, (A040976(n+1)+2)%5)`
-/

namespace A244735.P15350173405916981867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A040976 (n + 1) + 2) 5)

end

end A244735.P15350173405916981867

namespace A244735

/-- `and(1, (A040976(n+1)+2)%5)` -/
def P15350173405916981867.Spec : Prop :=
  ∀ n, P15350173405916981867.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P4835768501339457066

`A039983(A039713(n+1))`
-/

namespace A244735.P4835768501339457066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039983 (A039713 (n + 1)).toNat

end

end A244735.P4835768501339457066

namespace A244735

/-- `A039983(A039713(n+1))` -/
def P4835768501339457066.Spec : Prop :=
  ∀ n, P4835768501339457066.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P5126593869845334966

`A003849(A161625(n+1))`
-/

namespace A244735.P5126593869845334966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A161625 (n + 1)).toNat

end

end A244735.P5126593869845334966

namespace A244735

/-- `A003849(A161625(n+1))` -/
def P5126593869845334966.Spec : Prop :=
  ∀ n, P5126593869845334966.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P15509376293829597691

`A159684(A095959(n+1))`
-/

namespace A244735.P15509376293829597691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A095959 (n + 1)).toNat

end

end A244735.P15509376293829597691

namespace A244735

/-- `A159684(A095959(n+1))` -/
def P15509376293829597691.Spec : Prop :=
  ∀ n, P15509376293829597691.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P14035807347514152162

`A189572(A074972(n+1))`
-/

namespace A244735.P14035807347514152162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (A074972 (n + 1)).toNat

end

end A244735.P14035807347514152162

namespace A244735

/-- `A189572(A074972(n+1))` -/
def P14035807347514152162.Spec : Prop :=
  ∀ n, P14035807347514152162.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P14932004407877673913

`A220691(A161625(n+1)+2)`
-/

namespace A244735.P14932004407877673913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220691 (A161625 (n + 1) + 2).toNat

end

end A244735.P14932004407877673913

namespace A244735

/-- `A220691(A161625(n+1)+2)` -/
def P14932004407877673913.Spec : Prop :=
  ∀ n, P14932004407877673913.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P1891619207800886049

`and(A001535(n), A039703(n+1))`
-/

namespace A244735.P1891619207800886049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A039703 (n + 1))

end

end A244735.P1891619207800886049

namespace A244735

/-- `and(A001535(n), A039703(n+1))` -/
def P1891619207800886049.Spec : Prop :=
  ∀ n, P1891619207800886049.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P1630377851573789312

`and(A001546(n), A039703(n+1))`
-/

namespace A244735.P1630377851573789312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A039703 (n + 1))

end

end A244735.P1630377851573789312

namespace A244735

/-- `and(A001546(n), A039703(n+1))` -/
def P1630377851573789312.Spec : Prop :=
  ∀ n, P1630377851573789312.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P6418945720758767138

`and(A001846(n), A039703(n+1))`
-/

namespace A244735.P6418945720758767138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A039703 (n + 1))

end

end A244735.P6418945720758767138

namespace A244735

/-- `and(A001846(n), A039703(n+1))` -/
def P6418945720758767138.Spec : Prop :=
  ∀ n, P6418945720758767138.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P10209099041664200365

`and(A004768(n), A039703(n+1))`
-/

namespace A244735.P10209099041664200365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A039703 (n + 1))

end

end A244735.P10209099041664200365

namespace A244735

/-- `and(A004768(n), A039703(n+1))` -/
def P10209099041664200365.Spec : Prop :=
  ∀ n, P10209099041664200365.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P11261838753389922879

`and(A007204(n), A039703(n+1))`
-/

namespace A244735.P11261838753389922879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A039703 (n + 1))

end

end A244735.P11261838753389922879

namespace A244735

/-- `and(A007204(n), A039703(n+1))` -/
def P11261838753389922879.Spec : Prop :=
  ∀ n, P11261838753389922879.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P858700139559534419

`and(A007664(n), A039703(n+1))`
-/

namespace A244735.P858700139559534419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A039703 (n + 1))

end

end A244735.P858700139559534419

namespace A244735

/-- `and(A007664(n), A039703(n+1))` -/
def P858700139559534419.Spec : Prop :=
  ∀ n, P858700139559534419.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P8104353698449724233

`and(A008349(n), A039703(n+1))`
-/

namespace A244735.P8104353698449724233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A039703 (n + 1))

end

end A244735.P8104353698449724233

namespace A244735

/-- `and(A008349(n), A039703(n+1))` -/
def P8104353698449724233.Spec : Prop :=
  ∀ n, P8104353698449724233.a n = A244735 (n + 1)

end A244735

/-! ## A244735.P2510795092413684227

`and(A008362(n), A039703(n+1))`
-/

namespace A244735.P2510795092413684227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A039703 (n + 1))

end

end A244735.P2510795092413684227

namespace A244735

/-- `and(A008362(n), A039703(n+1))` -/
def P2510795092413684227.Spec : Prop :=
  ∀ n, P2510795092413684227.a n = A244735 (n + 1)

end A244735

/-!
# A244736: Numbers k such that (prime(k) mod 5) is even.

The programs for A244736, the canonical program `A244736.P9268599895378486618` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244736 has offset 1).

The definition of A244736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244736.P9268599895378486618

`eq[2, gcd(2, A039703(n+1))]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244736

/-- `eq[2, gcd(2, A039703(n+1))]+1` -/
def P9268599895378486618.Spec : Prop :=
  ∀ n, (P9268599895378486618.a n : ℤ) = A244736 (n + 1)

theorem P9268599895378486618.correct : P9268599895378486618.Spec := by
  intro n
  simp only [A244736, Nat.add_sub_cancel]

end A244736

/-! ## A244736.P5335385717077495401

`record[gcd(n+1, A244735(n+1)+n+1)]`
-/

namespace A244736.P5335385717077495401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A244735 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244736.P5335385717077495401

namespace A244736

/-- `record[gcd(n+1, A244735(n+1)+n+1)]` -/
def P5335385717077495401.Spec : Prop :=
  ∀ n, (P5335385717077495401.a n : ℤ) = A244736 (n + 1)

end A244736

/-! ## A244736.P17661013062133282958

`eq[Δ[A244735(n+1)], A244735(n+2)]+1`
-/

namespace A244736.P17661013062133282958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244735 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244735 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A244736.P17661013062133282958

namespace A244736

/-- `eq[Δ[A244735(n+1)], A244735(n+2)]+1` -/
def P17661013062133282958.Spec : Prop :=
  ∀ n, (P17661013062133282958.a n : ℤ) = A244736 (n + 1)

end A244736

/-! ## A244736.P5863991085085558321

`A000720(A045356(n+1))`
-/

namespace A244736.P5863991085085558321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045356 (n + 1)).toNat

end

end A244736.P5863991085085558321

namespace A244736

/-- `A000720(A045356(n+1))` -/
def P5863991085085558321.Spec : Prop :=
  ∀ n, P5863991085085558321.a n = A244736 (n + 1)

end A244736

/-! ## A244736.P7387072027323093181

`record[A055396(char[1]+1+comp[3*n]+n)]`
-/

namespace A244736.P7387072027323093181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ((if ∃ j, f2 j = n then 1 else 0) + 1 + (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244736.P7387072027323093181

namespace A244736

/-- `record[A055396(char[1]+1+comp[3*n]+n)]` -/
def P7387072027323093181.Spec : Prop :=
  ∀ n, P7387072027323093181.a n = A244736 (n + 1)

end A244736

/-! ## A244736.P9745649354309852603

`lt[4, A229522(record[A014963(n+1)])]`
-/

namespace A244736.P9745649354309852603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229522 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A244736.P9745649354309852603

namespace A244736

/-- `lt[4, A229522(record[A014963(n+1)])]` -/
def P9745649354309852603.Spec : Prop :=
  ∀ n, (P9745649354309852603.a n : ℤ) = A244736 (n + 1)

end A244736

/-! ## A244736.P17958955332561623400

`A056239(p?[A004525(n)+2*(n+1)])`
-/

namespace A244736.P17958955332561623400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244736.P17958955332561623400

namespace A244736

/-- `A056239(p?[A004525(n)+2*(n+1)])` -/
def P17958955332561623400.Spec : Prop :=
  ∀ n, P17958955332561623400.a n = A244736 (n + 1)

end A244736

/-! ## A244736.P16585314526389163153

`A049084(2*A045356(n+1)-A045356(n+1))`
-/

namespace A244736.P16585314526389163153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A045356 (n + 1) - A045356 (n + 1)).toNat

end

end A244736.P16585314526389163153

namespace A244736

/-- `A049084(2*A045356(n+1)-A045356(n+1))` -/
def P16585314526389163153.Spec : Prop :=
  ∀ n, P16585314526389163153.a n = A244736 (n + 1)

end A244736

/-!
# A244737: Numbers k such that (prime(k) mod 5) is odd.

The programs for A244737, the canonical program `A244737.P1957845354810666174` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244737 has offset 1).

The definition of A244737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244737.P10691057619850238367

`∪[A049508(n+1), A049511(n+1)]`
-/

namespace A244737.P10691057619850238367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244737.P10691057619850238367

namespace A244737

/-- `∪[A049508(n+1), A049511(n+1)]` -/
def P10691057619850238367.Spec : Prop :=
  ∀ n, (P10691057619850238367.a n : ℤ) = A244737 (n + 1)

end A244737

/-! ## A244737.P1957845354810666174

`lt[A005097(n+1)%5, 2]+2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A244737

/-- `lt[A005097(n+1)%5, 2]+2` -/
def P1957845354810666174.Spec : Prop :=
  ∀ n, (P1957845354810666174.a n : ℤ) = A244737 (n + 1)

theorem P1957845354810666174.correct : P1957845354810666174.Spec := by
  intro n
  simp only [A244737, Nat.add_sub_cancel]

end A244737

/-! ## A244737.P2169665698216357007

`lt[2, A089253(n+1)%5]+2`
-/

namespace A244737.P2169665698216357007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089253 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A244737.P2169665698216357007

namespace A244737

/-- `lt[2, A089253(n+1)%5]+2` -/
def P2169665698216357007.Spec : Prop :=
  ∀ n, (P2169665698216357007.a n : ℤ) = A244737 (n + 1)

end A244737

/-! ## A244737.P14326083696398051133

`eq[1, A244735(n+1)]+1`
-/

namespace A244737.P14326083696398051133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244737.P14326083696398051133

namespace A244737

/-- `eq[1, A244735(n+1)]+1` -/
def P14326083696398051133.Spec : Prop :=
  ∀ n, (P14326083696398051133.a n : ℤ) = A244737 (n + 1)

end A244737

/-! ## A244737.P6998991728109578653

`lt[0, A277097(n+2)]+2`
-/

namespace A244737.P6998991728109578653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277097 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A244737.P6998991728109578653

namespace A244737

/-- `lt[0, A277097(n+2)]+2` -/
def P6998991728109578653.Spec : Prop :=
  ∀ n, (P6998991728109578653.a n : ℤ) = A244737 (n + 1)

end A244737

/-! ## A244737.P13157631375691447686

`lt[A007652(n+2), 4]+2`
-/

namespace A244737.P13157631375691447686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A244737.P13157631375691447686

namespace A244737

/-- `lt[A007652(n+2), 4]+2` -/
def P13157631375691447686.Spec : Prop :=
  ∀ n, (P13157631375691447686.a n : ℤ) = A244737 (n + 1)

end A244737

/-! ## A244737.P3586724358572253721

`eq[1, gcd(2, A039703(n+1))]+1`
-/

namespace A244737.P3586724358572253721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A039703 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244737.P3586724358572253721

namespace A244737

/-- `eq[1, gcd(2, A039703(n+1))]+1` -/
def P3586724358572253721.Spec : Prop :=
  ∀ n, (P3586724358572253721.a n : ℤ) = A244737 (n + 1)

end A244737

/-! ## A244737.P8326887484366667400

`filter[A344180(n), A244735(#)]`
-/

namespace A244737.P8326887484366667400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A244737.P8326887484366667400

namespace A244737

/-- `filter[A344180(n), A244735(#)]` -/
def P8326887484366667400.Spec : Prop :=
  ∀ n, P8326887484366667400.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P17882982771177631010

`eq[A007652(n+2), A039703(n+2)]+2`
-/

namespace A244737.P17882982771177631010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039703 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A244737.P17882982771177631010

namespace A244737

/-- `eq[A007652(n+2), A039703(n+2)]+2` -/
def P17882982771177631010.Spec : Prop :=
  ∀ n, (P17882982771177631010.a n : ℤ) = A244737 (n + 1)

end A244737

/-! ## A244737.P1222765896982757891

`lt[A184593(A028310(n)), A184593(n+1)]+1`
-/

namespace A244737.P1222765896982757891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184593 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A244737.P1222765896982757891

namespace A244737

/-- `lt[A184593(A028310(n)), A184593(n+1)]+1` -/
def P1222765896982757891.Spec : Prop :=
  ∀ n, (P1222765896982757891.a n : ℤ) = A244737 (n + 1)

end A244737

/-! ## A244737.P443326052283882044

`A000720(A045429(n+1))`
-/

namespace A244737.P443326052283882044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045429 (n + 1)).toNat

end

end A244737.P443326052283882044

namespace A244737

/-- `A000720(A045429(n+1))` -/
def P443326052283882044.Spec : Prop :=
  ∀ n, P443326052283882044.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P17088506218991629014

`filter[A092942(n+1), A244735(#)]`
-/

namespace A244737.P17088506218991629014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A244737.P17088506218991629014

namespace A244737

/-- `filter[A092942(n+1), A244735(#)]` -/
def P17088506218991629014.Spec : Prop :=
  ∀ n, P17088506218991629014.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P372562648841147518

`filter[A282738(n), A244735(#)]`
-/

namespace A244737.P372562648841147518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A244737.P372562648841147518

namespace A244737

/-- `filter[A282738(n), A244735(#)]` -/
def P372562648841147518.Spec : Prop :=
  ∀ n, P372562648841147518.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P10977021856550143003

`filter[A152271(n), A244735(#)]`
-/

namespace A244737.P10977021856550143003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A244737.P10977021856550143003

namespace A244737

/-- `filter[A152271(n), A244735(#)]` -/
def P10977021856550143003.Spec : Prop :=
  ∀ n, P10977021856550143003.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P3130670673161474651

`filter[A158416(n), A244735(#)]`
-/

namespace A244737.P3130670673161474651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A244737.P3130670673161474651

namespace A244737

/-- `filter[A158416(n), A244735(#)]` -/
def P3130670673161474651.Spec : Prop :=
  ∀ n, P3130670673161474651.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P17706724887992767979

`filter[A038459(n+1), A244735(#)]`
-/

namespace A244737.P17706724887992767979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A244737.P17706724887992767979

namespace A244737

/-- `filter[A038459(n+1), A244735(#)]` -/
def P17706724887992767979.Spec : Prop :=
  ∀ n, P17706724887992767979.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P13039876195051345893

`filter[A133622(n+1), A244735(#)]`
-/

namespace A244737.P13039876195051345893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A244737.P13039876195051345893

namespace A244737

/-- `filter[A133622(n+1), A244735(#)]` -/
def P13039876195051345893.Spec : Prop :=
  ∀ n, P13039876195051345893.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P119116252604855762

`filter[A174571(n+1), A244735(#)]`
-/

namespace A244737.P119116252604855762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A244737.P119116252604855762

namespace A244737

/-- `filter[A174571(n+1), A244735(#)]` -/
def P119116252604855762.Spec : Prop :=
  ∀ n, P119116252604855762.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P8295585786650055333

`A000720(p?[A001068(2*n+1)])`
-/

namespace A244737.P8295585786650055333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244737.P8295585786650055333

namespace A244737

/-- `A000720(p?[A001068(2*n+1)])` -/
def P8295585786650055333.Spec : Prop :=
  ∀ n, P8295585786650055333.a n = A244737 (n + 1)

end A244737

/-! ## A244737.P16694211074298041846

`A055396(p?[A090771(n+1)+2])`
-/

namespace A244737.P16694211074298041846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244737.P16694211074298041846

namespace A244737

/-- `A055396(p?[A090771(n+1)+2])` -/
def P16694211074298041846.Spec : Prop :=
  ∀ n, P16694211074298041846.a n = A244737 (n + 1)

end A244737

/-!
# A244738: a(n) = (prime(n) mod 5) mod 3.

The programs for A244738, the canonical program `A244738.P15207506625357084202` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244738 has offset 1).

The definition of A244738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+1)%5)%3` (program `A244738.P15207506625357084202`, by `A244738.P15207506625357084202.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244738.P15207506625357084202

`(A000040(n+1)%5)%3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244738

/-- `(A000040(n+1)%5)%3` -/
def P15207506625357084202.Spec : Prop :=
  ∀ n, P15207506625357084202.a n = A244738 (n + 1)

theorem P15207506625357084202.correct : P15207506625357084202.Spec := by
  intro n
  simp only [A244738, Nat.add_sub_cancel]

end A244738

/-! ## A244738.P5761160337677679669

`A039703(n+1)%3`
-/

namespace A244738.P5761160337677679669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039703 (n + 1)) 3

end

end A244738.P5761160337677679669

namespace A244738

/-- `A039703(n+1)%3` -/
def P5761160337677679669.Spec : Prop :=
  ∀ n, P5761160337677679669.a n = A244738 (n + 1)

end A244738

/-! ## A244738.P2227218410806395691

`(Δ[A007504(n)]%5)%3`
-/

namespace A244738.P2227218410806395691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (f1 (n + 1) - f1 n) 5) 3

end

end A244738.P2227218410806395691

namespace A244738

/-- `(Δ[A007504(n)]%5)%3` -/
def P2227218410806395691.Spec : Prop :=
  ∀ n, P2227218410806395691.a n = A244738 (n + 1)

end A244738

/-! ## A244738.P6114180672165584994

`(A032604(n+1)%5)%3`
-/

namespace A244738.P6114180672165584994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A032604 (n + 1)) 5) 3

end

end A244738.P6114180672165584994

namespace A244738

/-- `(A032604(n+1)%5)%3` -/
def P6114180672165584994.Spec : Prop :=
  ∀ n, P6114180672165584994.a n = A244738 (n + 1)

end A244738

/-! ## A244738.P15952438501147502639

`(A095959(n+1)%5)%3`
-/

namespace A244738.P15952438501147502639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A095959 (n + 1)) 5) 3

end

end A244738.P15952438501147502639

namespace A244738

/-- `(A095959(n+1)%5)%3` -/
def P15952438501147502639.Spec : Prop :=
  ∀ n, P15952438501147502639.a n = A244738 (n + 1)

end A244738

/-! ## A244738.P3066436488004669106

`((A006093(n+1)+1)%5)%3`
-/

namespace A244738.P3066436488004669106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A006093 (n + 1) + 1) 5) 3

end

end A244738.P3066436488004669106

namespace A244738

/-- `((A006093(n+1)+1)%5)%3` -/
def P3066436488004669106.Spec : Prop :=
  ∀ n, P3066436488004669106.a n = A244738 (n + 1)

theorem P3066436488004669106.correct : P3066436488004669106.Spec := by
  intro n
  simp only [A244738, Nat.add_sub_cancel, A244738.P3066436488004669106.a, A244738.P15207506625357084202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244738

/-! ## A244738.P14697614531462717919

`((10*n+A040976(n+1)+2)%5)%3`
-/

namespace A244738.P14697614531462717919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((10 * n : ℤ) + (A040976 (n + 1) + 2)) 5) 3

end

end A244738.P14697614531462717919

namespace A244738

/-- `((10*n+A040976(n+1)+2)%5)%3` -/
def P14697614531462717919.Spec : Prop :=
  ∀ n, P14697614531462717919.a n = A244738 (n + 1)

end A244738

/-! ## A244738.P2833799671686397497

`A119346(A039713(n+1))`
-/

namespace A244738.P2833799671686397497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119346 (A039713 (n + 1)).toNat

end

end A244738.P2833799671686397497

namespace A244738

/-- `A119346(A039713(n+1))` -/
def P2833799671686397497.Spec : Prop :=
  ∀ n, P2833799671686397497.a n = A244738 (n + 1)

end A244738

/-! ## A244738.P15259158266575272318

`(record[A006530(n+2)]%5)%3`
-/

namespace A244738.P15259158266575272318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 5) 3

end

end A244738.P15259158266575272318

namespace A244738

/-- `(record[A006530(n+2)]%5)%3` -/
def P15259158266575272318.Spec : Prop :=
  ∀ n, P15259158266575272318.a n = A244738 (n + 1)

end A244738

/-! ## A244738.P11266799991061974292

`(record[A020639(n+2)]%5)%3`
-/

namespace A244738.P11266799991061974292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 5) 3

end

end A244738.P11266799991061974292

namespace A244738

/-- `(record[A020639(n+2)]%5)%3` -/
def P11266799991061974292.Spec : Prop :=
  ∀ n, P11266799991061974292.a n = A244738 (n + 1)

end A244738

/-! ## A244738.P5470099408861067851

`(record[A014963(n+2)]%5)%3`
-/

namespace A244738.P5470099408861067851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 5) 3

end

end A244738.P5470099408861067851

namespace A244738

/-- `(record[A014963(n+2)]%5)%3` -/
def P5470099408861067851.Spec : Prop :=
  ∀ n, P5470099408861067851.a n = A244738 (n + 1)

end A244738

/-!
# A244739: Numbers k such that (prime(k) mod 5) == 0 (mod 3).

The programs for A244739, there is no canonical definition to state claims against.
-/

/-! ## A244739.P14226261103242296576

`∪[A049508(n+1), A094319(n)]`
-/

namespace A244739.P14226261103242296576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094319 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244739.P14226261103242296576

/-! ## A244739.P9335173502454341656

`A072971(a(n-1))+a(n-1)` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A244739.P9335173502454341656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  A072971 (a (n - 1)).toNat + a (n - 1)

end

end A244739.P9335173502454341656

/-! ## A244739.P18438658649754862766

`eq[1, A244738(n+1)+1]+1`
-/

namespace A244739.P18438658649754862766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244738 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244739.P18438658649754862766

/-! ## A244739.P15284140326387359543

`lt[(2*A000040(n+1))%5, 2]+1`
-/

namespace A244739.P15284140326387359543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000040 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A244739.P15284140326387359543

/-! ## A244739.P11214208235437683366

`A000720(A045414(n+1))`
-/

namespace A244739.P11214208235437683366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045414 (n + 1)).toNat

end

end A244739.P11214208235437683366

/-! ## A244739.P17375595243487463715

`A000720(p?[A032766(n+2)+n])`
-/

namespace A244739.P17375595243487463715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244739.P17375595243487463715

/-! ## A244739.P14871979094940401890

`A000720(p?[A008619(n)+2*(n+1)])`
-/

namespace A244739.P14871979094940401890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244739.P14871979094940401890

/-! ## A244739.P6453149100446967362

`A000720(p?[A001068(2*n)-2])`
-/

namespace A244739.P6453149100446967362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244739.P6453149100446967362

/-! ## A244739.P13365675702438932926

`record[A252464(2*n+3*(n+1))]`
-/

namespace A244739.P13365675702438932926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * n + 3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244739.P13365675702438932926

/-! ## A244739.P17788865249736830055

`A049084(p?[A047201(2*n+1)+2])`
-/

namespace A244739.P17788865249736830055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (2 * n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244739.P17788865249736830055

/-! ## A244739.P12660926593130772932

`A225395(record[A285699(4*n+3+n)]+1)`
-/

namespace A244739.P12660926593130772932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 (4 * n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A244739.P12660926593130772932

/-! ## A244739.P1780568285031005164

`lt[1, A078905(A000040(n+1))]+1`
-/

namespace A244739.P1780568285031005164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078905 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A244739.P1780568285031005164

/-! ## A244739.P15851941232519105873

`record[A049084(A032742(3*n+4)+n+1)]`
-/

namespace A244739.P15851941232519105873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A032742 (3 * n + 4) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244739.P15851941232519105873

/-!
# A244740: Irregular triangular array read by rows: T(n,k) = number of positive integers m such that (prime(n) mod m) = k, for k=1..(-1 + prime(k))/2.

The programs for A244740, there is no canonical definition to state claims against.
-/

/-! ## A244740.P3252243382240880505

`gcd(A265482(A254099(n+1)), A320915(n))`
-/

namespace A244740.P3252243382240880505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265482 (A254099 (n + 1)).toNat) (A320915 n)

end

end A244740.P3252243382240880505

/-! ## A244740.P4261009511754119004

`A001511(or(A013611(n+1), A332767(3*n+4)))`
-/

namespace A244740.P4261009511754119004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A013611 (n + 1)) (A332767 (3 * n + 4))).toNat

end

end A244740.P4261009511754119004

/-! ## A244740.P17122069383985741552

`A345116(Δ[A007504(n)]-A290821(n+1))`
-/

namespace A244740.P17122069383985741552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345116 (f1 (n + 1) - f1 n - A290821 (n + 1)).toNat

end

end A244740.P17122069383985741552

/-! ## A244740.P12051428635566453747

`A345116(A000040(n+1)-A290821(n+1))`
-/

namespace A244740.P12051428635566453747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345116 (A000040 (n + 1) - A290821 (n + 1)).toNat

end

end A244740.P12051428635566453747

/-! ## A244740.P5890153562899240044

`A345116(A030475(n+1)-A290821(n+1))`
-/

namespace A244740.P5890153562899240044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345116 (A030475 (n + 1) - A290821 (n + 1)).toNat

end

end A244740.P5890153562899240044

/-!
# A244741: Numbers k such that (prime(k) mod 5) == 2 (mod 3).

The programs for A244741, the canonical program `A244741.P4318009301390436834` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244741 has offset 1).

The definition of A244741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244741.P4318009301390436834

`∪[A049509(n+1), A016817(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A244741

/-- `∪[A049509(n+1), A016817(n)]` -/
def P4318009301390436834.Spec : Prop :=
  ∀ n, (P4318009301390436834.a n : ℤ) = A244741 (n + 1)

theorem P4318009301390436834.correct : P4318009301390436834.Spec := by
  intro n
  simp only [A244741, Nat.add_sub_cancel]

end A244741

/-! ## A244741.P18096941017282702492

`∪[A049509(n+1), A017177(n)]`
-/

namespace A244741.P18096941017282702492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244741.P18096941017282702492

namespace A244741

/-- `∪[A049509(n+1), A017177(n)]` -/
def P18096941017282702492.Spec : Prop :=
  ∀ n, (P18096941017282702492.a n : ℤ) = A244741 (n + 1)

end A244741

/-! ## A244741.P14317305743039512694

`∪[A049509(n+1), A017283(n)]`
-/

namespace A244741.P14317305743039512694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017283 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244741.P14317305743039512694

namespace A244741

/-- `∪[A049509(n+1), A017283(n)]` -/
def P14317305743039512694.Spec : Prop :=
  ∀ n, (P14317305743039512694.a n : ℤ) = A244741 (n + 1)

end A244741

/-! ## A244741.P11707668120889702992

`eq[2, A039703(n+1)]+1`
-/

namespace A244741.P11707668120889702992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244741.P11707668120889702992

namespace A244741

/-- `eq[2, A039703(n+1)]+1` -/
def P11707668120889702992.Spec : Prop :=
  ∀ n, (P11707668120889702992.a n : ℤ) = A244741 (n + 1)

end A244741

/-! ## A244741.P7427209855698009126

`eq[2, A244738(n+1)]+1`
-/

namespace A244741.P7427209855698009126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244741.P7427209855698009126

namespace A244741

/-- `eq[2, A244738(n+1)]+1` -/
def P7427209855698009126.Spec : Prop :=
  ∀ n, (P7427209855698009126.a n : ℤ) = A244741 (n + 1)

end A244741

/-! ## A244741.P13535155038788180226

`eq[2, A000040(n+1)%5]+1`
-/

namespace A244741.P13535155038788180226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244741.P13535155038788180226

namespace A244741

/-- `eq[2, A000040(n+1)%5]+1` -/
def P13535155038788180226.Spec : Prop :=
  ∀ n, (P13535155038788180226.a n : ℤ) = A244741 (n + 1)

end A244741

/-! ## A244741.P12423204065939317248

`eq[4, A100484(n+1)%5]+1`
-/

namespace A244741.P12423204065939317248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100484 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244741.P12423204065939317248

namespace A244741

/-- `eq[4, A100484(n+1)%5]+1` -/
def P12423204065939317248.Spec : Prop :=
  ∀ n, (P12423204065939317248.a n : ℤ) = A244741 (n + 1)

end A244741

/-! ## A244741.P18036160056032538882

`eq[2, (A001747(n+1)/2)%5]`
-/

namespace A244741.P18036160056032538882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244741.P18036160056032538882

namespace A244741

/-- `eq[2, (A001747(n+1)/2)%5]` -/
def P18036160056032538882.Spec : Prop :=
  ∀ n, (P18036160056032538882.a n : ℤ) = A244741 (n + 1)

end A244741

/-! ## A244741.P255110640952833362

`A000720(p?[5*n+2])`
-/

namespace A244741.P255110640952833362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A244741.P255110640952833362

namespace A244741

/-- `A000720(p?[5*n+2])` -/
def P255110640952833362.Spec : Prop :=
  ∀ n, P255110640952833362.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P2992287385044296097

`A000720(A045380(n+1))`
-/

namespace A244741.P2992287385044296097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045380 (n + 1)).toNat

end

end A244741.P2992287385044296097

namespace A244741

/-- `A000720(A045380(n+1))` -/
def P2992287385044296097.Spec : Prop :=
  ∀ n, P2992287385044296097.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P3465447755389472717

`record[A061395(A016825(n)+n)]`
-/

namespace A244741.P3465447755389472717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A016825 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244741.P3465447755389472717

namespace A244741

/-- `record[A061395(A016825(n)+n)]` -/
def P3465447755389472717.Spec : Prop :=
  ∀ n, P3465447755389472717.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P18283500729358418286

`A061395(p?[A016885(n)-1])`
-/

namespace A244741.P18283500729358418286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244741.P18283500729358418286

namespace A244741

/-- `A061395(p?[A016885(n)-1])` -/
def P18283500729358418286.Spec : Prop :=
  ∀ n, P18283500729358418286.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P5523357464748182

`record[A061395(A017341(n)-2)]`
-/

namespace A244741.P5523357464748182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A017341 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244741.P5523357464748182

namespace A244741

/-- `record[A061395(A017341(n)-2)]` -/
def P5523357464748182.Spec : Prop :=
  ∀ n, P5523357464748182.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P7618919622644061178

`record[A061395(A166304(n)-n)]`
-/

namespace A244741.P7618919622644061178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A166304 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244741.P7618919622644061178

namespace A244741

/-- `record[A061395(A166304(n)-n)]` -/
def P7618919622644061178.Spec : Prop :=
  ∀ n, P7618919622644061178.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P17363401347895837167

`A289508(p?[a(n-1)+5])` with `a(0)=2`
-/

namespace A244741.P17363401347895837167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A244741.P17363401347895837167

namespace A244741

/-- `A289508(p?[a(n-1)+5])` -/
def P17363401347895837167.Spec : Prop :=
  ∀ n, P17363401347895837167.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P11200770969888400024

`record[A339894(4*n+2+n)]`
-/

namespace A244741.P11200770969888400024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (4 * n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244741.P11200770969888400024

namespace A244741

/-- `record[A339894(4*n+2+n)]` -/
def P11200770969888400024.Spec : Prop :=
  ∀ n, P11200770969888400024.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P313778826336494261

`A082058(p?[5*n+2])`
-/

namespace A244741.P313778826336494261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A244741.P313778826336494261

namespace A244741

/-- `A082058(p?[5*n+2])` -/
def P313778826336494261.Spec : Prop :=
  ∀ n, P313778826336494261.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P14861247421913569849

`A055396(p?[a(n-1)+5])` with `a(0)=2`
-/

namespace A244741.P14861247421913569849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A244741.P14861247421913569849

namespace A244741

/-- `A055396(p?[a(n-1)+5])` -/
def P14861247421913569849.Spec : Prop :=
  ∀ n, P14861247421913569849.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P8585603411030503027

`A003963(p?[A016885(n)-1])`
-/

namespace A244741.P8585603411030503027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244741.P8585603411030503027

namespace A244741

/-- `A003963(p?[A016885(n)-1])` -/
def P8585603411030503027.Spec : Prop :=
  ∀ n, P8585603411030503027.a n = A244741 (n + 1)

end A244741

/-! ## A244741.P6686549467188870795

`A026233(p?[A016885(n)-1])`
-/

namespace A244741.P6686549467188870795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244741.P6686549467188870795

namespace A244741

/-- `A026233(p?[A016885(n)-1])` -/
def P6686549467188870795.Spec : Prop :=
  ∀ n, P6686549467188870795.a n = A244741 (n + 1)

end A244741

/-!
# A244742: Dimension of the vector space of 4-invariants on simple unlabeled graphs on n vertices.

The programs for A244742, there is no canonical definition to state claims against.
-/

/-! ## A244742.P16370379314416427202

`ogf((1-x-2x^2+4x^3)/(1-3x+x^2+5x^3-5x^4))`
-/

namespace A244742.P16370379314416427202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, 4] [1, -3, 1, 5, -5] n

end

end A244742.P16370379314416427202

/-! ## A244742.P3652590195834689580

`∑[A196416(∑[or(1, n)])]`
-/

namespace A244742.P3652590195834689580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244742.P3652590195834689580

/-! ## A244742.P12674588200260091497

`ceil(A246584(n+1)/5)`
-/

namespace A244742.P12674588200260091497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A246584 (n + 1) : ℚ) / 5⌉

end

end A244742.P12674588200260091497

/-! ## A244742.P12240007608075420314

`∑[A268507(ceil(3^(n-1)))]`
-/

namespace A244742.P12240007608075420314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268507 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244742.P12240007608075420314

/-! ## A244742.P8454353351320656148

`A248563(n-(1-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A244742.P8454353351320656148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A248563 ((n : ℤ) - (1 - a (n - 2))).toNat

end

end A244742.P8454353351320656148

/-!
# A244743: Smallest number n with ||n-1||-||n|| = k where ||n||=A005245(n) denotes the complexity of n.

The programs for A244743, there is no canonical definition to state claims against.
-/

/-! ## A244743.P9074267493642248676

`A090387(n+1)*A234517(A019462(n))`
-/

namespace A244743.P9074267493642248676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090387 (n + 1) * A234517 (A019462 n).toNat

end

end A244743.P9074267493642248676

/-! ## A244743.P5881784564404087012

`A008458(lcm(A000142(n), A123467(n+1)))`
-/

namespace A244743.P5881784564404087012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.lcm (A000142 n) (A123467 (n + 1)))

end

end A244743.P5881784564404087012

/-!
# A244746: Numbers obtained by concatenating the squares of the digits of Catalan(n).

The programs for A244746, there is no canonical definition to state claims against.
-/

/-! ## A244746.P12273177614395422115

`A048385(A000108(n))`
-/

namespace A244746.P12273177614395422115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A000108 n).toNat

end

end A244746.P12273177614395422115

/-! ## A244746.P12401670129516406150

`A048385(C(2*n, n)/(n+1))`
-/

namespace A244746.P12401670129516406150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))).toNat

end

end A244746.P12401670129516406150

/-! ## A244746.P17907140097597541197

`A048385(A211216(n))`
-/

namespace A244746.P17907140097597541197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A211216 n).toNat

end

end A244746.P17907140097597541197

/-! ## A244746.P7499545626902334082

`A048385(A242450(n))`
-/

namespace A244746.P7499545626902334082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A242450 n).toNat

end

end A244746.P7499545626902334082

/-! ## A244746.P3175803898874873353

`A048385(A243838(n))`
-/

namespace A244746.P3175803898874873353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A243838 n).toNat

end

end A244746.P3175803898874873353

/-!
# A244747: Positions at which powers of 2 occur in A051145.

The programs for A244747, there is no canonical definition to state claims against.
-/

/-! ## A244747.P5477645668379304962

`eq[1, A209229(A051145(n))]`
-/

namespace A244747.P5477645668379304962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A051145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244747.P5477645668379304962

/-! ## A244747.P1870839933136593823

`eq[2, A081729(A057923(3*n))]`
-/

namespace A244747.P1870839933136593823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A057923 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244747.P1870839933136593823

/-! ## A244747.P12093208664587033738

`eq[1, A000120(A051145(n))]`
-/

namespace A244747.P12093208664587033738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A051145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244747.P12093208664587033738

/-!
# A244748: Numbers k such that (product of digits of k)^2 + 1 is prime.

The programs for A244748, the canonical program `A244748.P4413186087165087777` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244748 has offset 1).

The definition of A244748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244748.P4413186087165087777

`eq[1, A053000(A007954(n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A244748

/-- `eq[1, A053000(A007954(n))]` -/
def P4413186087165087777.Spec : Prop :=
  ∀ n, (P4413186087165087777.a n : ℤ) = A244748 (n + 1)

theorem P4413186087165087777.correct : P4413186087165087777.Spec := by
  intro n
  simp only [A244748, Nat.add_sub_cancel]

end A244748

/-! ## A244748.P15600764021239151959

`eq[A007954(n), A247339(A051801(n))]`
-/

namespace A244748.P15600764021239151959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244748.P15600764021239151959

namespace A244748

/-- `eq[A007954(n), A247339(A051801(n))]` -/
def P15600764021239151959.Spec : Prop :=
  ∀ n, (P15600764021239151959.a n : ℤ) = A244748 (n + 1)

end A244748

/-! ## A244748.P3858547641765598875

`eq[A168046(n), A193330(A051801(n))]`
-/

namespace A244748.P3858547641765598875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244748.P3858547641765598875

namespace A244748

/-- `eq[A168046(n), A193330(A051801(n))]` -/
def P3858547641765598875.Spec : Prop :=
  ∀ n, (P3858547641765598875.a n : ℤ) = A244748 (n + 1)

end A244748

/-! ## A244748.P2763022941587442079

`eq[A107286(2*(n+2)), A278162(A007954(n))]`
-/

namespace A244748.P2763022941587442079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244748.P2763022941587442079

namespace A244748

/-- `eq[A107286(2*(n+2)), A278162(A007954(n))]` -/
def P2763022941587442079.Spec : Prop :=
  ∀ n, (P2763022941587442079.a n : ℤ) = A244748 (n + 1)

end A244748

/-! ## A244748.P14025922268773618125

`eq[A107279(2*n), A193432(A007954(n))]`
-/

namespace A244748.P14025922268773618125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244748.P14025922268773618125

namespace A244748

/-- `eq[A107279(2*n), A193432(A007954(n))]` -/
def P14025922268773618125.Spec : Prop :=
  ∀ n, (P14025922268773618125.a n : ℤ) = A244748 (n + 1)

end A244748

/-! ## A244748.P3750413999296527635

`eq[1, A001222(A007954(n)²+1)]`
-/

namespace A244748.P3750413999296527635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007954 n ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244748.P3750413999296527635

namespace A244748

/-- `eq[1, A001222(A007954(n)²+1)]` -/
def P3750413999296527635.Spec : Prop :=
  ∀ n, (P3750413999296527635.a n : ℤ) = A244748 (n + 1)

end A244748

/-! ## A244748.P14481510671983631126

`eq[1, A010051(A007954(n)²+1)]`
-/

namespace A244748.P14481510671983631126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007954 n ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244748.P14481510671983631126

namespace A244748

/-- `eq[1, A010051(A007954(n)²+1)]` -/
def P14481510671983631126.Spec : Prop :=
  ∀ n, (P14481510671983631126.a n : ℤ) = A244748 (n + 1)

end A244748

/-! ## A244748.P8466961994306761110

`eq[2, A000005(A007954(n)²+1)]`
-/

namespace A244748.P8466961994306761110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007954 n ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244748.P8466961994306761110

namespace A244748

/-- `eq[2, A000005(A007954(n)²+1)]` -/
def P8466961994306761110.Spec : Prop :=
  ∀ n, (P8466961994306761110.a n : ℤ) = A244748 (n + 1)

end A244748

/-! ## A244748.P12837080041044347120

`eq[1, A001222(A000290(A007954(n))+1)]`
-/

namespace A244748.P12837080041044347120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000290 (A007954 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244748.P12837080041044347120

namespace A244748

/-- `eq[1, A001222(A000290(A007954(n))+1)]` -/
def P12837080041044347120.Spec : Prop :=
  ∀ n, (P12837080041044347120.a n : ℤ) = A244748 (n + 1)

end A244748

/-! ## A244748.P10122648652255948933

`eq[2, A000005(A000290(A007954(n))+1)]`
-/

namespace A244748.P10122648652255948933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000290 (A007954 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244748.P10122648652255948933

namespace A244748

/-- `eq[2, A000005(A000290(A007954(n))+1)]` -/
def P10122648652255948933.Spec : Prop :=
  ∀ n, (P10122648652255948933.a n : ℤ) = A244748 (n + 1)

end A244748

/-!
# A244749: 0-additive sequence: a(n) is the smallest number larger than a(n-1) that is not the sum of any subset of earlier terms, starting with initial values {2, 5}.

The programs for A244749, the canonical program `A244749.P2015435187187898240` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244749 has offset 1).

The definition of A244749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244749.P2015435187187898240

`ogf((2+7x+5x^2-6x^3-14x^4-7x^5)/(1+x-3x^2-3x^3))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244749

/-- `ogf((2+7x+5x^2-6x^3-14x^4-7x^5)/(1+x-3x^2-3x^3))` -/
def P2015435187187898240.Spec : Prop :=
  ∀ n, P2015435187187898240.a n = A244749 (n + 1)

theorem P2015435187187898240.correct : P2015435187187898240.Spec := by
  intro n
  simp only [A244749, Nat.add_sub_cancel]

end A244749

/-!
# A244750: 0-additive sequence: a(n) is the smallest number larger than a(n-1) which is not the sum of any subset of earlier terms, with initial values {0, 2, 3, 4}.

The programs for A244750, the canonical program `A244750.P5001046502233057077` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244750 has offset 1).

The definition of A244750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244750.P5001046502233057077

`2*a(n-1)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244750

/-- `2*a(n-1)` -/
def P5001046502233057077.Spec : Prop :=
  ∀ n, (P5001046502233057077.a n : ℤ) = A244750 (n + 1)

theorem P5001046502233057077.correct : P5001046502233057077.Spec := by
  intro n
  simp only [A244750, Nat.add_sub_cancel]

end A244750

/-! ## A244750.P7893618883460554234

`ogf((-2x+x^2+2x^3)/(-1+2x))`
-/

namespace A244750.P7893618883460554234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, -2] [1, -2] n

end

end A244750.P7893618883460554234

namespace A244750

/-- `ogf((-2x+x^2+2x^3)/(-1+2x))` -/
def P7893618883460554234.Spec : Prop :=
  ∀ n, P7893618883460554234.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P3609418872406392645

`(char[2]+2)*round(2^(n-2))`
-/

namespace A244750.P3609418872406392645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℤ) * SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A244750.P3609418872406392645

namespace A244750

/-- `(char[2]+2)*round(2^(n-2))` -/
def P3609418872406392645.Spec : Prop :=
  ∀ n, P3609418872406392645.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P10394103720320556004

`xor(C(3, ∑[n]), ceil(2^(n-1)))`
-/

namespace A244750.P10394103720320556004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 3 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A244750.P10394103720320556004

namespace A244750

/-- `xor(C(3, ∑[n]), ceil(2^(n-1)))` -/
def P10394103720320556004.Spec : Prop :=
  ∀ n, P10394103720320556004.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P3691085117755481881

`a(n-1)+a(n-1)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A244750.P3691085117755481881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4] fun n a =>
  a (n - 1) + a (n - 1)

end

end A244750.P3691085117755481881

namespace A244750

/-- `a(n-1)+a(n-1)` -/
def P3691085117755481881.Spec : Prop :=
  ∀ n, (P3691085117755481881.a n : ℤ) = A244750 (n + 1)

theorem P3691085117755481881.correct : P3691085117755481881.Spec := by
  intro n
  simp only [A244750, Nat.add_sub_cancel, A244750.P3691085117755481881.a, A244750.P5001046502233057077.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A244750

/-! ## A244750.P13464502101871954097

`a(n-1)/(1-1/2)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A244750.P13464502101871954097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 3, 4] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A244750.P13464502101871954097

namespace A244750

/-- `a(n-1)/(1-1/2)` -/
def P13464502101871954097.Spec : Prop :=
  ∀ n, P13464502101871954097.a n = (A244750 (n + 1) : ℚ)

end A244750

/-! ## A244750.P14203086191093825743

`A094373(n)-A179184(n)`
-/

namespace A244750.P14203086191093825743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A179184 n

end

end A244750.P14203086191093825743

namespace A244750

/-- `A094373(n)-A179184(n)` -/
def P14203086191093825743.Spec : Prop :=
  ∀ n, P14203086191093825743.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P8187108710516552015

`∪[A155559(n), A171497(n)]`
-/

namespace A244750.P8187108710516552015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244750.P8187108710516552015

namespace A244750

/-- `∪[A155559(n), A171497(n)]` -/
def P8187108710516552015.Spec : Prop :=
  ∀ n, (P8187108710516552015.a n : ℤ) = A244750 (n + 1)

end A244750

/-! ## A244750.P16246469066509389844

`∪[A155559(n), A198633(n)]`
-/

namespace A244750.P16246469066509389844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244750.P16246469066509389844

namespace A244750

/-- `∪[A155559(n), A198633(n)]` -/
def P16246469066509389844.Spec : Prop :=
  ∀ n, (P16246469066509389844.a n : ℤ) = A244750 (n + 1)

end A244750

/-! ## A244750.P192535164733444622

`A171386(n+1)+A131577(n)`
-/

namespace A244750.P192535164733444622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (n + 1) + A131577 n

end

end A244750.P192535164733444622

namespace A244750

/-- `A171386(n+1)+A131577(n)` -/
def P192535164733444622.Spec : Prop :=
  ∀ n, P192535164733444622.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P7200737472033810638

`xor(A090129(n+1), A154272(n+1))`
-/

namespace A244750.P7200737472033810638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A090129 (n + 1)) (A154272 (n + 1))

end

end A244750.P7200737472033810638

namespace A244750

/-- `xor(A090129(n+1), A154272(n+1))` -/
def P7200737472033810638.Spec : Prop :=
  ∀ n, P7200737472033810638.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P18408127339905792150

`Δ[floor(2^(n-1))-C(2, n)]`
-/

namespace A244750.P18408127339905792150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244750.P18408127339905792150

namespace A244750

/-- `Δ[floor(2^(n-1))-C(2, n)]` -/
def P18408127339905792150.Spec : Prop :=
  ∀ n, P18408127339905792150.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P14620565240988992866

`A062709(n)%A256994(n+1)`
-/

namespace A244750.P14620565240988992866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062709 n) (A256994 (n + 1))

end

end A244750.P14620565240988992866

namespace A244750

/-- `A062709(n)%A256994(n+1)` -/
def P14620565240988992866.Spec : Prop :=
  ∀ n, P14620565240988992866.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P6721237953523857433

`and(A048573(n), A259098(n))`
-/

namespace A244750.P6721237953523857433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048573 n) (A259098 n)

end

end A244750.P6721237953523857433

namespace A244750

/-- `and(A048573(n), A259098(n))` -/
def P6721237953523857433.Spec : Prop :=
  ∀ n, P6721237953523857433.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P10293626481945689060

`and(A259098(n), A383953(n))`
-/

namespace A244750.P10293626481945689060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A259098 n) (A383953 n)

end

end A244750.P10293626481945689060

namespace A244750

/-- `and(A259098(n), A383953(n))` -/
def P10293626481945689060.Spec : Prop :=
  ∀ n, P10293626481945689060.a n = A244750 (n + 1)

end A244750

/-! ## A244750.P5840920419436477726

`A334872(A083251(n+1))`
-/

namespace A244750.P5840920419436477726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334872 (A083251 (n + 1)).toNat

end

end A244750.P5840920419436477726

namespace A244750

/-- `A334872(A083251(n+1))` -/
def P5840920419436477726.Spec : Prop :=
  ∀ n, P5840920419436477726.a n = A244750 (n + 1)

end A244750

/-!
# A244751: a(n) = Sum_{k=0..n} C(n,k) * (n + 2^k)^(n-k) * 2^(k^2).

The programs for A244751, the canonical program `A244751.P16567584958280205157` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244751 has offset 0).

The definition of A244751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244751.P16567584958280205157

`∑{#}[n, C(n, #)*n^(n-#)*(1+2^#)^#]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244751

/-- `∑{#}[n, C(n, #)*n^(n-#)*(1+2^#)^#]` -/
def P16567584958280205157.Spec : Prop :=
  ∀ n, P16567584958280205157.a n = (A244751 n : ℚ)

end A244751

/-! ## A244751.P7766630200433531999

`∑{#}[n, C(n, #)*(n+2^#)^(n-#)*2^#²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244751.P7766630200433531999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (n + 2 ^ k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (2 ^ k ^ 2 : ℚ)

end

end A244751.P7766630200433531999

namespace A244751

/-- `∑{#}[n, C(n, #)*(n+2^#)^(n-#)*2^#²]` -/
def P7766630200433531999.Spec : Prop :=
  ∀ n, P7766630200433531999.a n = (A244751 n : ℚ)

end A244751

/-!
# A244753: a(n) = Sum_{k=0..n} C(n,k) * (n + 2^k)^k.

The programs for A244753, the canonical program `A244753.P6343676747864770155` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244753 has offset 0).

The definition of A244753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*(n+2^#)^#]` (program `A244753.P6343676747864770155`, by `A244753.P6343676747864770155.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244753.P6343676747864770155

`∑{#}[n, C(n, #)*(n+2^#)^#]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244753

/-- `∑{#}[n, C(n, #)*(n+2^#)^#]` -/
def P6343676747864770155.Spec : Prop :=
  ∀ n, (P6343676747864770155.a n : ℤ) = A244753 n

theorem P6343676747864770155.correct : P6343676747864770155.Spec := by
  intro n
  simp only [A244753]

end A244753

/-!
# A244754: a(n) = Sum_{k=0..n} C(n,k) * (1 + 2^k)^(n-k).

The programs for A244754, the canonical program `A244754.P13775532861313796386` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244754 has offset 0).

The definition of A244754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244754.P13775532861313796386

`∑{#}[n, C(n, #)*(1+2^#)^(n-#)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244754

/-- `∑{#}[n, C(n, #)*(1+2^#)^(n-#)]` -/
def P13775532861313796386.Spec : Prop :=
  ∀ n, P13775532861313796386.a n = (A244754 n : ℚ)

end A244754

/-! ## A244754.P1227853706666808289

`A316963(A137984(n)+2*n)`
-/

namespace A244754.P1227853706666808289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316963 (A137984 n + (2 * n : ℤ)).toNat

end

end A244754.P1227853706666808289

namespace A244754

/-- `A316963(A137984(n)+2*n)` -/
def P1227853706666808289.Spec : Prop :=
  ∀ n, P1227853706666808289.a n = A244754 n

end A244754

/-!
# A244755: a(n) = Sum_{k=0..n} C(n,k) * (1 + 3^k)^(n-k).

The programs for A244755, the canonical program `A244755.P16900075671837414074` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244755 has offset 0).

The definition of A244755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244755.P16900075671837414074

`∑{#}[n, C(n, #)*(1+3^#)^(n-#)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244755

/-- `∑{#}[n, C(n, #)*(1+3^#)^(n-#)]` -/
def P16900075671837414074.Spec : Prop :=
  ∀ n, P16900075671837414074.a n = (A244755 n : ℚ)

end A244755

/-!
# A244756: a(n) = Sum_{k=0..n} C(n,k) * (2 + 3^k)^(n-k).

The programs for A244756, the canonical program `A244756.P6236433450873652762` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244756 has offset 0).

The definition of A244756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244756.P6236433450873652762

`∑{#}[n, C(n, #)*(2+3^#)^(n-#)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244756

/-- `∑{#}[n, C(n, #)*(2+3^#)^(n-#)]` -/
def P6236433450873652762.Spec : Prop :=
  ∀ n, P6236433450873652762.a n = (A244756 n : ℚ)

end A244756

/-!
# A244757: Incrementally largest terms in the continued fraction for the base 3 Champernowne constant (A077772).

The programs for A244757, there is no canonical definition to state claims against.
-/

/-! ## A244757.P8090204368763864937

`record[A077772(n)]`
-/

namespace A244757.P8090204368763864937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244757.P8090204368763864937

/-! ## A244757.P1794348034182248534

`A077772(A244332(n+1)-1)`
-/

namespace A244757.P1794348034182248534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077772 (A244332 (n + 1) - 1).toNat

end

end A244757.P1794348034182248534

/-!
# A244758: Number of binary digits in the n-th term of the continued fraction of the base-2 Champernowne constant (A066717).

The programs for A244758, there is no canonical definition to state claims against.
-/

/-! ## A244758.P3767443489332000488

`ceil(log2(A066717(n)+1))`
-/

namespace A244758.P3767443489332000488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A066717 n + 1 : ℝ)⌉

end

end A244758.P3767443489332000488

/-! ## A244758.P15446473858047179464

`A075172(A066717(n))`
-/

namespace A244758.P15446473858047179464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (A066717 n).toNat

end

end A244758.P15446473858047179464

/-! ## A244758.P1986888779982347438

`A029837(A066717(n)+1)`
-/

namespace A244758.P1986888779982347438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A066717 n + 1).toNat

end

end A244758.P1986888779982347438

/-! ## A244758.P1027660745628833304

`A196050(A066717(n)+1)`
-/

namespace A244758.P1027660745628833304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A066717 n + 1).toNat

end

end A244758.P1027660745628833304

/-!
# A244759: Number of ternary digits in the n-th term of the continued fraction of the base 3 Champernowne constant (A077772).

The programs for A244759, there is no canonical definition to state claims against.
-/

/-! ## A244759.P15658598975482688399

`A034968(A077772(n))`
-/

namespace A244759.P15658598975482688399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A077772 n).toNat

end

end A244759.P15658598975482688399

/-! ## A244759.P11001903952053697847

`A080342(A077772(n)+1)`
-/

namespace A244759.P11001903952053697847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A077772 n + 1).toNat

end

end A244759.P11001903952053697847

/-! ## A244759.P5880084865639517316

`A225541(7*A077772(n))`
-/

namespace A244759.P5880084865639517316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (7 * A077772 n).toNat

end

end A244759.P5880084865639517316

/-! ## A244759.P15717844968125756128

`∑{d}[A077772(n), A062756(#)]`
-/

namespace A244759.P15717844968125756128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062756 d

end

end A244759.P15717844968125756128

/-! ## A244759.P811346603991623868

`A055091(and(-1, A077772(n)))`
-/

namespace A244759.P811346603991623868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (Int.land (-1) (A077772 n)).toNat

end

end A244759.P811346603991623868

/-!
# A244760: a(n) = Sum_{k=0..n} C(n,k) * (1 + 3^k)^(n-k) * 2^k.

The programs for A244760, the canonical program `A244760.P6889310552206872441` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244760 has offset 0).

The definition of A244760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244760.P6889310552206872441

`∑{#}[n, C(n, #)*(1+3^#)^(n-#)*2^#]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244760

/-- `∑{#}[n, C(n, #)*(1+3^#)^(n-#)*2^#]` -/
def P6889310552206872441.Spec : Prop :=
  ∀ n, P6889310552206872441.a n = (A244760 n : ℚ)

end A244760

/-!
# A244761: Numbers obtained by concatenating the squares of the digits of Lucas(n).

The programs for A244761, there is no canonical definition to state claims against.
-/

/-! ## A244761.P2032061951432233115

`A048385(A000032(n))`
-/

namespace A244761.P2032061951432233115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A000032 n).toNat

end

end A244761.P2032061951432233115

/-! ## A244761.P10230632965480361857

`A048385(Δ[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=3`
-/

namespace A244761.P10230632965480361857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244761.P10230632965480361857

/-! ## A244761.P6466000530120291243

`A048385(n-∑[a(n-1)-(1-a(n-2))])` with `a(0)=-2, a(1)=2`
-/

namespace A244761.P6466000530120291243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244761.P6466000530120291243

/-! ## A244761.P16430695807490075978

`A048385(Δ[A001610(n)])`
-/

namespace A244761.P16430695807490075978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (f1 (n + 1) - f1 n).toNat

end

end A244761.P16430695807490075978

/-! ## A244761.P13470572067194487622

`A048385(A001612(n)-1)`
-/

namespace A244761.P13470572067194487622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A001612 n - 1).toNat

end

end A244761.P13470572067194487622

/-!
# A244762: a(n) = (5*3^n-2*n-1)/4.

The programs for A244762, the canonical program `A244762.P14866162302524220977` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244762 has offset 0).

The definition of A244762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*3^n-2*n-1)/4` (program `A244762.P7527255875164837013`, by `A244762.P7527255875164837013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244762.P4225654605200894783

`ogf((1-2x+2x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A244762.P4225654605200894783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -5, 7, -3] n

end

end A244762.P4225654605200894783

namespace A244762

/-- `ogf((1-2x+2x^2)/(1-5x+7x^2-3x^3))` -/
def P4225654605200894783.Spec : Prop :=
  ∀ n, P4225654605200894783.a n = A244762 n

end A244762

/-! ## A244762.P7527255875164837013

`(5*3^n-2*n-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244762.P7527255875164837013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ n : ℤ) - (2 * n : ℤ) - 1 : ℚ) / 4

end

end A244762.P7527255875164837013

namespace A244762

/-- `(5*3^n-2*n-1)/4` -/
def P7527255875164837013.Spec : Prop :=
  ∀ n, P7527255875164837013.a n = (A244762 n : ℚ)

theorem P7527255875164837013.correct : P7527255875164837013.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A244762, Nat.add_sub_cancel, A244762.P7527255875164837013.a, A244762.P14866162302524220977.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A244762, Nat.add_sub_cancel, A244762.P7527255875164837013.a, A244762.P14866162302524220977.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A244762

/-! ## A244762.P4369861061290819195

`∑[ogf((1-2x+2x^2)/(1-4x+3x^2))]`
-/

namespace A244762.P4369861061290819195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244762.P4369861061290819195

namespace A244762

/-- `∑[ogf((1-2x+2x^2)/(1-4x+3x^2))]` -/
def P4369861061290819195.Spec : Prop :=
  ∀ n, P4369861061290819195.a n = A244762 n

end A244762

/-! ## A244762.P16434724984764071618

`∑[3*a(n-1)+1]` with `a(0)=1, a(1)=2`
-/

namespace A244762.P16434724984764071618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244762.P16434724984764071618

namespace A244762

/-- `∑[3*a(n-1)+1]` -/
def P16434724984764071618.Spec : Prop :=
  ∀ n, (P16434724984764071618.a n : ℤ) = A244762 n

end A244762

/-! ## A244762.P2101960872262235145

`∑[lcm(3, a(n-1))+1]` with `a(0)=1, a(1)=2`
-/

namespace A244762.P2101960872262235145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.lcm 3 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244762.P2101960872262235145

namespace A244762

/-- `∑[lcm(3, a(n-1))+1]` -/
def P2101960872262235145.Spec : Prop :=
  ∀ n, (P2101960872262235145.a n : ℤ) = A244762 n

end A244762

/-! ## A244762.P13605613726064894700

`∑[∑[3*a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A244762.P13605613726064894700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244762.P13605613726064894700

namespace A244762

/-- `∑[∑[3*a(n-1)]]` -/
def P13605613726064894700.Spec : Prop :=
  ∀ n, (P13605613726064894700.a n : ℤ) = A244762 n

end A244762

/-! ## A244762.P15919302577791274558

`3*a(n-1)-1+n` with `a(0)=1`
-/

namespace A244762.P15919302577791274558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - 1 + (n : ℤ)

end

end A244762.P15919302577791274558

namespace A244762

/-- `3*a(n-1)-1+n` -/
def P15919302577791274558.Spec : Prop :=
  ∀ n, P15919302577791274558.a n = A244762 n

theorem P15919302577791274558.correct : P15919302577791274558.Spec := by
  intro n
  simp only [A244762, Nat.add_sub_cancel, A244762.P15919302577791274558.a, A244762.P14866162302524220977.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A244762

/-! ## A244762.P1655710119659767547

`3*a(n-1)-(1-n)` with `a(0)=1`
-/

namespace A244762.P1655710119659767547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (1 - (n : ℤ))

end

end A244762.P1655710119659767547

namespace A244762

/-- `3*a(n-1)-(1-n)` -/
def P1655710119659767547.Spec : Prop :=
  ∀ n, P1655710119659767547.a n = A244762 n

theorem P1655710119659767547.correct : P1655710119659767547.Spec := by
  intro n
  simp only [A244762, Nat.add_sub_cancel, A244762.P1655710119659767547.a, A244762.P14866162302524220977.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A244762

/-! ## A244762.P18057779323630688400

`a(n-1)/cot(atan(3))+n-1` with `a(0)=1`
-/

namespace A244762.P18057779323630688400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) + ((n : ℤ) - 1 : ℝ)

end

end A244762.P18057779323630688400

namespace A244762

/-- `a(n-1)/cot(atan(3))+n-1` -/
def P18057779323630688400.Spec : Prop :=
  ∀ n, P18057779323630688400.a n = (A244762 n : ℝ)

end A244762

/-! ## A244762.P10717174838361597624

`a(n-1)/sqrt(1/9)+n-1` with `a(0)=1`
-/

namespace A244762.P10717174838361597624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) + ((n : ℤ) - 1 : ℝ)

end

end A244762.P10717174838361597624

namespace A244762

/-- `a(n-1)/sqrt(1/9)+n-1` -/
def P10717174838361597624.Spec : Prop :=
  ∀ n, P10717174838361597624.a n = (A244762 n : ℝ)

end A244762

/-! ## A244762.P14719205778920484738

`a(n-1)/(1-2/3)-1+n` with `a(0)=1`
-/

namespace A244762.P14719205778920484738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (2 : ℚ) / 3) - 1 + (n : ℚ)

end

end A244762.P14719205778920484738

namespace A244762

/-- `a(n-1)/(1-2/3)-1+n` -/
def P14719205778920484738.Spec : Prop :=
  ∀ n, P14719205778920484738.a n = (A244762 n : ℚ)

end A244762

/-! ## A244762.P4869129657634834019

`∑[a(n-1)+a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=2`
-/

namespace A244762.P4869129657634834019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244762.P4869129657634834019

namespace A244762

/-- `∑[a(n-1)+a(n-1)+a(n-1)+1]` -/
def P4869129657634834019.Spec : Prop :=
  ∀ n, (P4869129657634834019.a n : ℤ) = A244762 n

end A244762

/-! ## A244762.P14866162302524220977

`a(n-1)-1+a(n-1)+a(n-1)+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244762

/-- `a(n-1)-1+a(n-1)+a(n-1)+n` -/
def P14866162302524220977.Spec : Prop :=
  ∀ n, P14866162302524220977.a n = A244762 n

theorem P14866162302524220977.correct : P14866162302524220977.Spec := by
  intro n
  simp only [A244762]

end A244762

/-! ## A244762.P723234618124398150

`n-(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A244762.P723234618124398150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A244762.P723234618124398150

namespace A244762

/-- `n-(1-a(n-1)-a(n-1)-a(n-1))` -/
def P723234618124398150.Spec : Prop :=
  ∀ n, P723234618124398150.a n = A244762 n

end A244762

/-! ## A244762.P13153393716039960957

`∑[A060816(n)]`
-/

namespace A244762.P13153393716039960957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244762.P13153393716039960957

namespace A244762

/-- `∑[A060816(n)]` -/
def P13153393716039960957.Spec : Prop :=
  ∀ n, P13153393716039960957.a n = A244762 n

end A244762

/-! ## A244762.P3927933684398993200

`A090328(n+1)-n`
-/

namespace A244762.P3927933684398993200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090328 (n + 1) - (n : ℤ)

end

end A244762.P3927933684398993200

namespace A244762

/-- `A090328(n+1)-n` -/
def P3927933684398993200.Spec : Prop :=
  ∀ n, P3927933684398993200.a n = A244762 n

end A244762

/-! ## A244762.P6682666702723299482

`∑[A246360(2*n+1)]-n`
-/

namespace A244762.P6682666702723299482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246360 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A244762.P6682666702723299482

namespace A244762

/-- `∑[A246360(2*n+1)]-n` -/
def P6682666702723299482.Spec : Prop :=
  ∀ n, P6682666702723299482.a n = A244762 n

end A244762

/-! ## A244762.P746266465846336522

`A023443(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A244762.P746266465846336522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023443 n + 3 * a (n - 1)

end

end A244762.P746266465846336522

namespace A244762

/-- `A023443(n)+3*a(n-1)` -/
def P746266465846336522.Spec : Prop :=
  ∀ n, P746266465846336522.a n = A244762 n

end A244762

/-!
# A244763: Prime numbers ending in the prime number 13.

The programs for A244763, the canonical program `A244763.P5327502581973112065` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244763 has offset 1).

The definition of A244763 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244763.anchor (n : ℕ) (hn : 1 ≤ n) : A244763 n = (Nat.nth (fun p => p.Prime ∧ p % 100 ∈ ({13} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A244.A244763`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244763.P5327502581973112065

`∩[A141885(n+1), A141937(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244763

/-- `∩[A141885(n+1), A141937(n+1)]` -/
def P5327502581973112065.Spec : Prop :=
  ∀ n, (P5327502581973112065.a n : ℤ) = A244763 (n + 1)

theorem P5327502581973112065.correct : P5327502581973112065.Spec := by
  intro n
  simp only [A244763, Nat.add_sub_cancel]

end A244763

/-! ## A244763.P14071720958641613750

`p?[10*10*n+13]`
-/

namespace A244763.P14071720958641613750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A244763.P14071720958641613750

namespace A244763

/-- `p?[10*10*n+13]` -/
def P14071720958641613750.Spec : Prop :=
  ∀ n, (P14071720958641613750.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P14391485480462400101

`or(1, p?[A053743(n)-32])`
-/

namespace A244763.P14391485480462400101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A244763.P14391485480462400101

namespace A244763

/-- `or(1, p?[A053743(n)-32])` -/
def P14391485480462400101.Spec : Prop :=
  ∀ n, P14391485480462400101.a n = A244763 (n + 1)

end A244763

/-! ## A244763.P17628969708462884689

`∩[A008846(n+1), A141937(n+1)]`
-/

namespace A244763.P17628969708462884689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P17628969708462884689

namespace A244763

/-- `∩[A008846(n+1), A141937(n+1)]` -/
def P17628969708462884689.Spec : Prop :=
  ∀ n, (P17628969708462884689.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P18221060532832641462

`∩[A122487(n+1), A141937(n+1)]`
-/

namespace A244763.P18221060532832641462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P18221060532832641462

namespace A244763

/-- `∩[A122487(n+1), A141937(n+1)]` -/
def P18221060532832641462.Spec : Prop :=
  ∀ n, (P18221060532832641462.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P10765952992734049274

`∩[A053028(n+1), A141937(n+1)]`
-/

namespace A244763.P10765952992734049274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P10765952992734049274

namespace A244763

/-- `∩[A053028(n+1), A141937(n+1)]` -/
def P10765952992734049274.Spec : Prop :=
  ∀ n, (P10765952992734049274.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P954609099947362684

`∩[A030431(n+1), A045809(n+1)]`
-/

namespace A244763.P954609099947362684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P954609099947362684

namespace A244763

/-- `∩[A030431(n+1), A045809(n+1)]` -/
def P954609099947362684.Spec : Prop :=
  ∀ n, (P954609099947362684.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P3856044180255308203

`∩[A045414(n+1), A045809(n+1)]`
-/

namespace A244763.P3856044180255308203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P3856044180255308203

namespace A244763

/-- `∩[A045414(n+1), A045809(n+1)]` -/
def P3856044180255308203.Spec : Prop :=
  ∀ n, (P3856044180255308203.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P8345271018659601097

`∩[A045809(n+1), A141885(n+1)]`
-/

namespace A244763.P8345271018659601097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P8345271018659601097

namespace A244763

/-- `∩[A045809(n+1), A141885(n+1)]` -/
def P8345271018659601097.Spec : Prop :=
  ∀ n, (P8345271018659601097.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P5169064731755734049

`∩[A045809(n+1), A141937(n+1)]`
-/

namespace A244763.P5169064731755734049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P5169064731755734049

namespace A244763

/-- `∩[A045809(n+1), A141937(n+1)]` -/
def P5169064731755734049.Spec : Prop :=
  ∀ n, (P5169064731755734049.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P4757428245141981151

`∩[A045809(n+1), A256177(n+1)]`
-/

namespace A244763.P4757428245141981151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P4757428245141981151

namespace A244763

/-- `∩[A045809(n+1), A256177(n+1)]` -/
def P4757428245141981151.Spec : Prop :=
  ∀ n, (P4757428245141981151.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P18043441663672140623

`∩[A030431(n+1), A045801(n+1)+2]`
-/

namespace A244763.P18043441663672140623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P18043441663672140623

namespace A244763

/-- `∩[A030431(n+1), A045801(n+1)+2]` -/
def P18043441663672140623.Spec : Prop :=
  ∀ n, (P18043441663672140623.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P3904054642450275420

`∩[A045414(n+1), A045801(n+1)+2]`
-/

namespace A244763.P3904054642450275420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P3904054642450275420

namespace A244763

/-- `∩[A045414(n+1), A045801(n+1)+2]` -/
def P3904054642450275420.Spec : Prop :=
  ∀ n, (P3904054642450275420.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P9798980694140999058

`∩[A045801(n+1)+2, A141885(n+1)]`
-/

namespace A244763.P9798980694140999058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P9798980694140999058

namespace A244763

/-- `∩[A045801(n+1)+2, A141885(n+1)]` -/
def P9798980694140999058.Spec : Prop :=
  ∀ n, (P9798980694140999058.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P2585523922247633020

`∩[A045801(n+1)+2, A256177(n+1)]`
-/

namespace A244763.P2585523922247633020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P2585523922247633020

namespace A244763

/-- `∩[A045801(n+1)+2, A256177(n+1)]` -/
def P2585523922247633020.Spec : Prop :=
  ∀ n, (P2585523922247633020.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P17134259956679510589

`∩[A002144(n+1), A141937(n+1)]`
-/

namespace A244763.P17134259956679510589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P17134259956679510589

namespace A244763

/-- `∩[A002144(n+1), A141937(n+1)]` -/
def P17134259956679510589.Spec : Prop :=
  ∀ n, (P17134259956679510589.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P9415582107603409477

`∩[A002313(n+1), A141937(n+1)]`
-/

namespace A244763.P9415582107603409477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P9415582107603409477

namespace A244763

/-- `∩[A002313(n+1), A141937(n+1)]` -/
def P9415582107603409477.Spec : Prop :=
  ∀ n, (P9415582107603409477.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P5428441837078680417

`∩[A141937(n+1), A280084(n+1)]`
-/

namespace A244763.P5428441837078680417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P5428441837078680417

namespace A244763

/-- `∩[A141937(n+1), A280084(n+1)]` -/
def P5428441837078680417.Spec : Prop :=
  ∀ n, (P5428441837078680417.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P4030554692701392523

`∩[A003626(n+1), A141937(n+1)]`
-/

namespace A244763.P4030554692701392523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P4030554692701392523

namespace A244763

/-- `∩[A003626(n+1), A141937(n+1)]` -/
def P4030554692701392523.Spec : Prop :=
  ∀ n, (P4030554692701392523.a n : ℤ) = A244763 (n + 1)

end A244763

/-! ## A244763.P9644827381337339482

`∩[A055025(n+1), A141937(n+1)]`
-/

namespace A244763.P9644827381337339482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P9644827381337339482

namespace A244763

/-- `∩[A055025(n+1), A141937(n+1)]` -/
def P9644827381337339482.Spec : Prop :=
  ∀ n, (P9644827381337339482.a n : ℤ) = A244763 (n + 1)

end A244763

/-!
# A244764: Prime numbers ending in the prime number 17.

The programs for A244764, the canonical program `A244764.P12006317535235448752` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244764 has offset 1).

The definition of A244764 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244764.anchor (n : ℕ) (hn : 1 ≤ n) : A244764 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 17) (n - 1) : ℤ)` in `Proof.A244.A244764`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244764.P9971365291596153548

`∩[A141886(n+1), A141940(n+1)]`
-/

namespace A244764.P9971365291596153548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P9971365291596153548

namespace A244764

/-- `∩[A141886(n+1), A141940(n+1)]` -/
def P9971365291596153548.Spec : Prop :=
  ∀ n, (P9971365291596153548.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P12006317535235448752

`p?[10*10*n+17]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244764

/-- `p?[10*10*n+17]` -/
def P12006317535235448752.Spec : Prop :=
  ∀ n, (P12006317535235448752.a n : ℤ) = A244764 (n + 1)

theorem P12006317535235448752.correct : P12006317535235448752.Spec := by
  intro n
  simp only [A244764, Nat.add_sub_cancel]

end A244764

/-! ## A244764.P9343698798923376695

`∩[A122487(n+1), A141940(n+1)]`
-/

namespace A244764.P9343698798923376695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P9343698798923376695

namespace A244764

/-- `∩[A122487(n+1), A141940(n+1)]` -/
def P9343698798923376695.Spec : Prop :=
  ∀ n, (P9343698798923376695.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P5007876766820012991

`∩[A053028(n+1), A141940(n+1)]`
-/

namespace A244764.P5007876766820012991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P5007876766820012991

namespace A244764

/-- `∩[A053028(n+1), A141940(n+1)]` -/
def P5007876766820012991.Spec : Prop :=
  ∀ n, (P5007876766820012991.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P6419290525345336388

`∩[A141940(n+1), A191218(n+1)]`
-/

namespace A244764.P6419290525345336388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P6419290525345336388

namespace A244764

/-- `∩[A141940(n+1), A191218(n+1)]` -/
def P6419290525345336388.Spec : Prop :=
  ∀ n, (P6419290525345336388.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P5929014077340420142

`∩[A030432(n+1), A045803(n+1)]`
-/

namespace A244764.P5929014077340420142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P5929014077340420142

namespace A244764

/-- `∩[A030432(n+1), A045803(n+1)]` -/
def P5929014077340420142.Spec : Prop :=
  ∀ n, (P5929014077340420142.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P12081727192472153497

`∩[A045357(n+1), A045803(n+1)]`
-/

namespace A244764.P12081727192472153497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P12081727192472153497

namespace A244764

/-- `∩[A045357(n+1), A045803(n+1)]` -/
def P12081727192472153497.Spec : Prop :=
  ∀ n, (P12081727192472153497.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P2323047464201089987

`∩[A045380(n+1), A045803(n+1)]`
-/

namespace A244764.P2323047464201089987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P2323047464201089987

namespace A244764

/-- `∩[A045380(n+1), A045803(n+1)]` -/
def P2323047464201089987.Spec : Prop :=
  ∀ n, (P2323047464201089987.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P560096774764679578

`∩[A045803(n+1), A141886(n+1)]`
-/

namespace A244764.P560096774764679578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P560096774764679578

namespace A244764

/-- `∩[A045803(n+1), A141886(n+1)]` -/
def P560096774764679578.Spec : Prop :=
  ∀ n, (P560096774764679578.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P14055655490251638201

`∩[A045803(n+1), A141940(n+1)]`
-/

namespace A244764.P14055655490251638201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P14055655490251638201

namespace A244764

/-- `∩[A045803(n+1), A141940(n+1)]` -/
def P14055655490251638201.Spec : Prop :=
  ∀ n, (P14055655490251638201.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P12233982090041715468

`∩[A002144(n+1), A141940(n+1)]`
-/

namespace A244764.P12233982090041715468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P12233982090041715468

namespace A244764

/-- `∩[A002144(n+1), A141940(n+1)]` -/
def P12233982090041715468.Spec : Prop :=
  ∀ n, (P12233982090041715468.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P16287901800818989416

`∩[A002313(n+1), A141940(n+1)]`
-/

namespace A244764.P16287901800818989416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P16287901800818989416

namespace A244764

/-- `∩[A002313(n+1), A141940(n+1)]` -/
def P16287901800818989416.Spec : Prop :=
  ∀ n, (P16287901800818989416.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P9682678974291967948

`∩[A003626(n+1), A141940(n+1)]`
-/

namespace A244764.P9682678974291967948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P9682678974291967948

namespace A244764

/-- `∩[A003626(n+1), A141940(n+1)]` -/
def P9682678974291967948.Spec : Prop :=
  ∀ n, (P9682678974291967948.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P14954108200461350306

`∩[A055025(n+1), A141940(n+1)]`
-/

namespace A244764.P14954108200461350306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P14954108200461350306

namespace A244764

/-- `∩[A055025(n+1), A141940(n+1)]` -/
def P14954108200461350306.Spec : Prop :=
  ∀ n, (P14954108200461350306.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P14555938563536177047

`∩[A120960(n+1), A141940(n+1)]`
-/

namespace A244764.P14555938563536177047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P14555938563536177047

namespace A244764

/-- `∩[A120960(n+1), A141940(n+1)]` -/
def P14555938563536177047.Spec : Prop :=
  ∀ n, (P14555938563536177047.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P15187636663403336466

`∩[A141940(n+1), A351535(n+1)]`
-/

namespace A244764.P15187636663403336466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P15187636663403336466

namespace A244764

/-- `∩[A141940(n+1), A351535(n+1)]` -/
def P15187636663403336466.Spec : Prop :=
  ∀ n, (P15187636663403336466.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P1027698592987771705

`∩[A125018(n+1), A141940(n+1)]`
-/

namespace A244764.P1027698592987771705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P1027698592987771705

namespace A244764

/-- `∩[A125018(n+1), A141940(n+1)]` -/
def P1027698592987771705.Spec : Prop :=
  ∀ n, (P1027698592987771705.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P18010528790490693152

`∩[A017581(2*n+1)+n, A002144(n+2)]`
-/

namespace A244764.P18010528790490693152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P18010528790490693152

namespace A244764

/-- `∩[A017581(2*n+1)+n, A002144(n+2)]` -/
def P18010528790490693152.Spec : Prop :=
  ∀ n, (P18010528790490693152.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P8155729323153130652

`∩[A017581(2*n+1)+n, A002313(n+2)]`
-/

namespace A244764.P8155729323153130652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P8155729323153130652

namespace A244764

/-- `∩[A017581(2*n+1)+n, A002313(n+2)]` -/
def P8155729323153130652.Spec : Prop :=
  ∀ n, (P8155729323153130652.a n : ℤ) = A244764 (n + 1)

end A244764

/-! ## A244764.P2661601709008260115

`∩[A127547(2*n+1)-n, A002144(n+2)]`
-/

namespace A244764.P2661601709008260115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244764.P2661601709008260115

namespace A244764

/-- `∩[A127547(2*n+1)-n, A002144(n+2)]` -/
def P2661601709008260115.Spec : Prop :=
  ∀ n, (P2661601709008260115.a n : ℤ) = A244764 (n + 1)

end A244764

/-!
# A244765: Prime numbers ending in the prime number 19.

The programs for A244765, the canonical program `A244765.P13638012274075522273` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244765 has offset 1).

The definition of A244765 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244765.anchor (n : ℕ) (hn : 1 ≤ n) : A244765 n = (Nat.nth (fun p => p.Prime ∧ p % 100 ∈ ({19} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A244.A244765`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244765.P13638012274075522273

`∩[A141887(n+1), A141942(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244765

/-- `∩[A141887(n+1), A141942(n+1)]` -/
def P13638012274075522273.Spec : Prop :=
  ∀ n, (P13638012274075522273.a n : ℤ) = A244765 (n + 1)

theorem P13638012274075522273.correct : P13638012274075522273.Spec := by
  intro n
  simp only [A244765, Nat.add_sub_cancel]

end A244765

/-! ## A244765.P1721812602025570054

`p?[10*10*n+19]`
-/

namespace A244765.P1721812602025570054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A244765.P1721812602025570054

namespace A244765

/-- `p?[10*10*n+19]` -/
def P1721812602025570054.Spec : Prop :=
  ∀ n, (P1721812602025570054.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P13937576328353267569

`or(p?[A053741(2*n)-1], A035214(n))`
-/

namespace A244765.P13937576328353267569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A035214 n)

end

end A244765.P13937576328353267569

namespace A244765

/-- `or(p?[A053741(2*n)-1], A035214(n))` -/
def P13937576328353267569.Spec : Prop :=
  ∀ n, P13937576328353267569.a n = A244765 (n + 1)

end A244765

/-! ## A244765.P3612894885961962417

`or(p?[A053741(2*n)-1], A073267(n))`
-/

namespace A244765.P3612894885961962417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A073267 n)

end

end A244765.P3612894885961962417

namespace A244765

/-- `or(p?[A053741(2*n)-1], A073267(n))` -/
def P3612894885961962417.Spec : Prop :=
  ∀ n, P3612894885961962417.a n = A244765 (n + 1)

end A244765

/-! ## A244765.P10138544187408846624

`or(p?[A053741(2*n)-1], A268643(n))`
-/

namespace A244765.P10138544187408846624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A268643 n)

end

end A244765.P10138544187408846624

namespace A244765

/-- `or(p?[A053741(2*n)-1], A268643(n))` -/
def P10138544187408846624.Spec : Prop :=
  ∀ n, P10138544187408846624.a n = A244765 (n + 1)

end A244765

/-! ## A244765.P7908953053795120096

`∩[A122869(n+1), A141942(n+1)]`
-/

namespace A244765.P7908953053795120096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P7908953053795120096

namespace A244765

/-- `∩[A122869(n+1), A141942(n+1)]` -/
def P7908953053795120096.Spec : Prop :=
  ∀ n, (P7908953053795120096.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P12390280186284650307

`∩[A030433(n+1), A045803(n+1)]`
-/

namespace A244765.P12390280186284650307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P12390280186284650307

namespace A244765

/-- `∩[A030433(n+1), A045803(n+1)]` -/
def P12390280186284650307.Spec : Prop :=
  ∀ n, (P12390280186284650307.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P14871077150709612262

`∩[A045457(n+1), A045803(n+1)]`
-/

namespace A244765.P14871077150709612262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P14871077150709612262

namespace A244765

/-- `∩[A045457(n+1), A045803(n+1)]` -/
def P14871077150709612262.Spec : Prop :=
  ∀ n, (P14871077150709612262.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P2314790674136560087

`∩[A045803(n+1), A141887(n+1)]`
-/

namespace A244765.P2314790674136560087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P2314790674136560087

namespace A244765

/-- `∩[A045803(n+1), A141887(n+1)]` -/
def P2314790674136560087.Spec : Prop :=
  ∀ n, (P2314790674136560087.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P7630552126150330959

`∩[A045803(n+1), A141942(n+1)]`
-/

namespace A244765.P7630552126150330959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P7630552126150330959

namespace A244765

/-- `∩[A045803(n+1), A141942(n+1)]` -/
def P7630552126150330959.Spec : Prop :=
  ∀ n, (P7630552126150330959.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P3093582672868211124

`∩[A045803(n+1), A327753(n+1)]`
-/

namespace A244765.P3093582672868211124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P3093582672868211124

namespace A244765

/-- `∩[A045803(n+1), A327753(n+1)]` -/
def P3093582672868211124.Spec : Prop :=
  ∀ n, (P3093582672868211124.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P18366748121128969943

`∩[A030433(n+1), A045802(n+1)-2]`
-/

namespace A244765.P18366748121128969943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P18366748121128969943

namespace A244765

/-- `∩[A030433(n+1), A045802(n+1)-2]` -/
def P18366748121128969943.Spec : Prop :=
  ∀ n, (P18366748121128969943.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P12835490891134707761

`∩[A045457(n+1), A045802(n+1)-2]`
-/

namespace A244765.P12835490891134707761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P12835490891134707761

namespace A244765

/-- `∩[A045457(n+1), A045802(n+1)-2]` -/
def P12835490891134707761.Spec : Prop :=
  ∀ n, (P12835490891134707761.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P18288172751164737974

`∩[A002145(n+1), A141942(n+1)]`
-/

namespace A244765.P18288172751164737974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P18288172751164737974

namespace A244765

/-- `∩[A002145(n+1), A141942(n+1)]` -/
def P18288172751164737974.Spec : Prop :=
  ∀ n, (P18288172751164737974.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P2950079754081209388

`∩[A003626(n+1), A141942(n+1)]`
-/

namespace A244765.P2950079754081209388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P2950079754081209388

namespace A244765

/-- `∩[A003626(n+1), A141942(n+1)]` -/
def P2950079754081209388.Spec : Prop :=
  ∀ n, (P2950079754081209388.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P7353362019851481640

`∩[A045326(n+1), A141942(n+1)]`
-/

namespace A244765.P7353362019851481640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P7353362019851481640

namespace A244765

/-- `∩[A045326(n+1), A141942(n+1)]` -/
def P7353362019851481640.Spec : Prop :=
  ∀ n, (P7353362019851481640.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P5521959838640044814

`∩[A141942(n+1), A296923(n+1)]`
-/

namespace A244765.P5521959838640044814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P5521959838640044814

namespace A244765

/-- `∩[A141942(n+1), A296923(n+1)]` -/
def P5521959838640044814.Spec : Prop :=
  ∀ n, (P5521959838640044814.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P3828856455136253830

`∩[A141942(n+1), A197504(n+1)]`
-/

namespace A244765.P3828856455136253830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P3828856455136253830

namespace A244765

/-- `∩[A141942(n+1), A197504(n+1)]` -/
def P3828856455136253830.Spec : Prop :=
  ∀ n, (P3828856455136253830.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P16354854661552283739

`∩[A141942(n+1), A332555(n+1)]`
-/

namespace A244765.P16354854661552283739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P16354854661552283739

namespace A244765

/-- `∩[A141942(n+1), A332555(n+1)]` -/
def P16354854661552283739.Spec : Prop :=
  ∀ n, (P16354854661552283739.a n : ℤ) = A244765 (n + 1)

end A244765

/-! ## A244765.P13476749187760431257

`∩[A017605(2*n+1)+n, A002145(n+2)]`
-/

namespace A244765.P13476749187760431257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P13476749187760431257

namespace A244765

/-- `∩[A017605(2*n+1)+n, A002145(n+2)]` -/
def P13476749187760431257.Spec : Prop :=
  ∀ n, (P13476749187760431257.a n : ℤ) = A244765 (n + 1)

end A244765

/-!
# A244766: Prime numbers ending in the prime number 23.

The programs for A244766, the canonical program `A244766.P13647786941148802303` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244766 has offset 1).

The definition of A244766 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244766.anchor (n : ℕ) (hn : 1 ≤ n) : A244766 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 23) (n - 1) : ℤ)` in `Proof.A244.A244766`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244766.P2065965752533980651

`∩[A105854(n+1), A141945(n+1)]`
-/

namespace A244766.P2065965752533980651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P2065965752533980651

namespace A244766

/-- `∩[A105854(n+1), A141945(n+1)]` -/
def P2065965752533980651.Spec : Prop :=
  ∀ n, (P2065965752533980651.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P13647786941148802303

`p?[10*10*n+23]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244766

/-- `p?[10*10*n+23]` -/
def P13647786941148802303.Spec : Prop :=
  ∀ n, (P13647786941148802303.a n : ℤ) = A244766 (n + 1)

theorem P13647786941148802303.correct : P13647786941148802303.Spec := by
  intro n
  simp only [A244766, Nat.add_sub_cancel]

end A244766

/-! ## A244766.P8670458590979274462

`or(1, p?[or(2, 25*n-2)])`
-/

namespace A244766.P8670458590979274462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((25 * n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A244766.P8670458590979274462

namespace A244766

/-- `or(1, p?[or(2, 25*n-2)])` -/
def P8670458590979274462.Spec : Prop :=
  ∀ n, P8670458590979274462.a n = A244766 (n + 1)

end A244766

/-! ## A244766.P3480624410829575651

`∩[A106865(n+1), A141945(n+1)]`
-/

namespace A244766.P3480624410829575651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P3480624410829575651

namespace A244766

/-- `∩[A106865(n+1), A141945(n+1)]` -/
def P3480624410829575651.Spec : Prop :=
  ∀ n, (P3480624410829575651.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P8369142990353613761

`∩[A122870(n+1), A141945(n+1)]`
-/

namespace A244766.P8369142990353613761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P8369142990353613761

namespace A244766

/-- `∩[A122870(n+1), A141945(n+1)]` -/
def P8369142990353613761.Spec : Prop :=
  ∀ n, (P8369142990353613761.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P3802330908168328556

`∩[A141945(n+1), A385225(n+1)]`
-/

namespace A244766.P3802330908168328556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P3802330908168328556

namespace A244766

/-- `∩[A141945(n+1), A385225(n+1)]` -/
def P3802330908168328556.Spec : Prop :=
  ∀ n, (P3802330908168328556.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P15212079208758841784

`∩[A053027(n+1), A141945(n+1)]`
-/

namespace A244766.P15212079208758841784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P15212079208758841784

namespace A244766

/-- `∩[A053027(n+1), A141945(n+1)]` -/
def P15212079208758841784.Spec : Prop :=
  ∀ n, (P15212079208758841784.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P17617714066067460470

`∩[A030431(n+1), A045806(n+1)]`
-/

namespace A244766.P17617714066067460470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P17617714066067460470

namespace A244766

/-- `∩[A030431(n+1), A045806(n+1)]` -/
def P17617714066067460470.Spec : Prop :=
  ∀ n, (P17617714066067460470.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P14026450492611953915

`∩[A045414(n+1), A045806(n+1)]`
-/

namespace A244766.P14026450492611953915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P14026450492611953915

namespace A244766

/-- `∩[A045414(n+1), A045806(n+1)]` -/
def P14026450492611953915.Spec : Prop :=
  ∀ n, (P14026450492611953915.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P9961601533483825499

`∩[A045806(n+1), A105854(n+1)]`
-/

namespace A244766.P9961601533483825499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P9961601533483825499

namespace A244766

/-- `∩[A045806(n+1), A105854(n+1)]` -/
def P9961601533483825499.Spec : Prop :=
  ∀ n, (P9961601533483825499.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P14437525258861857050

`∩[A045806(n+1), A141945(n+1)]`
-/

namespace A244766.P14437525258861857050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P14437525258861857050

namespace A244766

/-- `∩[A045806(n+1), A141945(n+1)]` -/
def P14437525258861857050.Spec : Prop :=
  ∀ n, (P14437525258861857050.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P9489244813202472464

`∩[A045806(n+1), A256177(n+1)]`
-/

namespace A244766.P9489244813202472464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P9489244813202472464

namespace A244766

/-- `∩[A045806(n+1), A256177(n+1)]` -/
def P9489244813202472464.Spec : Prop :=
  ∀ n, (P9489244813202472464.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P15960968688087144599

`∩[A030431(n+1), A045802(n+1)+2]`
-/

namespace A244766.P15960968688087144599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P15960968688087144599

namespace A244766

/-- `∩[A030431(n+1), A045802(n+1)+2]` -/
def P15960968688087144599.Spec : Prop :=
  ∀ n, (P15960968688087144599.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P12440004478980613760

`∩[A045802(n+1)+2, A105854(n+1)]`
-/

namespace A244766.P12440004478980613760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P12440004478980613760

namespace A244766

/-- `∩[A045802(n+1)+2, A105854(n+1)]` -/
def P12440004478980613760.Spec : Prop :=
  ∀ n, (P12440004478980613760.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P3850428783219218561

`∩[A045414(n+2), A045802(n+2)+2]`
-/

namespace A244766.P3850428783219218561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P3850428783219218561

namespace A244766

/-- `∩[A045414(n+2), A045802(n+2)+2]` -/
def P3850428783219218561.Spec : Prop :=
  ∀ n, (P3850428783219218561.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P946632413908052852

`∩[A139513(n+1), A141945(n+1)]`
-/

namespace A244766.P946632413908052852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P946632413908052852

namespace A244766

/-- `∩[A139513(n+1), A141945(n+1)]` -/
def P946632413908052852.Spec : Prop :=
  ∀ n, (P946632413908052852.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P15309628110715777355

`∩[A141945(n+1), A240920(n+1)]`
-/

namespace A244766.P15309628110715777355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P15309628110715777355

namespace A244766

/-- `∩[A141945(n+1), A240920(n+1)]` -/
def P15309628110715777355.Spec : Prop :=
  ∀ n, (P15309628110715777355.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P7533871814207685977

`∩[A141945(n+1), A296922(n+1)]`
-/

namespace A244766.P7533871814207685977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P7533871814207685977

namespace A244766

/-- `∩[A141945(n+1), A296922(n+1)]` -/
def P7533871814207685977.Spec : Prop :=
  ∀ n, (P7533871814207685977.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P13590462761885242283

`∩[A002145(n+1), A141945(n+1)]`
-/

namespace A244766.P13590462761885242283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P13590462761885242283

namespace A244766

/-- `∩[A002145(n+1), A141945(n+1)]` -/
def P13590462761885242283.Spec : Prop :=
  ∀ n, (P13590462761885242283.a n : ℤ) = A244766 (n + 1)

end A244766

/-! ## A244766.P6802547041484897339

`∩[A091727(n+1), A141945(n+1)]`
-/

namespace A244766.P6802547041484897339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244766.P6802547041484897339

namespace A244766

/-- `∩[A091727(n+1), A141945(n+1)]` -/
def P6802547041484897339.Spec : Prop :=
  ∀ n, (P6802547041484897339.a n : ℤ) = A244766 (n + 1)

end A244766

/-!
# A244767: Prime numbers ending in the prime number 29.

The programs for A244767, the canonical program `A244767.P13304431940333006892` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244767 has offset 1).

The definition of A244767 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244767.anchor (n : ℕ) (hn : 1 ≤ n) : A244767 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 29) (n - 1) : ℤ)` in `Proof.A244.A244767`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244767.P8018875425893157690

`∩[A141883(n+1), A141930(n+1)]`
-/

namespace A244767.P8018875425893157690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P8018875425893157690

namespace A244767

/-- `∩[A141883(n+1), A141930(n+1)]` -/
def P8018875425893157690.Spec : Prop :=
  ∀ n, (P8018875425893157690.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P13304431940333006892

`p?[10*10*n+29]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244767

/-- `p?[10*10*n+29]` -/
def P13304431940333006892.Spec : Prop :=
  ∀ n, (P13304431940333006892.a n : ℤ) = A244767 (n + 1)

theorem P13304431940333006892.correct : P13304431940333006892.Spec := by
  intro n
  simp only [A244767, Nat.add_sub_cancel]

end A244767

/-! ## A244767.P18390877226864282046

`or(1, p?[A053743(n)-16])`
-/

namespace A244767.P18390877226864282046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A244767.P18390877226864282046

namespace A244767

/-- `or(1, p?[A053743(n)-16])` -/
def P18390877226864282046.Spec : Prop :=
  ∀ n, P18390877226864282046.a n = A244767 (n + 1)

end A244767

/-! ## A244767.P6648613157851399859

`A000027(p?[A053743(n)-16])`
-/

namespace A244767.P6648613157851399859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244767.P6648613157851399859

namespace A244767

/-- `A000027(p?[A053743(n)-16])` -/
def P6648613157851399859.Spec : Prop :=
  ∀ n, P6648613157851399859.a n = A244767 (n + 1)

end A244767

/-! ## A244767.P3171051129015413965

`∩[A033205(n+1), A141930(n+1)]`
-/

namespace A244767.P3171051129015413965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P3171051129015413965

namespace A244767

/-- `∩[A033205(n+1), A141930(n+1)]` -/
def P3171051129015413965.Spec : Prop :=
  ∀ n, (P3171051129015413965.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P1927340351275507572

`∩[A141930(n+1), A216815(n+1)]`
-/

namespace A244767.P1927340351275507572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P1927340351275507572

namespace A244767

/-- `∩[A141930(n+1), A216815(n+1)]` -/
def P1927340351275507572.Spec : Prop :=
  ∀ n, (P1927340351275507572.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P6517534656729094711

`∩[A091729(n+1), A141930(n+1)]`
-/

namespace A244767.P6517534656729094711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P6517534656729094711

namespace A244767

/-- `∩[A091729(n+1), A141930(n+1)]` -/
def P6517534656729094711.Spec : Prop :=
  ∀ n, (P6517534656729094711.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P7890255670427400083

`∩[A141930(n+1), A210499(n+1)]`
-/

namespace A244767.P7890255670427400083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P7890255670427400083

namespace A244767

/-- `∩[A141930(n+1), A210499(n+1)]` -/
def P7890255670427400083.Spec : Prop :=
  ∀ n, (P7890255670427400083.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P5831531865919926311

`∩[A096785(n+1), A141930(n+1)]`
-/

namespace A244767.P5831531865919926311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P5831531865919926311

namespace A244767

/-- `∩[A096785(n+1), A141930(n+1)]` -/
def P5831531865919926311.Spec : Prop :=
  ∀ n, (P5831531865919926311.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P3457773671380935592

`∩[A030433(n+1), A045802(n+1)]`
-/

namespace A244767.P3457773671380935592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P3457773671380935592

namespace A244767

/-- `∩[A030433(n+1), A045802(n+1)]` -/
def P3457773671380935592.Spec : Prop :=
  ∀ n, (P3457773671380935592.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P5751567006067672716

`∩[A045457(n+1), A045802(n+1)]`
-/

namespace A244767.P5751567006067672716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P5751567006067672716

namespace A244767

/-- `∩[A045457(n+1), A045802(n+1)]` -/
def P5751567006067672716.Spec : Prop :=
  ∀ n, (P5751567006067672716.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P2741174943487857542

`∩[A045802(n+1), A141883(n+1)]`
-/

namespace A244767.P2741174943487857542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P2741174943487857542

namespace A244767

/-- `∩[A045802(n+1), A141883(n+1)]` -/
def P2741174943487857542.Spec : Prop :=
  ∀ n, (P2741174943487857542.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P15708358565264288384

`∩[A045802(n+1), A141930(n+1)]`
-/

namespace A244767.P15708358565264288384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P15708358565264288384

namespace A244767

/-- `∩[A045802(n+1), A141930(n+1)]` -/
def P15708358565264288384.Spec : Prop :=
  ∀ n, (P15708358565264288384.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P12474962091218017364

`∩[A030433(n+1), A045806(n+1)+2]`
-/

namespace A244767.P12474962091218017364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P12474962091218017364

namespace A244767

/-- `∩[A030433(n+1), A045806(n+1)+2]` -/
def P12474962091218017364.Spec : Prop :=
  ∀ n, (P12474962091218017364.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P6014150463220031665

`∩[A045457(n+1), A045806(n+1)+2]`
-/

namespace A244767.P6014150463220031665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P6014150463220031665

namespace A244767

/-- `∩[A045457(n+1), A045806(n+1)+2]` -/
def P6014150463220031665.Spec : Prop :=
  ∀ n, (P6014150463220031665.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P17292512014560318920

`∩[A045806(n+1)+2, A141883(n+1)]`
-/

namespace A244767.P17292512014560318920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P17292512014560318920

namespace A244767

/-- `∩[A045806(n+1)+2, A141883(n+1)]` -/
def P17292512014560318920.Spec : Prop :=
  ∀ n, (P17292512014560318920.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P8701229256154482428

`∩[A030433(n+1), A045803(n+1)-2]`
-/

namespace A244767.P8701229256154482428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P8701229256154482428

namespace A244767

/-- `∩[A030433(n+1), A045803(n+1)-2]` -/
def P8701229256154482428.Spec : Prop :=
  ∀ n, (P8701229256154482428.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P9632743457330342525

`∩[A045457(n+1), A045803(n+1)-2]`
-/

namespace A244767.P9632743457330342525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P9632743457330342525

namespace A244767

/-- `∩[A045457(n+1), A045803(n+1)-2]` -/
def P9632743457330342525.Spec : Prop :=
  ∀ n, (P9632743457330342525.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P5264668419621196725

`∩[A002144(n+1), A141930(n+1)]`
-/

namespace A244767.P5264668419621196725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P5264668419621196725

namespace A244767

/-- `∩[A002144(n+1), A141930(n+1)]` -/
def P5264668419621196725.Spec : Prop :=
  ∀ n, (P5264668419621196725.a n : ℤ) = A244767 (n + 1)

end A244767

/-! ## A244767.P10647910358674310416

`∩[A002313(n+1), A141930(n+1)]`
-/

namespace A244767.P10647910358674310416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244767.P10647910358674310416

namespace A244767

/-- `∩[A002313(n+1), A141930(n+1)]` -/
def P10647910358674310416.Spec : Prop :=
  ∀ n, (P10647910358674310416.a n : ℤ) = A244767 (n + 1)

end A244767

/-!
# A244768: Prime numbers ending in the prime number 37.

The programs for A244768, the canonical program `A244768.P4568832735318401239` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244768 has offset 1).

The definition of A244768 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244768.anchor (n : ℕ) (hn : 1 ≤ n) : A244768 n = (Nat.nth (fun p => p.Prime ∧ p % 100 ∈ ({37} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A244.A244768`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244768.P4568832735318401239

`∩[A141886(n+1), A141936(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244768

/-- `∩[A141886(n+1), A141936(n+1)]` -/
def P4568832735318401239.Spec : Prop :=
  ∀ n, (P4568832735318401239.a n : ℤ) = A244768 (n + 1)

theorem P4568832735318401239.correct : P4568832735318401239.Spec := by
  intro n
  simp only [A244768, Nat.add_sub_cancel]

end A244768

/-! ## A244768.P11481339585009362608

`p?[10*10*n+37]`
-/

namespace A244768.P11481339585009362608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A244768.P11481339585009362608

namespace A244768

/-- `p?[10*10*n+37]` -/
def P11481339585009362608.Spec : Prop :=
  ∀ n, (P11481339585009362608.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P8020776398794333527

`∩[A008846(n+1), A141936(n+1)]`
-/

namespace A244768.P8020776398794333527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P8020776398794333527

namespace A244768

/-- `∩[A008846(n+1), A141936(n+1)]` -/
def P8020776398794333527.Spec : Prop :=
  ∀ n, (P8020776398794333527.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P16301068300176333706

`record[p?[A242181(A000265(n+1))-2]]`
-/

namespace A244768.P16301068300176333706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (A000265 (n + 1)).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244768.P16301068300176333706

namespace A244768

/-- `record[p?[A242181(A000265(n+1))-2]]` -/
def P16301068300176333706.Spec : Prop :=
  ∀ n, P16301068300176333706.a n = A244768 (n + 1)

end A244768

/-! ## A244768.P13040109687788272595

`∩[A122487(n+1), A141936(n+1)]`
-/

namespace A244768.P13040109687788272595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P13040109687788272595

namespace A244768

/-- `∩[A122487(n+1), A141936(n+1)]` -/
def P13040109687788272595.Spec : Prop :=
  ∀ n, (P13040109687788272595.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P1634092153245018818

`∩[A053028(n+1), A141936(n+1)]`
-/

namespace A244768.P1634092153245018818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P1634092153245018818

namespace A244768

/-- `∩[A053028(n+1), A141936(n+1)]` -/
def P1634092153245018818.Spec : Prop :=
  ∀ n, (P1634092153245018818.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P5560247853843966823

`∩[A141936(n+1), A191218(n+1)]`
-/

namespace A244768.P5560247853843966823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P5560247853843966823

namespace A244768

/-- `∩[A141936(n+1), A191218(n+1)]` -/
def P5560247853843966823.Spec : Prop :=
  ∀ n, (P5560247853843966823.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P12953671005448623024

`∩[A030432(n+1), A045809(n+1)]`
-/

namespace A244768.P12953671005448623024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P12953671005448623024

namespace A244768

/-- `∩[A030432(n+1), A045809(n+1)]` -/
def P12953671005448623024.Spec : Prop :=
  ∀ n, (P12953671005448623024.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P13702870995426599013

`∩[A045357(n+1), A045809(n+1)]`
-/

namespace A244768.P13702870995426599013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P13702870995426599013

namespace A244768

/-- `∩[A045357(n+1), A045809(n+1)]` -/
def P13702870995426599013.Spec : Prop :=
  ∀ n, (P13702870995426599013.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P15884397989191598060

`∩[A045380(n+1), A045809(n+1)]`
-/

namespace A244768.P15884397989191598060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P15884397989191598060

namespace A244768

/-- `∩[A045380(n+1), A045809(n+1)]` -/
def P15884397989191598060.Spec : Prop :=
  ∀ n, (P15884397989191598060.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P17247701655244353099

`∩[A045809(n+1), A141886(n+1)]`
-/

namespace A244768.P17247701655244353099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P17247701655244353099

namespace A244768

/-- `∩[A045809(n+1), A141886(n+1)]` -/
def P17247701655244353099.Spec : Prop :=
  ∀ n, (P17247701655244353099.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P14457671995724432116

`∩[A045809(n+1), A141936(n+1)]`
-/

namespace A244768.P14457671995724432116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P14457671995724432116

namespace A244768

/-- `∩[A045809(n+1), A141936(n+1)]` -/
def P14457671995724432116.Spec : Prop :=
  ∀ n, (P14457671995724432116.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P7202646731866154841

`∩[A002144(n+1), A141936(n+1)]`
-/

namespace A244768.P7202646731866154841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P7202646731866154841

namespace A244768

/-- `∩[A002144(n+1), A141936(n+1)]` -/
def P7202646731866154841.Spec : Prop :=
  ∀ n, (P7202646731866154841.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P6884113529528264411

`∩[A002313(n+1), A141936(n+1)]`
-/

namespace A244768.P6884113529528264411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P6884113529528264411

namespace A244768

/-- `∩[A002313(n+1), A141936(n+1)]` -/
def P6884113529528264411.Spec : Prop :=
  ∀ n, (P6884113529528264411.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P10183652978778088423

`∩[A003626(n+1), A141936(n+1)]`
-/

namespace A244768.P10183652978778088423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P10183652978778088423

namespace A244768

/-- `∩[A003626(n+1), A141936(n+1)]` -/
def P10183652978778088423.Spec : Prop :=
  ∀ n, (P10183652978778088423.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P1816895666594306014

`∩[A242181(2*n+1)-2, A045356(n+2)]`
-/

namespace A244768.P1816895666594306014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P1816895666594306014

namespace A244768

/-- `∩[A242181(2*n+1)-2, A045356(n+2)]` -/
def P1816895666594306014.Spec : Prop :=
  ∀ n, (P1816895666594306014.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P3442592254305487139

`∩[A125018(n+1), A141936(n+1)]`
-/

namespace A244768.P3442592254305487139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P3442592254305487139

namespace A244768

/-- `∩[A125018(n+1), A141936(n+1)]` -/
def P3442592254305487139.Spec : Prop :=
  ∀ n, (P3442592254305487139.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P15974921889066422476

`∩[A141936(n+1), A281292(n+1)]`
-/

namespace A244768.P15974921889066422476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P15974921889066422476

namespace A244768

/-- `∩[A141936(n+1), A281292(n+1)]` -/
def P15974921889066422476.Spec : Prop :=
  ∀ n, (P15974921889066422476.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P14023430240239008889

`∩[A231754(n+1), A141936(n+1)]`
-/

namespace A244768.P14023430240239008889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P14023430240239008889

namespace A244768

/-- `∩[A231754(n+1), A141936(n+1)]` -/
def P14023430240239008889.Spec : Prop :=
  ∀ n, (P14023430240239008889.a n : ℤ) = A244768 (n + 1)

end A244768

/-! ## A244768.P2204009842156107874

`filter[A045809(n+1), A185708(#)]`
-/

namespace A244768.P2204009842156107874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A244768.P2204009842156107874

namespace A244768

/-- `filter[A045809(n+1), A185708(#)]` -/
def P2204009842156107874.Spec : Prop :=
  ∀ n, P2204009842156107874.a n = A244768 (n + 1)

end A244768

/-!
# A244769: Prime numbers ending in the prime number 43.

The programs for A244769, the canonical program `A244769.P9226794016113281846` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244769 has offset 1).

The definition of A244769 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244769.anchor (n : ℕ) (hn : 1 ≤ n) : A244769 n = (Nat.nth (fun p => p.Prime ∧ p % 100 ∈ ({43} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A244.A244769`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244769.P9226794016113281846

`∩[A105854(n+1), A141941(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244769

/-- `∩[A105854(n+1), A141941(n+1)]` -/
def P9226794016113281846.Spec : Prop :=
  ∀ n, (P9226794016113281846.a n : ℤ) = A244769 (n + 1)

theorem P9226794016113281846.correct : P9226794016113281846.Spec := by
  intro n
  simp only [A244769, Nat.add_sub_cancel]

end A244769

/-! ## A244769.P3213762586263038090

`p?[10*10*n+43]`
-/

namespace A244769.P3213762586263038090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A244769.P3213762586263038090

namespace A244769

/-- `p?[10*10*n+43]` -/
def P3213762586263038090.Spec : Prop :=
  ∀ n, (P3213762586263038090.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P15256594898985522225

`∩[A105854(n+1), A172469(n+1)]`
-/

namespace A244769.P15256594898985522225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P15256594898985522225

namespace A244769

/-- `∩[A105854(n+1), A172469(n+1)]` -/
def P15256594898985522225.Spec : Prop :=
  ∀ n, (P15256594898985522225.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P11777853279276782088

`∩[A106865(n+1), A141941(n+1)]`
-/

namespace A244769.P11777853279276782088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P11777853279276782088

namespace A244769

/-- `∩[A106865(n+1), A141941(n+1)]` -/
def P11777853279276782088.Spec : Prop :=
  ∀ n, (P11777853279276782088.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P9567566801227026642

`∩[A122870(n+1), A141941(n+1)]`
-/

namespace A244769.P9567566801227026642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P9567566801227026642

namespace A244769

/-- `∩[A122870(n+1), A141941(n+1)]` -/
def P9567566801227026642.Spec : Prop :=
  ∀ n, (P9567566801227026642.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P352289617413747230

`∩[A141941(n+1), A385225(n+1)]`
-/

namespace A244769.P352289617413747230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P352289617413747230

namespace A244769

/-- `∩[A141941(n+1), A385225(n+1)]` -/
def P352289617413747230.Spec : Prop :=
  ∀ n, (P352289617413747230.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P3929038521258677546

`∩[A053027(n+1), A141941(n+1)]`
-/

namespace A244769.P3929038521258677546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P3929038521258677546

namespace A244769

/-- `∩[A053027(n+1), A141941(n+1)]` -/
def P3929038521258677546.Spec : Prop :=
  ∀ n, (P3929038521258677546.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P2341417793372931362

`∩[A030431(n+1), A045800(n+1)]`
-/

namespace A244769.P2341417793372931362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P2341417793372931362

namespace A244769

/-- `∩[A030431(n+1), A045800(n+1)]` -/
def P2341417793372931362.Spec : Prop :=
  ∀ n, (P2341417793372931362.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P11312919844480441717

`∩[A045414(n+1), A045800(n+1)]`
-/

namespace A244769.P11312919844480441717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P11312919844480441717

namespace A244769

/-- `∩[A045414(n+1), A045800(n+1)]` -/
def P11312919844480441717.Spec : Prop :=
  ∀ n, (P11312919844480441717.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P9929062010544110428

`∩[A045800(n+1), A105854(n+1)]`
-/

namespace A244769.P9929062010544110428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P9929062010544110428

namespace A244769

/-- `∩[A045800(n+1), A105854(n+1)]` -/
def P9929062010544110428.Spec : Prop :=
  ∀ n, (P9929062010544110428.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P1547200949210252212

`∩[A045800(n+1), A141941(n+1)]`
-/

namespace A244769.P1547200949210252212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P1547200949210252212

namespace A244769

/-- `∩[A045800(n+1), A141941(n+1)]` -/
def P1547200949210252212.Spec : Prop :=
  ∀ n, (P1547200949210252212.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P9443068912248993349

`∩[A105854(n+1), A159254(n+1)]`
-/

namespace A244769.P9443068912248993349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P9443068912248993349

namespace A244769

/-- `∩[A105854(n+1), A159254(n+1)]` -/
def P9443068912248993349.Spec : Prop :=
  ∀ n, (P9443068912248993349.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P14936035651554462198

`∩[A045800(n+1), A256177(n+1)]`
-/

namespace A244769.P14936035651554462198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P14936035651554462198

namespace A244769

/-- `∩[A045800(n+1), A256177(n+1)]` -/
def P14936035651554462198.Spec : Prop :=
  ∀ n, (P14936035651554462198.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P10749999370685637302

`∩[A139513(n+1), A141941(n+1)]`
-/

namespace A244769.P10749999370685637302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P10749999370685637302

namespace A244769

/-- `∩[A139513(n+1), A141941(n+1)]` -/
def P10749999370685637302.Spec : Prop :=
  ∀ n, (P10749999370685637302.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P6141534491993515113

`∩[A141941(n+1), A296922(n+1)]`
-/

namespace A244769.P6141534491993515113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P6141534491993515113

namespace A244769

/-- `∩[A141941(n+1), A296922(n+1)]` -/
def P6141534491993515113.Spec : Prop :=
  ∀ n, (P6141534491993515113.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P15830339529285379930

`∩[A002145(n+1), A141941(n+1)]`
-/

namespace A244769.P15830339529285379930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P15830339529285379930

namespace A244769

/-- `∩[A002145(n+1), A141941(n+1)]` -/
def P15830339529285379930.Spec : Prop :=
  ∀ n, (P15830339529285379930.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P11338033019357699636

`∩[A045326(n+1), A141941(n+1)]`
-/

namespace A244769.P11338033019357699636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P11338033019357699636

namespace A244769

/-- `∩[A045326(n+1), A141941(n+1)]` -/
def P11338033019357699636.Spec : Prop :=
  ∀ n, (P11338033019357699636.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P13046658702930070702

`∩[A091727(n+1), A141941(n+1)]`
-/

namespace A244769.P13046658702930070702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P13046658702930070702

namespace A244769

/-- `∩[A091727(n+1), A141941(n+1)]` -/
def P13046658702930070702.Spec : Prop :=
  ∀ n, (P13046658702930070702.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P12818780167938761204

`∩[A141941(n+1), A197504(n+1)]`
-/

namespace A244769.P12818780167938761204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P12818780167938761204

namespace A244769

/-- `∩[A141941(n+1), A197504(n+1)]` -/
def P12818780167938761204.Spec : Prop :=
  ∀ n, (P12818780167938761204.a n : ℤ) = A244769 (n + 1)

end A244769

/-! ## A244769.P2987381648216810273

`∩[A105854(n+1), A156619(n+1)]`
-/

namespace A244769.P2987381648216810273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P2987381648216810273

namespace A244769

/-- `∩[A105854(n+1), A156619(n+1)]` -/
def P2987381648216810273.Spec : Prop :=
  ∀ n, (P2987381648216810273.a n : ℤ) = A244769 (n + 1)

end A244769

/-!
# A244770: Prime numbers ending in the prime number 47.

The programs for A244770, the canonical program `A244770.P11883348413783480154` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244770 has offset 1).

The definition of A244770 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244770.anchor (n : ℕ) (hn : 1 ≤ n) : A244770 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 47) (n - 1) : ℤ)` in `Proof.A244.A244770`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244770.P9755431235094136566

`∩[A141882(n+1), A141944(n+1)]`
-/

namespace A244770.P9755431235094136566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P9755431235094136566

namespace A244770

/-- `∩[A141882(n+1), A141944(n+1)]` -/
def P9755431235094136566.Spec : Prop :=
  ∀ n, (P9755431235094136566.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P11883348413783480154

`p?[10*10*n+47]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244770

/-- `p?[10*10*n+47]` -/
def P11883348413783480154.Spec : Prop :=
  ∀ n, (P11883348413783480154.a n : ℤ) = A244770 (n + 1)

theorem P11883348413783480154.correct : P11883348413783480154.Spec := by
  intro n
  simp only [A244770, Nat.add_sub_cancel]

end A244770

/-! ## A244770.P10268828252741434252

`or(1, p?[A053743(n)+2])`
-/

namespace A244770.P10268828252741434252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A244770.P10268828252741434252

namespace A244770

/-- `or(1, p?[A053743(n)+2])` -/
def P10268828252741434252.Spec : Prop :=
  ∀ n, P10268828252741434252.a n = A244770 (n + 1)

end A244770

/-! ## A244770.P8393565073109812835

`A000027(p?[A053743(n)+2])`
-/

namespace A244770.P8393565073109812835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244770.P8393565073109812835

namespace A244770

/-- `A000027(p?[A053743(n)+2])` -/
def P8393565073109812835.Spec : Prop :=
  ∀ n, P8393565073109812835.a n = A244770 (n + 1)

end A244770

/-! ## A244770.P6186312956374024110

`A000027(p?[or(2, A053743(n))])`
-/

namespace A244770.P6186312956374024110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A053743 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244770.P6186312956374024110

namespace A244770

/-- `A000027(p?[or(2, A053743(n))])` -/
def P6186312956374024110.Spec : Prop :=
  ∀ n, P6186312956374024110.a n = A244770 (n + 1)

end A244770

/-! ## A244770.P15679300282742613612

`∩[A106865(n+1), A141944(n+1)]`
-/

namespace A244770.P15679300282742613612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P15679300282742613612

namespace A244770

/-- `∩[A106865(n+1), A141944(n+1)]` -/
def P15679300282742613612.Spec : Prop :=
  ∀ n, (P15679300282742613612.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P9528502931065817345

`∩[A122870(n+1), A141944(n+1)]`
-/

namespace A244770.P9528502931065817345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P9528502931065817345

namespace A244770

/-- `∩[A122870(n+1), A141944(n+1)]` -/
def P9528502931065817345.Spec : Prop :=
  ∀ n, (P9528502931065817345.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P7393250651357673095

`∩[A141944(n+1), A385225(n+1)]`
-/

namespace A244770.P7393250651357673095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P7393250651357673095

namespace A244770

/-- `∩[A141944(n+1), A385225(n+1)]` -/
def P7393250651357673095.Spec : Prop :=
  ∀ n, (P7393250651357673095.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P2209881811976758779

`∩[A053027(n+1), A141944(n+1)]`
-/

namespace A244770.P2209881811976758779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P2209881811976758779

namespace A244770

/-- `∩[A053027(n+1), A141944(n+1)]` -/
def P2209881811976758779.Spec : Prop :=
  ∀ n, (P2209881811976758779.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P3708223747801672409

`p?[A053743(n)+2]%A309385(n+1)`
-/

namespace A244770.P3708223747801672409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A309385 (n + 1))

end

end A244770.P3708223747801672409

namespace A244770

/-- `p?[A053743(n)+2]%A309385(n+1)` -/
def P3708223747801672409.Spec : Prop :=
  ∀ n, P3708223747801672409.a n = A244770 (n + 1)

end A244770

/-! ## A244770.P9129100961428488713

`∩[A141944(n+1), A348421(n+1)]`
-/

namespace A244770.P9129100961428488713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P9129100961428488713

namespace A244770

/-- `∩[A141944(n+1), A348421(n+1)]` -/
def P9129100961428488713.Spec : Prop :=
  ∀ n, (P9129100961428488713.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P8806160192817778375

`∩[A030432(n+1), A045802(n+1)]`
-/

namespace A244770.P8806160192817778375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P8806160192817778375

namespace A244770

/-- `∩[A030432(n+1), A045802(n+1)]` -/
def P8806160192817778375.Spec : Prop :=
  ∀ n, (P8806160192817778375.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P16576354965574108132

`∩[A045357(n+1), A045802(n+1)]`
-/

namespace A244770.P16576354965574108132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P16576354965574108132

namespace A244770

/-- `∩[A045357(n+1), A045802(n+1)]` -/
def P16576354965574108132.Spec : Prop :=
  ∀ n, (P16576354965574108132.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P11805626038947816545

`∩[A045380(n+1), A045802(n+1)]`
-/

namespace A244770.P11805626038947816545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P11805626038947816545

namespace A244770

/-- `∩[A045380(n+1), A045802(n+1)]` -/
def P11805626038947816545.Spec : Prop :=
  ∀ n, (P11805626038947816545.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P4053985020964839946

`∩[A045802(n+1), A141882(n+1)]`
-/

namespace A244770.P4053985020964839946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P4053985020964839946

namespace A244770

/-- `∩[A045802(n+1), A141882(n+1)]` -/
def P4053985020964839946.Spec : Prop :=
  ∀ n, (P4053985020964839946.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P13017514858478853544

`∩[A045802(n+1), A141944(n+1)]`
-/

namespace A244770.P13017514858478853544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P13017514858478853544

namespace A244770

/-- `∩[A045802(n+1), A141944(n+1)]` -/
def P13017514858478853544.Spec : Prop :=
  ∀ n, (P13017514858478853544.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P17788398578481628638

`∩[A030432(n+1), A045800(n+1)-2]`
-/

namespace A244770.P17788398578481628638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P17788398578481628638

namespace A244770

/-- `∩[A030432(n+1), A045800(n+1)-2]` -/
def P17788398578481628638.Spec : Prop :=
  ∀ n, (P17788398578481628638.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P16594533181528865605

`∩[A045380(n+1), A045800(n+1)-2]`
-/

namespace A244770.P16594533181528865605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P16594533181528865605

namespace A244770

/-- `∩[A045380(n+1), A045800(n+1)-2]` -/
def P16594533181528865605.Spec : Prop :=
  ∀ n, (P16594533181528865605.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P1600606680370731062

`∩[A045800(n+1)-2, A141882(n+1)]`
-/

namespace A244770.P1600606680370731062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P1600606680370731062

namespace A244770

/-- `∩[A045800(n+1)-2, A141882(n+1)]` -/
def P1600606680370731062.Spec : Prop :=
  ∀ n, (P1600606680370731062.a n : ℤ) = A244770 (n + 1)

end A244770

/-! ## A244770.P14841201560938224332

`∩[A139513(n+1), A141944(n+1)]`
-/

namespace A244770.P14841201560938224332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244770.P14841201560938224332

namespace A244770

/-- `∩[A139513(n+1), A141944(n+1)]` -/
def P14841201560938224332.Spec : Prop :=
  ∀ n, (P14841201560938224332.a n : ℤ) = A244770 (n + 1)

end A244770

/-!
# A244771: Prime numbers ending in the prime number 53.

The programs for A244771, the canonical program `A244771.P15240048733038666063` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244771 has offset 1).

The definition of A244771 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244771.anchor (n : ℕ) (hn : 1 ≤ n) : A244771 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 53) (n - 1) : ℤ)` in `Proof.A244.A244771`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244771.P10779607583824880502

`∩[A141885(n+1), A141929(n+1)]`
-/

namespace A244771.P10779607583824880502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P10779607583824880502

namespace A244771

/-- `∩[A141885(n+1), A141929(n+1)]` -/
def P10779607583824880502.Spec : Prop :=
  ∀ n, (P10779607583824880502.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P15240048733038666063

`p?[10*10*n-47]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244771

/-- `p?[10*10*n-47]` -/
def P15240048733038666063.Spec : Prop :=
  ∀ n, P15240048733038666063.a n = A244771 (n + 1)

theorem P15240048733038666063.correct : P15240048733038666063.Spec := by
  intro n
  simp only [A244771, Nat.add_sub_cancel]

end A244771

/-! ## A244771.P7820595166224008957

`or(1, p?[or(2, 25*(n+1))+3])`
-/

namespace A244771.P7820595166224008957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (25 * (n + 1)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A244771.P7820595166224008957

namespace A244771

/-- `or(1, p?[or(2, 25*(n+1))+3])` -/
def P7820595166224008957.Spec : Prop :=
  ∀ n, (P7820595166224008957.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P17533531961524272725

`∩[A122487(n+1), A141929(n+1)]`
-/

namespace A244771.P17533531961524272725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P17533531961524272725

namespace A244771

/-- `∩[A122487(n+1), A141929(n+1)]` -/
def P17533531961524272725.Spec : Prop :=
  ∀ n, (P17533531961524272725.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P8393682166546701047

`∩[A053028(n+1), A141929(n+1)]`
-/

namespace A244771.P8393682166546701047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P8393682166546701047

namespace A244771

/-- `∩[A053028(n+1), A141929(n+1)]` -/
def P8393682166546701047.Spec : Prop :=
  ∀ n, (P8393682166546701047.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P11214516902525140218

`∩[A030431(n+1), A045807(n+1)]`
-/

namespace A244771.P11214516902525140218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P11214516902525140218

namespace A244771

/-- `∩[A030431(n+1), A045807(n+1)]` -/
def P11214516902525140218.Spec : Prop :=
  ∀ n, (P11214516902525140218.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P9264178176428408508

`∩[A045414(n+1), A045807(n+1)]`
-/

namespace A244771.P9264178176428408508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P9264178176428408508

namespace A244771

/-- `∩[A045414(n+1), A045807(n+1)]` -/
def P9264178176428408508.Spec : Prop :=
  ∀ n, (P9264178176428408508.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P16443459894639257443

`∩[A045807(n+1), A141885(n+1)]`
-/

namespace A244771.P16443459894639257443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P16443459894639257443

namespace A244771

/-- `∩[A045807(n+1), A141885(n+1)]` -/
def P16443459894639257443.Spec : Prop :=
  ∀ n, (P16443459894639257443.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P11907339245457973212

`∩[A045807(n+1), A141929(n+1)]`
-/

namespace A244771.P11907339245457973212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P11907339245457973212

namespace A244771

/-- `∩[A045807(n+1), A141929(n+1)]` -/
def P11907339245457973212.Spec : Prop :=
  ∀ n, (P11907339245457973212.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P5145727923698366572

`∩[A002144(n+1), A141929(n+1)]`
-/

namespace A244771.P5145727923698366572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P5145727923698366572

namespace A244771

/-- `∩[A002144(n+1), A141929(n+1)]` -/
def P5145727923698366572.Spec : Prop :=
  ∀ n, (P5145727923698366572.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P14420207935297633566

`∩[A141929(n+1), A351535(n+1)]`
-/

namespace A244771.P14420207935297633566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P14420207935297633566

namespace A244771

/-- `∩[A141929(n+1), A351535(n+1)]` -/
def P14420207935297633566.Spec : Prop :=
  ∀ n, (P14420207935297633566.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P1812118857364776184

`∩[A004613(n+1), A141929(n+1)]`
-/

namespace A244771.P1812118857364776184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244771.P1812118857364776184

namespace A244771

/-- `∩[A004613(n+1), A141929(n+1)]` -/
def P1812118857364776184.Spec : Prop :=
  ∀ n, (P1812118857364776184.a n : ℤ) = A244771 (n + 1)

end A244771

/-! ## A244771.P9450731335068139854

`record[A006530(A053743(n)+8)]`
-/

namespace A244771.P9450731335068139854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053743 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244771.P9450731335068139854

namespace A244771

/-- `record[A006530(A053743(n)+8)]` -/
def P9450731335068139854.Spec : Prop :=
  ∀ n, P9450731335068139854.a n = A244771 (n + 1)

end A244771

/-! ## A244771.P10525897291148608452

`filter[A141929(n+1), A353812(#)]`
-/

namespace A244771.P10525897291148608452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A244771.P10525897291148608452

namespace A244771

/-- `filter[A141929(n+1), A353812(#)]` -/
def P10525897291148608452.Spec : Prop :=
  ∀ n, P10525897291148608452.a n = A244771 (n + 1)

end A244771

/-! ## A244771.P3615322968590535063

`filter[A141929(n+1), A353814(#)]`
-/

namespace A244771.P3615322968590535063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A244771.P3615322968590535063

namespace A244771

/-- `filter[A141929(n+1), A353814(#)]` -/
def P3615322968590535063.Spec : Prop :=
  ∀ n, P3615322968590535063.a n = A244771 (n + 1)

end A244771

/-! ## A244771.P436860656306333536

`filter[A141929(n+1), A358678(#)]`
-/

namespace A244771.P436860656306333536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A244771.P436860656306333536

namespace A244771

/-- `filter[A141929(n+1), A358678(#)]` -/
def P436860656306333536.Spec : Prop :=
  ∀ n, P436860656306333536.a n = A244771 (n + 1)

end A244771

/-! ## A244771.P13140157087161086418

`filter[A141929(n+1), A359150(#)]`
-/

namespace A244771.P13140157087161086418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A244771.P13140157087161086418

namespace A244771

/-- `filter[A141929(n+1), A359150(#)]` -/
def P13140157087161086418.Spec : Prop :=
  ∀ n, P13140157087161086418.a n = A244771 (n + 1)

end A244771

/-! ## A244771.P11617110269939719451

`record[A020639(A045805(2*n+1)+2)]`
-/

namespace A244771.P11617110269939719451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045805 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244771.P11617110269939719451

namespace A244771

/-- `record[A020639(A045805(2*n+1)+2)]` -/
def P11617110269939719451.Spec : Prop :=
  ∀ n, P11617110269939719451.a n = A244771 (n + 1)

end A244771

/-! ## A244771.P8369385759524531553

`record[A006530(A239124(n+1)+6*6*n)]`
-/

namespace A244771.P8369385759524531553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A239124 (n + 1) + (6 * (6 * n) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244771.P8369385759524531553

namespace A244771

/-- `record[A006530(A239124(n+1)+6*6*n)]` -/
def P8369385759524531553.Spec : Prop :=
  ∀ n, P8369385759524531553.a n = A244771 (n + 1)

end A244771

/-!
# A244772: Prime numbers ending in the prime number 59.

The programs for A244772, the canonical program `A244772.P12631898429802115247` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244772 has offset 1).

The definition of A244772 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244772.anchor (n : ℕ) (hn : 1 ≤ n) : A244772 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 59) (n - 1) : ℤ)` in `Proof.A244.A244772`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244772.P6469036372763941468

`∩[A141887(n+1), A141934(n+1)]`
-/

namespace A244772.P6469036372763941468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P6469036372763941468

namespace A244772

/-- `∩[A141887(n+1), A141934(n+1)]` -/
def P6469036372763941468.Spec : Prop :=
  ∀ n, (P6469036372763941468.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P12631898429802115247

`p?[10*10*n-41]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244772

/-- `p?[10*10*n-41]` -/
def P12631898429802115247.Spec : Prop :=
  ∀ n, P12631898429802115247.a n = A244772 (n + 1)

theorem P12631898429802115247.correct : P12631898429802115247.Spec := by
  intro n
  simp only [A244772, Nat.add_sub_cancel]

end A244772

/-! ## A244772.P17680751408224828702

`∩[A122869(n+1), A141934(n+1)]`
-/

namespace A244772.P17680751408224828702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P17680751408224828702

namespace A244772

/-- `∩[A122869(n+1), A141934(n+1)]` -/
def P17680751408224828702.Spec : Prop :=
  ∀ n, (P17680751408224828702.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P6799922823556361248

`∩[A030433(n+1), A045809(n+1)]`
-/

namespace A244772.P6799922823556361248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P6799922823556361248

namespace A244772

/-- `∩[A030433(n+1), A045809(n+1)]` -/
def P6799922823556361248.Spec : Prop :=
  ∀ n, (P6799922823556361248.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P4589377291051525992

`∩[A045457(n+1), A045809(n+1)]`
-/

namespace A244772.P4589377291051525992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P4589377291051525992

namespace A244772

/-- `∩[A045457(n+1), A045809(n+1)]` -/
def P4589377291051525992.Spec : Prop :=
  ∀ n, (P4589377291051525992.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P14699128508164484627

`∩[A045809(n+1), A141887(n+1)]`
-/

namespace A244772.P14699128508164484627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P14699128508164484627

namespace A244772

/-- `∩[A045809(n+1), A141887(n+1)]` -/
def P14699128508164484627.Spec : Prop :=
  ∀ n, (P14699128508164484627.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P16323831133315419312

`∩[A045809(n+1), A141934(n+1)]`
-/

namespace A244772.P16323831133315419312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P16323831133315419312

namespace A244772

/-- `∩[A045809(n+1), A141934(n+1)]` -/
def P16323831133315419312.Spec : Prop :=
  ∀ n, (P16323831133315419312.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P17513493565700984749

`∩[A141887(n+1), A159754(n+1)]`
-/

namespace A244772.P17513493565700984749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P17513493565700984749

namespace A244772

/-- `∩[A141887(n+1), A159754(n+1)]` -/
def P17513493565700984749.Spec : Prop :=
  ∀ n, (P17513493565700984749.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P2278908983503405602

`∩[A030433(n+1), A045805(n+1)+2]`
-/

namespace A244772.P2278908983503405602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P2278908983503405602

namespace A244772

/-- `∩[A030433(n+1), A045805(n+1)+2]` -/
def P2278908983503405602.Spec : Prop :=
  ∀ n, (P2278908983503405602.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P2085211488616500704

`∩[A045457(n+1), A045805(n+1)+2]`
-/

namespace A244772.P2085211488616500704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P2085211488616500704

namespace A244772

/-- `∩[A045457(n+1), A045805(n+1)+2]` -/
def P2085211488616500704.Spec : Prop :=
  ∀ n, (P2085211488616500704.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P12265896868022420206

`∩[A045805(n+1)+2, A141887(n+1)]`
-/

namespace A244772.P12265896868022420206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P12265896868022420206

namespace A244772

/-- `∩[A045805(n+1)+2, A141887(n+1)]` -/
def P12265896868022420206.Spec : Prop :=
  ∀ n, (P12265896868022420206.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P3164960215830433277

`∩[A030433(n+1), A045806(n+1)-2]`
-/

namespace A244772.P3164960215830433277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P3164960215830433277

namespace A244772

/-- `∩[A030433(n+1), A045806(n+1)-2]` -/
def P3164960215830433277.Spec : Prop :=
  ∀ n, (P3164960215830433277.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P14002702138455977999

`∩[A045457(n+1), A045806(n+1)-2]`
-/

namespace A244772.P14002702138455977999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P14002702138455977999

namespace A244772

/-- `∩[A045457(n+1), A045806(n+1)-2]` -/
def P14002702138455977999.Spec : Prop :=
  ∀ n, (P14002702138455977999.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P10256717398011174733

`p?[A159754(4*n+3)]%Δ[A016780(n)]`
-/

namespace A244772.P10256717398011174733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (n + 1) - f2 n)

end

end A244772.P10256717398011174733

namespace A244772

/-- `p?[A159754(4*n+3)]%Δ[A016780(n)]` -/
def P10256717398011174733.Spec : Prop :=
  ∀ n, P10256717398011174733.a n = A244772 (n + 1)

end A244772

/-! ## A244772.P18355455974493361911

`A001221(A002144(n+1))*p?[A159754(4*n+3)]`
-/

namespace A244772.P18355455974493361911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002144 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244772.P18355455974493361911

namespace A244772

/-- `A001221(A002144(n+1))*p?[A159754(4*n+3)]` -/
def P18355455974493361911.Spec : Prop :=
  ∀ n, P18355455974493361911.a n = A244772 (n + 1)

end A244772

/-! ## A244772.P13449497234820107800

`A001221(A241659(n+1))*p?[A159754(4*n+3)]`
-/

namespace A244772.P13449497234820107800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A241659 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244772.P13449497234820107800

namespace A244772

/-- `A001221(A241659(n+1))*p?[A159754(4*n+3)]` -/
def P13449497234820107800.Spec : Prop :=
  ∀ n, P13449497234820107800.a n = A244772 (n + 1)

end A244772

/-! ## A244772.P11720058361069658475

`∩[A002145(n+1), A141934(n+1)]`
-/

namespace A244772.P11720058361069658475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P11720058361069658475

namespace A244772

/-- `∩[A002145(n+1), A141934(n+1)]` -/
def P11720058361069658475.Spec : Prop :=
  ∀ n, (P11720058361069658475.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P4933415144886839126

`∩[A003626(n+1), A141934(n+1)]`
-/

namespace A244772.P4933415144886839126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P4933415144886839126

namespace A244772

/-- `∩[A003626(n+1), A141934(n+1)]` -/
def P4933415144886839126.Spec : Prop :=
  ∀ n, (P4933415144886839126.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P7194759849909480007

`∩[A045326(n+1), A141934(n+1)]`
-/

namespace A244772.P7194759849909480007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P7194759849909480007

namespace A244772

/-- `∩[A045326(n+1), A141934(n+1)]` -/
def P7194759849909480007.Spec : Prop :=
  ∀ n, (P7194759849909480007.a n : ℤ) = A244772 (n + 1)

end A244772

/-! ## A244772.P10035994860863721879

`∩[A141934(n+1), A197504(n+1)]`
-/

namespace A244772.P10035994860863721879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244772.P10035994860863721879

namespace A244772

/-- `∩[A141934(n+1), A197504(n+1)]` -/
def P10035994860863721879.Spec : Prop :=
  ∀ n, (P10035994860863721879.a n : ℤ) = A244772 (n + 1)

end A244772

/-!
# A244773: Prime numbers ending in the prime number 67.

The programs for A244773, the canonical program `A244773.P12702196863288574492` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244773 has offset 1).

The definition of A244773 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244773.anchor (n : ℕ) (hn : 1 ≤ n) : A244773 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 67) (n - 1) : ℤ)` in `Proof.A244.A244773`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244773.P14208110508999202877

`∩[A141882(n+1), A141940(n+1)]`
-/

namespace A244773.P14208110508999202877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P14208110508999202877

namespace A244773

/-- `∩[A141882(n+1), A141940(n+1)]` -/
def P14208110508999202877.Spec : Prop :=
  ∀ n, (P14208110508999202877.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P12702196863288574492

`p?[10*10*n-33]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244773

/-- `p?[10*10*n-33]` -/
def P12702196863288574492.Spec : Prop :=
  ∀ n, P12702196863288574492.a n = A244773 (n + 1)

theorem P12702196863288574492.correct : P12702196863288574492.Spec := by
  intro n
  simp only [A244773, Nat.add_sub_cancel]

end A244773

/-! ## A244773.P3441186137551234680

`∩[A122870(n+1), A141940(n+1)]`
-/

namespace A244773.P3441186137551234680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P3441186137551234680

namespace A244773

/-- `∩[A122870(n+1), A141940(n+1)]` -/
def P3441186137551234680.Spec : Prop :=
  ∀ n, (P3441186137551234680.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P5670571293688869604

`∩[A106865(n+1), A141940(n+1)]`
-/

namespace A244773.P5670571293688869604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P5670571293688869604

namespace A244773

/-- `∩[A106865(n+1), A141940(n+1)]` -/
def P5670571293688869604.Spec : Prop :=
  ∀ n, (P5670571293688869604.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P2208741811896024823

`∩[A053027(n+1), A141940(n+1)]`
-/

namespace A244773.P2208741811896024823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P2208741811896024823

namespace A244773

/-- `∩[A053027(n+1), A141940(n+1)]` -/
def P2208741811896024823.Spec : Prop :=
  ∀ n, (P2208741811896024823.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P12161997631223870668

`∩[A141940(n+1), A385225(n+1)]`
-/

namespace A244773.P12161997631223870668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P12161997631223870668

namespace A244773

/-- `∩[A141940(n+1), A385225(n+1)]` -/
def P12161997631223870668.Spec : Prop :=
  ∀ n, (P12161997631223870668.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P15349299060621224266

`∩[A141940(n+1), A348421(n+1)]`
-/

namespace A244773.P15349299060621224266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P15349299060621224266

namespace A244773

/-- `∩[A141940(n+1), A348421(n+1)]` -/
def P15349299060621224266.Spec : Prop :=
  ∀ n, (P15349299060621224266.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P8576471082427424312

`∩[A030432(n+1), A045808(n+1)]`
-/

namespace A244773.P8576471082427424312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P8576471082427424312

namespace A244773

/-- `∩[A030432(n+1), A045808(n+1)]` -/
def P8576471082427424312.Spec : Prop :=
  ∀ n, (P8576471082427424312.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P13823099900828809959

`∩[A045357(n+1), A045808(n+1)]`
-/

namespace A244773.P13823099900828809959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P13823099900828809959

namespace A244773

/-- `∩[A045357(n+1), A045808(n+1)]` -/
def P13823099900828809959.Spec : Prop :=
  ∀ n, (P13823099900828809959.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P3398084172962271657

`∩[A045380(n+1), A045808(n+1)]`
-/

namespace A244773.P3398084172962271657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P3398084172962271657

namespace A244773

/-- `∩[A045380(n+1), A045808(n+1)]` -/
def P3398084172962271657.Spec : Prop :=
  ∀ n, (P3398084172962271657.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P16742780288667211352

`∩[A045808(n+1), A141882(n+1)]`
-/

namespace A244773.P16742780288667211352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P16742780288667211352

namespace A244773

/-- `∩[A045808(n+1), A141882(n+1)]` -/
def P16742780288667211352.Spec : Prop :=
  ∀ n, (P16742780288667211352.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P3545974786535021949

`∩[A045808(n+1), A141940(n+1)]`
-/

namespace A244773.P3545974786535021949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P3545974786535021949

namespace A244773

/-- `∩[A045808(n+1), A141940(n+1)]` -/
def P3545974786535021949.Spec : Prop :=
  ∀ n, (P3545974786535021949.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P16760370245646295607

`∩[A002145(n+1), A141940(n+1)]`
-/

namespace A244773.P16760370245646295607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P16760370245646295607

namespace A244773

/-- `∩[A002145(n+1), A141940(n+1)]` -/
def P16760370245646295607.Spec : Prop :=
  ∀ n, (P16760370245646295607.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P15299614171000743

`∩[A085760(n+1), A141940(n+1)]`
-/

namespace A244773.P15299614171000743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P15299614171000743

namespace A244773

/-- `∩[A085760(n+1), A141940(n+1)]` -/
def P15299614171000743.Spec : Prop :=
  ∀ n, (P15299614171000743.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P1039294415078917322

`∩[A141940(n+1), A197504(n+1)]`
-/

namespace A244773.P1039294415078917322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P1039294415078917322

namespace A244773

/-- `∩[A141940(n+1), A197504(n+1)]` -/
def P1039294415078917322.Spec : Prop :=
  ∀ n, (P1039294415078917322.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P12901875340163887745

`∩[A141940(n+1), A332555(n+1)]`
-/

namespace A244773.P12901875340163887745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P12901875340163887745

namespace A244773

/-- `∩[A141940(n+1), A332555(n+1)]` -/
def P12901875340163887745.Spec : Prop :=
  ∀ n, (P12901875340163887745.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P4013830508622586193

`∩[A063144(n+1), A141940(n+1)]`
-/

namespace A244773.P4013830508622586193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P4013830508622586193

namespace A244773

/-- `∩[A063144(n+1), A141940(n+1)]` -/
def P4013830508622586193.Spec : Prop :=
  ∀ n, (P4013830508622586193.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P7598560964762654414

`∩[A094179(n+1), A141940(n+1)]`
-/

namespace A244773.P7598560964762654414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P7598560964762654414

namespace A244773

/-- `∩[A094179(n+1), A141940(n+1)]` -/
def P7598560964762654414.Spec : Prop :=
  ∀ n, (P7598560964762654414.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P4357313384543827600

`∩[A030432(n+1), A228157(n+1)]`
-/

namespace A244773.P4357313384543827600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P4357313384543827600

namespace A244773

/-- `∩[A030432(n+1), A228157(n+1)]` -/
def P4357313384543827600.Spec : Prop :=
  ∀ n, (P4357313384543827600.a n : ℤ) = A244773 (n + 1)

end A244773

/-! ## A244773.P1032172066868657054

`∩[A045357(n+1), A228157(n+1)]`
-/

namespace A244773.P1032172066868657054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244773.P1032172066868657054

namespace A244773

/-- `∩[A045357(n+1), A228157(n+1)]` -/
def P1032172066868657054.Spec : Prop :=
  ∀ n, (P1032172066868657054.a n : ℤ) = A244773 (n + 1)

end A244773

/-!
# A244774: Prime numbers ending in the prime number 73.

The programs for A244774, the canonical program `A244774.P13828711858479400930` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244774 has offset 1).

The definition of A244774 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244774.anchor (n : ℕ) (hn : 1 ≤ n) : A244774 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 73) (n - 1) : ℤ)` in `Proof.A244.A244774`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244774.P11335424055171117586

`∩[A141885(n+1), A141945(n+1)]`
-/

namespace A244774.P11335424055171117586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P11335424055171117586

namespace A244774

/-- `∩[A141885(n+1), A141945(n+1)]` -/
def P11335424055171117586.Spec : Prop :=
  ∀ n, (P11335424055171117586.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P13828711858479400930

`p?[10*10*n-27]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244774

/-- `p?[10*10*n-27]` -/
def P13828711858479400930.Spec : Prop :=
  ∀ n, P13828711858479400930.a n = A244774 (n + 1)

theorem P13828711858479400930.correct : P13828711858479400930.Spec := by
  intro n
  simp only [A244774, Nat.add_sub_cancel]

end A244774

/-! ## A244774.P9228069048680096200

`A000027(p?[A053742(n)-A000034(n)])`
-/

namespace A244774.P9228069048680096200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244774.P9228069048680096200

namespace A244774

/-- `A000027(p?[A053742(n)-A000034(n)])` -/
def P9228069048680096200.Spec : Prop :=
  ∀ n, P9228069048680096200.a n = A244774 (n + 1)

end A244774

/-! ## A244774.P2497907084363032815

`A000027(p?[A053742(n)-A010673(n)])`
-/

namespace A244774.P2497907084363032815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244774.P2497907084363032815

namespace A244774

/-- `A000027(p?[A053742(n)-A010673(n)])` -/
def P2497907084363032815.Spec : Prop :=
  ∀ n, P2497907084363032815.a n = A244774 (n + 1)

end A244774

/-! ## A244774.P14815537289578168131

`∩[A122487(n+1), A141945(n+1)]`
-/

namespace A244774.P14815537289578168131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P14815537289578168131

namespace A244774

/-- `∩[A122487(n+1), A141945(n+1)]` -/
def P14815537289578168131.Spec : Prop :=
  ∀ n, (P14815537289578168131.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P7495412946711687736

`∩[A053028(n+1), A141945(n+1)]`
-/

namespace A244774.P7495412946711687736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P7495412946711687736

namespace A244774

/-- `∩[A053028(n+1), A141945(n+1)]` -/
def P7495412946711687736.Spec : Prop :=
  ∀ n, (P7495412946711687736.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P5035766719571690184

`∩[A030431(n+1), A045801(n+1)]`
-/

namespace A244774.P5035766719571690184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P5035766719571690184

namespace A244774

/-- `∩[A030431(n+1), A045801(n+1)]` -/
def P5035766719571690184.Spec : Prop :=
  ∀ n, (P5035766719571690184.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P11435386577356039262

`∩[A045414(n+1), A045801(n+1)]`
-/

namespace A244774.P11435386577356039262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P11435386577356039262

namespace A244774

/-- `∩[A045414(n+1), A045801(n+1)]` -/
def P11435386577356039262.Spec : Prop :=
  ∀ n, (P11435386577356039262.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P15881636954396010592

`∩[A045801(n+1), A141885(n+1)]`
-/

namespace A244774.P15881636954396010592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P15881636954396010592

namespace A244774

/-- `∩[A045801(n+1), A141885(n+1)]` -/
def P15881636954396010592.Spec : Prop :=
  ∀ n, (P15881636954396010592.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P11679558020292663468

`∩[A045801(n+1), A141945(n+1)]`
-/

namespace A244774.P11679558020292663468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P11679558020292663468

namespace A244774

/-- `∩[A045801(n+1), A141945(n+1)]` -/
def P11679558020292663468.Spec : Prop :=
  ∀ n, (P11679558020292663468.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P3939800145109674264

`∩[A045801(n+1), A256177(n+1)]`
-/

namespace A244774.P3939800145109674264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P3939800145109674264

namespace A244774

/-- `∩[A045801(n+1), A256177(n+1)]` -/
def P3939800145109674264.Spec : Prop :=
  ∀ n, (P3939800145109674264.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P2945976763766531043

`∩[A030431(n+1), A045807(n+1)+2]`
-/

namespace A244774.P2945976763766531043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P2945976763766531043

namespace A244774

/-- `∩[A030431(n+1), A045807(n+1)+2]` -/
def P2945976763766531043.Spec : Prop :=
  ∀ n, (P2945976763766531043.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P17922597708170964471

`∩[A045414(n+1), A045807(n+1)+2]`
-/

namespace A244774.P17922597708170964471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P17922597708170964471

namespace A244774

/-- `∩[A045414(n+1), A045807(n+1)+2]` -/
def P17922597708170964471.Spec : Prop :=
  ∀ n, (P17922597708170964471.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P17783963668035369200

`∩[A045807(n+1)+2, A141885(n+1)]`
-/

namespace A244774.P17783963668035369200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P17783963668035369200

namespace A244774

/-- `∩[A045807(n+1)+2, A141885(n+1)]` -/
def P17783963668035369200.Spec : Prop :=
  ∀ n, (P17783963668035369200.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P14500594511822920619

`∩[A002144(n+1), A141945(n+1)]`
-/

namespace A244774.P14500594511822920619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P14500594511822920619

namespace A244774

/-- `∩[A002144(n+1), A141945(n+1)]` -/
def P14500594511822920619.Spec : Prop :=
  ∀ n, (P14500594511822920619.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P8902975829851307972

`∩[A045413(n+1), A265424(n)-2]`
-/

namespace A244774.P8902975829851307972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265424 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P8902975829851307972

namespace A244774

/-- `∩[A045413(n+1), A265424(n)-2]` -/
def P8902975829851307972.Spec : Prop :=
  ∀ n, (P8902975829851307972.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P11581779748505993810

`∩[A085759(n+1), A141945(n+1)]`
-/

namespace A244774.P11581779748505993810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P11581779748505993810

namespace A244774

/-- `∩[A085759(n+1), A141945(n+1)]` -/
def P11581779748505993810.Spec : Prop :=
  ∀ n, (P11581779748505993810.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P2879314830194014361

`∩[A351535(n+1), A141945(n+1)]`
-/

namespace A244774.P2879314830194014361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P2879314830194014361

namespace A244774

/-- `∩[A351535(n+1), A141945(n+1)]` -/
def P2879314830194014361.Spec : Prop :=
  ∀ n, (P2879314830194014361.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P7366093292755668758

`∩[A003653(n+1), A141945(n+1)]`
-/

namespace A244774.P7366093292755668758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P7366093292755668758

namespace A244774

/-- `∩[A003653(n+1), A141945(n+1)]` -/
def P7366093292755668758.Spec : Prop :=
  ∀ n, (P7366093292755668758.a n : ℤ) = A244774 (n + 1)

end A244774

/-! ## A244774.P2246967752495657097

`∩[A231754(n+1), A141945(n+1)]`
-/

namespace A244774.P2246967752495657097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244774.P2246967752495657097

namespace A244774

/-- `∩[A231754(n+1), A141945(n+1)]` -/
def P2246967752495657097.Spec : Prop :=
  ∀ n, (P2246967752495657097.a n : ℤ) = A244774 (n + 1)

end A244774

/-!
# A244775: Prime numbers ending in the prime number 79.

The programs for A244775, the canonical program `A244775.P13533006808998873907` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244775 has offset 1).

The definition of A244775 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244775.anchor (n : ℕ) (hn : 1 ≤ n) : A244775 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 79) (n - 1) : ℤ)` in `Proof.A244.A244775`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244775.P10708933847000512749

`∩[A141887(n+1), A141930(n+1)]`
-/

namespace A244775.P10708933847000512749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P10708933847000512749

namespace A244775

/-- `∩[A141887(n+1), A141930(n+1)]` -/
def P10708933847000512749.Spec : Prop :=
  ∀ n, (P10708933847000512749.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P13533006808998873907

`p?[10*10*n-21]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244775

/-- `p?[10*10*n-21]` -/
def P13533006808998873907.Spec : Prop :=
  ∀ n, P13533006808998873907.a n = A244775 (n + 1)

theorem P13533006808998873907.correct : P13533006808998873907.Spec := by
  intro n
  simp only [A244775, Nat.add_sub_cancel]

end A244775

/-! ## A244775.P2493407042600619499

`p?[A158128(n+1)-22]%A140631(n+1)`
-/

namespace A244775.P2493407042600619499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A140631 (n + 1))

end

end A244775.P2493407042600619499

namespace A244775

/-- `p?[A158128(n+1)-22]%A140631(n+1)` -/
def P2493407042600619499.Spec : Prop :=
  ∀ n, P2493407042600619499.a n = A244775 (n + 1)

end A244775

/-! ## A244775.P11041813237677965928

`∩[A122869(n+1), A141930(n+1)]`
-/

namespace A244775.P11041813237677965928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P11041813237677965928

namespace A244775

/-- `∩[A122869(n+1), A141930(n+1)]` -/
def P11041813237677965928.Spec : Prop :=
  ∀ n, (P11041813237677965928.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P8808415527160669721

`∩[A030433(n+1), A045807(n+1)]`
-/

namespace A244775.P8808415527160669721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P8808415527160669721

namespace A244775

/-- `∩[A030433(n+1), A045807(n+1)]` -/
def P8808415527160669721.Spec : Prop :=
  ∀ n, (P8808415527160669721.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P5253210855987091077

`∩[A045457(n+1), A045807(n+1)]`
-/

namespace A244775.P5253210855987091077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P5253210855987091077

namespace A244775

/-- `∩[A045457(n+1), A045807(n+1)]` -/
def P5253210855987091077.Spec : Prop :=
  ∀ n, (P5253210855987091077.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P9885444628980553194

`∩[A045807(n+1), A141887(n+1)]`
-/

namespace A244775.P9885444628980553194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P9885444628980553194

namespace A244775

/-- `∩[A045807(n+1), A141887(n+1)]` -/
def P9885444628980553194.Spec : Prop :=
  ∀ n, (P9885444628980553194.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P320800443054024939

`∩[A045807(n+1), A141930(n+1)]`
-/

namespace A244775.P320800443054024939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P320800443054024939

namespace A244775

/-- `∩[A045807(n+1), A141930(n+1)]` -/
def P320800443054024939.Spec : Prop :=
  ∀ n, (P320800443054024939.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P9324687574208465435

`∩[A030433(n+1), A045801(n+1)+2]`
-/

namespace A244775.P9324687574208465435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P9324687574208465435

namespace A244775

/-- `∩[A030433(n+1), A045801(n+1)+2]` -/
def P9324687574208465435.Spec : Prop :=
  ∀ n, (P9324687574208465435.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P11982942482735337256

`∩[A045457(n+1), A045801(n+1)+2]`
-/

namespace A244775.P11982942482735337256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P11982942482735337256

namespace A244775

/-- `∩[A045457(n+1), A045801(n+1)+2]` -/
def P11982942482735337256.Spec : Prop :=
  ∀ n, (P11982942482735337256.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P14872192901419361832

`∩[A045801(n+1)+2, A141887(n+1)]`
-/

namespace A244775.P14872192901419361832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P14872192901419361832

namespace A244775

/-- `∩[A045801(n+1)+2, A141887(n+1)]` -/
def P14872192901419361832.Spec : Prop :=
  ∀ n, (P14872192901419361832.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P1737591027515936202

`∩[A002145(n+1), A141930(n+1)]`
-/

namespace A244775.P1737591027515936202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P1737591027515936202

namespace A244775

/-- `∩[A002145(n+1), A141930(n+1)]` -/
def P1737591027515936202.Spec : Prop :=
  ∀ n, (P1737591027515936202.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P1511425239908524868

`∩[A002145(n+1), A266912(n+1)]`
-/

namespace A244775.P1511425239908524868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P1511425239908524868

namespace A244775

/-- `∩[A002145(n+1), A266912(n+1)]` -/
def P1511425239908524868.Spec : Prop :=
  ∀ n, (P1511425239908524868.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P12219057877204586001

`∩[A045457(n+1), A266912(n+1)]`
-/

namespace A244775.P12219057877204586001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P12219057877204586001

namespace A244775

/-- `∩[A045457(n+1), A266912(n+1)]` -/
def P12219057877204586001.Spec : Prop :=
  ∀ n, (P12219057877204586001.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P779859212477486972

`∩[A045468(n+1), A266912(n+1)]`
-/

namespace A244775.P779859212477486972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P779859212477486972

namespace A244775

/-- `∩[A045468(n+1), A266912(n+1)]` -/
def P779859212477486972.Spec : Prop :=
  ∀ n, (P779859212477486972.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P2312996201122879067

`∩[A127547(2*n)-n, A002145(n+2)]`
-/

namespace A244775.P2312996201122879067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P2312996201122879067

namespace A244775

/-- `∩[A127547(2*n)-n, A002145(n+2)]` -/
def P2312996201122879067.Spec : Prop :=
  ∀ n, (P2312996201122879067.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P724468675042384937

`∩[A127547(2*n)-n, A045326(n+2)]`
-/

namespace A244775.P724468675042384937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P724468675042384937

namespace A244775

/-- `∩[A127547(2*n)-n, A045326(n+2)]` -/
def P724468675042384937.Spec : Prop :=
  ∀ n, (P724468675042384937.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P10940546103411084353

`∩[A306285(2*n+1)-n, A002145(n+2)]`
-/

namespace A244775.P10940546103411084353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P10940546103411084353

namespace A244775

/-- `∩[A306285(2*n+1)-n, A002145(n+2)]` -/
def P10940546103411084353.Spec : Prop :=
  ∀ n, (P10940546103411084353.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P10704234351453169935

`∩[A306285(2*n+1)-n, A045326(n+2)]`
-/

namespace A244775.P10704234351453169935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244775.P10704234351453169935

namespace A244775

/-- `∩[A306285(2*n+1)-n, A045326(n+2)]` -/
def P10704234351453169935.Spec : Prop :=
  ∀ n, (P10704234351453169935.a n : ℤ) = A244775 (n + 1)

end A244775

/-! ## A244775.P14110546901769735396

`filter[A141930(n+1), A359152(#)]`
-/

namespace A244775.P14110546901769735396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A244775.P14110546901769735396

namespace A244775

/-- `filter[A141930(n+1), A359152(#)]` -/
def P14110546901769735396.Spec : Prop :=
  ∀ n, P14110546901769735396.a n = A244775 (n + 1)

end A244775

/-!
# A244776: Prime numbers ending in the prime number 83.

The programs for A244776, the canonical program `A244776.P17075600255975937437` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244776 has offset 1).

The definition of A244776 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244776.anchor (n : ℕ) (hn : 1 ≤ n) : A244776 n = (Nat.nth (fun p => p.Prime ∧ p % 100 ∈ ({83} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A244.A244776`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244776.P17075600255975937437

`∩[A105854(n+1), A141933(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244776

/-- `∩[A105854(n+1), A141933(n+1)]` -/
def P17075600255975937437.Spec : Prop :=
  ∀ n, (P17075600255975937437.a n : ℤ) = A244776 (n + 1)

theorem P17075600255975937437.correct : P17075600255975937437.Spec := by
  intro n
  simp only [A244776, Nat.add_sub_cancel]

end A244776

/-! ## A244776.P16334616846153596769

`p?[10*10*n-17]`
-/

namespace A244776.P16334616846153596769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (10 * n) : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244776.P16334616846153596769

namespace A244776

/-- `p?[10*10*n-17]` -/
def P16334616846153596769.Spec : Prop :=
  ∀ n, P16334616846153596769.a n = A244776 (n + 1)

end A244776

/-! ## A244776.P3536455569681111510

`or(p?[A158128(n+1)-18], A000007(n))`
-/

namespace A244776.P3536455569681111510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A244776.P3536455569681111510

namespace A244776

/-- `or(p?[A158128(n+1)-18], A000007(n))` -/
def P3536455569681111510.Spec : Prop :=
  ∀ n, P3536455569681111510.a n = A244776 (n + 1)

end A244776

/-! ## A244776.P2088991733386834067

`or(p?[A158128(n+1)-18], A000034(n))`
-/

namespace A244776.P2088991733386834067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000034 n)

end

end A244776.P2088991733386834067

namespace A244776

/-- `or(p?[A158128(n+1)-18], A000034(n))` -/
def P2088991733386834067.Spec : Prop :=
  ∀ n, P2088991733386834067.a n = A244776 (n + 1)

end A244776

/-! ## A244776.P15707626113818576545

`or(p?[A158128(n+1)-18], A000035(n))`
-/

namespace A244776.P15707626113818576545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A244776.P15707626113818576545

namespace A244776

/-- `or(p?[A158128(n+1)-18], A000035(n))` -/
def P15707626113818576545.Spec : Prop :=
  ∀ n, P15707626113818576545.a n = A244776 (n + 1)

end A244776

/-! ## A244776.P12238923050802614366

`or(p?[A158128(n+1)-18], A093709(n))`
-/

namespace A244776.P12238923050802614366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A093709 n)

end

end A244776.P12238923050802614366

namespace A244776

/-- `or(p?[A158128(n+1)-18], A093709(n))` -/
def P12238923050802614366.Spec : Prop :=
  ∀ n, P12238923050802614366.a n = A244776 (n + 1)

end A244776

/-! ## A244776.P2396635813763588444

`lcm(p?[A158128(n+1)-18], A008836(n+1))`
-/

namespace A244776.P2396635813763588444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A008836 (n + 1))

end

end A244776.P2396635813763588444

namespace A244776

/-- `lcm(p?[A158128(n+1)-18], A008836(n+1))` -/
def P2396635813763588444.Spec : Prop :=
  ∀ n, (P2396635813763588444.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P11797820523605328770

`or(p?[A158128(n+1)-18], A053866(n+1))`
-/

namespace A244776.P11797820523605328770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A053866 (n + 1))

end

end A244776.P11797820523605328770

namespace A244776

/-- `or(p?[A158128(n+1)-18], A053866(n+1))` -/
def P11797820523605328770.Spec : Prop :=
  ∀ n, P11797820523605328770.a n = A244776 (n + 1)

end A244776

/-! ## A244776.P15441264525204912373

`or(p?[A158128(n+1)-18], A288710(n+1))`
-/

namespace A244776.P15441264525204912373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A288710 (n + 1))

end

end A244776.P15441264525204912373

namespace A244776

/-- `or(p?[A158128(n+1)-18], A288710(n+1))` -/
def P15441264525204912373.Spec : Prop :=
  ∀ n, P15441264525204912373.a n = A244776 (n + 1)

end A244776

/-! ## A244776.P10390592091261040018

`A000027(p?[A158128(n+1)-18])`
-/

namespace A244776.P10390592091261040018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244776.P10390592091261040018

namespace A244776

/-- `A000027(p?[A158128(n+1)-18])` -/
def P10390592091261040018.Spec : Prop :=
  ∀ n, P10390592091261040018.a n = A244776 (n + 1)

end A244776

/-! ## A244776.P15095001570912807935

`∩[A106865(n+1), A141933(n+1)]`
-/

namespace A244776.P15095001570912807935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P15095001570912807935

namespace A244776

/-- `∩[A106865(n+1), A141933(n+1)]` -/
def P15095001570912807935.Spec : Prop :=
  ∀ n, (P15095001570912807935.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P14916864998986390512

`∩[A122870(n+1), A141933(n+1)]`
-/

namespace A244776.P14916864998986390512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P14916864998986390512

namespace A244776

/-- `∩[A122870(n+1), A141933(n+1)]` -/
def P14916864998986390512.Spec : Prop :=
  ∀ n, (P14916864998986390512.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P12540249975125174294

`∩[A141933(n+1), A385225(n+1)]`
-/

namespace A244776.P12540249975125174294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P12540249975125174294

namespace A244776

/-- `∩[A141933(n+1), A385225(n+1)]` -/
def P12540249975125174294.Spec : Prop :=
  ∀ n, (P12540249975125174294.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P4629849041281565111

`∩[A053027(n+1), A141933(n+1)]`
-/

namespace A244776.P4629849041281565111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P4629849041281565111

namespace A244776

/-- `∩[A053027(n+1), A141933(n+1)]` -/
def P4629849041281565111.Spec : Prop :=
  ∀ n, (P4629849041281565111.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P6193035268291089430

`∩[A030431(n+1), A045808(n+1)]`
-/

namespace A244776.P6193035268291089430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P6193035268291089430

namespace A244776

/-- `∩[A030431(n+1), A045808(n+1)]` -/
def P6193035268291089430.Spec : Prop :=
  ∀ n, (P6193035268291089430.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P9235313194396686656

`∩[A045414(n+1), A045808(n+1)]`
-/

namespace A244776.P9235313194396686656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P9235313194396686656

namespace A244776

/-- `∩[A045414(n+1), A045808(n+1)]` -/
def P9235313194396686656.Spec : Prop :=
  ∀ n, (P9235313194396686656.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P13393791886958213476

`∩[A045808(n+1), A105854(n+1)]`
-/

namespace A244776.P13393791886958213476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P13393791886958213476

namespace A244776

/-- `∩[A045808(n+1), A105854(n+1)]` -/
def P13393791886958213476.Spec : Prop :=
  ∀ n, (P13393791886958213476.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P1851684279130343760

`∩[A045808(n+1), A141933(n+1)]`
-/

namespace A244776.P1851684279130343760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P1851684279130343760

namespace A244776

/-- `∩[A045808(n+1), A141933(n+1)]` -/
def P1851684279130343760.Spec : Prop :=
  ∀ n, (P1851684279130343760.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P11827765013390542625

`∩[A045808(n+1), A256177(n+1)]`
-/

namespace A244776.P11827765013390542625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P11827765013390542625

namespace A244776

/-- `∩[A045808(n+1), A256177(n+1)]` -/
def P11827765013390542625.Spec : Prop :=
  ∀ n, (P11827765013390542625.a n : ℤ) = A244776 (n + 1)

end A244776

/-! ## A244776.P16342473567131265634

`∩[A139513(n+1), A141933(n+1)]`
-/

namespace A244776.P16342473567131265634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P16342473567131265634

namespace A244776

/-- `∩[A139513(n+1), A141933(n+1)]` -/
def P16342473567131265634.Spec : Prop :=
  ∀ n, (P16342473567131265634.a n : ℤ) = A244776 (n + 1)

end A244776

/-!
# A244777: Prime numbers ending in the prime number 89.

The programs for A244777, the canonical program `A244777.P9676460938108881324` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244777 has offset 1).

The definition of A244777 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244777.anchor (n : ℕ) (hn : 1 ≤ n) : A244777 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 89) (n - 1) : ℤ)` in `Proof.A244.A244777`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244777.P10693064834636657765

`∩[A141883(n+1), A141938(n+1)]`
-/

namespace A244777.P10693064834636657765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P10693064834636657765

namespace A244777

/-- `∩[A141883(n+1), A141938(n+1)]` -/
def P10693064834636657765.Spec : Prop :=
  ∀ n, (P10693064834636657765.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P9676460938108881324

`p?[10*10*n-11]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244777

/-- `p?[10*10*n-11]` -/
def P9676460938108881324.Spec : Prop :=
  ∀ n, P9676460938108881324.a n = A244777 (n + 1)

theorem P9676460938108881324.correct : P9676460938108881324.Spec := by
  intro n
  simp only [A244777, Nat.add_sub_cancel]

end A244777

/-! ## A244777.P1395858535094873334

`or(1, p?[A053743(n)+44])`
-/

namespace A244777.P1395858535094873334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A244777.P1395858535094873334

namespace A244777

/-- `or(1, p?[A053743(n)+44])` -/
def P1395858535094873334.Spec : Prop :=
  ∀ n, P1395858535094873334.a n = A244777 (n + 1)

end A244777

/-! ## A244777.P18392193791540791144

`∩[A141883(n+1), A242181(n+1)]`
-/

namespace A244777.P18392193791540791144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P18392193791540791144

namespace A244777

/-- `∩[A141883(n+1), A242181(n+1)]` -/
def P18392193791540791144.Spec : Prop :=
  ∀ n, (P18392193791540791144.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P14292093592399864365

`record[p?[A242181(A000265(n+1)+1)]]`
-/

namespace A244777.P14292093592399864365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (A000265 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244777.P14292093592399864365

namespace A244777

/-- `record[p?[A242181(A000265(n+1)+1)]]` -/
def P14292093592399864365.Spec : Prop :=
  ∀ n, P14292093592399864365.a n = A244777 (n + 1)

end A244777

/-! ## A244777.P5145298248302231035

`∩[A033205(n+1), A141938(n+1)]`
-/

namespace A244777.P5145298248302231035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P5145298248302231035

namespace A244777

/-- `∩[A033205(n+1), A141938(n+1)]` -/
def P5145298248302231035.Spec : Prop :=
  ∀ n, (P5145298248302231035.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P7206369199396757369

`∩[A033205(n+1), A242181(n+1)]`
-/

namespace A244777.P7206369199396757369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P7206369199396757369

namespace A244777

/-- `∩[A033205(n+1), A242181(n+1)]` -/
def P7206369199396757369.Spec : Prop :=
  ∀ n, (P7206369199396757369.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P15019580558213481110

`∩[A141938(n+1), A216815(n+1)]`
-/

namespace A244777.P15019580558213481110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P15019580558213481110

namespace A244777

/-- `∩[A141938(n+1), A216815(n+1)]` -/
def P15019580558213481110.Spec : Prop :=
  ∀ n, (P15019580558213481110.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P544303510342100430

`∩[A216815(n+1), A242181(n+1)]`
-/

namespace A244777.P544303510342100430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P544303510342100430

namespace A244777

/-- `∩[A216815(n+1), A242181(n+1)]` -/
def P544303510342100430.Spec : Prop :=
  ∀ n, (P544303510342100430.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P12348926546274697214

`∩[A091729(n+1), A141938(n+1)]`
-/

namespace A244777.P12348926546274697214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P12348926546274697214

namespace A244777

/-- `∩[A091729(n+1), A141938(n+1)]` -/
def P12348926546274697214.Spec : Prop :=
  ∀ n, (P12348926546274697214.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P2028359865167796111

`∩[A141938(n+1), A210499(n+1)]`
-/

namespace A244777.P2028359865167796111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P2028359865167796111

namespace A244777

/-- `∩[A141938(n+1), A210499(n+1)]` -/
def P2028359865167796111.Spec : Prop :=
  ∀ n, (P2028359865167796111.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P15096895785310280574

`∩[A210499(n+1), A242181(n+1)]`
-/

namespace A244777.P15096895785310280574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P15096895785310280574

namespace A244777

/-- `∩[A210499(n+1), A242181(n+1)]` -/
def P15096895785310280574.Spec : Prop :=
  ∀ n, (P15096895785310280574.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P253286397247129078

`∩[A096785(n+1), A141938(n+1)]`
-/

namespace A244777.P253286397247129078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P253286397247129078

namespace A244777

/-- `∩[A096785(n+1), A141938(n+1)]` -/
def P253286397247129078.Spec : Prop :=
  ∀ n, (P253286397247129078.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P1671173944669680026

`∩[A096785(n+1), A242181(n+1)]`
-/

namespace A244777.P1671173944669680026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P1671173944669680026

namespace A244777

/-- `∩[A096785(n+1), A242181(n+1)]` -/
def P1671173944669680026.Spec : Prop :=
  ∀ n, (P1671173944669680026.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P1843111522615898553

`∩[A030433(n+1), A045806(n+1)]`
-/

namespace A244777.P1843111522615898553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P1843111522615898553

namespace A244777

/-- `∩[A030433(n+1), A045806(n+1)]` -/
def P1843111522615898553.Spec : Prop :=
  ∀ n, (P1843111522615898553.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P3900617505406691596

`∩[A045457(n+1), A045806(n+1)]`
-/

namespace A244777.P3900617505406691596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P3900617505406691596

namespace A244777

/-- `∩[A045457(n+1), A045806(n+1)]` -/
def P3900617505406691596.Spec : Prop :=
  ∀ n, (P3900617505406691596.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P15828847452351820069

`∩[A045806(n+1), A141883(n+1)]`
-/

namespace A244777.P15828847452351820069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P15828847452351820069

namespace A244777

/-- `∩[A045806(n+1), A141883(n+1)]` -/
def P15828847452351820069.Spec : Prop :=
  ∀ n, (P15828847452351820069.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P9412781741035796818

`∩[A045806(n+1), A141938(n+1)]`
-/

namespace A244777.P9412781741035796818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P9412781741035796818

namespace A244777

/-- `∩[A045806(n+1), A141938(n+1)]` -/
def P9412781741035796818.Spec : Prop :=
  ∀ n, (P9412781741035796818.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P8808238936791417031

`∩[A030433(n+1), A045804(n+1)+2]`
-/

namespace A244777.P8808238936791417031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P8808238936791417031

namespace A244777

/-- `∩[A030433(n+1), A045804(n+1)+2]` -/
def P8808238936791417031.Spec : Prop :=
  ∀ n, (P8808238936791417031.a n : ℤ) = A244777 (n + 1)

end A244777

/-! ## A244777.P9921636419863800268

`∩[A045457(n+1), A045804(n+1)+2]`
-/

namespace A244777.P9921636419863800268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244777.P9921636419863800268

namespace A244777

/-- `∩[A045457(n+1), A045804(n+1)+2]` -/
def P9921636419863800268.Spec : Prop :=
  ∀ n, (P9921636419863800268.a n : ℤ) = A244777 (n + 1)

end A244777

/-!
# A244778: Prime numbers ending in the prime number 97.

The programs for A244778, the canonical program `A244778.P15106645028215324979` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244778 has offset 1).

The definition of A244778 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A244778.anchor (n : ℕ) (hn : 1 ≤ n) : A244778 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 97) (n - 1) : ℤ)` in `Proof.A244.A244778`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244778.P10252960889803326200

`∩[A141886(n+1), A141944(n+1)]`
-/

namespace A244778.P10252960889803326200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P10252960889803326200

namespace A244778

/-- `∩[A141886(n+1), A141944(n+1)]` -/
def P10252960889803326200.Spec : Prop :=
  ∀ n, (P10252960889803326200.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P15106645028215324979

`p?[10*10*n-3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244778

/-- `p?[10*10*n-3]` -/
def P15106645028215324979.Spec : Prop :=
  ∀ n, P15106645028215324979.a n = A244778 (n + 1)

theorem P15106645028215324979.correct : P15106645028215324979.Spec := by
  intro n
  simp only [A244778, Nat.add_sub_cancel]

end A244778

/-! ## A244778.P15100151486649275183

`A000027(p?[A158128(n+1)-4])`
-/

namespace A244778.P15100151486649275183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244778.P15100151486649275183

namespace A244778

/-- `A000027(p?[A158128(n+1)-4])` -/
def P15100151486649275183.Spec : Prop :=
  ∀ n, P15100151486649275183.a n = A244778 (n + 1)

end A244778

/-! ## A244778.P15923292702139923770

`∩[A122487(n+1), A141944(n+1)]`
-/

namespace A244778.P15923292702139923770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P15923292702139923770

namespace A244778

/-- `∩[A122487(n+1), A141944(n+1)]` -/
def P15923292702139923770.Spec : Prop :=
  ∀ n, (P15923292702139923770.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P8350814936286936833

`∩[A053028(n+1), A141944(n+1)]`
-/

namespace A244778.P8350814936286936833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P8350814936286936833

namespace A244778

/-- `∩[A053028(n+1), A141944(n+1)]` -/
def P8350814936286936833.Spec : Prop :=
  ∀ n, (P8350814936286936833.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P3695665296847856648

`∩[A030432(n+1), A045807(n+1)]`
-/

namespace A244778.P3695665296847856648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P3695665296847856648

namespace A244778

/-- `∩[A030432(n+1), A045807(n+1)]` -/
def P3695665296847856648.Spec : Prop :=
  ∀ n, (P3695665296847856648.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P14518039727180832413

`∩[A045357(n+1), A045807(n+1)]`
-/

namespace A244778.P14518039727180832413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P14518039727180832413

namespace A244778

/-- `∩[A045357(n+1), A045807(n+1)]` -/
def P14518039727180832413.Spec : Prop :=
  ∀ n, (P14518039727180832413.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P14402875978343348481

`∩[A045380(n+1), A045807(n+1)]`
-/

namespace A244778.P14402875978343348481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P14402875978343348481

namespace A244778

/-- `∩[A045380(n+1), A045807(n+1)]` -/
def P14402875978343348481.Spec : Prop :=
  ∀ n, (P14402875978343348481.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P6217743996201624709

`∩[A045807(n+1), A141886(n+1)]`
-/

namespace A244778.P6217743996201624709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P6217743996201624709

namespace A244778

/-- `∩[A045807(n+1), A141886(n+1)]` -/
def P6217743996201624709.Spec : Prop :=
  ∀ n, (P6217743996201624709.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P10648915747588353923

`∩[A045807(n+1), A141944(n+1)]`
-/

namespace A244778.P10648915747588353923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P10648915747588353923

namespace A244778

/-- `∩[A045807(n+1), A141944(n+1)]` -/
def P10648915747588353923.Spec : Prop :=
  ∀ n, (P10648915747588353923.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P12059438405217944330

`∩[A030432(n+1), A045805(n+1)-2]`
-/

namespace A244778.P12059438405217944330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P12059438405217944330

namespace A244778

/-- `∩[A030432(n+1), A045805(n+1)-2]` -/
def P12059438405217944330.Spec : Prop :=
  ∀ n, (P12059438405217944330.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P9406819701769143641

`∩[A003626(n+1), A141944(n+1)]`
-/

namespace A244778.P9406819701769143641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P9406819701769143641

namespace A244778

/-- `∩[A003626(n+1), A141944(n+1)]` -/
def P9406819701769143641.Spec : Prop :=
  ∀ n, (P9406819701769143641.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P1519579411716524462

`∩[A055025(n+1), A141944(n+1)]`
-/

namespace A244778.P1519579411716524462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P1519579411716524462

namespace A244778

/-- `∩[A055025(n+1), A141944(n+1)]` -/
def P1519579411716524462.Spec : Prop :=
  ∀ n, (P1519579411716524462.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P7733656169145263357

`∩[A085759(n+1), A141944(n+1)]`
-/

namespace A244778.P7733656169145263357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P7733656169145263357

namespace A244778

/-- `∩[A085759(n+1), A141944(n+1)]` -/
def P7733656169145263357.Spec : Prop :=
  ∀ n, (P7733656169145263357.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P16003818954085155667

`∩[A003653(n+1), A141944(n+1)]`
-/

namespace A244778.P16003818954085155667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P16003818954085155667

namespace A244778

/-- `∩[A003653(n+1), A141944(n+1)]` -/
def P16003818954085155667.Spec : Prop :=
  ∀ n, (P16003818954085155667.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P4362313370815764759

`∩[A231754(n+1), A141944(n+1)]`
-/

namespace A244778.P4362313370815764759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244778.P4362313370815764759

namespace A244778

/-- `∩[A231754(n+1), A141944(n+1)]` -/
def P4362313370815764759.Spec : Prop :=
  ∀ n, (P4362313370815764759.a n : ℤ) = A244778 (n + 1)

end A244778

/-! ## A244778.P11640280604832104664

`record[A006530(10*10*(n+1)-3)]`
-/

namespace A244778.P11640280604832104664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * (10 * (n + 1)) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244778.P11640280604832104664

namespace A244778

/-- `record[A006530(10*10*(n+1)-3)]` -/
def P11640280604832104664.Spec : Prop :=
  ∀ n, P11640280604832104664.a n = A244778 (n + 1)

end A244778

/-! ## A244778.P884700683895067548

`or(1, p?[A017353(A017377(n))])`
-/

namespace A244778.P884700683895067548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A017377 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A244778.P884700683895067548

namespace A244778

/-- `or(1, p?[A017353(A017377(n))])` -/
def P884700683895067548.Spec : Prop :=
  ∀ n, P884700683895067548.a n = A244778 (n + 1)

end A244778

/-! ## A244778.P10850687945079141492

`filter[A141944(n+1), A353812(#)]`
-/

namespace A244778.P10850687945079141492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A244778.P10850687945079141492

namespace A244778

/-- `filter[A141944(n+1), A353812(#)]` -/
def P10850687945079141492.Spec : Prop :=
  ∀ n, P10850687945079141492.a n = A244778 (n + 1)

end A244778

/-!
# A244779: Positive numbers primitively represented by the binary quadratic form (1, 1, 2).

The programs for A244779, the canonical program `A244779.P12372990209683995036` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244779 has offset 1).

The definition of A244779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2013 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244779.P12372990209683995036

`eq[1, gcd(7, A065959(n+1))]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A244779

/-- `eq[1, gcd(7, A065959(n+1))]+1` -/
def P12372990209683995036.Spec : Prop :=
  ∀ n, (P12372990209683995036.a n : ℤ) = A244779 (n + 1)

theorem P12372990209683995036.correct : P12372990209683995036.Spec := by
  intro n
  simp only [A244779, Nat.add_sub_cancel]

end A244779

/-! ## A244779.P4765494022071667785

`record[gcd(A003056(n)+2, A033951(n))]`
-/

namespace A244779.P4765494022071667785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 n + 2) (A033951 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244779.P4765494022071667785

namespace A244779

/-- `record[gcd(A003056(n)+2, A033951(n))]` -/
def P4765494022071667785.Spec : Prop :=
  ∀ n, (P4765494022071667785.a n : ℤ) = A244779 (n + 1)

end A244779

/-! ## A244779.P8507809929011943859

`record[gcd(A003057(n+2), A084849(n))]`
-/

namespace A244779.P8507809929011943859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003057 (n + 2)) (A084849 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244779.P8507809929011943859

namespace A244779

/-- `record[gcd(A003057(n+2), A084849(n))]` -/
def P8507809929011943859.Spec : Prop :=
  ∀ n, (P8507809929011943859.a n : ℤ) = A244779 (n + 1)

end A244779

/-! ## A244779.P18010648056419964352

`record[gcd(A003056(n), A033951(n))]`
-/

namespace A244779.P18010648056419964352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 n) (A033951 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244779.P18010648056419964352

namespace A244779

/-- `record[gcd(A003056(n), A033951(n))]` -/
def P18010648056419964352.Spec : Prop :=
  ∀ n, (P18010648056419964352.a n : ℤ) = A244779 (n + 1)

end A244779

/-! ## A244779.P4058176447880531385

`record[gcd(A000124(n), A172471(n))]`
-/

namespace A244779.P4058176447880531385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000124 n) (A172471 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244779.P4058176447880531385

namespace A244779

/-- `record[gcd(A000124(n), A172471(n))]` -/
def P4058176447880531385.Spec : Prop :=
  ∀ n, (P4058176447880531385.a n : ℤ) = A244779 (n + 1)

end A244779

/-!
# A244780: Positive numbers primitively represented by the binary quadratic form (1, 1, 3).

The programs for A244780, there is no canonical definition to state claims against.
-/

/-! ## A244780.P4474957176928471985

`lt[A223135(n), A028609(n)]`
-/

namespace A244780.P4474957176928471985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244780.P4474957176928471985

/-! ## A244780.P8554123100534842276

`lt[A226378(n), A028609(n)]`
-/

namespace A244780.P8554123100534842276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244780.P8554123100534842276

/-! ## A244780.P12615578491525922641

`lt[A032741(n+1), A028609(n+1)]+1`
-/

namespace A244780.P12615578491525922641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A244780.P12615578491525922641

/-! ## A244780.P1105102250717469917

`lt[A032741(n), A028953(A008574(n))]`
-/

namespace A244780.P1105102250717469917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244780.P1105102250717469917

/-! ## A244780.P12758532157363853078

`lt[A028310(A032741(n)), A028609(n)]`
-/

namespace A244780.P12758532157363853078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244780.P12758532157363853078

/-! ## A244780.P17217802093690885373

`lt[A223135(n), A028953(A008574(n))]`
-/

namespace A244780.P17217802093690885373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244780.P17217802093690885373

/-! ## A244780.P4632935667170523845

`lt[A226378(n), A028953(A008574(n))]`
-/

namespace A244780.P4632935667170523845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244780.P4632935667170523845

/-! ## A244780.P8869965271326609323

`lt[A026806(A226602(n)), A028609(n)]`
-/

namespace A244780.P8869965271326609323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244780.P8869965271326609323

/-! ## A244780.P8438871956754411901

`lt[A028310(A032741(n)), A033723(4*n)]`
-/

namespace A244780.P8438871956754411901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033723 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244780.P8438871956754411901

/-!
# A244781: Number of length n 0..1 arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244781, there is no canonical definition to state claims against.
-/

/-! ## A244781.P17816142001047879455

`A244788(∑[n+1])`
-/

namespace A244781.P17816142001047879455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244781.P17816142001047879455

/-! ## A244781.P17215852836407210526

`lcm(2, A244788(A000217(n+1)))`
-/

namespace A244781.P17215852836407210526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A244788 (A000217 (n + 1)).toNat)

end

end A244781.P17215852836407210526

/-! ## A244781.P17754010302796569719

`A244513(n+1)²*A244788(A000217(n+1))`
-/

namespace A244781.P17754010302796569719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244513 (n + 1) ^ 2 * A244788 (A000217 (n + 1)).toNat

end

end A244781.P17754010302796569719

/-! ## A244781.P17676330026816498311

`A244788(A000217(n+1))%A183597(n+1)`
-/

namespace A244781.P17676330026816498311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244788 (A000217 (n + 1)).toNat) (A183597 (n + 1))

end

end A244781.P17676330026816498311

/-! ## A244781.P6864740374097987512

`A244788(A000217(n+1))+A008683(4*A146354(n+1))`
-/

namespace A244781.P6864740374097987512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000217 (n + 1)).toNat + A008683 (4 * A146354 (n + 1)).toNat

end

end A244781.P6864740374097987512

/-!
# A244782: Number of length n 0..2 arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244782, there is no canonical definition to state claims against.
-/

/-! ## A244782.P8728306159752611944

`A244788(∑[n+2])`
-/

namespace A244782.P8728306159752611944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244782.P8728306159752611944

/-! ## A244782.P10960716044610204143

`record[A244788(A000096(A134478(n)))]`
-/

namespace A244782.P10960716044610204143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244782.P10960716044610204143

/-! ## A244782.P17619986751561071026

`record[A244788(A000096(A143182(n)))]`
-/

namespace A244782.P17619986751561071026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244782.P17619986751561071026

/-! ## A244782.P7197518705605542486

`record[A244788(A000096(A328388(n)))]`
-/

namespace A244782.P7197518705605542486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (A328388 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244782.P7197518705605542486

/-! ## A244782.P3014694710983824763

`record[A244788(A000096(A344180(n)))]`
-/

namespace A244782.P3014694710983824763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244782.P3014694710983824763

/-! ## A244782.P4885434029831453384

`record[A244788(A000096(A002260(n+1)))]`
-/

namespace A244782.P4885434029831453384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244782.P4885434029831453384

/-! ## A244782.P16881514708608018476

`record[A244788(A000096(A004736(n+1)))]`
-/

namespace A244782.P16881514708608018476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244782.P16881514708608018476

/-! ## A244782.P4507930767526555851

`record[A244788(A000096(A004741(n+1)))]`
-/

namespace A244782.P4507930767526555851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (A004741 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244782.P4507930767526555851

/-! ## A244782.P3857391025536423205

`record[A244788(A000096(A010766(n+1)))]`
-/

namespace A244782.P3857391025536423205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (A010766 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244782.P3857391025536423205

/-! ## A244782.P5917339361596327549

`record[A244788(A000096(A026242(n+1)))]`
-/

namespace A244782.P5917339361596327549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (A026242 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244782.P5917339361596327549

/-!
# A244783: Number of length n 0..3 arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244783, there is no canonical definition to state claims against.
-/

/-! ## A244783.P8382274925667635673

`A244788(∑[n+3]+1)`
-/

namespace A244783.P8382274925667635673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244783.P8382274925667635673

/-! ## A244783.P16922509933302267957

`lcm(2, A244788(A034856(n+2)))`
-/

namespace A244783.P16922509933302267957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A244788 (A034856 (n + 2)).toNat)

end

end A244783.P16922509933302267957

/-! ## A244783.P13928749698492617499

`gcd(A000038(n), A244788(A034856(n+2)))`
-/

namespace A244783.P13928749698492617499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A244788 (A034856 (n + 2)).toNat)

end

end A244783.P13928749698492617499

/-! ## A244783.P5764155359868209747

`A244788(A034856(n+2))+A000007(n+1)`
-/

namespace A244783.P5764155359868209747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A244783.P5764155359868209747

/-! ## A244783.P13172136363313270447

`A244788(A034856(n+2))%A244784(n+1)`
-/

namespace A244783.P13172136363313270447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244788 (A034856 (n + 2)).toNat) (A244784 (n + 1))

end

end A244783.P13172136363313270447

/-! ## A244783.P19577622847664980

`abs(A087960(n²)*A244788(A055999(n)+4))`
-/

namespace A244783.P19577622847664980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087960 (n ^ 2) * A244788 (A055999 n + 4).toNat|

end

end A244783.P19577622847664980

/-! ## A244783.P4685795680938971466

`A019429(2*(n+1))*A244788(A034856(n+2))`
-/

namespace A244783.P4685795680938971466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * (n + 1)) * A244788 (A034856 (n + 2)).toNat

end

end A244783.P4685795680938971466

/-! ## A244783.P18167427568764202081

`A053866(A008833(n+1))*A244788(A034856(n+2))`
-/

namespace A244783.P18167427568764202081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A008833 (n + 1)).toNat * A244788 (A034856 (n + 2)).toNat

end

end A244783.P18167427568764202081

/-! ## A244783.P4378267103158646475

`A008683(A248201(n+1))*A244788(A034856(n+2))`
-/

namespace A244783.P4378267103158646475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A248201 (n + 1)).toNat * A244788 (A034856 (n + 2)).toNat

end

end A244783.P4378267103158646475

/-!
# A244784: Number of length n 0..4 arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244784, there is no canonical definition to state claims against.
-/

/-! ## A244784.P6697291662974652750

`A244788(A027379(n+2))`
-/

namespace A244784.P6697291662974652750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A027379 (n + 2)).toNat

end

end A244784.P6697291662974652750

/-! ## A244784.P5342123788187581568

`A244788(A055998(n+2))`
-/

namespace A244784.P5342123788187581568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A055998 (n + 2)).toNat

end

end A244784.P5342123788187581568

/-! ## A244784.P679776991395006299

`A244788(A155212(n)+5)`
-/

namespace A244784.P679776991395006299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A155212 n + 5).toNat

end

end A244784.P679776991395006299

/-! ## A244784.P16992423809612769472

`A244788(A056000(n)+7)`
-/

namespace A244784.P16992423809612769472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A056000 n + 7).toNat

end

end A244784.P16992423809612769472

/-! ## A244784.P10205516599306592129

`A244788(A052905(n+1)+2)`
-/

namespace A244784.P10205516599306592129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A052905 (n + 1) + 2).toNat

end

end A244784.P10205516599306592129

/-! ## A244784.P5257319552406029939

`A244788(Δ[A008778(n+1)]-1)`
-/

namespace A244784.P5257319552406029939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (f1 (n + 1) - f1 n - 1).toNat

end

end A244784.P5257319552406029939

/-! ## A244784.P5363751361750007743

`A244788(A167614(n+1)+Δ[n²])`
-/

namespace A244784.P5363751361750007743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A244784.P5363751361750007743

/-! ## A244784.P7117989783006880021

`A244788(A167499(n)+A016777(n))`
-/

namespace A244784.P7117989783006880021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A167499 n + A016777 n).toNat

end

end A244784.P7117989783006880021

/-!
# A244785: Number of length n 0..5 arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244785, there is no canonical definition to state claims against.
-/

/-! ## A244785.P8844618749144912795

`A244788(A046691(n+3))`
-/

namespace A244785.P8844618749144912795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A046691 (n + 3)).toNat

end

end A244785.P8844618749144912795

/-! ## A244785.P7094156929769240958

`A244788(Δ[A023545(n+1)])`
-/

namespace A244785.P7094156929769240958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (f1 (n + 1) - f1 n).toNat

end

end A244785.P7094156929769240958

/-! ## A244785.P1741342124978254508

`A244788(∑[A020710(n)]+6)`
-/

namespace A244785.P1741342124978254508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A244785.P1741342124978254508

/-! ## A244785.P8482758239141070565

`A244788(A052905(n+2)+1)`
-/

namespace A244785.P8482758239141070565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A052905 (n + 2) + 1).toNat

end

end A244785.P8482758239141070565

/-! ## A244785.P17377664608924017645

`A244788(A055999(n+2)+2)`
-/

namespace A244785.P17377664608924017645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A055999 (n + 2) + 2).toNat

end

end A244785.P17377664608924017645

/-! ## A244785.P13407185438907598174

`A244788(A020723(A155212(n)+n))`
-/

namespace A244785.P13407185438907598174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A020723 (A155212 n + (n : ℤ)).toNat).toNat

end

end A244785.P13407185438907598174

/-!
# A244786: Number of length n 0..6 arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244786, there is no canonical definition to state claims against.
-/

/-! ## A244786.P8851117857156307728

`A244788(A052905(n+3))`
-/

namespace A244786.P8851117857156307728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A052905 (n + 3)).toNat

end

end A244786.P8851117857156307728

/-! ## A244786.P11006399452263601116

`A244788(A055999(n+3)+1)`
-/

namespace A244786.P11006399452263601116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A055999 (n + 3) + 1).toNat

end

end A244786.P11006399452263601116

/-! ## A244786.P16731136789173569309

`A244788(A046691(n+4)-1)`
-/

namespace A244786.P16731136789173569309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A046691 (n + 4) - 1).toNat

end

end A244786.P16731136789173569309

/-! ## A244786.P13664482097362580576

`A244788(A000217(n+6)-5)`
-/

namespace A244786.P13664482097362580576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000217 (n + 6) - 5).toNat

end

end A244786.P13664482097362580576

/-! ## A244786.P2749746541192631772

`A244788(A000124(n+6)-6)`
-/

namespace A244786.P2749746541192631772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000124 (n + 6) - 6).toNat

end

end A244786.P2749746541192631772

/-! ## A244786.P5586297467603277043

`A244788(Δ[A023551(n+1)]+1)`
-/

namespace A244786.P5586297467603277043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (f1 (n + 1) - f1 n + 1).toNat

end

end A244786.P5586297467603277043

/-! ## A244786.P10684991733199476117

`A244788(Δ[A023545(n+2)]-1)`
-/

namespace A244786.P10684991733199476117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (f1 (n + 1) - f1 n - 1).toNat

end

end A244786.P10684991733199476117

/-! ## A244786.P7329015491400124647

`A244788(A155212(n+1)+A020723(n))`
-/

namespace A244786.P7329015491400124647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A155212 (n + 1) + A020723 n).toNat

end

end A244786.P7329015491400124647

/-!
# A244787: Number of length n 0..7 arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244787, there is no canonical definition to state claims against.
-/

/-! ## A244787.P3625479358940152260

`A244788(A055999(n+4))`
-/

namespace A244787.P3625479358940152260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A055999 (n + 4)).toNat

end

end A244787.P3625479358940152260

/-! ## A244787.P12833592815316247784

`A244788(Δ[A023551(n+2)])`
-/

namespace A244787.P12833592815316247784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (f1 (n + 1) - f1 n).toNat

end

end A244787.P12833592815316247784

/-! ## A244787.P14190220505331122019

`A244788(A046691(n+5)-2)`
-/

namespace A244787.P14190220505331122019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A046691 (n + 5) - 2).toNat

end

end A244787.P14190220505331122019

/-! ## A244787.P6986651555564614522

`A244788(A000217(n+7)-6)`
-/

namespace A244787.P6986651555564614522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000217 (n + 7) - 6).toNat

end

end A244787.P6986651555564614522

/-! ## A244787.P3490102203408734449

`A244788(A000124(n+7)-7)`
-/

namespace A244787.P3490102203408734449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000124 (n + 7) - 7).toNat

end

end A244787.P3490102203408734449

/-! ## A244787.P755481741775984051

`A244788(A000096(n+5)+n+2)`
-/

namespace A244787.P755481741775984051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A244787.P755481741775984051

/-! ## A244787.P8065458493918122561

`A244788(A056000(n)+A016777(n+7))`
-/

namespace A244787.P8065458493918122561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A056000 n + A016777 (n + 7)).toNat

end

end A244787.P8065458493918122561

/-!
# A244789: Number of length 1 0..n arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244789, there is no canonical definition to state claims against.
-/

/-! ## A244789.P17618389470011208233

`A244788(∑[n]+1)`
-/

namespace A244789.P17618389470011208233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244789.P17618389470011208233

/-!
# A244790: Number of length 2 0..n arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244790, there is no canonical definition to state claims against.
-/

/-! ## A244790.P9218507374707159470

`A244788(∑[n+1]+2)`
-/

namespace A244790.P9218507374707159470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244790.P9218507374707159470

/-! ## A244790.P18271517375273363562

`or(n%2, A244788(A133263(n+1)))`
-/

namespace A244790.P18271517375273363562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A244788 (A133263 (n + 1)).toNat)

end

end A244790.P18271517375273363562

/-! ## A244790.P6734102401145475461

`or(A000035(n), A244788(A133263(n+1)))`
-/

namespace A244790.P6734102401145475461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A244788 (A133263 (n + 1)).toNat)

end

end A244790.P6734102401145475461

/-! ## A244790.P17905225993798669714

`A244788(A133263(n+1))%A024179(n+1)`
-/

namespace A244790.P17905225993798669714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244788 (A133263 (n + 1)).toNat) (A024179 (n + 1))

end

end A244790.P17905225993798669714

/-! ## A244790.P8038836382537076195

`A244788(A252460(2*(n+2)))+A000007(n+1)`
-/

namespace A244790.P8038836382537076195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A252460 (2 * (n + 2))).toNat + A000007 (n + 1)

end

end A244790.P8038836382537076195

/-! ## A244790.P13167881925639202086

`A244788(A133263(n+1))%A217402(A017281(n))`
-/

namespace A244790.P13167881925639202086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244788 (A133263 (n + 1)).toNat) (A217402 (A017281 n).toNat)

end

end A244790.P13167881925639202086

/-! ## A244790.P14450321022947742524

`A277815(A277817(n))+A244788(A252460(2*(n+2)))`
-/

namespace A244790.P14450321022947742524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277815 (A277817 n).toNat + A244788 (A252460 (2 * (n + 2))).toNat

end

end A244790.P14450321022947742524

/-! ## A244790.P15825630923119675138

`A244788(A252460(2*(n+2)))+A000122(A019395(n+1))`
-/

namespace A244790.P15825630923119675138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A252460 (2 * (n + 2))).toNat + A000122 (A019395 (n + 1)).toNat

end

end A244790.P15825630923119675138

/-! ## A244790.P21010834609713405

`A001222(A030460(n+1))*A244788(A252460(2*(n+2)))`
-/

namespace A244790.P21010834609713405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A030460 (n + 1)).toNat * A244788 (A252460 (2 * (n + 2))).toNat

end

end A244790.P21010834609713405

/-! ## A244790.P6803955872877182600

`A032742(A014963(n+2))*A244788(A252460(2*(n+2)))`
-/

namespace A244790.P6803955872877182600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A014963 (n + 2)).toNat * A244788 (A252460 (2 * (n + 2))).toNat

end

end A244790.P6803955872877182600

/-!
# A244791: Number of length 3 0..n arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244791, there is no canonical definition to state claims against.
-/

/-! ## A244791.P8595437514404269803

`A244788(∑[n+2]+4)`
-/

namespace A244791.P8595437514404269803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244791.P8595437514404269803

/-! ## A244791.P2310422424238210496

`A244788(A167614(n+1))%A017418(n)`
-/

namespace A244791.P2310422424238210496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244788 (A167614 (n + 1)).toNat) (A017418 n)

end

end A244791.P2310422424238210496

/-! ## A244791.P5623742822634943409

`A097807(n)²*A244788(A167614(n+1))`
-/

namespace A244791.P5623742822634943409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A244788 (A167614 (n + 1)).toNat

end

end A244791.P5623742822634943409

/-! ## A244791.P10444274530267937060

`A007318(A000217(n))*A244788(A167614(n+1))`
-/

namespace A244791.P10444274530267937060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A244788 (A167614 (n + 1)).toNat

end

end A244791.P10444274530267937060

/-! ## A244791.P2733942205771560049

`A001222(A175974(n+1))*A244788(A167614(n+1))`
-/

namespace A244791.P2733942205771560049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175974 (n + 1)).toNat * A244788 (A167614 (n + 1)).toNat

end

end A244791.P2733942205771560049

/-!
# A244792: Number of length 4 0..n arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244792, there is no canonical definition to state claims against.
-/

/-! ## A244792.P10813404920333302462

`A244788(A052905(n)+9)`
-/

namespace A244792.P10813404920333302462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A052905 n + 9).toNat

end

end A244792.P10813404920333302462

/-! ## A244792.P2048033354385199640

`A244788(A055999(n)+10)`
-/

namespace A244792.P2048033354385199640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A055999 n + 10).toNat

end

end A244792.P2048033354385199640

/-! ## A244792.P9781249961942156873

`A244788(Δ[A008778(n)]+6)`
-/

namespace A244792.P9781249961942156873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (f1 (n + 1) - f1 n + 6).toNat

end

end A244792.P9781249961942156873

/-! ## A244792.P9883231000908359566

`A244788(A167614(n+2)+1)`
-/

namespace A244792.P9883231000908359566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A167614 (n + 2) + 1).toNat

end

end A244792.P9883231000908359566

/-! ## A244792.P11275947659494529184

`A244788(A166136(n+2)-2)`
-/

namespace A244792.P11275947659494529184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A166136 (n + 2) - 2).toNat

end

end A244792.P11275947659494529184

/-! ## A244792.P9668890796552427185

`A244788(A046691(n+1)+8)`
-/

namespace A244792.P9668890796552427185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A046691 (n + 1) + 8).toNat

end

end A244792.P9668890796552427185

/-! ## A244792.P3960496305416637598

`A244788(A166136(n+1)+1+n)`
-/

namespace A244792.P3960496305416637598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A244792.P3960496305416637598

/-! ## A244792.P15017216238237791006

`A244788(Δ[A023545(n+1)-n²])`
-/

namespace A244792.P15017216238237791006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (f1 (n + 1) - f1 n).toNat

end

end A244792.P15017216238237791006

/-!
# A244793: Number of length 5 0..n arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244793, there is no canonical definition to state claims against.
-/

/-! ## A244793.P3492653728646248496

`A244788(A167499(n+3))`
-/

namespace A244793.P3492653728646248496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A167499 (n + 3)).toNat

end

end A244793.P3492653728646248496

/-! ## A244793.P12345000942367725899

`A244788(A155212(n)+13)`
-/

namespace A244793.P12345000942367725899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A155212 n + 13).toNat

end

end A244793.P12345000942367725899

/-! ## A244793.P9097008863208700326

`A244788(A000217(n+4)+5)`
-/

namespace A244793.P9097008863208700326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000217 (n + 4) + 5).toNat

end

end A244793.P9097008863208700326

/-! ## A244793.P15592118210977609090

`A244788(A046691(n+2)+9)`
-/

namespace A244793.P15592118210977609090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A046691 (n + 2) + 9).toNat

end

end A244793.P15592118210977609090

/-! ## A244793.P17379780077950857949

`A244788(A038722(Δ[A023545(n+1)]))`
-/

namespace A244793.P17379780077950857949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244793.P17379780077950857949

/-!
# A244794: Number of length 6 0..n arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244794, there is no canonical definition to state claims against.
-/

/-! ## A244794.P16583084666058301314

`A244788(A166136(n+4))`
-/

namespace A244794.P16583084666058301314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A166136 (n + 4)).toNat

end

end A244794.P16583084666058301314

/-! ## A244794.P3025099793566080213

`A244788(A167499(n+4)+1)`
-/

namespace A244794.P3025099793566080213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A167499 (n + 4) + 1).toNat

end

end A244794.P3025099793566080213

/-! ## A244794.P15126673557499716340

`A244788(A000124(n+5)+5)`
-/

namespace A244794.P15126673557499716340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000124 (n + 5) + 5).toNat

end

end A244794.P15126673557499716340

/-! ## A244794.P8650432409470932138

`A244788(A000217(n+5)+6)`
-/

namespace A244794.P8650432409470932138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000217 (n + 5) + 6).toNat

end

end A244794.P8650432409470932138

/-! ## A244794.P12627097508977664565

`A244788(A055998(n+3)+9)`
-/

namespace A244794.P12627097508977664565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A055998 (n + 3) + 9).toNat

end

end A244794.P12627097508977664565

/-! ## A244794.P15983537071250567628

`A244788(A161680(n+6)+6)`
-/

namespace A244794.P15983537071250567628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A161680 (n + 6) + 6).toNat

end

end A244794.P15983537071250567628

/-!
# A244795: Number of length 7 0..n arrays with each partial sum starting from the beginning no more than one standard deviation from its mean.

The programs for A244795, there is no canonical definition to state claims against.
-/

/-! ## A244795.P1298422756961445579

`A244788(A167499(n+5)+2)`
-/

namespace A244795.P1298422756961445579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A167499 (n + 5) + 2).toNat

end

end A244795.P1298422756961445579

/-! ## A244795.P5808738761560986417

`A244788(A000124(n+6)+6)`
-/

namespace A244795.P5808738761560986417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000124 (n + 6) + 6).toNat

end

end A244795.P5808738761560986417

/-! ## A244795.P11161561526511970243

`A244788(A000217(n+6)+7)`
-/

namespace A244795.P11161561526511970243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A000217 (n + 6) + 7).toNat

end

end A244795.P11161561526511970243

/-! ## A244795.P5042865904603990796

`A244788(A161680(n+7)+7)`
-/

namespace A244795.P5042865904603990796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A161680 (n + 7) + 7).toNat

end

end A244795.P5042865904603990796

/-! ## A244795.P14272432217229749461

`A244788(A046691(n+6)-A005843(n+2))`
-/

namespace A244795.P14272432217229749461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A046691 (n + 6) - A005843 (n + 2)).toNat

end

end A244795.P14272432217229749461

/-!
# A244796: Number of moduli m such that (prime(n) mod m) = 1.

The programs for A244796, the canonical program `A244796.P11267553040901324862` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244796 has offset 1).

The definition of A244796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244796.P11267553040901324862

`A000005(A000040(n+1)-1)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244796

/-- `A000005(A000040(n+1)-1)-1` -/
def P11267553040901324862.Spec : Prop :=
  ∀ n, P11267553040901324862.a n = A244796 (n + 1)

theorem P11267553040901324862.correct : P11267553040901324862.Spec := by
  intro n
  simp only [A244796, Nat.add_sub_cancel]

end A244796

/-! ## A244796.P9968496963500052703

`Δ[A079552(n)]-1`
-/

namespace A244796.P9968496963500052703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A244796.P9968496963500052703

namespace A244796

/-- `Δ[A079552(n)]-1` -/
def P9968496963500052703.Spec : Prop :=
  ∀ n, P9968496963500052703.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P13926753291426621653

`A008328(n+1)-1`
-/

namespace A244796.P13926753291426621653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1) - 1

end

end A244796.P13926753291426621653

namespace A244796

/-- `A008328(n+1)-1` -/
def P13926753291426621653.Spec : Prop :=
  ∀ n, P13926753291426621653.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P4904079931691085549

`A000005(A278227(n+1))-1`
-/

namespace A244796.P4904079931691085549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278227 (n + 1)).toNat - 1

end

end A244796.P4904079931691085549

namespace A244796

/-- `A000005(A278227(n+1))-1` -/
def P4904079931691085549.Spec : Prop :=
  ∀ n, P4904079931691085549.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P9341497792590255107

`A000005(∑[A075526(n)])-1`
-/

namespace A244796.P9341497792590255107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A244796.P9341497792590255107

namespace A244796

/-- `A000005(∑[A075526(n)])-1` -/
def P9341497792590255107.Spec : Prop :=
  ∀ n, P9341497792590255107.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P7539663189522148448

`A000005(A006093(n+1))-1`
-/

namespace A244796.P7539663189522148448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006093 (n + 1)).toNat - 1

end

end A244796.P7539663189522148448

namespace A244796

/-- `A000005(A006093(n+1))-1` -/
def P7539663189522148448.Spec : Prop :=
  ∀ n, P7539663189522148448.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P16345004226903740387

`A000005(sqrt(A005722(n+1)))-1`
-/

namespace A244796.P16345004226903740387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat - 1

end

end A244796.P16345004226903740387

namespace A244796

/-- `A000005(sqrt(A005722(n+1)))-1` -/
def P16345004226903740387.Spec : Prop :=
  ∀ n, P16345004226903740387.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P6026889426093452980

`A000005(record[A000010(n+1)])-1`
-/

namespace A244796.P6026889426093452980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A244796.P6026889426093452980

namespace A244796

/-- `A000005(record[A000010(n+1)])-1` -/
def P6026889426093452980.Spec : Prop :=
  ∀ n, P6026889426093452980.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P18251947721063729922

`A000005(record[A037225(n)])-1`
-/

namespace A244796.P18251947721063729922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A244796.P18251947721063729922

namespace A244796

/-- `A000005(record[A037225(n)])-1` -/
def P18251947721063729922.Spec : Prop :=
  ∀ n, P18251947721063729922.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P3240912219853082807

`A175454(record[A000010(n+1)])`
-/

namespace A244796.P3240912219853082807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175454 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244796.P3240912219853082807

namespace A244796

/-- `A175454(record[A000010(n+1)])` -/
def P3240912219853082807.Spec : Prop :=
  ∀ n, P3240912219853082807.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P7721428190606505671

`A032741(A278227(n+1))`
-/

namespace A244796.P7721428190606505671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A278227 (n + 1)).toNat

end

end A244796.P7721428190606505671

namespace A244796

/-- `A032741(A278227(n+1))` -/
def P7721428190606505671.Spec : Prop :=
  ∀ n, P7721428190606505671.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P3154407934332684369

`A338117(A037168(n+1))`
-/

namespace A244796.P3154407934332684369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (A037168 (n + 1)).toNat

end

end A244796.P3154407934332684369

namespace A244796

/-- `A338117(A037168(n+1))` -/
def P3154407934332684369.Spec : Prop :=
  ∀ n, P3154407934332684369.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P1209576013257029070

`A032741(record[A037225(n)])`
-/

namespace A244796.P1209576013257029070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244796.P1209576013257029070

namespace A244796

/-- `A032741(record[A037225(n)])` -/
def P1209576013257029070.Spec : Prop :=
  ∀ n, P1209576013257029070.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P13966416688223450444

`A032741(A006093(n+1))`
-/

namespace A244796.P13966416688223450444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A006093 (n + 1)).toNat

end

end A244796.P13966416688223450444

namespace A244796

/-- `A032741(A006093(n+1))` -/
def P13966416688223450444.Spec : Prop :=
  ∀ n, P13966416688223450444.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P4903800583653199814

`A049822(A000040(n+1))`
-/

namespace A244796.P4903800583653199814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049822 (A000040 (n + 1)).toNat

end

end A244796.P4903800583653199814

namespace A244796

/-- `A049822(A000040(n+1))` -/
def P4903800583653199814.Spec : Prop :=
  ∀ n, P4903800583653199814.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P7132193113951730077

`A049822(A006005(n+1))`
-/

namespace A244796.P7132193113951730077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049822 (A006005 (n + 1)).toNat

end

end A244796.P7132193113951730077

namespace A244796

/-- `A049822(A006005(n+1))` -/
def P7132193113951730077.Spec : Prop :=
  ∀ n, P7132193113951730077.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P6721790156139679525

`A049822(A008578(n+2))`
-/

namespace A244796.P6721790156139679525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049822 (A008578 (n + 2)).toNat

end

end A244796.P6721790156139679525

namespace A244796

/-- `A049822(A008578(n+2))` -/
def P6721790156139679525.Spec : Prop :=
  ∀ n, P6721790156139679525.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P14166658378011907265

`A049822(A075643(n+2))`
-/

namespace A244796.P14166658378011907265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049822 (A075643 (n + 2)).toNat

end

end A244796.P14166658378011907265

namespace A244796

/-- `A049822(A075643(n+2))` -/
def P14166658378011907265.Spec : Prop :=
  ∀ n, P14166658378011907265.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P17999567789133196591

`A032741(eq[1, A013632(n)])`
-/

namespace A244796.P17999567789133196591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244796.P17999567789133196591

namespace A244796

/-- `A032741(eq[1, A013632(n)])` -/
def P17999567789133196591.Spec : Prop :=
  ∀ n, P17999567789133196591.a n = A244796 (n + 1)

end A244796

/-! ## A244796.P1834083396539899664

`A032741(record[A000010(n+1)])`
-/

namespace A244796.P1834083396539899664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244796.P1834083396539899664

namespace A244796

/-- `A032741(record[A000010(n+1)])` -/
def P1834083396539899664.Spec : Prop :=
  ∀ n, P1834083396539899664.a n = A244796 (n + 1)

end A244796

/-!
# A244797: Number of moduli m such that (prime(n) mod m) = 2.

The programs for A244797, the canonical program `A244797.P7934935714290983183` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244797 has offset 1).

The definition of A244797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244797.P7934935714290983183

`A032741(A040976(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244797

/-- `A032741(A040976(n+1))` -/
def P7934935714290983183.Spec : Prop :=
  ∀ n, P7934935714290983183.a n = A244797 (n + 1)

theorem P7934935714290983183.correct : P7934935714290983183.Spec := by
  intro n
  simp only [A244797, Nat.add_sub_cancel]

end A244797

/-! ## A244797.P3831584767719979199

`∏{e}[2-A000040(n+1), #+1]-1`
-/

namespace A244797.P3831584767719979199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1

end

end A244797.P3831584767719979199

namespace A244797

/-- `∏{e}[2-A000040(n+1), #+1]-1` -/
def P3831584767719979199.Spec : Prop :=
  ∀ n, P3831584767719979199.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P17940875907772045191

`∏{e}[eq[2, A000005(n+2)], #+1]-1`
-/

namespace A244797.P17940875907772045191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A244797.P17940875907772045191

namespace A244797

/-- `∏{e}[eq[2, A000005(n+2)], #+1]-1` -/
def P17940875907772045191.Spec : Prop :=
  ∀ n, P17940875907772045191.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P8697524929257199997

`∏{e}[lt[n, A014963(n+2)], #+1]-1`
-/

namespace A244797.P8697524929257199997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A244797.P8697524929257199997

namespace A244797

/-- `∏{e}[lt[n, A014963(n+2)], #+1]-1` -/
def P8697524929257199997.Spec : Prop :=
  ∀ n, P8697524929257199997.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P877851614776138181

`∏{e}[lt[n, A020639(n+2)], #+1]-1`
-/

namespace A244797.P877851614776138181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A244797.P877851614776138181

namespace A244797

/-- `∏{e}[lt[n, A020639(n+2)], #+1]-1` -/
def P877851614776138181.Spec : Prop :=
  ∀ n, P877851614776138181.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P16287048464355569867

`∏{e}[1-record[A000010(n+1)], #+1]-1`
-/

namespace A244797.P16287048464355569867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1

end

end A244797.P16287048464355569867

namespace A244797

/-- `∏{e}[1-record[A000010(n+1)], #+1]-1` -/
def P16287048464355569867.Spec : Prop :=
  ∀ n, P16287048464355569867.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P7810977571612525578

`A277692(A156037(n+1))`
-/

namespace A244797.P7810977571612525578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A156037 (n + 1)).toNat

end

end A244797.P7810977571612525578

namespace A244797

/-- `A277692(A156037(n+1))` -/
def P7810977571612525578.Spec : Prop :=
  ∀ n, P7810977571612525578.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P8678676117125613392

`A032741(record[A037225(n)-1])`
-/

namespace A244797.P8678676117125613392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244797.P8678676117125613392

namespace A244797

/-- `A032741(record[A037225(n)-1])` -/
def P8678676117125613392.Spec : Prop :=
  ∀ n, P8678676117125613392.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P513032911639604733

`A069283(p?[A143051(n)]-2)`
-/

namespace A244797.P513032911639604733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2).toNat

end

end A244797.P513032911639604733

namespace A244797

/-- `A069283(p?[A143051(n)]-2)` -/
def P513032911639604733.Spec : Prop :=
  ∀ n, P513032911639604733.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P5479664477948845806

`A032741(A086801(n+1)+1)`
-/

namespace A244797.P5479664477948845806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A086801 (n + 1) + 1).toNat

end

end A244797.P5479664477948845806

namespace A244797

/-- `A032741(A086801(n+1)+1)` -/
def P5479664477948845806.Spec : Prop :=
  ∀ n, P5479664477948845806.a n = A244797 (n + 1)

theorem P5479664477948845806.correct : P5479664477948845806.Spec := by
  intro n
  simp only [A244797, Nat.add_sub_cancel, A244797.P5479664477948845806.a, A244797.P7934935714290983183.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A040976, A040976.P11599754272797435513.a, A086801, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244797

/-! ## A244797.P14190389044143855277

`A032741(A006093(n+1)-1)`
-/

namespace A244797.P14190389044143855277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A006093 (n + 1) - 1).toNat

end

end A244797.P14190389044143855277

namespace A244797

/-- `A032741(A006093(n+1)-1)` -/
def P14190389044143855277.Spec : Prop :=
  ∀ n, P14190389044143855277.a n = A244797 (n + 1)

theorem P14190389044143855277.correct : P14190389044143855277.Spec := by
  intro n
  simp only [A244797, Nat.add_sub_cancel, A244797.P14190389044143855277.a, A244797.P7934935714290983183.a, A006093, A006093.P2906174024863549003.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244797

/-! ## A244797.P17649642984128503526

`A032741(A000040(n+1)-2)`
-/

namespace A244797.P17649642984128503526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000040 (n + 1) - 2).toNat

end

end A244797.P17649642984128503526

namespace A244797

/-- `A032741(A000040(n+1)-2)` -/
def P17649642984128503526.Spec : Prop :=
  ∀ n, P17649642984128503526.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P4126299074477507354

`A069283(A000040(n+1)-2)`
-/

namespace A244797.P4126299074477507354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A000040 (n + 1) - 2).toNat

end

end A244797.P4126299074477507354

namespace A244797

/-- `A069283(A000040(n+1)-2)` -/
def P4126299074477507354.Spec : Prop :=
  ∀ n, P4126299074477507354.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P8658830859191391211

`A032741(A008578(n+2)-2)`
-/

namespace A244797.P8658830859191391211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008578 (n + 2) - 2).toNat

end

end A244797.P8658830859191391211

namespace A244797

/-- `A032741(A008578(n+2)-2)` -/
def P8658830859191391211.Spec : Prop :=
  ∀ n, P8658830859191391211.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P13566600970227769042

`A069283(A008578(n+2)-2)`
-/

namespace A244797.P13566600970227769042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A008578 (n + 2) - 2).toNat

end

end A244797.P13566600970227769042

namespace A244797

/-- `A069283(A008578(n+2)-2)` -/
def P13566600970227769042.Spec : Prop :=
  ∀ n, P13566600970227769042.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P12227799386338151766

`A032741(A140777(n+1)/2)`
-/

namespace A244797.P12227799386338151766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A140777 (n + 1) : ℚ) / 2)).toNat

end

end A244797.P12227799386338151766

namespace A244797

/-- `A032741(A140777(n+1)/2)` -/
def P12227799386338151766.Spec : Prop :=
  ∀ n, P12227799386338151766.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P13998447899059667721

`A069283(A140777(n+1)/2)`
-/

namespace A244797.P13998447899059667721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (SequenceMachineLib.roundAway ((A140777 (n + 1) : ℚ) / 2)).toNat

end

end A244797.P13998447899059667721

namespace A244797

/-- `A069283(A140777(n+1)/2)` -/
def P13998447899059667721.Spec : Prop :=
  ∀ n, P13998447899059667721.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P10121025918923571638

`A032741(eq[1, A002033(n+1)])`
-/

namespace A244797.P10121025918923571638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244797.P10121025918923571638

namespace A244797

/-- `A032741(eq[1, A002033(n+1)])` -/
def P10121025918923571638.Spec : Prop :=
  ∀ n, P10121025918923571638.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P4354443909855843197

`A032741(eq[1, A013632(n+1)])`
-/

namespace A244797.P4354443909855843197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244797.P4354443909855843197

namespace A244797

/-- `A032741(eq[1, A013632(n+1)])` -/
def P4354443909855843197.Spec : Prop :=
  ∀ n, P4354443909855843197.a n = A244797 (n + 1)

end A244797

/-! ## A244797.P16551452098693382348

`A032741(A152771(A008578(n+2)))`
-/

namespace A244797.P16551452098693382348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A152771 (A008578 (n + 2)).toNat).toNat

end

end A244797.P16551452098693382348

namespace A244797

/-- `A032741(A152771(A008578(n+2)))` -/
def P16551452098693382348.Spec : Prop :=
  ∀ n, P16551452098693382348.a n = A244797 (n + 1)

end A244797

/-!
# A244798: Number of moduli m such that (prime(n) mod m) = 3.

The programs for A244798, the canonical program `A244798.P1024524685187747021` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244798 has offset 1).

The definition of A244798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244798.P1024524685187747021

`A072527(A000040(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244798

/-- `A072527(A000040(n+1))` -/
def P1024524685187747021.Spec : Prop :=
  ∀ n, P1024524685187747021.a n = A244798 (n + 1)

theorem P1024524685187747021.correct : P1024524685187747021.Spec := by
  intro n
  simp only [A244798, Nat.add_sub_cancel]

end A244798

/-! ## A244798.P10076444205626878676

`A072527(A006005(n+1))`
-/

namespace A244798.P10076444205626878676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A006005 (n + 1)).toNat

end

end A244798.P10076444205626878676

namespace A244798

/-- `A072527(A006005(n+1))` -/
def P10076444205626878676.Spec : Prop :=
  ∀ n, P10076444205626878676.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P13273378604873550198

`A072527(A161847(n+1))`
-/

namespace A244798.P13273378604873550198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A161847 (n + 1)).toNat

end

end A244798.P13273378604873550198

namespace A244798

/-- `A072527(A161847(n+1))` -/
def P13273378604873550198.Spec : Prop :=
  ∀ n, P13273378604873550198.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P15545431705710963923

`A072527(A008578(n+2))`
-/

namespace A244798.P15545431705710963923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A008578 (n + 2)).toNat

end

end A244798.P15545431705710963923

namespace A244798

/-- `A072527(A008578(n+2))` -/
def P15545431705710963923.Spec : Prop :=
  ∀ n, P15545431705710963923.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P11680812606957633015

`A072527(A075643(n+2))`
-/

namespace A244798.P11680812606957633015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A075643 (n + 2)).toNat

end

end A244798.P11680812606957633015

namespace A244798

/-- `A072527(A075643(n+2))` -/
def P11680812606957633015.Spec : Prop :=
  ∀ n, P11680812606957633015.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P240442561708085505

`A072527(A116974(n+2))`
-/

namespace A244798.P240442561708085505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A116974 (n + 2)).toNat

end

end A244798.P240442561708085505

namespace A244798

/-- `A072527(A116974(n+2))` -/
def P240442561708085505.Spec : Prop :=
  ∀ n, P240442561708085505.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P15618886309936407094

`A072527(A171525(n+2))`
-/

namespace A244798.P15618886309936407094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A171525 (n + 2)).toNat

end

end A244798.P15618886309936407094

namespace A244798

/-- `A072527(A171525(n+2))` -/
def P15618886309936407094.Spec : Prop :=
  ∀ n, P15618886309936407094.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P13177215761117857888

`A072527(A175787(n+2))`
-/

namespace A244798.P13177215761117857888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A175787 (n + 2)).toNat

end

end A244798.P13177215761117857888

namespace A244798

/-- `A072527(A175787(n+2))` -/
def P13177215761117857888.Spec : Prop :=
  ∀ n, P13177215761117857888.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P14307492567738130814

`A072527(A182986(n+2))`
-/

namespace A244798.P14307492567738130814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A182986 (n + 2)).toNat

end

end A244798.P14307492567738130814

namespace A244798

/-- `A072527(A182986(n+2))` -/
def P14307492567738130814.Spec : Prop :=
  ∀ n, P14307492567738130814.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P16249560548775303531

`A000005(abs(4-A000040(n+1))+1)-2`
-/

namespace A244798.P16249560548775303531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|4 - A000040 (n + 1)| + 1).toNat - 2

end

end A244798.P16249560548775303531

namespace A244798

/-- `A000005(abs(4-A000040(n+1))+1)-2` -/
def P16249560548775303531.Spec : Prop :=
  ∀ n, P16249560548775303531.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P14086505656878095794

`A000005(A000040(n+1)-3%(n+1))-2`
-/

namespace A244798.P14086505656878095794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) - ((3 % (n + 1) : ℕ) : ℤ)).toNat - 2

end

end A244798.P14086505656878095794

namespace A244798

/-- `A000005(A000040(n+1)-3%(n+1))-2` -/
def P14086505656878095794.Spec : Prop :=
  ∀ n, P14086505656878095794.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P1746401612456331557

`A070824(A060000(record[A002472(n+1)]))`
-/

namespace A244798.P1746401612456331557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A060000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A244798.P1746401612456331557

namespace A244798

/-- `A070824(A060000(record[A002472(n+1)]))` -/
def P1746401612456331557.Spec : Prop :=
  ∀ n, P1746401612456331557.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P3624565141659264690

`A070824(A065190(record[A002472(n+1)]))`
-/

namespace A244798.P3624565141659264690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A065190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A244798.P3624565141659264690

namespace A244798

/-- `A070824(A065190(record[A002472(n+1)]))` -/
def P3624565141659264690.Spec : Prop :=
  ∀ n, P3624565141659264690.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P229709816706258467

`A070824(A319534(p?[A000037(n+1)]))`
-/

namespace A244798.P229709816706258467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A319534 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A244798.P229709816706258467

namespace A244798

/-- `A070824(A319534(p?[A000037(n+1)]))` -/
def P229709816706258467.Spec : Prop :=
  ∀ n, P229709816706258467.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P9316740357693026866

`A070824(A006093(n+1)-A130130(n))`
-/

namespace A244798.P9316740357693026866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A006093 (n + 1) - A130130 n).toNat

end

end A244798.P9316740357693026866

namespace A244798

/-- `A070824(A006093(n+1)-A130130(n))` -/
def P9316740357693026866.Spec : Prop :=
  ∀ n, P9316740357693026866.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P2063925441270026047

`A070824(eq[A057979(n), A092953(n+1)])`
-/

namespace A244798.P2063925441270026047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A244798.P2063925441270026047

namespace A244798

/-- `A070824(eq[A057979(n), A092953(n+1)])` -/
def P2063925441270026047.Spec : Prop :=
  ∀ n, P2063925441270026047.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P382142402790617191

`A070824(A319534(p?[A131732(n)]))`
-/

namespace A244798.P382142402790617191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A319534 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A244798.P382142402790617191

namespace A244798

/-- `A070824(A319534(p?[A131732(n)]))` -/
def P382142402790617191.Spec : Prop :=
  ∀ n, P382142402790617191.a n = A244798 (n + 1)

end A244798

/-! ## A244798.P15465919020352215598

`A070824(A319534(p?[A285639(n+1)]))`
-/

namespace A244798.P15465919020352215598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A319534 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A244798.P15465919020352215598

namespace A244798

/-- `A070824(A319534(p?[A285639(n+1)]))` -/
def P15465919020352215598.Spec : Prop :=
  ∀ n, P15465919020352215598.a n = A244798 (n + 1)

end A244798

/-!
# A244799: Number of moduli m such that (prime(n) mod m) is odd, where 1 <= m < prime(n).

The programs for A244799, there is no canonical definition to state claims against.
-/

/-! ## A244799.P11439118848157474311

`Δ[A007504(n)]-A244800(n+1)`
-/

namespace A244799.P11439118848157474311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A244800 (n + 1)

end

end A244799.P11439118848157474311

/-! ## A244799.P784437733136412372

`A000040(n+1)-A244800(n+1)`
-/

namespace A244799.P784437733136412372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A244800 (n + 1)

end

end A244799.P784437733136412372

/-! ## A244799.P2272579048752396672

`p?[A000961(n+1)]-A244800(n+1)`
-/

namespace A244799.P2272579048752396672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244800 (n + 1)

end

end A244799.P2272579048752396672

/-! ## A244799.P8329888489085531485

`p?[A015919(n+1)]-A244800(n+1)`
-/

namespace A244799.P8329888489085531485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244800 (n + 1)

end

end A244799.P8329888489085531485

/-! ## A244799.P18224069501718329

`p?[A268391(n+1)]-A244800(n+1)`
-/

namespace A244799.P18224069501718329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244800 (n + 1)

end

end A244799.P18224069501718329

/-! ## A244799.P13640226829331911770

`p?[(n+1)*A001222(n+1)]-A244800(n+1)`
-/

namespace A244799.P13640226829331911770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244800 (n + 1)

end

end A244799.P13640226829331911770

/-! ## A244799.P4380899001084344626

`p?[A247555(n)]-A244800(n+1)`
-/

namespace A244799.P4380899001084344626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244800 (n + 1)

end

end A244799.P4380899001084344626

/-! ## A244799.P17522091020675321735

`p?[A242420(n+1)]-A244800(n+1)`
-/

namespace A244799.P17522091020675321735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A244800 (n + 1)

end

end A244799.P17522091020675321735

