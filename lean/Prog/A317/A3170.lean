import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
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

/-!
# A317000: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317000, there is no canonical definition to state claims against.
-/

/-! ## A317000.P12034763791652275953

`A317004(A374004(n+1))`
-/

namespace A317000.P12034763791652275953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A374004 (n + 1)).toNat

end

end A317000.P12034763791652275953

/-! ## A317000.P6447416388469931300

`A317004(A141214(n)+7)`
-/

namespace A317000.P6447416388469931300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A141214 n + 7).toNat

end

end A317000.P6447416388469931300

/-! ## A317000.P10781902513103836537

`A317004(A052905(n)+9)`
-/

namespace A317000.P10781902513103836537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A052905 n + 9).toNat

end

end A317000.P10781902513103836537

/-! ## A317000.P2394347851447348235

`A317004(A167614(n+2)+1)`
-/

namespace A317000.P2394347851447348235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A167614 (n + 2) + 1).toNat

end

end A317000.P2394347851447348235

/-! ## A317000.P2339694744929313703

`A317004(A166136(n+2)-2)`
-/

namespace A317000.P2339694744929313703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A166136 (n + 2) - 2).toNat

end

end A317000.P2339694744929313703

/-!
# A317001: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317001, there is no canonical definition to state claims against.
-/

/-! ## A317001.P6324050618692039852

`A317004(A374005(n+1))`
-/

namespace A317001.P6324050618692039852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A374005 (n + 1)).toNat

end

end A317001.P6324050618692039852

/-! ## A317001.P2142259429034226978

`A317004(A167499(n+3))`
-/

namespace A317001.P2142259429034226978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A167499 (n + 3)).toNat

end

end A317001.P2142259429034226978

/-! ## A317001.P974276217901445197

`A317004(A155212(n)+13)`
-/

namespace A317001.P974276217901445197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A155212 n + 13).toNat

end

end A317001.P974276217901445197

/-! ## A317001.P52407865922219472

`A317004(A000217(n+4)+5)`
-/

namespace A317001.P52407865922219472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A000217 (n + 4) + 5).toNat

end

end A317001.P52407865922219472

/-! ## A317001.P5264441487402956831

`A317004(A051936(n+4)+14)`
-/

namespace A317001.P5264441487402956831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A051936 (n + 4) + 14).toNat

end

end A317001.P5264441487402956831

/-!
# A317002: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317002, there is no canonical definition to state claims against.
-/

/-! ## A317002.P8672882345038671906

`A317004(A374007(n+1))`
-/

namespace A317002.P8672882345038671906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A374007 (n + 1)).toNat

end

end A317002.P8672882345038671906

/-! ## A317002.P11160863636809443635

`A317004(A167499(n+4)+1)`
-/

namespace A317002.P11160863636809443635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A167499 (n + 4) + 1).toNat

end

end A317002.P11160863636809443635

/-! ## A317002.P3044077129343414704

`A317004(eq[7, A131818(n+1)])`
-/

namespace A317002.P3044077129343414704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317002.P3044077129343414704

/-! ## A317002.P3706830093583992199

`A317004(eq[3, A219347(n)])`
-/

namespace A317002.P3706830093583992199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317002.P3706830093583992199

/-! ## A317002.P4127297563466768450

`A317004(eq[5, A193592(n)])`
-/

namespace A317002.P4127297563466768450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317002.P4127297563466768450

/-!
# A317003: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317003, there is no canonical definition to state claims against.
-/

/-! ## A317003.P1257757228097927047

`A317004(A374008(n+1))`
-/

namespace A317003.P1257757228097927047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (A374008 (n + 1)).toNat

end

end A317003.P1257757228097927047

/-! ## A317003.P9724614651454899562

`A317004(eq[11, A066657(n)])`
-/

namespace A317003.P9724614651454899562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317003.P9724614651454899562

/-! ## A317003.P7365272509982302471

`A317004(eq[8, A131818(n+1)])`
-/

namespace A317003.P7365272509982302471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317003.P7365272509982302471

/-! ## A317003.P508272898830166416

`A317004(eq[4, A219347(n)])`
-/

namespace A317003.P508272898830166416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317003.P508272898830166416

/-! ## A317003.P9891080697502955150

`A317004(eq[6, A193592(n)])`
-/

namespace A317003.P9891080697502955150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317003.P9891080697502955150

/-!
# A317004: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317004, there is no canonical definition to state claims against.
-/

/-! ## A317004.P15948400198572219065

`A305530(n+1)+A011731(A022171(n))`
-/

namespace A317004.P15948400198572219065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (n + 1) + A011731 (A022171 n).toNat

end

end A317004.P15948400198572219065

/-! ## A317004.P11863580462235214495

`A305530(n+1)+A025465(A023105(n))`
-/

namespace A317004.P11863580462235214495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (n + 1) + A025465 (A023105 n).toNat

end

end A317004.P11863580462235214495

/-! ## A317004.P11523695392814262216

`A305530(n+1)+A055641(A022112(n))`
-/

namespace A317004.P11523695392814262216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (n + 1) + A055641 (A022112 n).toNat

end

end A317004.P11523695392814262216

/-! ## A317004.P10091454381181872886

`A305530(n+1)+A016389(A086645(n))`
-/

namespace A317004.P10091454381181872886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (n + 1) + A016389 (A086645 n).toNat

end

end A317004.P10091454381181872886

/-! ## A317004.P1875679356650384766

`A305530(n+1)+A102683(A000579(n))`
-/

namespace A317004.P1875679356650384766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (n + 1) + A102683 (A000579 n).toNat

end

end A317004.P1875679356650384766

/-!
# A317005: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317005, there is no canonical definition to state claims against.
-/

/-! ## A317005.P12462256456634643418

`A317011(∑[4*n]+1)`
-/

namespace A317005.P12462256456634643418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317005.P12462256456634643418

/-! ## A317005.P9369138902958672857

`record[A317011(Δ[A235355(n)])]`
-/

namespace A317005.P9369138902958672857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317005.P9369138902958672857

/-! ## A317005.P11658548854450735962

`record[A317011(A330613(n+1))]`
-/

namespace A317005.P11658548854450735962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317005.P11658548854450735962

/-! ## A317005.P1786767328484948312

`A317011(A001844(n))+char[9]`
-/

namespace A317005.P1786767328484948312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317005.P1786767328484948312

/-! ## A317005.P12756849115257432931

`record[A317011(Δ[A079824(n+1)])]`
-/

namespace A317005.P12756849115257432931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317005.P12756849115257432931

/-!
# A317006: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317006, there is no canonical definition to state claims against.
-/

/-! ## A317006.P266058416464339032

`A317011(∑[n+2]+4)`
-/

namespace A317006.P266058416464339032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317006.P266058416464339032

/-! ## A317006.P4013993533019585852

`A317011(A167614(n+1))+A185238(n)`
-/

namespace A317006.P4013993533019585852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A167614 (n + 1)).toNat + A185238 n

end

end A317006.P4013993533019585852

/-! ## A317006.P6283566415858859256

`A317011(A167614(n+1))+A185284(n)`
-/

namespace A317006.P6283566415858859256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A167614 (n + 1)).toNat + A185284 n

end

end A317006.P6283566415858859256

/-! ## A317006.P14040699541064676304

`A317011(A167614(n+1))%A077250(n)`
-/

namespace A317006.P14040699541064676304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317011 (A167614 (n + 1)).toNat) (A077250 n)

end

end A317006.P14040699541064676304

/-! ## A317006.P10952428548026173589

`lcm(A033999(n), A317011(A167614(n+1)))`
-/

namespace A317006.P10952428548026173589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A317011 (A167614 (n + 1)).toNat)

end

end A317006.P10952428548026173589

/-!
# A317007: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317007, there is no canonical definition to state claims against.
-/

/-! ## A317007.P15167648440973584182

`A317011(A374004(n+1))`
-/

namespace A317007.P15167648440973584182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A374004 (n + 1)).toNat

end

end A317007.P15167648440973584182

/-! ## A317007.P6711829666322647539

`A317011(A052905(n)+9)`
-/

namespace A317007.P6711829666322647539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A052905 n + 9).toNat

end

end A317007.P6711829666322647539

/-! ## A317007.P505205558593713995

`A317011(A055999(n)+10)`
-/

namespace A317007.P505205558593713995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A055999 n + 10).toNat

end

end A317007.P505205558593713995

/-! ## A317007.P8661516010582606899

`A317011(A167614(n+2)+1)`
-/

namespace A317007.P8661516010582606899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A167614 (n + 2) + 1).toNat

end

end A317007.P8661516010582606899

/-! ## A317007.P10079495276108430091

`A317011(A000217(n+3)+4)`
-/

namespace A317007.P10079495276108430091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A000217 (n + 3) + 4).toNat

end

end A317007.P10079495276108430091

/-!
# A317008: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317008, there is no canonical definition to state claims against.
-/

/-! ## A317008.P11090115809801586591

`A317011(C(n+6, 2)-n)`
-/

namespace A317008.P11090115809801586591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (Nat.choose (n + 6) 2 - n)

end

end A317008.P11090115809801586591

/-! ## A317008.P16493268656566357450

`A317011(A374005(n+1))`
-/

namespace A317008.P16493268656566357450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A374005 (n + 1)).toNat

end

end A317008.P16493268656566357450

/-! ## A317008.P3095837069008441022

`A317011(A155212(n)+13)`
-/

namespace A317008.P3095837069008441022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A155212 n + 13).toNat

end

end A317008.P3095837069008441022

/-! ## A317008.P5724056842452033780

`A317011(A056000(n)+15)`
-/

namespace A317008.P5724056842452033780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A056000 n + 15).toNat

end

end A317008.P5724056842452033780

/-! ## A317008.P6779860029676318179

`A317011(eq[6, A131818(n+1)])`
-/

namespace A317008.P6779860029676318179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317008.P6779860029676318179

/-!
# A317009: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317009, there is no canonical definition to state claims against.
-/

/-! ## A317009.P330502754733775775

`A317011(C(n+7, 2)-n)`
-/

namespace A317009.P330502754733775775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (Nat.choose (n + 7) 2 - n)

end

end A317009.P330502754733775775

/-! ## A317009.P14670956419623039600

`A317011(A374007(n+1))`
-/

namespace A317009.P14670956419623039600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A374007 (n + 1)).toNat

end

end A317009.P14670956419623039600

/-! ## A317009.P9670329228329986852

`A317011(A056115(n)+21)`
-/

namespace A317009.P9670329228329986852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A056115 n + 21).toNat

end

end A317009.P9670329228329986852

/-! ## A317009.P17571455245636201294

`A317011(eq[7, A131818(n+1)])`
-/

namespace A317009.P17571455245636201294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317009.P17571455245636201294

/-! ## A317009.P1453427161860513620

`A317011(A052905(n+3))`
-/

namespace A317009.P1453427161860513620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A052905 (n + 3)).toNat

end

end A317009.P1453427161860513620

/-!
# A317010: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317010, there is no canonical definition to state claims against.
-/

/-! ## A317010.P3057382635744796165

`A317011(A374008(n+1))`
-/

namespace A317010.P3057382635744796165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A374008 (n + 1)).toNat

end

end A317010.P3057382635744796165

/-! ## A317010.P13910826943090817893

`A317011(A167487(n+5))`
-/

namespace A317010.P13910826943090817893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A167487 (n + 5)).toNat

end

end A317010.P13910826943090817893

/-! ## A317010.P14782983817751849133

`A317011(A167614(n+5)+4)`
-/

namespace A317010.P14782983817751849133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A167614 (n + 5) + 4).toNat

end

end A317010.P14782983817751849133

/-! ## A317010.P460314309247565089

`A317011(eq[8, A131818(n+1)])`
-/

namespace A317010.P460314309247565089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317010.P460314309247565089

/-! ## A317010.P2646045512253206177

`A317011(A055999(n+4))`
-/

namespace A317010.P2646045512253206177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (A055999 (n + 4)).toNat

end

end A317010.P2646045512253206177

/-!
# A317011: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317011, there is no canonical definition to state claims against.
-/

/-! ## A317011.P463043470279656657

`A305593(n+1)+A010894(A003401(n+1))`
-/

namespace A317011.P463043470279656657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A317011.P463043470279656657

/-! ## A317011.P11828830117202788052

`A305593(n+1)+A011663(A022171(n))`
-/

namespace A317011.P11828830117202788052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (n + 1) + A011663 (A022171 n).toNat

end

end A317011.P11828830117202788052

/-! ## A317011.P14743510768158849758

`A305593(n+1)+A025465(A022345(n))`
-/

namespace A317011.P14743510768158849758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (n + 1) + A025465 (A022345 n).toNat

end

end A317011.P14743510768158849758

/-! ## A317011.P16186853998898110672

`A305593(n+1)+A025465(A023105(n))`
-/

namespace A317011.P16186853998898110672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (n + 1) + A025465 (A023105 n).toNat

end

end A317011.P16186853998898110672

/-! ## A317011.P15734972842566755344

`A305593(n+1)+A055641(A002843(n))`
-/

namespace A317011.P15734972842566755344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (n + 1) + A055641 (A002843 n).toNat

end

end A317011.P15734972842566755344

/-!
# A317013: For successive terms of A002202, totient values t, lcm({x: phi(x)=t})/gcd({x: phi(x)=t}).

The programs for A317013, there is no canonical definition to state claims against.
-/

/-! ## A317013.P1515031597470085066

`A173557(A285843(n+4)²-floor(n/2))`
-/

namespace A317013.P1515031597470085066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A285843 (n + 4) ^ 2 - ⌊(n : ℚ) / 2⌋).toNat

end

end A317013.P1515031597470085066

/-!
# A317014: Triangle read by rows: T(0,0) = 1; T(n,k) = 7 * T(n-1,k) + T(n-2,k-1) for k = 0..floor(n/2). T(n,k)=0 for n or k < 0.

The programs for A317014, there is no canonical definition to state claims against.
-/

/-! ## A317014.P6696017655448454137

`A027466(A091018(n))`
-/

namespace A317014.P6696017655448454137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A091018 n).toNat

end

end A317014.P6696017655448454137

/-! ## A317014.P2019912687362020164

`A027466(A056536(n+1)-1)`
-/

namespace A317014.P2019912687362020164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A056536 (n + 1) - 1).toNat

end

end A317014.P2019912687362020164

/-! ## A317014.P2986605467210339189

`A147716(A091018(n))/A004773(A119440(n))`
-/

namespace A317014.P2986605467210339189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147716 (A091018 n).toNat : ℚ) / (A004773 (A119440 n).toNat : ℚ)

end

end A317014.P2986605467210339189

/-! ## A317014.P10184139047655593594

`A027466(A219428(A133707(n+1))+A056536(n+1))`
-/

namespace A317014.P10184139047655593594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A219428 (A133707 (n + 1)).toNat + A056536 (n + 1)).toNat

end

end A317014.P10184139047655593594

/-! ## A317014.P10143708853250040030

`A037466(A305837(n))`
-/

namespace A317014.P10143708853250040030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A305837 n).toNat

end

end A317014.P10143708853250040030

/-!
# A317016: Triangle read by rows: T(0,0) = 1; T(n,k) = T(n-1,k) + 7 * T(n-2,k-1) for k = 0..floor(n/2). T(n,k)=0 for n or k < 0.

The programs for A317016, there is no canonical definition to state claims against.
-/

/-! ## A317016.P2128645914833718290

`A013614(A091018(n))`
-/

namespace A317016.P2128645914833718290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (A091018 n).toNat

end

end A317016.P2128645914833718290

/-! ## A317016.P13781504920952893092

`A013614(A056536(n+1)-1)`
-/

namespace A317016.P13781504920952893092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (A056536 (n + 1) - 1).toNat

end

end A317016.P13781504920952893092

/-! ## A317016.P10243210333488665052

`7^A055087(n)*A011973(n)`
-/

namespace A317016.P10243210333488665052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A055087 n : ℤ) * (A011973 n : ℚ)

end

end A317016.P10243210333488665052

/-! ## A317016.P4742716341666863921

`A000420(A055087(n))*A011973(n)`
-/

namespace A317016.P4742716341666863921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A055087 n).toNat * A011973 n

end

end A317016.P4742716341666863921

/-!
# A317017: Expansion of Product_{k>=1} 1/(1 - x^k)^((3*k+1)*binomial(k+2,3)/4).

The programs for A317017, there is no canonical definition to state claims against.
-/

/-! ## A317017.P11062432241844278199

`A077472(a(n-1)+3)` with `a(0)=1, a(1)=1`
-/

namespace A317017.P11062432241844278199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A077472 (a (n - 1) + 3).toNat

end

end A317017.P11062432241844278199

/-!
# A317019: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*binomial(k+2,3)).

The programs for A317019, there is no canonical definition to state claims against.
-/

/-! ## A317019.P11124434669221175428

`floor(A180144(n)-A162763(3*n+1)/(n+1))`
-/

namespace A317019.P11124434669221175428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180144 n : ℚ) - (A162763 (3 * n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A317019.P11124434669221175428

/-!
# A317020: Expansion of Product_{k>=1} 1/(1 - x^k)^((5*k-1)*binomial(k+2,3)/4).

The programs for A317020, there is no canonical definition to state claims against.
-/

/-! ## A317020.P8797801597263143976

`A118053(C(comp[n²], n+1))`
-/

namespace A317020.P8797801597263143976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118053 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (n + 1))

end

end A317020.P8797801597263143976

/-!
# A317021: Expansion of Product_{k>=1} 1/(1 - x^k)^((3*k-1)*binomial(k+2,3)/2).

The programs for A317021, there is no canonical definition to state claims against.
-/

/-! ## A317021.P7905042712368756510

`A233583(A000045(3*n+1))-n^(n-2%(n+1))`
-/

namespace A317021.P7905042712368756510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (A000045 (3 * n + 1)).toNat : ℚ) - (n : ℚ) ^ ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ) : ℤ)

end

end A317021.P7905042712368756510

/-! ## A317021.P11087328249080206874

`A289500(A289419(n+6)+A289312(n))`
-/

namespace A317021.P11087328249080206874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289500 (A289419 (n + 6) + A289312 n).toNat

end

end A317021.P11087328249080206874

/-!
# A317022: Expansion of e.g.f. sec(exp(x) - 1) + tan(exp(x) - 1).

The programs for A317022, there is no canonical definition to state claims against.
-/

/-! ## A317022.P866253045775790296

`ceil(A335788(n)/2)`
-/

namespace A317022.P866253045775790296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A335788 n : ℚ) / 2⌉

end

end A317022.P866253045775790296

/-! ## A317022.P14123333488116509981

`(A335788(A028310(n))+1)/2`
-/

namespace A317022.P14123333488116509981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335788 (A028310 n).toNat + 1 : ℚ) / 2

end

end A317022.P14123333488116509981

/-! ## A317022.P2114850603795913086

`(A335788(n)+A000041(gcd(n, n+1)))/2`
-/

namespace A317022.P2114850603795913086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335788 n + A000041 (Nat.gcd n (n + 1)) : ℚ) / 2

end

end A317022.P2114850603795913086

/-! ## A317022.P79750090404142568

`round(A335788(n)/A001316(A001316(n)))`
-/

namespace A317022.P79750090404142568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A335788 n : ℚ) / (A001316 (A001316 n).toNat : ℚ))

end

end A317022.P79750090404142568

/-! ## A317022.P6189412834920684849

`round(A335788(n)/A000005(A020484(n)))`
-/

namespace A317022.P6189412834920684849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A335788 n : ℚ) / (A000005 (A020484 n).toNat : ℚ))

end

end A317022.P6189412834920684849

/-! ## A317022.P13693856577704100825

`(A335788(n)-A008683(A007918(n)))/2`
-/

namespace A317022.P13693856577704100825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335788 n - A008683 (A007918 n).toNat : ℚ) / 2

end

end A317022.P13693856577704100825

/-!
# A317023: Square array A(n,k), n >= 0, k >= 0, read by ascending antidiagonals, where the sequence of row n is the expansion of (1-x^(n+1))/((1-x)^(n+1)).

The programs for A317023, there is no canonical definition to state claims against.
-/

/-! ## A317023.P519829222639453060

`abs(A130595(n)+A057094(n))`
-/

namespace A317023.P519829222639453060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n + A057094 n|

end

end A317023.P519829222639453060

/-! ## A317023.P13621853038878648559

`A007318(n)-abs(A057094(n))`
-/

namespace A317023.P13621853038878648559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - |A057094 n|

end

end A317023.P13621853038878648559

/-! ## A317023.P15218797637398425594

`A007318(n)-A284938(n+1)`
-/

namespace A317023.P15218797637398425594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A284938 (n + 1)

end

end A317023.P15218797637398425594

/-! ## A317023.P13963645292051359044

`abs(A108086(n))-abs(A057094(n))`
-/

namespace A317023.P13963645292051359044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - |A057094 n|

end

end A317023.P13963645292051359044

/-! ## A317023.P12123687727271207709

`sqrt(A008459(n))-abs(A057094(n))`
-/

namespace A317023.P12123687727271207709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) - (|A057094 n| : ℝ)

end

end A317023.P12123687727271207709

/-! ## A317023.P9665489371205289119

`Δ[A102363(n)]-abs(A057094(n))`
-/

namespace A317023.P9665489371205289119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - |A057094 n|

end

end A317023.P9665489371205289119

/-! ## A317023.P7006219094457555750

`sqrt(A008459(n))-A284938(n+1)`
-/

namespace A317023.P7006219094457555750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) - (A284938 (n + 1) : ℝ)

end

end A317023.P7006219094457555750

/-! ## A317023.P1108246713817716153

`A007318(n)-A038690(A057094(n)²)`
-/

namespace A317023.P1108246713817716153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A038690 (A057094 n ^ 2).toNat

end

end A317023.P1108246713817716153

/-! ## A317023.P5711985684640564616

`A007318(n)-A322832(A057094(n)²)`
-/

namespace A317023.P5711985684640564616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A322832 (A057094 n ^ 2).toNat

end

end A317023.P5711985684640564616

/-! ## A317023.P3346611266817419318

`A007318(n)-∑{d}[A057094(n), A000010(#)]`
-/

namespace A317023.P3346611266817419318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A317023.P3346611266817419318

/-!
# A317025: a(n) = lcm(A317024(n), A317024(n+1)).

The programs for A317025, there is no canonical definition to state claims against.
-/

/-! ## A317025.P8284066715929133466

`lcm(A317024(n+1), A317024(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317025.P8284066715929133466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A317024 (n + 1)) (A317024 (n + 2))

end

end A317025.P8284066715929133466

/-!
# A317026: Triangle read by rows: T(0,0) = 1; T(n,k) = T(n-1,k) + 8 * T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A317026, there is no canonical definition to state claims against.
-/

/-! ## A317026.P4883225470382515481

`A013615(A091018(n))`
-/

namespace A317026.P4883225470382515481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (A091018 n).toNat

end

end A317026.P4883225470382515481

/-! ## A317026.P452578297998631478

`A013615(A056536(n+1)-1)`
-/

namespace A317026.P452578297998631478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013615 (A056536 (n + 1) - 1).toNat

end

end A317026.P452578297998631478

/-! ## A317026.P17773363310544261537

`8^A055087(n)*A011973(n)`
-/

namespace A317026.P17773363310544261537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A055087 n : ℤ) * (A011973 n : ℚ)

end

end A317026.P17773363310544261537

/-! ## A317026.P14814233786148429116

`A128099(n)*A207537((n%floor(sqrt(n+1))+1)²)`
-/

namespace A317026.P14814233786148429116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128099 n * A207537 ((n % Nat.sqrt (n + 1) + 1) ^ 2)

end

end A317026.P14814233786148429116

/-! ## A317026.P14459752788282748516

`A001018(A055087(n))*A011973(n)`
-/

namespace A317026.P14459752788282748516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A055087 n).toNat * A011973 n

end

end A317026.P14459752788282748516

/-! ## A317026.P8065054854912577524

`A000302(A055087(n))*A128099(n)`
-/

namespace A317026.P8065054854912577524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A055087 n).toNat * A128099 n

end

end A317026.P8065054854912577524

/-! ## A317026.P7213742482723045327

`A059268(A091018(n))²*A128099(n)`
-/

namespace A317026.P7213742482723045327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat ^ 2 * A128099 n

end

end A317026.P7213742482723045327

/-! ## A317026.P13595240491073067690

`A006519(A245178(n+1))²*A128099(n)`
-/

namespace A317026.P13595240491073067690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A245178 (n + 1)).toNat ^ 2 * A128099 n

end

end A317026.P13595240491073067690

/-! ## A317026.P966615457948999577

`(A128099(n)/A011973(n))²*A128099(n)`
-/

namespace A317026.P966615457948999577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A128099 n : ℚ) / (A011973 n : ℚ)) ^ 2 * (A128099 n : ℚ)

end

end A317026.P966615457948999577

/-! ## A317026.P6403799843701130284

`A000079(A055087(n))*A013611(A091018(n))`
-/

namespace A317026.P6403799843701130284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A013611 (A091018 n).toNat

end

end A317026.P6403799843701130284

/-!
# A317027: Perfect powers that appear more than once in the Catalan triangle.

The programs for A317027, there is no canonical definition to state claims against.
-/

/-! ## A317027.P2586361514776577154

`∩[A000217(n+2)-1, ∪[n^3, n²]]`
-/

namespace A317027.P2586361514776577154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A317027.P2586361514776577154

/-! ## A317027.P10320081821768170334

`∩[A216765(n+1), C(n+2, 2)]-1`
-/

namespace A317027.P10320081821768170334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℤ) - 1

end

end A317027.P10320081821768170334

/-! ## A317027.P6323643215755060428

`∩[C(n+3, 2)-1, A001597(n+1)]`
-/

namespace A317027.P6323643215755060428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317027.P6323643215755060428

/-!
# A317028: Triangle read by rows: T(0,0) = 1; T(n,k) = 8 * T(n-1,k) + T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A317028, there is no canonical definition to state claims against.
-/

/-! ## A317028.P10727187767269362009

`A038279(A091018(n))`
-/

namespace A317028.P10727187767269362009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (A091018 n).toNat

end

end A317028.P10727187767269362009

/-! ## A317028.P2454142134142834283

`A038279(A056536(n+1)-1)`
-/

namespace A317028.P2454142134142834283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 (A056536 (n + 1) - 1).toNat

end

end A317028.P2454142134142834283

/-! ## A317028.P5716687116253946596

`8^A082375(n)*A011973(n)`
-/

namespace A317028.P5716687116253946596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A082375 n : ℤ) * (A011973 n : ℚ)

end

end A317028.P5716687116253946596

/-! ## A317028.P16665412141796986570

`A305833(n)²/A207538(n+1)`
-/

namespace A317028.P16665412141796986570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305833 n ^ 2 : ℚ) / (A207538 (n + 1) : ℚ)

end

end A317028.P16665412141796986570

/-! ## A317028.P6574497656325560750

`A001018(A082375(n))*A011973(n)`
-/

namespace A317028.P6574497656325560750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A082375 n).toNat * A011973 n

end

end A317028.P6574497656325560750

/-!
# A317029: Invertible primes p such that k*p - 1 and k*p + 1 is a twin prime pair; for k = 12.

The programs for A317029, there is no canonical definition to state claims against.
-/

/-! ## A317029.P2105302896944260005

`∩[A048890(n+1), A138242(n+1)]`
-/

namespace A317029.P2105302896944260005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317029.P2105302896944260005

/-!
# A317030: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317030, there is no canonical definition to state claims against.
-/

/-! ## A317030.P5511030421675441736

`A317036(∑[4*n]+1)`
-/

namespace A317030.P5511030421675441736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317030.P5511030421675441736

/-! ## A317030.P17352640518451456593

`record[A317036(Δ[A235355(n)])]`
-/

namespace A317030.P17352640518451456593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317030.P17352640518451456593

/-! ## A317030.P4769249748801154117

`and(-1, A317036(A001844(n)))`
-/

namespace A317030.P4769249748801154117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A317036 (A001844 n).toNat)

end

end A317030.P4769249748801154117

/-! ## A317030.P15077282222419770186

`record[A317036(A330613(n+1))]`
-/

namespace A317030.P15077282222419770186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317030.P15077282222419770186

/-! ## A317030.P2121162199512075458

`record[A003982(n)*A317036(n+1)]`
-/

namespace A317030.P2121162199512075458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317030.P2121162199512075458

/-!
# A317031: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317031, there is no canonical definition to state claims against.
-/

/-! ## A317031.P1304530442839578367

`A317036(∑[n+2]+4)`
-/

namespace A317031.P1304530442839578367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317031.P1304530442839578367

/-! ## A317031.P4102179253744264681

`A317036(A167614(n+1))+char[18]`
-/

namespace A317031.P4102179253744264681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317031.P4102179253744264681

/-! ## A317031.P10157928916185747931

`A317036(A167614(n+1))%A017033(n)`
-/

namespace A317031.P10157928916185747931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317036 (A167614 (n + 1)).toNat) (A017033 n)

end

end A317031.P10157928916185747931

/-! ## A317031.P14266837431164031651

`A007318(C(2, n))*A317036(A167614(n+1))`
-/

namespace A317031.P14266837431164031651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317036 (A167614 (n + 1)).toNat

end

end A317031.P14266837431164031651

/-! ## A317031.P12704350389192232830

`or(A000035(2*n), A317036(A167614(n+1)))`
-/

namespace A317031.P12704350389192232830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (2 * n)) (A317036 (A167614 (n + 1)).toNat)

end

end A317031.P12704350389192232830

/-!
# A317032: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317032, there is no canonical definition to state claims against.
-/

/-! ## A317032.P10547754959821272604

`A317036(∑[n+3]+7)`
-/

namespace A317032.P10547754959821272604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317032.P10547754959821272604

/-! ## A317032.P571930359441709754

`A317036(A034856(n+2)+6)+char[16]`
-/

namespace A317032.P571930359441709754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A034856 (n + 2) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317032.P571930359441709754

/-! ## A317032.P8521435585109754236

`A317036(A167614(n+2)+1)+char[28]`
-/

namespace A317032.P8521435585109754236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317032.P8521435585109754236

/-! ## A317032.P2108029740538866669

`A317036(A000124(n+3)+3)+C(n, 47)`
-/

namespace A317032.P2108029740538866669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A000124 (n + 3) + 3).toNat + (Nat.choose n 47 : ℤ)

end

end A317032.P2108029740538866669

/-! ## A317032.P6072403375904614343

`A007318(C(3, n))*A317036(A167614(n+2)+1)`
-/

namespace A317032.P6072403375904614343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A317036 (A167614 (n + 2) + 1).toNat

end

end A317032.P6072403375904614343

/-!
# A317033: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317033, there is no canonical definition to state claims against.
-/

/-! ## A317033.P10641957145950807726

`A317036(A374005(n+1))`
-/

namespace A317033.P10641957145950807726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A374005 (n + 1)).toNat

end

end A317033.P10641957145950807726

/-! ## A317033.P6269041391001929714

`A317036(A167499(n+3))`
-/

namespace A317033.P6269041391001929714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A167499 (n + 3)).toNat

end

end A317033.P6269041391001929714

/-! ## A317033.P6385305443877557872

`A317036(A155212(n)+13)`
-/

namespace A317033.P6385305443877557872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A155212 n + 13).toNat

end

end A317033.P6385305443877557872

/-! ## A317033.P1934913068120806406

`A317036(A056000(n)+15)`
-/

namespace A317033.P1934913068120806406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A056000 n + 15).toNat

end

end A317033.P1934913068120806406

/-! ## A317033.P4007676433513452055

`A317036(eq[7, A066657(n)])`
-/

namespace A317033.P4007676433513452055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317033.P4007676433513452055

/-!
# A317034: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317034, there is no canonical definition to state claims against.
-/

/-! ## A317034.P2991271153982026249

`A317036(A374007(n+1))`
-/

namespace A317034.P2991271153982026249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A374007 (n + 1)).toNat

end

end A317034.P2991271153982026249

/-! ## A317034.P9567516973583756363

`A317036(A166136(n+4))`
-/

namespace A317034.P9567516973583756363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A166136 (n + 4)).toNat

end

end A317034.P9567516973583756363

/-! ## A317034.P16675331590427392349

`A317036(A056115(n)+21)`
-/

namespace A317034.P16675331590427392349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A056115 n + 21).toNat

end

end A317034.P16675331590427392349

/-! ## A317034.P1435716225225734231

`A317036(A167487(n+4)-1)`
-/

namespace A317034.P1435716225225734231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A167487 (n + 4) - 1).toNat

end

end A317034.P1435716225225734231

/-! ## A317034.P11548480517527842566

`A317036(A167614(n+4)+3)`
-/

namespace A317034.P11548480517527842566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A167614 (n + 4) + 3).toNat

end

end A317034.P11548480517527842566

/-!
# A317035: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317035, there is no canonical definition to state claims against.
-/

/-! ## A317035.P13246210369599709138

`A317036(A374008(n+1))`
-/

namespace A317035.P13246210369599709138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A374008 (n + 1)).toNat

end

end A317035.P13246210369599709138

/-! ## A317035.P7114615783308113352

`A317036(A056119(n)+28)`
-/

namespace A317035.P7114615783308113352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A056119 n + 28).toNat

end

end A317035.P7114615783308113352

/-! ## A317035.P3910347651454879367

`A317036(eq[11, A066657(n)])`
-/

namespace A317035.P3910347651454879367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317035.P3910347651454879367

/-! ## A317035.P13748420412935529026

`A317036(A167499(n+5)+2)`
-/

namespace A317035.P13748420412935529026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A167499 (n + 5) + 2).toNat

end

end A317035.P13748420412935529026

/-! ## A317035.P10854301793788410337

`A317036(A167614(n+5)+4)`
-/

namespace A317035.P10854301793788410337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (A167614 (n + 5) + 4).toNat

end

end A317035.P10854301793788410337

/-!
# A317036: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317036, there is no canonical definition to state claims against.
-/

/-! ## A317036.P14225242914890435467

`A305642(n+1)+A173636(A174545(n))`
-/

namespace A317036.P14225242914890435467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (n + 1) + A173636 (A174545 n).toNat

end

end A317036.P14225242914890435467

/-! ## A317036.P3322674369574680961

`A316218(n+1)+A157685(A260340(n))`
-/

namespace A317036.P3322674369574680961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (n + 1) + A157685 (A260340 n).toNat

end

end A317036.P3322674369574680961

/-! ## A317036.P13997956779168435311

`A305642(n+1)+A316717(A316576(n+1))²`
-/

namespace A317036.P13997956779168435311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (n + 1) + A316717 (A316576 (n + 1)).toNat ^ 2

end

end A317036.P13997956779168435311

/-! ## A317036.P10564154334448099118

`A305642(n+1)+A025465(A003099(n))`
-/

namespace A317036.P10564154334448099118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (n + 1) + A025465 (A003099 n).toNat

end

end A317036.P10564154334448099118

/-!
# A317037: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317037, there is no canonical definition to state claims against.
-/

/-! ## A317037.P14637043338137460661

`A317043(∑[4*n]+1)`
-/

namespace A317037.P14637043338137460661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317037.P14637043338137460661

/-! ## A317037.P9923400150136029739

`∑{digits}[n, A317043(A001844(#))]`
-/

namespace A317037.P9923400150136029739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A317043 (A001844 x).toNat).sum

end

end A317037.P9923400150136029739

/-! ## A317037.P11751890061641778856

`record[A317043(A330613(n+1))]`
-/

namespace A317037.P11751890061641778856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317037.P11751890061641778856

/-! ## A317037.P2515628362083869716

`A317043(A001844(n))+char[9]`
-/

namespace A317037.P2515628362083869716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317037.P2515628362083869716

/-! ## A317037.P11662059005942570892

`record[A317043(A001844(val(n+1, 2)))]`
-/

namespace A317037.P11662059005942570892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317037.P11662059005942570892

/-!
# A317038: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317038, there is no canonical definition to state claims against.
-/

/-! ## A317038.P17055724044171993079

`A317043(∑[n+2]+4)`
-/

namespace A317038.P17055724044171993079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317038.P17055724044171993079

/-! ## A317038.P18267756415980831217

`lcm((-1)^n, A317043(A167614(n+1)))`
-/

namespace A317038.P18267756415980831217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A317043 (A167614 (n + 1)).toNat)

end

end A317038.P18267756415980831217

/-! ## A317038.P14031269759144146722

`A317043(A167614(n+1))+A185284(n)`
-/

namespace A317038.P14031269759144146722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A167614 (n + 1)).toNat + A185284 n

end

end A317038.P14031269759144146722

/-! ## A317038.P6228792490380136573

`A262681(n)*A317043(A167614(n+1))`
-/

namespace A317038.P6228792490380136573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A317043 (A167614 (n + 1)).toNat

end

end A317038.P6228792490380136573

/-! ## A317038.P11963790860232065455

`A304042(n)*A317043(A167614(n+1))`
-/

namespace A317038.P11963790860232065455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A317043 (A167614 (n + 1)).toNat

end

end A317038.P11963790860232065455

/-!
# A317039: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317039, there is no canonical definition to state claims against.
-/

/-! ## A317039.P16837648994915041970

`A317043(A374004(n+1))`
-/

namespace A317039.P16837648994915041970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A374004 (n + 1)).toNat

end

end A317039.P16837648994915041970

/-! ## A317039.P5549286293126837599

`A317043(A141214(n)+7)`
-/

namespace A317039.P5549286293126837599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A141214 n + 7).toNat

end

end A317039.P5549286293126837599

/-! ## A317039.P3661149063704277571

`A317043(A052905(n)+9)`
-/

namespace A317039.P3661149063704277571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A052905 n + 9).toNat

end

end A317039.P3661149063704277571

/-! ## A317039.P5612173056749947458

`A317043(A055999(n)+10)`
-/

namespace A317039.P5612173056749947458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A055999 n + 10).toNat

end

end A317039.P5612173056749947458

/-! ## A317039.P1277053073516634328

`A317043(A167614(n+2)+1)`
-/

namespace A317039.P1277053073516634328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A167614 (n + 2) + 1).toNat

end

end A317039.P1277053073516634328

/-!
# A317040: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317040, there is no canonical definition to state claims against.
-/

/-! ## A317040.P13393785371459495710

`A317043(A374005(n+1))`
-/

namespace A317040.P13393785371459495710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A374005 (n + 1)).toNat

end

end A317040.P13393785371459495710

/-! ## A317040.P13131685869443017935

`A317043(A167499(n+3))`
-/

namespace A317040.P13131685869443017935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A167499 (n + 3)).toNat

end

end A317040.P13131685869443017935

/-! ## A317040.P17170954370158451704

`A317043(A167614(n+3)+2)`
-/

namespace A317040.P17170954370158451704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A167614 (n + 3) + 2).toNat

end

end A317040.P17170954370158451704

/-! ## A317040.P3221508192133944417

`A317043(eq[5, A002260(n+1)]+1)`
-/

namespace A317040.P3221508192133944417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A317040.P3221508192133944417

/-! ## A317040.P14845373870652402594

`A317043(Δ[A264443(n)])`
-/

namespace A317040.P14845373870652402594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (f1 (n + 1) - f1 n).toNat

end

end A317040.P14845373870652402594

/-!
# A317041: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317041, there is no canonical definition to state claims against.
-/

/-! ## A317041.P1025407144468073513

`A317043(A374007(n+1))`
-/

namespace A317041.P1025407144468073513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A374007 (n + 1)).toNat

end

end A317041.P1025407144468073513

/-! ## A317041.P2017705515231776952

`A317043(A166136(n+4))`
-/

namespace A317041.P2017705515231776952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A166136 (n + 4)).toNat

end

end A317041.P2017705515231776952

/-! ## A317041.P8382457564098491864

`A317043(A056115(n)+21)`
-/

namespace A317041.P8382457564098491864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A056115 n + 21).toNat

end

end A317041.P8382457564098491864

/-! ## A317041.P13520482545625556658

`A317043(A167614(n+4)+3)`
-/

namespace A317041.P13520482545625556658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A167614 (n + 4) + 3).toNat

end

end A317041.P13520482545625556658

/-! ## A317041.P8849552271495055955

`A317043(eq[7, A131818(n+1)])`
-/

namespace A317041.P8849552271495055955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317041.P8849552271495055955

/-!
# A317042: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317042, there is no canonical definition to state claims against.
-/

/-! ## A317042.P11839850518625534587

`A317043(A374008(n+1))`
-/

namespace A317042.P11839850518625534587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A374008 (n + 1)).toNat

end

end A317042.P11839850518625534587

/-! ## A317042.P8390638200004690539

`A317043(eq[8, A131818(n+1)])`
-/

namespace A317042.P8390638200004690539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317042.P8390638200004690539

/-! ## A317042.P10550419867554557275

`A317043(A055999(n+4))`
-/

namespace A317042.P10550419867554557275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (A055999 (n + 4)).toNat

end

end A317042.P10550419867554557275

/-! ## A317042.P11618616394465251159

`A317043(eq[4, A219347(n)])`
-/

namespace A317042.P11618616394465251159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317042.P11618616394465251159

/-! ## A317042.P16328366859853972253

`A317043(eq[6, A193592(n)])`
-/

namespace A317042.P16328366859853972253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317042.P16328366859853972253

/-!
# A317043: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317043, there is no canonical definition to state claims against.
-/

/-! ## A317043.P15489919243314733812

`A317697(n+1)-A309785(A299321(n+1))`
-/

namespace A317043.P15489919243314733812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (n + 1) - A309785 (A299321 (n + 1)).toNat

end

end A317043.P15489919243314733812

/-! ## A317043.P10344159101151966625

`A317697(n+1)-A004198(A185044(n))`
-/

namespace A317043.P10344159101151966625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (n + 1) - A004198 (A185044 n).toNat

end

end A317043.P10344159101151966625

/-! ## A317043.P15677363006558412765

`A317697(n+1)-A309785(A331562(n))`
-/

namespace A317043.P15677363006558412765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (n + 1) - A309785 (A331562 n).toNat

end

end A317043.P15677363006558412765

/-! ## A317043.P17333826826783504766

`A317697(n+1)-A309785(A135225(n)²)`
-/

namespace A317043.P17333826826783504766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (n + 1) - A309785 (A135225 n ^ 2).toNat

end

end A317043.P17333826826783504766

/-! ## A317043.P17028493038526047785

`A317697(n+1)-A111427(A180995(n+1))`
-/

namespace A317043.P17028493038526047785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (n + 1) - A111427 (A180995 (n + 1)).toNat

end

end A317043.P17028493038526047785

/-!
# A317044: Numbers k such that A(k+1) = A(k) + 1, where A() = A005100() are the deficient numbers.

The programs for A317044, the canonical program `A317044.P1825513557439712356` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317044 has offset 1).

The definition of A317044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317044.P1825513557439712356

`comp[A023196(n+1)-(n+2)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A317044

/-- `comp[A023196(n+1)-(n+2)]+1` -/
def P1825513557439712356.Spec : Prop :=
  ∀ n, (P1825513557439712356.a n : ℤ) = A317044 (n + 1)

theorem P1825513557439712356.correct : P1825513557439712356.Spec := by
  intro n
  simp only [A317044, Nat.add_sub_cancel]

end A317044

/-! ## A317044.P11058424084719700240

`comp[lt[A033879(n+1), 1]-(n+1)]+1`
-/

namespace A317044.P11058424084719700240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A317044.P11058424084719700240

namespace A317044

/-- `comp[lt[A033879(n+1), 1]-(n+1)]+1` -/
def P11058424084719700240.Spec : Prop :=
  ∀ n, (P11058424084719700240.a n : ℤ) = A317044 (n + 1)

end A317044

/-! ## A317044.P12500977902186106009

`eq[1, A125238(n+1)]+1`
-/

namespace A317044.P12500977902186106009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317044.P12500977902186106009

namespace A317044

/-- `eq[1, A125238(n+1)]+1` -/
def P12500977902186106009.Spec : Prop :=
  ∀ n, (P12500977902186106009.a n : ℤ) = A317044 (n + 1)

end A317044

/-! ## A317044.P15785962246235457675

`lt[1, 4-a(A125238(n)-1)]` with `a(0)=0`
-/

namespace A317044.P15785962246235457675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  4 - f2 (A125238 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A317044.P15785962246235457675

namespace A317044

/-- `lt[1, 4-a(A125238(n)-1)]` -/
def P15785962246235457675.Spec : Prop :=
  ∀ n, (P15785962246235457675.a n : ℤ) = A317044 (n + 1)

end A317044

/-! ## A317044.P1414620308137617556

`A256562(A317047(n+1))`
-/

namespace A317044.P1414620308137617556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256562 (A317047 (n + 1)).toNat

end

end A317044.P1414620308137617556

namespace A317044

/-- `A256562(A317047(n+1))` -/
def P1414620308137617556.Spec : Prop :=
  ∀ n, P1414620308137617556.a n = A317044 (n + 1)

end A317044

/-!
# A317045: Numbers k such that A(k+1) = A(k) + 2, where A() = A005100() are the deficient numbers.

The programs for A317045, the canonical program `A317045.P9584726869343570922` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317045 has offset 1).

The definition of A317045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317045.P9584726869343570922

`eq[2, A125238(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A317045

/-- `eq[2, A125238(n+1)]+1` -/
def P9584726869343570922.Spec : Prop :=
  ∀ n, (P9584726869343570922.a n : ℤ) = A317045 (n + 1)

theorem P9584726869343570922.correct : P9584726869343570922.Spec := by
  intro n
  simp only [A317045, Nat.add_sub_cancel]

end A317045

/-! ## A317045.P575518591879180606

`A256562(A317048(n+1))`
-/

namespace A317045.P575518591879180606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256562 (A317048 (n + 1)).toNat

end

end A317045.P575518591879180606

namespace A317045

/-- `A256562(A317048(n+1))` -/
def P575518591879180606.Spec : Prop :=
  ∀ n, P575518591879180606.a n = A317045 (n + 1)

end A317045

/-! ## A317045.P420582882382552780

`A179528(A083207(A023196(n+1)-(n+1)))`
-/

namespace A317045.P420582882382552780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179528 (A083207 (A023196 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A317045.P420582882382552780

namespace A317045

/-- `A179528(A083207(A023196(n+1)-(n+1)))` -/
def P420582882382552780.Spec : Prop :=
  ∀ n, P420582882382552780.a n = A317045 (n + 1)

end A317045

/-! ## A317045.P2731352074619174564

`A023196(n+1)-A013631(A229057(n+1))`
-/

namespace A317045.P2731352074619174564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - A013631 (A229057 (n + 1)).toNat

end

end A317045.P2731352074619174564

namespace A317045

/-- `A023196(n+1)-A013631(A229057(n+1))` -/
def P2731352074619174564.Spec : Prop :=
  ∀ n, P2731352074619174564.a n = A317045 (n + 1)

end A317045

/-!
# A317047: Numbers k such that both k and k + 1 are deficient.

The programs for A317047, the canonical program `A317047.P103969702629091230` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317047 has offset 1).

The definition of A317047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6696 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317047.P2265877733068667052

`record[A125746(A125746(n+2)-1)]`
-/

namespace A317047.P2265877733068667052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A125746 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317047.P2265877733068667052

namespace A317047

/-- `record[A125746(A125746(n+2)-1)]` -/
def P2265877733068667052.Spec : Prop :=
  ∀ n, P2265877733068667052.a n = A317047 (n + 1)

end A317047

/-! ## A317047.P1040205062007382881

`record[A125746(n+1)%A125746(n+2)]`
-/

namespace A317047.P1040205062007382881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125746 (n + 1)) (A125746 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317047.P1040205062007382881

namespace A317047

/-- `record[A125746(n+1)%A125746(n+2)]` -/
def P1040205062007382881.Spec : Prop :=
  ∀ n, P1040205062007382881.a n = A317047 (n + 1)

end A317047

/-! ## A317047.P10139780734326097919

`eq[A341620(n+2), A341620(n+1)]+1`
-/

namespace A317047.P10139780734326097919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A317047.P10139780734326097919

namespace A317047

/-- `eq[A341620(n+2), A341620(n+1)]+1` -/
def P10139780734326097919.Spec : Prop :=
  ∀ n, (P10139780734326097919.a n : ℤ) = A317047 (n + 1)

end A317047

/-! ## A317047.P5207304427244147003

`eq[A341624(n+2), A341624(n+1)]+1`
-/

namespace A317047.P5207304427244147003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A317047.P5207304427244147003

namespace A317047

/-- `eq[A341624(n+2), A341624(n+1)]+1` -/
def P5207304427244147003.Spec : Prop :=
  ∀ n, (P5207304427244147003.a n : ℤ) = A317047 (n + 1)

end A317047

/-! ## A317047.P6977464793697622726

`record[(n+1)*A294934(A294934(n+1)+n+1)]`
-/

namespace A317047.P6977464793697622726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294934 (A294934 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317047.P6977464793697622726

namespace A317047

/-- `record[(n+1)*A294934(A294934(n+1)+n+1)]` -/
def P6977464793697622726.Spec : Prop :=
  ∀ n, P6977464793697622726.a n = A317047 (n + 1)

end A317047

/-! ## A317047.P11464485778010308910

`A125746(eq[A125746(n+1)+1, A125746(n+2)]+1)`
-/

namespace A317047.P11464485778010308910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A317047.P11464485778010308910

namespace A317047

/-- `A125746(eq[A125746(n+1)+1, A125746(n+2)]+1)` -/
def P11464485778010308910.Spec : Prop :=
  ∀ n, P11464485778010308910.a n = A317047 (n + 1)

end A317047

/-! ## A317047.P103969702629091230

`A005100(A317044(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A317047

/-- `A005100(A317044(n+1))` -/
def P103969702629091230.Spec : Prop :=
  ∀ n, P103969702629091230.a n = A317047 (n + 1)

theorem P103969702629091230.correct : P103969702629091230.Spec := by
  intro n
  simp only [A317047, Nat.add_sub_cancel]

end A317047

/-! ## A317047.P11276408867274341374

`A005100(eq[1, A125238(n+1)]+1)`
-/

namespace A317047.P11276408867274341374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A317047.P11276408867274341374

namespace A317047

/-- `A005100(eq[1, A125238(n+1)]+1)` -/
def P11276408867274341374.Spec : Prop :=
  ∀ n, P11276408867274341374.a n = A317047 (n + 1)

end A317047

/-! ## A317047.P5333384352648771055

`A005100(eq[1, A005100(n+2)-A005100(n+1)]+1)`
-/

namespace A317047.P5333384352648771055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 2) - A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A317047.P5333384352648771055

namespace A317047

/-- `A005100(eq[1, A005100(n+2)-A005100(n+1)]+1)` -/
def P5333384352648771055.Spec : Prop :=
  ∀ n, P5333384352648771055.a n = A317047 (n + 1)

end A317047

/-! ## A317047.P15546276217276331436

`A005100(comp[comp[A005100(n+1)]-n])`
-/

namespace A317047.P15546276217276331436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A317047.P15546276217276331436

namespace A317047

/-- `A005100(comp[comp[A005100(n+1)]-n])` -/
def P15546276217276331436.Spec : Prop :=
  ∀ n, P15546276217276331436.a n = A317047 (n + 1)

end A317047

/-! ## A317047.P8717789165130469303

`eq[Δ[A060862(n+1)], A060862(n+1)]+1`
-/

namespace A317047.P8717789165130469303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A317047.P8717789165130469303

namespace A317047

/-- `eq[Δ[A060862(n+1)], A060862(n+1)]+1` -/
def P8717789165130469303.Spec : Prop :=
  ∀ n, (P8717789165130469303.a n : ℤ) = A317047 (n + 1)

end A317047

/-!
# A317048: Numbers k such that both k and k + 2 are consecutive deficient numbers.

The programs for A317048, the canonical program `A317048.P2477783459153018181` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317048 has offset 1).

The definition of A317048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317048.P2477783459153018181

`A005100(A317045(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A317048

/-- `A005100(A317045(n+1))` -/
def P2477783459153018181.Spec : Prop :=
  ∀ n, P2477783459153018181.a n = A317048 (n + 1)

theorem P2477783459153018181.correct : P2477783459153018181.Spec := by
  intro n
  simp only [A317048, Nat.add_sub_cancel]

end A317048

/-! ## A317048.P14716631869341478592

`A005100(eq[2, A005100(n+2)-A005100(n+1)]+1)`
-/

namespace A317048.P14716631869341478592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 2) - A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A317048.P14716631869341478592

namespace A317048

/-- `A005100(eq[2, A005100(n+2)-A005100(n+1)]+1)` -/
def P14716631869341478592.Spec : Prop :=
  ∀ n, P14716631869341478592.a n = A317048 (n + 1)

end A317048

/-! ## A317048.P12294329452663216557

`lt[A056019(A056019(n)), A001065(n+1)]`
-/

namespace A317048.P12294329452663216557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (A056019 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317048.P12294329452663216557

namespace A317048

/-- `lt[A056019(A056019(n)), A001065(n+1)]` -/
def P12294329452663216557.Spec : Prop :=
  ∀ n, (P12294329452663216557.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P3288508737736375529

`lt[A033879(n+1), A134451(A281113(n+2))]`
-/

namespace A317048.P3288508737736375529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A281113 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317048.P3288508737736375529

namespace A317048

/-- `lt[A033879(n+1), A134451(A281113(n+2))]` -/
def P3288508737736375529.Spec : Prop :=
  ∀ n, (P3288508737736375529.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P14434037257117681703

`eq[A336915(n+1), A336917(A007821(n+1))]`
-/

namespace A317048.P14434037257117681703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336917 (A007821 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317048.P14434037257117681703

namespace A317048

/-- `eq[A336915(n+1), A336917(A007821(n+1))]` -/
def P14434037257117681703.Spec : Prop :=
  ∀ n, (P14434037257117681703.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P6349787161703962540

`lt[A025465(3*(n+1)), A210000(A341624(n+1))]`
-/

namespace A317048.P6349787161703962540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210000 (A341624 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317048.P6349787161703962540

namespace A317048

/-- `lt[A025465(3*(n+1)), A210000(A341624(n+1))]` -/
def P6349787161703962540.Spec : Prop :=
  ∀ n, (P6349787161703962540.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P7982046470711726836

`A023196(n+1)-A001221(A109611(3*(n+1)))`
-/

namespace A317048.P7982046470711726836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - A001221 (A109611 (3 * (n + 1))).toNat

end

end A317048.P7982046470711726836

namespace A317048

/-- `A023196(n+1)-A001221(A109611(3*(n+1)))` -/
def P7982046470711726836.Spec : Prop :=
  ∀ n, P7982046470711726836.a n = A317048 (n + 1)

end A317048

/-! ## A317048.P2655724258000087538

`A023196(n+1)-A000035(A002659(2*n+5))`
-/

namespace A317048.P2655724258000087538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - A000035 (A002659 (2 * n + 5)).toNat

end

end A317048.P2655724258000087538

namespace A317048

/-- `A023196(n+1)-A000035(A002659(2*n+5))` -/
def P2655724258000087538.Spec : Prop :=
  ∀ n, P2655724258000087538.a n = A317048 (n + 1)

end A317048

/-! ## A317048.P15633055124386826130

`lt[A033879(n+1), A133872(A138121(3*(n+1)))]`
-/

namespace A317048.P15633055124386826130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A138121 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317048.P15633055124386826130

namespace A317048

/-- `lt[A033879(n+1), A133872(A138121(3*(n+1)))]` -/
def P15633055124386826130.Spec : Prop :=
  ∀ n, (P15633055124386826130.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P7305458896616878491

`lt[A033879(n+1), A008480(A138121(3*n+4))]`
-/

namespace A317048.P7305458896616878491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A138121 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317048.P7305458896616878491

namespace A317048

/-- `lt[A033879(n+1), A008480(A138121(3*n+4))]` -/
def P7305458896616878491.Spec : Prop :=
  ∀ n, (P7305458896616878491.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P18311212818032147804

`A023196(n+1)-A001221(A087762(n+1))`
-/

namespace A317048.P18311212818032147804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - A001221 (A087762 (n + 1)).toNat

end

end A317048.P18311212818032147804

namespace A317048

/-- `A023196(n+1)-A001221(A087762(n+1))` -/
def P18311212818032147804.Spec : Prop :=
  ∀ n, P18311212818032147804.a n = A317048 (n + 1)

end A317048

/-! ## A317048.P7128730275740245960

`lt[A337690(A001358(3*n+5)), A337690(n+1)]`
-/

namespace A317048.P7128730275740245960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A001358 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317048.P7128730275740245960

namespace A317048

/-- `lt[A337690(A001358(3*n+5)), A337690(n+1)]` -/
def P7128730275740245960.Spec : Prop :=
  ∀ n, (P7128730275740245960.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P14740347561085111073

`A023196(n+1)-A355825(A105184(2*(n+2)))`
-/

namespace A317048.P14740347561085111073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - A355825 (A105184 (2 * (n + 2))).toNat

end

end A317048.P14740347561085111073

namespace A317048

/-- `A023196(n+1)-A355825(A105184(2*(n+2)))` -/
def P14740347561085111073.Spec : Prop :=
  ∀ n, P14740347561085111073.a n = A317048 (n + 1)

end A317048

/-! ## A317048.P11794245705329091433

`lt[A293814(n)²²², A341620(n+1)]`
-/

namespace A317048.P11794245705329091433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A293814 n ^ 2) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317048.P11794245705329091433

namespace A317048

/-- `lt[A293814(n)²²², A341620(n+1)]` -/
def P11794245705329091433.Spec : Prop :=
  ∀ n, (P11794245705329091433.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P12257124206406902111

`lt[n, A175126(A000203(n+1))]`
-/

namespace A317048.P12257124206406902111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A317048.P12257124206406902111

namespace A317048

/-- `lt[n, A175126(A000203(n+1))]` -/
def P12257124206406902111.Spec : Prop :=
  ∀ n, (P12257124206406902111.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P1900000014099696687

`A023196(n+1)-A143731(A023196(2*n+5))`
-/

namespace A317048.P1900000014099696687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - A143731 (A023196 (2 * n + 5)).toNat

end

end A317048.P1900000014099696687

namespace A317048

/-- `A023196(n+1)-A143731(A023196(2*n+5))` -/
def P1900000014099696687.Spec : Prop :=
  ∀ n, P1900000014099696687.a n = A317048 (n + 1)

end A317048

/-! ## A317048.P10230964745754681760

`lt[A022998(Δ[n²]), ∑{d}[n+1, #]]`
-/

namespace A317048.P10230964745754681760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A317048.P10230964745754681760

namespace A317048

/-- `lt[A022998(Δ[n²]), ∑{d}[n+1, #]]` -/
def P10230964745754681760.Spec : Prop :=
  ∀ n, (P10230964745754681760.a n : ℤ) = A317048 (n + 1)

end A317048

/-! ## A317048.P14169217612204117509

`A004526(lt[n, A245092(n)])`
-/

namespace A317048.P14169217612204117509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A317048.P14169217612204117509

namespace A317048

/-- `A004526(lt[n, A245092(n)])` -/
def P14169217612204117509.Spec : Prop :=
  ∀ n, P14169217612204117509.a n = A317048 (n + 1)

end A317048

/-! ## A317048.P16854296876879730269

`A262610(lt[n+1, A262610(n+1)])`
-/

namespace A317048.P16854296876879730269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A317048.P16854296876879730269

namespace A317048

/-- `A262610(lt[n+1, A262610(n+1)])` -/
def P16854296876879730269.Spec : Prop :=
  ∀ n, P16854296876879730269.a n = A317048 (n + 1)

end A317048

/-! ## A317048.P1016987004058487363

`lt[lt[n, A266491(n)], A000203(n+1)]`
-/

namespace A317048.P1016987004058487363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A317048.P1016987004058487363

namespace A317048

/-- `lt[lt[n, A266491(n)], A000203(n+1)]` -/
def P1016987004058487363.Spec : Prop :=
  ∀ n, (P1016987004058487363.a n : ℤ) = A317048 (n + 1)

end A317048

/-!
# A317049: Numbers k such that both k and k + 3 are consecutive deficient numbers.

The programs for A317049, there is no canonical definition to state claims against.
-/

/-! ## A317049.P6123230168638874902

`A096399(n+1)-1`
-/

namespace A317049.P6123230168638874902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096399 (n + 1) - 1

end

end A317049.P6123230168638874902

/-! ## A317049.P5133877130286289459

`A163747(C(n, n²)+1)+A096399(n+1)`
-/

namespace A317049.P5133877130286289459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 (Nat.choose n (n ^ 2) + 1) + A096399 (n + 1)

end

end A317049.P5133877130286289459

/-! ## A317049.P4382552815386825604

`A109039(A001316(n))+A096399(n+1)`
-/

namespace A317049.P4382552815386825604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A001316 n).toNat + A096399 (n + 1)

end

end A317049.P4382552815386825604

/-! ## A317049.P3623764554854576192

`A346242(A006530(3*n+5))+A096399(n+1)`
-/

namespace A317049.P3623764554854576192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A006530 (3 * n + 5)).toNat + A096399 (n + 1)

end

end A317049.P3623764554854576192

/-! ## A317049.P3462749456189476043

`A321460(A000032(C(2, n+2)))+A096399(n+1)`
-/

namespace A317049.P3462749456189476043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321460 (A000032 (Nat.choose 2 (n + 2))).toNat + A096399 (n + 1)

end

end A317049.P3462749456189476043

/-! ## A317049.P1979642958978346821

`A328384(A008578(n+1))+A096399(n+1)`
-/

namespace A317049.P1979642958978346821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A008578 (n + 1)).toNat + A096399 (n + 1)

end

end A317049.P1979642958978346821

/-! ## A317049.P11454734002090021519

`A328384(A000040(n+1))+A096399(n+1)`
-/

namespace A317049.P11454734002090021519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A000040 (n + 1)).toNat + A096399 (n + 1)

end

end A317049.P11454734002090021519

/-! ## A317049.P3776440337154097213

`A328384(A065091(n+1))+A096399(n+1)`
-/

namespace A317049.P3776440337154097213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A065091 (n + 1)).toNat + A096399 (n + 1)

end

end A317049.P3776440337154097213

/-! ## A317049.P2385376404599409109

`record[A103289(A052938(n+1))-1]`
-/

namespace A317049.P2385376404599409109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A052938 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317049.P2385376404599409109

/-! ## A317049.P17012524803739294946

`A103289(A052938(2*n+1))-1`
-/

namespace A317049.P17012524803739294946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A052938 (2 * n + 1)).toNat - 1

end

end A317049.P17012524803739294946

/-! ## A317049.P3319346686245529703

`record[A103289(A262672(n))-1]`
-/

namespace A317049.P3319346686245529703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A262672 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317049.P3319346686245529703

/-! ## A317049.P8950178253011241542

`A228826(A016813(n))+A096399(n+1)`
-/

namespace A317049.P8950178253011241542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A016813 n).toNat + A096399 (n + 1)

end

end A317049.P8950178253011241542

/-! ## A317049.P5463721765540284985

`A316441(p?[A004768(n)])+A096399(n+1)`
-/

namespace A317049.P5463721765540284985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A096399 (n + 1)

end

end A317049.P5463721765540284985

/-!
# A317050: a(0) = 0 and for any n >= 0, a(n+1) is obtained by changing the rightmost possible digit in the negabinary representation of a(n) so as to get a value not yet in the sequence.

The programs for A317050, the canonical program `A317050.P12862040302435564271` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317050 has offset 0).

The definition of A317050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053985, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317050.P12862040302435564271

`A053985(A003188(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A317050

/-- `A053985(A003188(n))` -/
def P12862040302435564271.Spec : Prop :=
  ∀ n, P12862040302435564271.a n = A317050 n

theorem P12862040302435564271.correct : P12862040302435564271.Spec := by
  intro n
  simp only [A317050]

end A317050

/-! ## A317050.P16354655006407394845

`A053985(xor(n, floor(n/2)))`
-/

namespace A317050.P16354655006407394845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A317050.P16354655006407394845

namespace A317050

/-- `A053985(xor(n, floor(n/2)))` -/
def P16354655006407394845.Spec : Prop :=
  ∀ n, P16354655006407394845.a n = A317050 n

end A317050

/-! ## A317050.P9491547027245907576

`A053985(A286548(n)+n)`
-/

namespace A317050.P9491547027245907576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A286548 n + (n : ℤ)).toNat

end

end A317050.P9491547027245907576

namespace A317050

/-- `A053985(A286548(n)+n)` -/
def P9491547027245907576.Spec : Prop :=
  ∀ n, P9491547027245907576.a n = A317050 n

end A317050

/-! ## A317050.P2800779146774792235

`A053985(A105081(n+1)-1)`
-/

namespace A317050.P2800779146774792235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A105081 (n + 1) - 1).toNat

end

end A317050.P2800779146774792235

namespace A317050

/-- `A053985(A105081(n+1)-1)` -/
def P2800779146774792235.Spec : Prop :=
  ∀ n, P2800779146774792235.a n = A317050 n

end A317050

/-! ## A317050.P7968390154254560814

`A053985(∑[A055975(n+1)]-A055975(n+1))`
-/

namespace A317050.P7968390154254560814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (∑ j ∈ Finset.range (n + 1), f1 j - A055975 (n + 1)).toNat

end

end A317050.P7968390154254560814

namespace A317050

/-- `A053985(∑[A055975(n+1)]-A055975(n+1))` -/
def P7968390154254560814.Spec : Prop :=
  ∀ n, P7968390154254560814.a n = A317050 n

end A317050

/-! ## A317050.P9655532307427656514

`A063695(A003188(2*n))-A003188(n)`
-/

namespace A317050.P9655532307427656514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (A003188 (2 * n)).toNat - A003188 n

end

end A317050.P9655532307427656514

namespace A317050

/-- `A063695(A003188(2*n))-A003188(n)` -/
def P9655532307427656514.Spec : Prop :=
  ∀ n, P9655532307427656514.a n = A317050 n

end A317050

/-! ## A317050.P5538802266489908778

`A003188(n)-A063694(2*A003188(n))`
-/

namespace A317050.P5538802266489908778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - A063694 (2 * A003188 n).toNat

end

end A317050.P5538802266489908778

namespace A317050

/-- `A003188(n)-A063694(2*A003188(n))` -/
def P5538802266489908778.Spec : Prop :=
  ∀ n, P5538802266489908778.a n = A317050 n

end A317050

/-! ## A317050.P8109588795421584118

`A063695(A065621(n+1))-A004526(A065621(n+1))`
-/

namespace A317050.P8109588795421584118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (A065621 (n + 1)).toNat - A004526 (A065621 (n + 1)).toNat

end

end A317050.P8109588795421584118

namespace A317050

/-- `A063695(A065621(n+1))-A004526(A065621(n+1))` -/
def P8109588795421584118.Spec : Prop :=
  ∀ n, P8109588795421584118.a n = A317050 n

end A317050

/-! ## A317050.P8338459211699344644

`A002450(n)-xor(A002450(n), A003188(n))`
-/

namespace A317050.P8338459211699344644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n - Int.xor (A002450 n) (A003188 n)

end

end A317050.P8338459211699344644

namespace A317050

/-- `A002450(n)-xor(A002450(n), A003188(n))` -/
def P8338459211699344644.Spec : Prop :=
  ∀ n, P8338459211699344644.a n = A317050 n

end A317050

/-! ## A317050.P16052321220991782683

`xor(A003188(n), A020988(n))-A020988(n)`
-/

namespace A317050.P16052321220991782683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 n) (A020988 n) - A020988 n

end

end A317050.P16052321220991782683

namespace A317050

/-- `xor(A003188(n), A020988(n))-A020988(n)` -/
def P16052321220991782683.Spec : Prop :=
  ∀ n, P16052321220991782683.a n = A317050 n

end A317050

/-! ## A317050.P9785881325857772309

`A072197(n)-xor(A003188(n), A072197(n))`
-/

namespace A317050.P9785881325857772309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 n - Int.xor (A003188 n) (A072197 n)

end

end A317050.P9785881325857772309

namespace A317050

/-- `A072197(n)-xor(A003188(n), A072197(n))` -/
def P9785881325857772309.Spec : Prop :=
  ∀ n, P9785881325857772309.a n = A317050 n

end A317050

/-! ## A317050.P3132038680303875669

`A318702(A064706(A000695(n)))`
-/

namespace A317050.P3132038680303875669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A064706 (A000695 n).toNat).toNat

end

end A317050.P3132038680303875669

namespace A317050

/-- `A318702(A064706(A000695(n)))` -/
def P3132038680303875669.Spec : Prop :=
  ∀ n, P3132038680303875669.a n = A317050 n

end A317050

/-!
# A317051: Triangle read by rows: T(0,0) = 1; T(n,k) = T(n-1,k) + 9 * T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A317051, there is no canonical definition to state claims against.
-/

/-! ## A317051.P6094754637482955548

`A013616(A091018(n))`
-/

namespace A317051.P6094754637482955548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (A091018 n).toNat

end

end A317051.P6094754637482955548

/-! ## A317051.P5509298608162618244

`A304236(n)²/A011973(n)`
-/

namespace A317051.P5509298608162618244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304236 n ^ 2 : ℚ) / (A011973 n : ℚ)

end

end A317051.P5509298608162618244

/-! ## A317051.P17892641052716379515

`A013616(A056536(n+1)-1)`
-/

namespace A317051.P17892641052716379515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013616 (A056536 (n + 1) - 1).toNat

end

end A317051.P17892641052716379515

/-! ## A317051.P9079831522693189427

`9^A055087(n)*A011973(n)`
-/

namespace A317051.P9079831522693189427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A055087 n : ℤ) * (A011973 n : ℚ)

end

end A317051.P9079831522693189427

/-! ## A317051.P16736583544450982872

`abs(A304236(n)²/A115139(n+1))`
-/

namespace A317051.P16736583544450982872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A304236 n ^ 2 : ℚ) / (A115139 (n + 1) : ℚ)|

end

end A317051.P16736583544450982872

/-! ## A317051.P1726745477110670481

`A304236(n)²/A065941(comp[n²]+n)`
-/

namespace A317051.P1726745477110670481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304236 n ^ 2 : ℚ) / (A065941 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℚ)

end

end A317051.P1726745477110670481

/-! ## A317051.P8555950947403640897

`A001019(A055087(n))*A011973(n)`
-/

namespace A317051.P8555950947403640897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A055087 n).toNat * A011973 n

end

end A317051.P8555950947403640897

/-! ## A317051.P14803475442639293186

`A000244(A055087(n))*A304236(n)`
-/

namespace A317051.P14803475442639293186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A055087 n).toNat * A304236 n

end

end A317051.P14803475442639293186

/-! ## A317051.P6036565527682592465

`A013610(A091018(n))²/A011973(n)`
-/

namespace A317051.P6036565527682592465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 (A091018 n).toNat ^ 2 : ℚ) / (A011973 n : ℚ)

end

end A317051.P6036565527682592465

/-! ## A317051.P92889027325085097

`A000244(2*A055087(n))*A011973(n)`
-/

namespace A317051.P92889027325085097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A055087 n).toNat * A011973 n

end

end A317051.P92889027325085097

/-!
# A317052: Triangle read by rows: T(0,0) = 1; T(n,k) = 9*T(n-1,k) + T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A317052, there is no canonical definition to state claims against.
-/

/-! ## A317052.P11792671331127856819

`A038291(A091018(n))`
-/

namespace A317052.P11792671331127856819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (A091018 n).toNat

end

end A317052.P11792671331127856819

/-! ## A317052.P7390695196613485103

`A304249(n)²/A011973(n)`
-/

namespace A317052.P7390695196613485103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304249 n ^ 2 : ℚ) / (A011973 n : ℚ)

end

end A317052.P7390695196613485103

/-! ## A317052.P6231296959409947507

`A303941(n)²/A305834(n)`
-/

namespace A317052.P6231296959409947507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303941 n ^ 2 : ℚ) / (A305834 n : ℚ)

end

end A317052.P6231296959409947507

/-! ## A317052.P13198940164416889372

`A038291(A056536(n+1)-1)`
-/

namespace A317052.P13198940164416889372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 (A056536 (n + 1) - 1).toNat

end

end A317052.P13198940164416889372

/-! ## A317052.P2933548520759566344

`A001019(A082375(n))*A011973(n)`
-/

namespace A317052.P2933548520759566344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A082375 n).toNat * A011973 n

end

end A317052.P2933548520759566344

/-!
# A317054: Triangle read by rows: T(0,0) = 1; T(n,k) = T(n-1,k) + 10 * T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A317054, there is no canonical definition to state claims against.
-/

/-! ## A317054.P12931181724278886204

`A013617(A091018(n))`
-/

namespace A317054.P12931181724278886204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 (A091018 n).toNat

end

end A317054.P12931181724278886204

/-! ## A317054.P14469984984884981043

`lcm(A128099(n), A305838(n))`
-/

namespace A317054.P14469984984884981043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128099 n) (A305838 n)

end

end A317054.P14469984984884981043

/-! ## A317054.P14404425529320253709

`A013617(A056536(n+1)-1)`
-/

namespace A317054.P14404425529320253709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 (A056536 (n + 1) - 1).toNat

end

end A317054.P14404425529320253709

/-! ## A317054.P15418744597876070154

`5^A055087(n)*A128099(n)`
-/

namespace A317054.P15418744597876070154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A055087 n : ℤ) * (A128099 n : ℚ)

end

end A317054.P15418744597876070154

/-! ## A317054.P4267229515624439177

`10^A055087(n)*A011973(n)`
-/

namespace A317054.P4267229515624439177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055087 n : ℤ) * (A011973 n : ℚ)

end

end A317054.P4267229515624439177

/-! ## A317054.P3325073334733533349

`A011557(A055087(n))*A011973(n)`
-/

namespace A317054.P3325073334733533349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A055087 n).toNat * A011973 n

end

end A317054.P3325073334733533349

/-! ## A317054.P4644873341989673645

`A000079(A055087(n))*A305838(n)`
-/

namespace A317054.P4644873341989673645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A305838 n

end

end A317054.P4644873341989673645

/-! ## A317054.P11102295461901669585

`A059268(A091018(n))*A305838(n)`
-/

namespace A317054.P11102295461901669585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A305838 n

end

end A317054.P11102295461901669585

/-! ## A317054.P12371377888555250008

`lcm(A013612(A091018(n)), A305098(n))`
-/

namespace A317054.P12371377888555250008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 (A091018 n).toNat) (A305098 n)

end

end A317054.P12371377888555250008

/-! ## A317054.P5725017767573726345

`A128099(n)/A011973(n)*A305838(n)`
-/

namespace A317054.P5725017767573726345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128099 n : ℚ) / (A011973 n : ℚ) * (A305838 n : ℚ)

end

end A317054.P5725017767573726345

/-!
# A317055: Triangle read by rows: T(0,0) = 1; T(n,k) = 10*T(n-1,k) + T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A317055, there is no canonical definition to state claims against.
-/

/-! ## A317055.P2552207859506413199

`A038303(A091018(n))`
-/

namespace A317055.P2552207859506413199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 (A091018 n).toNat

end

end A317055.P2552207859506413199

/-! ## A317055.P11941482467834312102

`lcm(A133156(n), A305837(n))`
-/

namespace A317055.P11941482467834312102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A133156 n) (A305837 n)

end

end A317055.P11941482467834312102

/-! ## A317055.P17671145726224639572

`A038303(A056536(n+1)-1)`
-/

namespace A317055.P17671145726224639572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 (A056536 (n + 1) - 1).toNat

end

end A317055.P17671145726224639572

/-! ## A317055.P767766048687180962

`5^A082375(n)*A207538(n+1)`
-/

namespace A317055.P767766048687180962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A082375 n : ℤ) * (A207538 (n + 1) : ℚ)

end

end A317055.P767766048687180962

/-! ## A317055.P13218735247214165527

`A011557(A082375(n))*A011973(n)`
-/

namespace A317055.P13218735247214165527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A082375 n).toNat * A011973 n

end

end A317055.P13218735247214165527

/-!
# A317056: Depth of the free pure symmetric multifunction (with empty expressions allowed) with e-number n.

The programs for A317056, there is no canonical definition to state claims against.
-/

/-! ## A317056.P7131792429656541015

`A317765(n+1)-1`
-/

namespace A317056.P7131792429656541015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317765 (n + 1) - 1

end

end A317056.P7131792429656541015

/-! ## A317056.P4318227394769220313

`A000401(A317765(n+1))`
-/

namespace A317056.P4318227394769220313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A317765 (n + 1)).toNat

end

end A317056.P4318227394769220313

/-! ## A317056.P4065772753285205498

`A057918(A317765(n+1)²)`
-/

namespace A317056.P4065772753285205498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A317765 (n + 1) ^ 2).toNat

end

end A317056.P4065772753285205498

/-! ## A317056.P1586418385619535358

`A086520(A317765(n+1)²)`
-/

namespace A317056.P1586418385619535358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A317765 (n + 1) ^ 2).toNat

end

end A317056.P1586418385619535358

/-! ## A317056.P2456867400920040226

`A023444(A317765(n+1)+1)`
-/

namespace A317056.P2456867400920040226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A317765 (n + 1) + 1).toNat

end

end A317056.P2456867400920040226

/-! ## A317056.P7691920177236044782

`A024164(6*A317765(n+1))`
-/

namespace A317056.P7691920177236044782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024164 (6 * A317765 (n + 1)).toNat

end

end A317056.P7691920177236044782

/-! ## A317056.P13400304816105512074

`A070198(n)%A317765(n+1)`
-/

namespace A317056.P13400304816105512074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A317765 (n + 1))

end

end A317056.P13400304816105512074

/-! ## A317056.P5856645509231054553

`A030494(n+1)%A317765(n+1)`
-/

namespace A317056.P5856645509231054553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A317765 (n + 1))

end

end A317056.P5856645509231054553

/-! ## A317056.P13515610814723603334

`A072828(n+1)%A317765(n+1)`
-/

namespace A317056.P13515610814723603334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A317765 (n + 1))

end

end A317056.P13515610814723603334

/-! ## A317056.P15040149065751296393

`A079782(n+1)%A317765(n+1)`
-/

namespace A317056.P15040149065751296393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A317765 (n + 1))

end

end A317056.P15040149065751296393

/-!
# A317057: a(n) is the number of time-dependent assembly trees satisfying the connected gluing rule for a cycle on n vertices.

The programs for A317057, there is no canonical definition to state claims against.
-/

/-! ## A317057.P12164114198532007147

`A053525(ceil(acot(n)+n))`
-/

namespace A317057.P12164114198532007147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053525 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A317057.P12164114198532007147

/-! ## A317057.P13083815606917156957

`A053525(ceil(sqrt(∑[2*n])))`
-/

namespace A317057.P13083815606917156957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053525 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A317057.P13083815606917156957

/-! ## A317057.P8495827066816714147

`floor(A053525(n+1)+acot(n))`
-/

namespace A317057.P8495827066816714147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053525 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A317057.P8495827066816714147

/-! ## A317057.P10506366232656835019

`A005840(A028310(n)+1)/2`
-/

namespace A317057.P10506366232656835019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005840 (A028310 n + 1).toNat : ℚ) / 2

end

end A317057.P10506366232656835019

/-! ## A317057.P8697417350453923175

`A053525(n+1)+A000007(n)`
-/

namespace A317057.P8697417350453923175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053525 (n + 1) + A000007 n

end

end A317057.P8697417350453923175

/-! ## A317057.P10422921219909298322

`Δ[A052856(n)]-n*A000670(n)`
-/

namespace A317057.P10422921219909298322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) * A000670 n

end

end A317057.P10422921219909298322

/-! ## A317057.P5179819466639216424

`A005840(n+1)-A053525(n+1)`
-/

namespace A317057.P5179819466639216424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005840 (n + 1) - A053525 (n + 1)

end

end A317057.P5179819466639216424

/-! ## A317057.P2061665714976345351

`or(A000007(n), A053525(Δ[n²]-n))`
-/

namespace A317057.P2061665714976345351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A053525 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A317057.P2061665714976345351

/-!
# A317059: a(n) is the number of time-dependent assembly trees satisfying the edge gluing rule for a complete graph on n vertices.

The programs for A317059, there is no canonical definition to state claims against.
-/

/-! ## A317059.P1378807184466372035

`A396636(A152948(n+1))`
-/

namespace A317059.P1378807184466372035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396636 (A152948 (n + 1)).toNat

end

end A317059.P1378807184466372035

/-! ## A317059.P8021309257197019906

`A228551(n)+A004526(A001833(n))`
-/

namespace A317059.P8021309257197019906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228551 n + A004526 (A001833 n).toNat

end

end A317059.P8021309257197019906

/-!
# A317060: a(n) is the number of time-dependent assembly trees satisfying the edge gluing rule for a cycle on n vertices.

The programs for A317060, there is no canonical definition to state claims against.
-/

/-! ## A317060.P12153462750729959760

`ceil((n+1)*A171792(n+1)/2)`
-/

namespace A317060.P12153462750729959760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * A171792 (n + 1) : ℚ) / 2⌉

end

end A317060.P12153462750729959760

/-!
# A317061: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317061, there is no canonical definition to state claims against.
-/

/-! ## A317061.P16666589636642965539

`A317065(∑[4*n]+1)`
-/

namespace A317061.P16666589636642965539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317061.P16666589636642965539

/-! ## A317061.P13290412720012070414

`A317065(A001844(n))+A235145(n)`
-/

namespace A317061.P13290412720012070414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A001844 n).toNat + A235145 n

end

end A317061.P13290412720012070414

/-! ## A317061.P10800848225709769197

`A347688(n)+A317065(A001844(n))`
-/

namespace A317061.P10800848225709769197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347688 n + A317065 (A001844 n).toNat

end

end A317061.P10800848225709769197

/-! ## A317061.P15092694237889403566

`A181937(n)*A317065(A001844(n))`
-/

namespace A317061.P15092694237889403566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n * A317065 (A001844 n).toNat

end

end A317061.P15092694237889403566

/-! ## A317061.P1522018926402975535

`A317065(A001844(n))*A340811(n)`
-/

namespace A317061.P1522018926402975535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A001844 n).toNat * A340811 n

end

end A317061.P1522018926402975535

/-!
# A317062: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317062, there is no canonical definition to state claims against.
-/

/-! ## A317062.P2699328842710003043

`A317065(A374005(n+1))`
-/

namespace A317062.P2699328842710003043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A374005 (n + 1)).toNat

end

end A317062.P2699328842710003043

/-! ## A317062.P6382263183845618285

`A317065(A167499(n+3))`
-/

namespace A317062.P6382263183845618285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A167499 (n + 3)).toNat

end

end A317062.P6382263183845618285

/-! ## A317062.P15145342469878323143

`A317065(A056000(n)+15)`
-/

namespace A317062.P15145342469878323143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A056000 n + 15).toNat

end

end A317062.P15145342469878323143

/-! ## A317062.P16309761932880416738

`A317065(eq[7, A066657(n)])`
-/

namespace A317062.P16309761932880416738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317062.P16309761932880416738

/-! ## A317062.P6219940263648854366

`A317065(eq[6, A131818(n+1)])`
-/

namespace A317062.P6219940263648854366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317062.P6219940263648854366

/-!
# A317063: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317063, there is no canonical definition to state claims against.
-/

/-! ## A317063.P11759151958768971826

`A317065(A374007(n+1))`
-/

namespace A317063.P11759151958768971826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A374007 (n + 1)).toNat

end

end A317063.P11759151958768971826

/-! ## A317063.P6687885372811369

`A317065(A056115(n)+21)`
-/

namespace A317063.P6687885372811369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A056115 n + 21).toNat

end

end A317063.P6687885372811369

/-! ## A317063.P15859517609446838956

`A317065(eq[6, A130270(n+1)])`
-/

namespace A317063.P15859517609446838956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317063.P15859517609446838956

/-! ## A317063.P7508308271099961307

`A317065(eq[7, A131818(n+1)])`
-/

namespace A317063.P7508308271099961307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317063.P7508308271099961307

/-! ## A317063.P4126015887117092608

`A317065(A052905(n+3))`
-/

namespace A317063.P4126015887117092608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A052905 (n + 3)).toNat

end

end A317063.P4126015887117092608

/-!
# A317064: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317064, there is no canonical definition to state claims against.
-/

/-! ## A317064.P17907641529670182914

`A317065(A374008(n+1))`
-/

namespace A317064.P17907641529670182914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A374008 (n + 1)).toNat

end

end A317064.P17907641529670182914

/-! ## A317064.P11388515956034299022

`A317065(A000096(n+5)+8)`
-/

namespace A317064.P11388515956034299022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A000096 (n + 5) + 8).toNat

end

end A317064.P11388515956034299022

/-! ## A317064.P3889769632929702646

`A317065(eq[8, A131818(n+1)])`
-/

namespace A317064.P3889769632929702646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317064.P3889769632929702646

/-! ## A317064.P8115981994576051462

`A317065(eq[6, A193592(n)])`
-/

namespace A317064.P8115981994576051462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317064.P8115981994576051462

/-! ## A317064.P13420558440723432674

`A317065(eq[7, A200370(n+1)])`
-/

namespace A317064.P13420558440723432674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317064.P13420558440723432674

/-!
# A317066: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317066, there is no canonical definition to state claims against.
-/

/-! ## A317066.P5920467083468593549

`A317072(∑[4*n]+1)`
-/

namespace A317066.P5920467083468593549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317066.P5920467083468593549

/-! ## A317066.P4488690995645944923

`record[A003982(n)*A317072(n+1)]`
-/

namespace A317066.P4488690995645944923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317066.P4488690995645944923

/-! ## A317066.P12803557572155966190

`A317072(A001844(n))+A025439(n)`
-/

namespace A317066.P12803557572155966190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A001844 n).toNat + A025439 n

end

end A317066.P12803557572155966190

/-! ## A317066.P13331079524683155620

`A000040(n+1)%2*A317072(A001844(n))`
-/

namespace A317066.P13331079524683155620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A317072 (A001844 n).toNat

end

end A317066.P13331079524683155620

/-! ## A317066.P17464430952302128713

`A001222(A007318(n))!*A317072(A001844(n))`
-/

namespace A317066.P17464430952302128713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (A007318 n).toNat).toNat : ℤ) * A317072 (A001844 n).toNat

end

end A317066.P17464430952302128713

/-!
# A317067: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317067, there is no canonical definition to state claims against.
-/

/-! ## A317067.P5151192685323782266

`A317072(∑[n+2]+4)`
-/

namespace A317067.P5151192685323782266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317067.P5151192685323782266

/-! ## A317067.P1741766246565344113

`A317072(A167614(n+1))+A011744(n)`
-/

namespace A317067.P1741766246565344113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A167614 (n + 1)).toNat + A011744 n

end

end A317067.P1741766246565344113

/-! ## A317067.P3129508707678661667

`A317072(A167614(n+1))+A025438(n)`
-/

namespace A317067.P3129508707678661667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A167614 (n + 1)).toNat + A025438 n

end

end A317067.P3129508707678661667

/-! ## A317067.P15521925532931219601

`A317072(A167614(n+1))%A016880(n)`
-/

namespace A317067.P15521925532931219601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317072 (A167614 (n + 1)).toNat) (A016880 n)

end

end A317067.P15521925532931219601

/-! ## A317067.P11820628768612554564

`gcd(A000038(n), A317072(A167614(n+1)))`
-/

namespace A317067.P11820628768612554564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A317072 (A167614 (n + 1)).toNat)

end

end A317067.P11820628768612554564

/-!
# A317068: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317068, there is no canonical definition to state claims against.
-/

/-! ## A317068.P10700068256547264169

`A317072(A141214(n)+7)`
-/

namespace A317068.P10700068256547264169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A141214 n + 7).toNat

end

end A317068.P10700068256547264169

/-! ## A317068.P2238116333083189757

`A317072(A052905(n)+9)`
-/

namespace A317068.P2238116333083189757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A052905 n + 9).toNat

end

end A317068.P2238116333083189757

/-! ## A317068.P7883793805056394410

`A317072(A167614(n+2)+1)`
-/

namespace A317068.P7883793805056394410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A167614 (n + 2) + 1).toNat

end

end A317068.P7883793805056394410

/-! ## A317068.P16875649376380836874

`A317072(Δ[A264443(n)-n²])`
-/

namespace A317068.P16875649376380836874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (f1 (n + 1) - f1 n).toNat

end

end A317068.P16875649376380836874

/-! ## A317068.P16310383356076762168

`A317072(A374004(n+1))`
-/

namespace A317068.P16310383356076762168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A374004 (n + 1)).toNat

end

end A317068.P16310383356076762168

/-!
# A317069: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317069, there is no canonical definition to state claims against.
-/

/-! ## A317069.P13831964728436931525

`A317072(A167499(n+3))`
-/

namespace A317069.P13831964728436931525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A167499 (n + 3)).toNat

end

end A317069.P13831964728436931525

/-! ## A317069.P836125905407373515

`A317072(A155212(n)+13)`
-/

namespace A317069.P836125905407373515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A155212 n + 13).toNat

end

end A317069.P836125905407373515

/-! ## A317069.P10865073820429724974

`A317072(A056000(n)+15)`
-/

namespace A317069.P10865073820429724974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A056000 n + 15).toNat

end

end A317069.P10865073820429724974

/-! ## A317069.P4365948251345685214

`A317072(Δ[A264443(n)])`
-/

namespace A317069.P4365948251345685214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (f1 (n + 1) - f1 n).toNat

end

end A317069.P4365948251345685214

/-! ## A317069.P2232482438692943467

`A317072(A374005(n+1))`
-/

namespace A317069.P2232482438692943467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A374005 (n + 1)).toNat

end

end A317069.P2232482438692943467

/-!
# A317070: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317070, there is no canonical definition to state claims against.
-/

/-! ## A317070.P14746298432050325876

`A317072(eq[7, A131818(n+1)])`
-/

namespace A317070.P14746298432050325876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317070.P14746298432050325876

/-! ## A317070.P15926403840426955304

`A317072(A374007(n+1))`
-/

namespace A317070.P15926403840426955304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A374007 (n + 1)).toNat

end

end A317070.P15926403840426955304

/-! ## A317070.P458898320588859472

`A317072(eq[3, A219347(n)])`
-/

namespace A317070.P458898320588859472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317070.P458898320588859472

/-! ## A317070.P15414187802418875805

`A317072(eq[5, A193592(n)])`
-/

namespace A317070.P15414187802418875805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317070.P15414187802418875805

/-! ## A317070.P6044136355067977486

`A317072(eq[8, A258709(n)])`
-/

namespace A317070.P6044136355067977486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317070.P6044136355067977486

/-!
# A317071: Number of n X 7 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317071, there is no canonical definition to state claims against.
-/

/-! ## A317071.P18033277667240762874

`A317072(eq[8, A131818(n+1)])`
-/

namespace A317071.P18033277667240762874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317071.P18033277667240762874

/-! ## A317071.P6750226093035821487

`A317072(A374008(n+1))`
-/

namespace A317071.P6750226093035821487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (A374008 (n + 1)).toNat

end

end A317071.P6750226093035821487

/-! ## A317071.P14748165602110194701

`A317072(eq[4, A219347(n)])`
-/

namespace A317071.P14748165602110194701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317071.P14748165602110194701

/-! ## A317071.P568152460181000168

`A317072(eq[6, A193592(n)])`
-/

namespace A317071.P568152460181000168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317071.P568152460181000168

/-! ## A317071.P4410391403406422196

`A317072(Δ[A023551(n+2)])`
-/

namespace A317071.P4410391403406422196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (f1 (n + 1) - f1 n).toNat

end

end A317071.P4410391403406422196

/-!
# A317072: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317072, there is no canonical definition to state claims against.
-/

/-! ## A317072.P7519372594090921295

`A351357(A001263(n+1))+A305692(n+1)`
-/

namespace A317072.P7519372594090921295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351357 (A001263 (n + 1)).toNat + A305692 (n + 1)

end

end A317072.P7519372594090921295

/-! ## A317072.P4020985366029623918

`A305692(n+1)+A010894(A003401(n+1))`
-/

namespace A317072.P4020985366029623918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A317072.P4020985366029623918

/-! ## A317072.P556485561110568803

`A305692(n+1)+A011737(A022171(n))`
-/

namespace A317072.P556485561110568803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (n + 1) + A011737 (A022171 n).toNat

end

end A317072.P556485561110568803

/-! ## A317072.P13472442772005685482

`A305692(n+1)+A025465(A022345(n))`
-/

namespace A317072.P13472442772005685482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (n + 1) + A025465 (A022345 n).toNat

end

end A317072.P13472442772005685482

/-! ## A317072.P16736697568046268505

`A305692(n+1)+A025465(A023105(n))`
-/

namespace A317072.P16736697568046268505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (n + 1) + A025465 (A023105 n).toNat

end

end A317072.P16736697568046268505

/-!
# A317073: Number of antichains of multisets with multiset-join a normal multiset of size n.

The programs for A317073, there is no canonical definition to state claims against.
-/

/-! ## A317073.P7810827218955757261

`A097535((a(n-1)+n)²)` with `a(0)=1`
-/

namespace A317073.P7810827218955757261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097535 ((a (n - 1) + (n : ℤ)) ^ 2).toNat

end

end A317073.P7810827218955757261

/-!
# A317074: Number of antichains of multisets with multiset-join a strongly normal multiset of size n.

The programs for A317074, there is no canonical definition to state claims against.
-/

/-! ## A317074.P16092258735601577491

`A127273(floor(cosh(n)))`
-/

namespace A317074.P16092258735601577491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127273 ⌊Real.cosh (n : ℝ)⌋.toNat

end

end A317074.P16092258735601577491

/-!
# A317075: Number of connected antichains of multisets with multiset-join a normal multiset of size n.

The programs for A317075, there is no canonical definition to state claims against.
-/

/-! ## A317075.P8117263987855789416

`A188490(n)+A000014(A093566(n))`
-/

namespace A317075.P8117263987855789416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188490 n + A000014 (A093566 n).toNat

end

end A317075.P8117263987855789416

/-!
# A317076: Number of connected antichains of multisets with multiset-join a strongly normal multiset of size n.

The programs for A317076, there is no canonical definition to state claims against.
-/

/-! ## A317076.P3031981244737987817

`xor(A103923(n), A277963(ceil(2^(n-1))))`
-/

namespace A317076.P3031981244737987817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103923 n) (A277963 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A317076.P3031981244737987817

/-!
# A317077: Number of connected multiset partitions of normal multisets of size n.

The programs for A317077, there is no canonical definition to state claims against.
-/

/-! ## A317077.P13156377004731788642

`A269371(A213638(n!))`
-/

namespace A317077.P13156377004731788642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (A213638 (Nat.factorial n)).toNat

end

end A317077.P13156377004731788642

/-! ## A317077.P15542271643654497771

`A110658(∑[A005493(n)])+1`
-/

namespace A317077.P15542271643654497771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A317077.P15542271643654497771

/-! ## A317077.P6783587816410081299

`A110658(A000110(n+2)+10)`
-/

namespace A317077.P6783587816410081299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A000110 (n + 2) + 10).toNat

end

end A317077.P6783587816410081299

/-!
# A317078: Number of connected multiset partitions of strongly normal multisets of size n.

The programs for A317078, there is no canonical definition to state claims against.
-/

/-! ## A317078.P5534629134955436693

`∑[A332246(A111752(n))]`
-/

namespace A317078.P5534629134955436693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (A111752 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317078.P5534629134955436693

/-! ## A317078.P17457203562196501693

`A356137(A352006(n+1))`
-/

namespace A317078.P17457203562196501693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356137 (A352006 (n + 1)).toNat

end

end A317078.P17457203562196501693

/-! ## A317078.P4821584477267514692

`A116650(A037444(n))-1`
-/

namespace A317078.P4821584477267514692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116650 (A037444 n).toNat - 1

end

end A317078.P4821584477267514692

/-!
# A317079: Number of unlabeled antichains of multisets with multiset-join a multiset of size n.

The programs for A317079, there is no canonical definition to state claims against.
-/

/-! ## A317079.P7027855208432170882

`or(floor(sqrt(n)), A356588(n))`
-/

namespace A317079.P7027855208432170882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.sqrt n : ℤ) (A356588 n)

end

end A317079.P7027855208432170882

/-!
# A317080: Number of unlabeled connected antichains of multisets with multiset-join a multiset of size n.

The programs for A317080, there is no canonical definition to state claims against.
-/

/-! ## A317080.P8554465223948620463

`∑[A025439(4^n)]+n!`
-/

namespace A317080.P8554465223948620463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A317080.P8554465223948620463

/-!
# A317081: Number of integer partitions of n whose multiplicities cover an initial interval of positive integers.

The programs for A317081, there is no canonical definition to state claims against.
-/

/-! ## A317081.P14155645386830118534

`ceil(abs(ϕ-A332576(n)))`
-/

namespace A317081.P14155645386830118534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.goldenRatio - (A332576 n : ℝ)|⌉

end

end A317081.P14155645386830118534

/-! ## A317081.P3265353672290038615

`A332576(round(acot(n)+n))-1`
-/

namespace A317081.P3265353672290038615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332576 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A317081.P3265353672290038615

/-! ## A317081.P5948799031166970447

`A332576(char[1]+n)-ceil(n/98)`
-/

namespace A317081.P5948799031166970447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332576 ((if ∃ j, f1 j = n then 1 else 0) + n) - ⌈(n : ℚ) / 98⌉

end

end A317081.P5948799031166970447

/-! ## A317081.P12630180459005800475

`abs(A157928(n)-A332576(n))`
-/

namespace A317081.P12630180459005800475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157928 n - A332576 n|

end

end A317081.P12630180459005800475

/-! ## A317081.P17312730728654929250

`abs(1-A332576(A233583(n+1)))`
-/

namespace A317081.P17312730728654929250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A332576 (A233583 (n + 1)).toNat|

end

end A317081.P17312730728654929250

/-! ## A317081.P14993714393424691917

`abs(A274070(n+1)-A332576(n))`
-/

namespace A317081.P14993714393424691917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274070 (n + 1) - A332576 n|

end

end A317081.P14993714393424691917

/-! ## A317081.P12550208899357404321

`char[A028240(n)]+A332576(n)-1`
-/

namespace A317081.P12550208899357404321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A332576 n - 1)

end

end A317081.P12550208899357404321

/-! ## A317081.P14519656498956712905

`abs(char[1-A290994(n)]+1-A332576(n))`
-/

namespace A317081.P14519656498956712905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A290994 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) - A332576 n|

end

end A317081.P14519656498956712905

/-!
# A317082: Number of integer partitions of n whose multiplicities are weakly decreasing and span an initial interval of positive integers.

The programs for A317082, there is no canonical definition to state claims against.
-/

/-! ## A317082.P1910673449590246025

`A056556(∪[A091938(2*n+1), A081294(n)])`
-/

namespace A317082.P1910673449590246025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091938 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A317082.P1910673449590246025

/-!
# A317084: Number of integer partitions of n whose multiplicities are weakly increasing and span an initial interval of positive integers.

The programs for A317084, there is no canonical definition to state claims against.
-/

/-! ## A317084.P14642885469306309492

`Δ[A008636(n)%A325986(3*n+1)]`
-/

namespace A317084.P14642885469306309492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008636 n) (A325986 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317084.P14642885469306309492

/-! ## A317084.P7952523282096472926

`A001996(n+1)+A000035(A000079(n))`
-/

namespace A317084.P7952523282096472926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 (n + 1) + A000035 (A000079 n).toNat

end

end A317084.P7952523282096472926

/-! ## A317084.P17919072356340553467

`or(A000007(A000295(n)), A001996(n+1))`
-/

namespace A317084.P17919072356340553467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000295 n).toNat) (A001996 (n + 1))

end

end A317084.P17919072356340553467

/-! ## A317084.P7267727480070580035

`or(A001996(n+1), A010054(A375314(n)))`
-/

namespace A317084.P7267727480070580035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001996 (n + 1)) (A010054 (A375314 n).toNat)

end

end A317084.P7267727480070580035

/-!
# A317086: Number of normal integer partitions of n whose sequence of multiplicities is a palindrome.

The programs for A317086, there is no canonical definition to state claims against.
-/

/-! ## A317086.P3483251643140097796

`gcd(record[A059119(3*n)], A070939(n))`
-/

namespace A317086.P3483251643140097796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059119 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A070939 n)

end

end A317086.P3483251643140097796

/-! ## A317086.P13838049640254043620

`A188169(or(1, A355394(3*n+4)))`
-/

namespace A317086.P13838049640254043620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (Int.lor 1 (A355394 (3 * n + 4))).toNat

end

end A317086.P13838049640254043620

/-! ## A317086.P12516485548774538014

`gcd(2*n, A280055(A049893(n+1)))`
-/

namespace A317086.P12516485548774538014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A280055 (A049893 (n + 1)).toNat)

end

end A317086.P12516485548774538014

/-! ## A317086.P17930382891328430493

`A055642(A324610(n*A254377(n)))`
-/

namespace A317086.P17930382891328430493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A324610 ((n : ℤ) * A254377 n).toNat).toNat

end

end A317086.P17930382891328430493

/-! ## A317086.P16923020236816155497

`A345935(A000225(n)+A000171(n+1))`
-/

namespace A317086.P16923020236816155497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (A000225 n + A000171 (n + 1)).toNat

end

end A317086.P16923020236816155497

/-!
# A317087: Numbers whose prime factors span an initial interval of prime numbers and whose sequence of prime multiplicities is a palindrome.

The programs for A317087, there is no canonical definition to state claims against.
-/

/-! ## A317087.P5016275967245009069

`record[A071364(A242417(n+1))]`
-/

namespace A317087.P5016275967245009069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A242417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317087.P5016275967245009069

/-! ## A317087.P17538382784716214395

`∩[A055932(n+1), A242417(n+1)]`
-/

namespace A317087.P17538382784716214395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317087.P17538382784716214395

/-! ## A317087.P9393207646915640531

`∩[A242417(n+1), A267817(n+1)]`
-/

namespace A317087.P9393207646915640531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317087.P9393207646915640531

/-! ## A317087.P18328563297594132694

`∩[A242417(n+1), A371177(n+1)]`
-/

namespace A317087.P18328563297594132694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317087.P18328563297594132694

/-! ## A317087.P15378340400170593913

`filter[A242417(n+1), A341629(#)]`
-/

namespace A317087.P15378340400170593913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A317087.P15378340400170593913

/-!
# A317089: Numbers whose prime factors span an initial interval of prime numbers and whose prime multiplicities span an initial interval of positive integers.

The programs for A317089, there is no canonical definition to state claims against.
-/

/-! ## A317089.P665461856499273869

`∩[A055932(n+1), A317090(n+1)]`
-/

namespace A317089.P665461856499273869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317089.P665461856499273869

/-! ## A317089.P7332871071726402006

`∩[A304450(n+1), A317090(n+1)]`
-/

namespace A317089.P7332871071726402006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317089.P7332871071726402006

/-! ## A317089.P10677012539274260590

`∩[A317090(n+1), A325708(n+1)]`
-/

namespace A317089.P10677012539274260590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317089.P10677012539274260590

/-! ## A317089.P12312932987331773310

`A325708(lt[A113084(2*n+1), A000045(3*n)])`
-/

namespace A317089.P12312932987331773310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113084 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325708 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A317089.P12312932987331773310

/-! ## A317089.P7986635056753260443

`∩[A007969(n+1), A317246(n+1)]`
-/

namespace A317089.P7986635056753260443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317089.P7986635056753260443

/-!
# A317090: Positive integers whose prime multiplicities span an initial interval of positive integers.

The programs for A317090, the canonical program `A317090.P7766574012939801174` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317090 has offset 1).

The definition of A317090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317090.P8987611056053094404

`eq[A010052(n), A112471(A294333(n))]`
-/

namespace A317090.P8987611056053094404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112471 (A294333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317090.P8987611056053094404

namespace A317090

/-- `eq[A010052(n), A112471(A294333(n))]` -/
def P8987611056053094404.Spec : Prop :=
  ∀ n, (P8987611056053094404.a n : ℤ) = A317090 (n + 1)

end A317090

/-! ## A317090.P7766574012939801174

`A179983(n+2)%A033581(A000124(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A317090

/-- `A179983(n+2)%A033581(A000124(n))` -/
def P7766574012939801174.Spec : Prop :=
  ∀ n, P7766574012939801174.a n = A317090 (n + 1)

theorem P7766574012939801174.correct : P7766574012939801174.Spec := by
  intro n
  simp only [A317090, Nat.add_sub_cancel]

end A317090

/-! ## A317090.P14776861453418966246

`or(A179983(n+2), A205808(A060533(n)))`
-/

namespace A317090.P14776861453418966246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A179983 (n + 2)) (A205808 (A060533 n).toNat)

end

end A317090.P14776861453418966246

namespace A317090

/-- `or(A179983(n+2), A205808(A060533(n)))` -/
def P14776861453418966246.Spec : Prop :=
  ∀ n, P14776861453418966246.a n = A317090 (n + 1)

end A317090

/-! ## A317090.P7033651651930504079

`A179983(A054531(∑[n+2]))`
-/

namespace A317090.P7033651651930504079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (A054531 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A317090.P7033651651930504079

namespace A317090

/-- `A179983(A054531(∑[n+2]))` -/
def P7033651651930504079.Spec : Prop :=
  ∀ n, P7033651651930504079.a n = A317090 (n + 1)

end A317090

/-! ## A317090.P9094346622409232963

`A185014(A045932(2*n+5))+A179983(n+2)`
-/

namespace A317090.P9094346622409232963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A045932 (2 * n + 5)).toNat + A179983 (n + 2)

end

end A317090.P9094346622409232963

namespace A317090

/-- `A185014(A045932(2*n+5))+A179983(n+2)` -/
def P9094346622409232963.Spec : Prop :=
  ∀ n, P9094346622409232963.a n = A317090 (n + 1)

end A317090

/-! ## A317090.P6812821312929293759

`A179983(n+2)+A049084(A113645(2*n+3))`
-/

namespace A317090.P6812821312929293759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 2) + A049084 (A113645 (2 * n + 3)).toNat

end

end A317090.P6812821312929293759

namespace A317090

/-- `A179983(n+2)+A049084(A113645(2*n+3))` -/
def P6812821312929293759.Spec : Prop :=
  ∀ n, P6812821312929293759.a n = A317090 (n + 1)

end A317090

/-! ## A317090.P7950428165184171288

`A361393(n+1)%A088237(A324522(n+1))`
-/

namespace A317090.P7950428165184171288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361393 (n + 1)) (A088237 (A324522 (n + 1)).toNat)

end

end A317090.P7950428165184171288

namespace A317090

/-- `A361393(n+1)%A088237(A324522(n+1))` -/
def P7950428165184171288.Spec : Prop :=
  ∀ n, P7950428165184171288.a n = A317090 (n + 1)

end A317090

/-! ## A317090.P14924667059165506838

`A361393(n+1)%A001034(A275972(n))`
-/

namespace A317090.P14924667059165506838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361393 (n + 1)) (A001034 (A275972 n).toNat)

end

end A317090.P14924667059165506838

namespace A317090

/-- `A361393(n+1)%A001034(A275972(n))` -/
def P14924667059165506838.Spec : Prop :=
  ∀ n, P14924667059165506838.a n = A317090 (n + 1)

end A317090

/-! ## A317090.P13470091921905273652

`A335037(A005846(n+1))*A361393(n+1)`
-/

namespace A317090.P13470091921905273652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335037 (A005846 (n + 1)).toNat * A361393 (n + 1)

end

end A317090.P13470091921905273652

namespace A317090

/-- `A335037(A005846(n+1))*A361393(n+1)` -/
def P13470091921905273652.Spec : Prop :=
  ∀ n, P13470091921905273652.a n = A317090 (n + 1)

end A317090

/-! ## A317090.P6208068959465609220

`A361393(n+1)+A025688(A025719(2*n+1))`
-/

namespace A317090.P6208068959465609220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361393 (n + 1) + A025688 (A025719 (2 * n + 1)).toNat

end

end A317090.P6208068959465609220

namespace A317090

/-- `A361393(n+1)+A025688(A025719(2*n+1))` -/
def P6208068959465609220.Spec : Prop :=
  ∀ n, P6208068959465609220.a n = A317090 (n + 1)

end A317090

/-!
# A317091: Positive integers whose prime multiplicities are weakly increasing and span an initial interval of positive integers.

The programs for A317091, there is no canonical definition to state claims against.
-/

/-! ## A317091.P517859122554453396

`lt[A243512(A284345(n)), A204166(2*(n+2))]`
-/

namespace A317091.P517859122554453396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243512 (A284345 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317091.P517859122554453396

/-! ## A317091.P5102558864619994227

`eq[3, A300817(A000578(A077462(n)))]`
-/

namespace A317091.P5102558864619994227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (A000578 (A077462 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317091.P5102558864619994227

/-! ## A317091.P16357329564546214802

`A375398(A085736(n+2))`
-/

namespace A317091.P16357329564546214802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375398 (A085736 (n + 2)).toNat

end

end A317091.P16357329564546214802

/-! ## A317091.P7304049079453749115

`filter[A375398(n+2), A340369(#)]`
-/

namespace A317091.P7304049079453749115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375398 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A317091.P7304049079453749115

/-! ## A317091.P15961234346600062814

`filter[A385098(n+2), A340369(#)]`
-/

namespace A317091.P15961234346600062814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A317091.P15961234346600062814

/-! ## A317091.P3490458537188582863

`∩[A028261(n+1), A375398(n+1)]`
-/

namespace A317091.P3490458537188582863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317091.P3490458537188582863

/-! ## A317091.P2463278907427971693

`record[A019554(A253560(A000037(n+1)))]`
-/

namespace A317091.P2463278907427971693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A253560 (A000037 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317091.P2463278907427971693

/-! ## A317091.P7328558363269171333

`filter[A392698(n+1), A049240(#)]`
-/

namespace A317091.P7328558363269171333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A317091.P7328558363269171333

/-! ## A317091.P16179590307499294251

`filter[A392698(n+1), A267635(#)]`
-/

namespace A317091.P16179590307499294251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A317091.P16179590307499294251

/-! ## A317091.P6713370061135339426

`filter[A392698(n+2), A132350(#)]`
-/

namespace A317091.P6713370061135339426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A317091.P6713370061135339426

/-!
# A317092: Positive integers whose prime multiplicities are weakly decreasing and span an initial interval of positive integers.

The programs for A317092, there is no canonical definition to state claims against.
-/

/-! ## A317092.P12690628750829051800

`∩[A242031(n+1), A317090(n+1)]`
-/

namespace A317092.P12690628750829051800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317092.P12690628750829051800

/-! ## A317092.P8364361945921171338

`∩[A093618(n+1), A317090(n+1)]`
-/

namespace A317092.P8364361945921171338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317092.P8364361945921171338

/-! ## A317092.P11042770168543092727

`A375402(n+2)`
-/

namespace A317092.P11042770168543092727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375402 (n + 2)

end

end A317092.P11042770168543092727

/-! ## A317092.P8298219803030120543

`A349810(n+1)+A070201(A132403(n))`
-/

namespace A317092.P8298219803030120543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349810 (n + 1) + A070201 (A132403 n).toNat

end

end A317092.P8298219803030120543

/-! ## A317092.P2284270564102648132

`A349810(n+1)+A086971(A129227(n+1))`
-/

namespace A317092.P2284270564102648132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349810 (n + 1) + A086971 (A129227 (n + 1)).toNat

end

end A317092.P2284270564102648132

/-! ## A317092.P8991805078996847632

`A349810(n+1)+A327932(A002383(n+1))`
-/

namespace A317092.P8991805078996847632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349810 (n + 1) + A327932 (A002383 (n + 1)).toNat

end

end A317092.P8991805078996847632

/-! ## A317092.P2542122405534977233

`A349810(n+1)-A349825(A185510(n+1))`
-/

namespace A317092.P2542122405534977233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349810 (n + 1) - A349825 (A185510 (n + 1)).toNat

end

end A317092.P2542122405534977233

/-! ## A317092.P15376253208978579141

`A033676(A139506(n+1))*A349810(n+1)`
-/

namespace A317092.P15376253208978579141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A139506 (n + 1)).toNat * A349810 (n + 1)

end

end A317092.P15376253208978579141

/-! ## A317092.P1855156619972347947

`A014963(A230310(n+1))*A349810(n+1)`
-/

namespace A317092.P1855156619972347947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A230310 (n + 1)).toNat * A349810 (n + 1)

end

end A317092.P1855156619972347947

/-! ## A317092.P16757892167799316646

`∩[A102750(n+1), A335433(n+1)]`
-/

namespace A317092.P16757892167799316646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317092.P16757892167799316646

/-!
# A317094: a(n) = (n + 1)^2 + n!*L_n(-1), where L_n(x) is the Laguerre polynomial.

The programs for A317094, the canonical program `A317094.P14704194393009013937` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317094 has offset 0).

The definition of A317094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317094.P14704194393009013937

`A000290(n+1)+A002720(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A317094

/-- `A000290(n+1)+A002720(n)` -/
def P14704194393009013937.Spec : Prop :=
  ∀ n, P14704194393009013937.a n = A317094 n

theorem P14704194393009013937.correct : P14704194393009013937.Spec := by
  intro n
  simp only [A317094]

end A317094

/-! ## A317094.P14146290288761360660

`(n+1)²+A097662(n)+1`
-/

namespace A317094.P14146290288761360660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A097662 n + 1)

end

end A317094.P14146290288761360660

namespace A317094

/-- `(n+1)²+A097662(n)+1` -/
def P14146290288761360660.Spec : Prop :=
  ∀ n, P14146290288761360660.a n = A317094 n

end A317094

/-! ## A317094.P1905553090059556191

`A056953(2*n)+(n+1)²`
-/

namespace A317094.P1905553090059556191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (2 * n) + ((n + 1) ^ 2 : ℤ)

end

end A317094.P1905553090059556191

namespace A317094

/-- `A056953(2*n)+(n+1)²` -/
def P1905553090059556191.Spec : Prop :=
  ∀ n, P1905553090059556191.a n = A317094 n

end A317094

/-! ## A317094.P13726481859989737822

`A293985(∑[n+2]-1)+(n+1)²`
-/

namespace A317094.P13726481859989737822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + ((n + 1) ^ 2 : ℤ)

end

end A317094.P13726481859989737822

namespace A317094

/-- `A293985(∑[n+2]-1)+(n+1)²` -/
def P13726481859989737822.Spec : Prop :=
  ∀ n, P13726481859989737822.a n = A317094 n

end A317094

/-! ## A317094.P10648996431465729299

`A002720(n)+∑[A005408(n)]`
-/

namespace A317094.P10648996431465729299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317094.P10648996431465729299

namespace A317094

/-- `A002720(n)+∑[A005408(n)]` -/
def P10648996431465729299.Spec : Prop :=
  ∀ n, P10648996431465729299.a n = A317094 n

end A317094

/-! ## A317094.P3691382458890874859

`A002720(n)+Δ[A000330(n)]`
-/

namespace A317094.P3691382458890874859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n + (f1 (n + 1) - f1 n)

end

end A317094.P3691382458890874859

namespace A317094

/-- `A002720(n)+Δ[A000330(n)]` -/
def P3691382458890874859.Spec : Prop :=
  ∀ n, P3691382458890874859.a n = A317094 n

end A317094

/-! ## A317094.P6336084113278431625

`A002720(n)+∑[record[A004442(n)]]`
-/

namespace A317094.P6336084113278431625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317094.P6336084113278431625

namespace A317094

/-- `A002720(n)+∑[record[A004442(n)]]` -/
def P6336084113278431625.Spec : Prop :=
  ∀ n, P6336084113278431625.a n = A317094 n

end A317094

/-! ## A317094.P2051981820531941324

`A000217(n+1)+A002720(n)+A000217(n)`
-/

namespace A317094.P2051981820531941324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A002720 n + A000217 n)

end

end A317094.P2051981820531941324

namespace A317094

/-- `A000217(n+1)+A002720(n)+A000217(n)` -/
def P2051981820531941324.Spec : Prop :=
  ∀ n, P2051981820531941324.a n = A317094 n

end A317094

/-! ## A317094.P9230903646711021258

`A002720(n)+A001563(n+1)/A000142(n)`
-/

namespace A317094.P9230903646711021258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 n : ℚ) + (A001563 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A317094.P9230903646711021258

namespace A317094

/-- `A002720(n)+A001563(n+1)/A000142(n)` -/
def P9230903646711021258.Spec : Prop :=
  ∀ n, P9230903646711021258.a n = (A317094 n : ℚ)

end A317094

/-! ## A317094.P2777973449626951469

`A002720(n)+A105219(n+1)/A002720(n)`
-/

namespace A317094.P2777973449626951469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 n : ℚ) + (A105219 (n + 1) : ℚ) / (A002720 n : ℚ)

end

end A317094.P2777973449626951469

namespace A317094

/-- `A002720(n)+A105219(n+1)/A002720(n)` -/
def P2777973449626951469.Spec : Prop :=
  ∀ n, P2777973449626951469.a n = (A317094 n : ℚ)

end A317094

/-!
# A317095: a(n) = 40*n.

The programs for A317095, the canonical program `A317095.P1083006563003922456` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317095 has offset 0).

The definition of A317095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40*n` (program `A317095.P1083006563003922456`, by `A317095.P1083006563003922456.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317095.P1083006563003922456

`40*n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A317095

/-- `40*n` -/
def P1083006563003922456.Spec : Prop :=
  ∀ n, (P1083006563003922456.a n : ℤ) = A317095 n

theorem P1083006563003922456.correct : P1083006563003922456.Spec := by
  intro n
  simp only [A317095]

end A317095

/-!
# A317096: Expansion of e.g.f. ((1 - x)/(1 - 2*x))*exp(x/(x - 1)).

The programs for A317096, there is no canonical definition to state claims against.
-/

/-! ## A317096.P3577640964900794938

`(A331688(n)+A293116(n))/2`
-/

namespace A317096.P3577640964900794938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331688 n + A293116 n : ℚ) / 2

end

end A317096.P3577640964900794938

/-! ## A317096.P3634184053451285756

`A076272(A001683(2*(n+1)))-n`
-/

namespace A317096.P3634184053451285756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A001683 (2 * (n + 1))).toNat - (n : ℤ)

end

end A317096.P3634184053451285756

/-!
# A317097: Number of rooted trees with n nodes where the number of distinct branches under each node is <= 2.

The programs for A317097, there is no canonical definition to state claims against.
-/

/-! ## A317097.P9379507727303714343

`A085748(n)+A070176(A000111(n))`
-/

namespace A317097.P9379507727303714343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085748 n + A070176 (A000111 n).toNat

end

end A317097.P9379507727303714343

/-! ## A317097.P10430367234449805768

`A085748(n)+A046660(A124698(n))`
-/

namespace A317097.P10430367234449805768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085748 n + A046660 (A124698 n).toNat

end

end A317097.P10430367234449805768

/-! ## A317097.P3964706724873884087

`A102683(A166536(n))+A085748(n)`
-/

namespace A317097.P3964706724873884087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A166536 n).toNat + A085748 n

end

end A317097.P3964706724873884087

/-! ## A317097.P13358718380961713137

`A085748(n)+A025466(A297708(n))`
-/

namespace A317097.P13358718380961713137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085748 n + A025466 (A297708 n).toNat

end

end A317097.P13358718380961713137

/-!
# A317098: Number of series-reduced rooted trees with n unlabeled leaves where the number of distinct branches under each node is <= 2.

The programs for A317098, there is no canonical definition to state claims against.
-/

/-! ## A317098.P2477832447404962906

`A080444(A000707(n+1))`
-/

namespace A317098.P2477832447404962906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080444 (A000707 (n + 1)).toNat

end

end A317098.P2477832447404962906

/-! ## A317098.P15369581475329791271

`A145267(n)+A074206(A145269(n))`
-/

namespace A317098.P15369581475329791271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145267 n + A074206 (A145269 n).toNat

end

end A317098.P15369581475329791271

/-! ## A317098.P12415427896761769603

`A038567(A000260(n))-A007477(n)`
-/

namespace A317098.P12415427896761769603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A000260 n).toNat - A007477 n

end

end A317098.P12415427896761769603

/-! ## A317098.P2262459936910884543

`A051742(A161797(n)+A004999(n+1))`
-/

namespace A317098.P2262459936910884543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A161797 n + A004999 (n + 1)).toNat

end

end A317098.P2262459936910884543

/-!
# A317099: Number of series-reduced planted achiral trees whose leaves span an initial interval of positive integers appearing with multiplicities an integer partition of n.

The programs for A317099, there is no canonical definition to state claims against.
-/

/-! ## A317099.P10707558658259397198

`∑{d}[n+1, A000041(#)*A074206((n+1)/#)]`
-/

namespace A317099.P10707558658259397198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 d * A074206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317099.P10707558658259397198

/-! ## A317099.P5168487748605325522

`∑{d}[n+1, A047968(#)*A174725((n+1)/#)]`
-/

namespace A317099.P5168487748605325522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047968 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317099.P5168487748605325522

/-! ## A317099.P5934179348702738809

`∑{d}[n+1, A078392(#)*A323912((n+1)/#)]`
-/

namespace A317099.P5934179348702738809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078392 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317099.P5934179348702738809

/-! ## A317099.P9491086677072201491

`∑{d}[n+1, A305841(#)*A345182((n+1)/#)]`
-/

namespace A317099.P9491086677072201491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305841 d * A345182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317099.P9491086677072201491

/-! ## A317099.P5358454744314601374

`∑{d}[n+1, A002033(#-1)*A000041((n+1)/#)]`
-/

namespace A317099.P5358454744314601374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A000041 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317099.P5358454744314601374

