import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A206500: Number of nX3 0..7 arrays with no element equal to another within a city block distance of two, and new values 0..7 introduced in row major order.

The programs for A206500, there is no canonical definition to state claims against.
-/

/-! ## A206500.P14011302454117778798

`A206503(∑[n+2]+4)`
-/

namespace A206500.P14011302454117778798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206503 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206500.P14011302454117778798

/-! ## A206500.P15975598732831791732

`record[A010054(n)*A206503(n+3)]`
-/

namespace A206500.P15975598732831791732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206503 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206500.P15975598732831791732

/-! ## A206500.P16078211053656679703

`record[A023531(n)*A206503(n+4)]`
-/

namespace A206500.P16078211053656679703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A206503 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206500.P16078211053656679703

/-! ## A206500.P9007328151460645271

`record[gcd(A206503(n+3), A351641(n))]`
-/

namespace A206500.P9007328151460645271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206503 (n + 3)) (A351641 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206500.P9007328151460645271

/-!
# A206501: Number of nX4 0..7 arrays with no element equal to another within a city block distance of two, and new values 0..7 introduced in row major order.

The programs for A206501, there is no canonical definition to state claims against.
-/

/-! ## A206501.P11810391053610532887

`A206503(∑[n+3]+7)`
-/

namespace A206501.P11810391053610532887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206503 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A206501.P11810391053610532887

/-!
# A206502: Number of nX5 0..7 arrays with no element equal to another within a city block distance of two, and new values 0..7 introduced in row major order.

The programs for A206502, there is no canonical definition to state claims against.
-/

/-! ## A206502.P12102803854710134944

`A206503(Δ[A264443(n)])`
-/

namespace A206502.P12102803854710134944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206503 (f1 (n + 1) - f1 n).toNat

end

end A206502.P12102803854710134944

/-!
# A206503: T(n,k)=Number of nXk 0..7 arrays with no element equal to another within a city block distance of two, and new values 0..7 introduced in row major order.

The programs for A206503, there is no canonical definition to state claims against.
-/

/-! ## A206503.P5472525757897448960

`A125157(A206389(n+1))`
-/

namespace A206503.P5472525757897448960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125157 (A206389 (n + 1)).toNat

end

end A206503.P5472525757897448960

/-! ## A206503.P3801213904086515110

`A206389(n+1)+A025469(n²²)`
-/

namespace A206503.P3801213904086515110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (n + 1) + A025469 ((n ^ 2) ^ 2)

end

end A206503.P3801213904086515110

/-! ## A206503.P18371226401848900839

`A206389(n+1)+A011746(A022179(n))`
-/

namespace A206503.P18371226401848900839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206389 (n + 1) + A011746 (A022179 n).toNat

end

end A206503.P18371226401848900839

/-! ## A206503.P7122394976180862470

`A084904(n)+A069554(A206389(n+1))`
-/

namespace A206503.P7122394976180862470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084904 n + A069554 (A206389 (n + 1)).toNat

end

end A206503.P7122394976180862470

/-!
# A206504: Number of (n+1)X(n+1) 0..2 arrays with the number of clockwise edge increases in 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A206504, there is no canonical definition to state claims against.
-/

/-! ## A206504.P1069201146946366377

`A206512((n+1)²+n²)`
-/

namespace A206504.P1069201146946366377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 ((n + 1) ^ 2 + n ^ 2)

end

end A206504.P1069201146946366377

/-!
# A206505: Number of (n+1) X 2 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A206505, there is no canonical definition to state claims against.
-/

/-! ## A206505.P17584703968952356098

`A206512(∑[n]+1)`
-/

namespace A206505.P17584703968952356098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206505.P17584703968952356098

/-! ## A206505.P11563836395047561486

`lcm(3, A206512(A000124(n)))`
-/

namespace A206505.P11563836395047561486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206512 (A000124 n).toNat)

end

end A206505.P11563836395047561486

/-! ## A206505.P17899754102113275091

`record[A206512(A276944(n+1))]`
-/

namespace A206505.P17899754102113275091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A276944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206505.P17899754102113275091

/-! ## A206505.P13422931356869408928

`record[A010054(n)*A206512(n+1)]`
-/

namespace A206505.P13422931356869408928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206505.P13422931356869408928

/-! ## A206505.P2037415241737252064

`record[gcd(A002262(n), A206512(n+1))]`
-/

namespace A206505.P2037415241737252064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206512 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206505.P2037415241737252064

/-!
# A206506: Number of (n+1)X3 0..2 arrays with the number of clockwise edge increases in 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A206506, there is no canonical definition to state claims against.
-/

/-! ## A206506.P3596004628351001190

`A206512(∑[n+1]+2)`
-/

namespace A206506.P3596004628351001190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206506.P3596004628351001190

/-! ## A206506.P12636211215304081212

`record[A010054(n)*A206512(n+2)]`
-/

namespace A206506.P12636211215304081212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206512 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206506.P12636211215304081212

/-! ## A206506.P16600962548991152719

`record[gcd(A002262(n), A206512(n+2))]`
-/

namespace A206506.P16600962548991152719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206512 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206506.P16600962548991152719

/-! ## A206506.P10063277564675788524

`record[A206512(Δ[A003453(n+5)])]`
-/

namespace A206506.P10063277564675788524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206506.P10063277564675788524

/-! ## A206506.P9743660172967308401

`record[A206512(n+2)/A221499(n+3)]`
-/

namespace A206506.P9743660172967308401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206512 (n + 2) : ℚ) / (A221499 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206506.P9743660172967308401

/-!
# A206507: Number of (n+1) X 4 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A206507, there is no canonical definition to state claims against.
-/

/-! ## A206507.P6747718932156073533

`A206512(∑[n+2]+4)`
-/

namespace A206507.P6747718932156073533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206507.P6747718932156073533

/-! ## A206507.P15399102601098608958

`lcm(3, A206512(A167614(n+1)))`
-/

namespace A206507.P15399102601098608958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206512 (A167614 (n + 1)).toNat)

end

end A206507.P15399102601098608958

/-! ## A206507.P9179067522190432924

`A206512(A167614(n+1))+A184955(n)`
-/

namespace A206507.P9179067522190432924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A167614 (n + 1)).toNat + A184955 n

end

end A206507.P9179067522190432924

/-! ## A206507.P13304458283533032802

`A206512(A055998(n)+6)%A206540(n+1)`
-/

namespace A206507.P13304458283533032802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206512 (A055998 n + 6).toNat) (A206540 (n + 1))

end

end A206507.P13304458283533032802

/-! ## A206507.P16439437071425163315

`record[A206512(A198464(n+1))]`
-/

namespace A206507.P16439437071425163315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206507.P16439437071425163315

/-!
# A206508: Number of (n+1)X5 0..2 arrays with the number of clockwise edge increases in 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A206508, there is no canonical definition to state claims against.
-/

/-! ## A206508.P11875840985170534036

`A206512(A374004(n+1))`
-/

namespace A206508.P11875840985170534036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A374004 (n + 1)).toNat

end

end A206508.P11875840985170534036

/-! ## A206508.P17378268482202253421

`A206512(A052905(n)+9)`
-/

namespace A206508.P17378268482202253421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A052905 n + 9).toNat

end

end A206508.P17378268482202253421

/-! ## A206508.P3401457509770968757

`A206512(A055999(n)+10)`
-/

namespace A206508.P3401457509770968757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A055999 n + 10).toNat

end

end A206508.P3401457509770968757

/-! ## A206508.P2624417545914211913

`A206512(A167614(n+2)+1)`
-/

namespace A206508.P2624417545914211913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A167614 (n + 2) + 1).toNat

end

end A206508.P2624417545914211913

/-! ## A206508.P4371066759487627417

`A206512(eq[5, A131818(n+1)])`
-/

namespace A206508.P4371066759487627417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206508.P4371066759487627417

/-!
# A206509: Number of (n+1)X6 0..2 arrays with the number of clockwise edge increases in 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A206509, there is no canonical definition to state claims against.
-/

/-! ## A206509.P12058301791383817549

`A206512(A374005(n+1))`
-/

namespace A206509.P12058301791383817549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A374005 (n + 1)).toNat

end

end A206509.P12058301791383817549

/-! ## A206509.P6476921170345284976

`A206512(A155212(n)+13)`
-/

namespace A206509.P6476921170345284976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A155212 n + 13).toNat

end

end A206509.P6476921170345284976

/-! ## A206509.P942679854658772364

`A206512(A056000(n)+15)`
-/

namespace A206509.P942679854658772364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A056000 n + 15).toNat

end

end A206509.P942679854658772364

/-! ## A206509.P2642843002053959880

`A206512(A000096(n+3)+6)`
-/

namespace A206509.P2642843002053959880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A000096 (n + 3) + 6).toNat

end

end A206509.P2642843002053959880

/-! ## A206509.P10475105663266392288

`A206512(Δ[A264443(n)])`
-/

namespace A206509.P10475105663266392288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (f1 (n + 1) - f1 n).toNat

end

end A206509.P10475105663266392288

/-!
# A206510: Number of (n+1)X7 0..2 arrays with the number of clockwise edge increases in 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A206510, there is no canonical definition to state claims against.
-/

/-! ## A206510.P1141153300039882407

`A206512(A374007(n+1))`
-/

namespace A206510.P1141153300039882407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A374007 (n + 1)).toNat

end

end A206510.P1141153300039882407

/-! ## A206510.P8188944745197281193

`A206512(Δ[A264443(n+1)]-1)`
-/

namespace A206510.P8188944745197281193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (f1 (n + 1) - f1 n - 1).toNat

end

end A206510.P8188944745197281193

/-! ## A206510.P15247315546823175742

`A206512(eq[12, A225640(n)])`
-/

namespace A206510.P15247315546823175742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206510.P15247315546823175742

/-!
# A206511: Number of (n+1)X8 0..2 arrays with the number of clockwise edge increases in 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A206511, there is no canonical definition to state claims against.
-/

/-! ## A206511.P15099604951620066278

`A206512(A055999(n+4))`
-/

namespace A206511.P15099604951620066278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (A055999 (n + 4)).toNat

end

end A206511.P15099604951620066278

/-! ## A206511.P7030597431663995295

`A206512(eq[6, A193592(n)])`
-/

namespace A206511.P7030597431663995295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206511.P7030597431663995295

/-!
# A206513: 

The programs for A206513, there is no canonical definition to state claims against.
-/

/-! ## A206513.P12255529992542368124

`A206521((n+1)²+n²)`
-/

namespace A206513.P12255529992542368124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206521 ((n + 1) ^ 2 + n ^ 2)

end

end A206513.P12255529992542368124

/-!
# A206514: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having no more than four equal edges, and new values 0..3 introduced in row major order.

The programs for A206514, there is no canonical definition to state claims against.
-/

/-! ## A206514.P6675393027875314655

`A206521(∑[n]+1)`
-/

namespace A206514.P6675393027875314655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206521 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206514.P6675393027875314655

/-! ## A206514.P4385498545555382368

`record[gcd(A053616(n), A206521(n+1))]`
-/

namespace A206514.P4385498545555382368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A206521 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206514.P4385498545555382368

/-! ## A206514.P3485944446562200472

`or(A000007(n), A206521(A000124(n)))`
-/

namespace A206514.P3485944446562200472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206521 (A000124 n).toNat)

end

end A206514.P3485944446562200472

/-! ## A206514.P5558080436262042507

`or(A000038(n), A206521(A000124(n)))`
-/

namespace A206514.P5558080436262042507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A206521 (A000124 n).toNat)

end

end A206514.P5558080436262042507

/-! ## A206514.P5370875491773274915

`lcm(A053150(n+1), A206521(A000124(n)))`
-/

namespace A206514.P5370875491773274915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053150 (n + 1)) (A206521 (A000124 n).toNat)

end

end A206514.P5370875491773274915

/-!
# A206515: Number of (n+1) X 3 0..3 arrays with every 2 X 3 or 3 X 2 subblock having no more than four equal edges, and new values 0..3 introduced in row major order.

The programs for A206515, there is no canonical definition to state claims against.
-/

/-! ## A206515.P9517330355336238833

`A206521(∑[n+1]+2)`
-/

namespace A206515.P9517330355336238833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206521 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206515.P9517330355336238833

/-! ## A206515.P13093333410894151047

`record[gcd(A053616(n), A206521(n+2))]`
-/

namespace A206515.P13093333410894151047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A206521 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206515.P13093333410894151047

/-! ## A206515.P9495822457254820703

`record[A206521((A338042(n+1)+2)/2)]`
-/

namespace A206515.P9495822457254820703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206521 (SequenceMachineLib.roundAway ((A338042 (n + 1) + 2 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206515.P9495822457254820703

/-! ## A206515.P5919839858388447420

`record[A206521(Δ[A003453(n+5)])]`
-/

namespace A206515.P5919839858388447420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206521 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206515.P5919839858388447420

/-! ## A206515.P15879320689487302795

`record[A206521(A130297(n+1)+1)]`
-/

namespace A206515.P15879320689487302795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206521 (A130297 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206515.P15879320689487302795

/-!
# A206516: Number of (n+1)X4 0..3 arrays with every 2X3 or 3X2 subblock having no more than four equal edges, and new values 0..3 introduced in row major order.

The programs for A206516, there is no canonical definition to state claims against.
-/

/-! ## A206516.P3315430590449704826

`A206521(∑[n+2]+4)`
-/

namespace A206516.P3315430590449704826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206521 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206516.P3315430590449704826

/-!
# A206522: The pairwise differences of the terms of A004210.

The programs for A206522, there is no canonical definition to state claims against.
-/

/-! ## A206522.P6341398751493274284

`∑[A086161(A128592(2*(n+1)))%3]+n+1`
-/

namespace A206522.P6341398751493274284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086161 (A128592 (2 * (n + 1))).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A206522.P6341398751493274284

/-! ## A206522.P18006470463008171900

`A101885(n+1)-A010054(A000975(n))`
-/

namespace A206522.P18006470463008171900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101885 (n + 1) - A010054 (A000975 n).toNat

end

end A206522.P18006470463008171900

/-! ## A206522.P2430893980164510821

`A324705(n+1)+A093921(A133370(n+1))`
-/

namespace A206522.P2430893980164510821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (n + 1) + A093921 (A133370 (n + 1)).toNat

end

end A206522.P2430893980164510821

/-!
# A206525: a(n) = 113*(n-1) - a(n-1) with n>1, a(1)=51.

The programs for A206525, the canonical program `A206525.P18408575607385186796` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206525 has offset 1).

The definition of A206525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206525.P18408575607385186796

`a(n-2)+113` with `a(0)=51, a(1)=62`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206525

/-- `a(n-2)+113` -/
def P18408575607385186796.Spec : Prop :=
  ∀ n, (P18408575607385186796.a n : ℤ) = A206525 (n + 1)

theorem P18408575607385186796.correct : P18408575607385186796.Spec := by
  intro n
  simp only [A206525, Nat.add_sub_cancel]

end A206525

/-!
# A206526: a(n) = 137*(n-1) - a(n-1) with n>1, a(1)=31.

The programs for A206526, the canonical program `A206526.P8537151212418741911` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206526 has offset 1).

The definition of A206526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206526.P8537151212418741911

`a(n-2)+137` with `a(0)=31, a(1)=106`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206526

/-- `a(n-2)+137` -/
def P8537151212418741911.Spec : Prop :=
  ∀ n, (P8537151212418741911.a n : ℤ) = A206526 (n + 1)

theorem P8537151212418741911.correct : P8537151212418741911.Spec := by
  intro n
  simp only [A206526, Nat.add_sub_cancel]

end A206526

/-! ## A206526.P17649741485087742132

`A155097(n+1)+A053742(n)`
-/

namespace A206526.P17649741485087742132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + A053742 n

end

end A206526.P17649741485087742132

namespace A206526

/-- `A155097(n+1)+A053742(n)` -/
def P17649741485087742132.Spec : Prop :=
  ∀ n, P17649741485087742132.a n = A206526 (n + 1)

end A206526

/-! ## A206526.P13144860781654152743

`Δ[A195047(n)+A158558(n)]`
-/

namespace A206526.P13144860781654152743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195047 n + A158558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206526.P13144860781654152743

namespace A206526

/-- `Δ[A195047(n)+A158558(n)]` -/
def P13144860781654152743.Spec : Prop :=
  ∀ n, P13144860781654152743.a n = A206526 (n + 1)

end A206526

/-! ## A206526.P3414599909451863183

`Δ[A195047(3*n)-(2*n)²]`
-/

namespace A206526.P3414599909451863183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195047 (3 * n) - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206526.P3414599909451863183

namespace A206526

/-- `Δ[A195047(3*n)-(2*n)²]` -/
def P3414599909451863183.Spec : Prop :=
  ∀ n, P3414599909451863183.a n = A206526 (n + 1)

end A206526

/-! ## A206526.P1637793727848404240

`A270296(n+1)+A008593(A047336(n+1))`
-/

namespace A206526.P1637793727848404240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + A008593 (A047336 (n + 1)).toNat

end

end A206526.P1637793727848404240

namespace A206526

/-- `A270296(n+1)+A008593(A047336(n+1))` -/
def P1637793727848404240.Spec : Prop :=
  ∀ n, P1637793727848404240.a n = A206526 (n + 1)

end A206526

/-! ## A206526.P16755550336645193917

`A169610(n+1)+A017341(A016873(n))`
-/

namespace A206526.P16755550336645193917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) + A017341 (A016873 n).toNat

end

end A206526.P16755550336645193917

namespace A206526

/-- `A169610(n+1)+A017341(A016873(n))` -/
def P16755550336645193917.Spec : Prop :=
  ∀ n, P16755550336645193917.a n = A206526 (n + 1)

end A206526

/-!
# A206527: 3^n concatenated with itself.

The programs for A206527, the canonical program `A206527.P17662321040219862947` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206527 has offset 0).

The definition of A206527 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206527.P17662321040219862947

`A020338(3^n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A206527

/-- `A020338(3^n)` -/
def P17662321040219862947.Spec : Prop :=
  ∀ n, P17662321040219862947.a n = A206527 n

theorem P17662321040219862947.correct : P17662321040219862947.Spec := by
  intro n
  simp only [A206527]

end A206527

/-! ## A206527.P11575937631806247985

`A000244(n)*A000533(A034888(n))`
-/

namespace A206527.P11575937631806247985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A000533 (A034888 n).toNat

end

end A206527.P11575937631806247985

namespace A206527

/-- `A000244(n)*A000533(A034888(n))` -/
def P11575937631806247985.Spec : Prop :=
  ∀ n, P11575937631806247985.a n = A206527 n

end A206527

/-! ## A206527.P16716473359118720466

`∑[A025192(n)]*A000533(A034888(n))`
-/

namespace A206527.P16716473359118720466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000533 (A034888 n).toNat

end

end A206527.P16716473359118720466

namespace A206527

/-- `∑[A025192(n)]*A000533(A034888(n))` -/
def P16716473359118720466.Spec : Prop :=
  ∀ n, P16716473359118720466.a n = A206527 n

end A206527

/-! ## A206527.P1662493352589476462

`Δ[A115098(n)]*A000533(A034888(n))`
-/

namespace A206527.P1662493352589476462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000533 (A034888 n).toNat

end

end A206527.P1662493352589476462

namespace A206527

/-- `Δ[A115098(n)]*A000533(A034888(n))` -/
def P1662493352589476462.Spec : Prop :=
  ∀ n, P1662493352589476462.a n = A206527 n

end A206527

/-! ## A206527.P2448747008687493287

`A000533(A034888(n))*A038754(2*n)`
-/

namespace A206527.P2448747008687493287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (A034888 n).toNat * A038754 (2 * n)

end

end A206527.P2448747008687493287

namespace A206527

/-- `A000533(A034888(n))*A038754(2*n)` -/
def P2448747008687493287.Spec : Prop :=
  ∀ n, P2448747008687493287.a n = A206527 n

end A206527

/-!
# A206528: 5^n concatenated with itself.

The programs for A206528, the canonical program `A206528.P3167642556267065851` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206528 has offset 0).

The definition of A206528 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206528.P3167642556267065851

`A020338(5^n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A206528

/-- `A020338(5^n)` -/
def P3167642556267065851.Spec : Prop :=
  ∀ n, P3167642556267065851.a n = A206528 n

theorem P3167642556267065851.correct : P3167642556267065851.Spec := by
  intro n
  simp only [A206528]

end A206528

/-! ## A206528.P14997902044056672973

`A000351(n)*A000533(A210435(n))`
-/

namespace A206528.P14997902044056672973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A000533 (A210435 n).toNat

end

end A206528.P14997902044056672973

namespace A206528

/-- `A000351(n)*A000533(A210435(n))` -/
def P14997902044056672973.Spec : Prop :=
  ∀ n, P14997902044056672973.a n = A206528 n

end A206528

/-! ## A206528.P2587308089097414768

`A001704(5^n)-1`
-/

namespace A206528.P2587308089097414768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (5 ^ n) - 1

end

end A206528.P2587308089097414768

namespace A206528

/-- `A001704(5^n)-1` -/
def P2587308089097414768.Spec : Prop :=
  ∀ n, P2587308089097414768.a n = A206528 n

end A206528

/-!
# A206529: 7^n concatenated with itself.

The programs for A206529, the canonical program `A206529.P17804462601865261922` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206529 has offset 0).

The definition of A206529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206529.P17804462601865261922

`A020338(7^n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A206529

/-- `A020338(7^n)` -/
def P17804462601865261922.Spec : Prop :=
  ∀ n, P17804462601865261922.a n = A206529 n

theorem P17804462601865261922.correct : P17804462601865261922.Spec := by
  intro n
  simp only [A206529]

end A206529

/-! ## A206529.P13475071199496912524

`A001704(7^n)-1`
-/

namespace A206529.P13475071199496912524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (7 ^ n) - 1

end

end A206529.P13475071199496912524

namespace A206529

/-- `A001704(7^n)-1` -/
def P13475071199496912524.Spec : Prop :=
  ∀ n, P13475071199496912524.a n = A206529 n

end A206529

/-!
# A206531: a(n) = (2*(n+1)*(2*n+1)-1)*a(n-1) + 2*n*(2*n-1)*a(n-2), a(0)=0, a(1)=2.

The programs for A206531, there is no canonical definition to state claims against.
-/

/-! ## A206531.P2858631498353762080

`or(4, a(n-1)*∑[8*n+2])-2` with `a(0)=0`
-/

namespace A206531.P2858631498353762080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 4 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) - 2

end

end A206531.P2858631498353762080

/-! ## A206531.P12033677676024235283

`A103517(n)!%A206532(n)`
-/

namespace A206531.P12033677676024235283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A103517 n).toNat : ℤ) (A206532 n)

end

end A206531.P12033677676024235283

/-! ## A206531.P1291079396508898143

`A000142(2*(n+1))%A206532(n)`
-/

namespace A206531.P1291079396508898143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (2 * (n + 1))) (A206532 n)

end

end A206531.P1291079396508898143

/-! ## A206531.P5125786962507648481

`2*A275651(n+1)-A010050(n+1)`
-/

namespace A206531.P5125786962507648481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275651 (n + 1) - A010050 (n + 1)

end

end A206531.P5125786962507648481

/-!
# A206532: a(n) = (2(n+1)(2n+1)-1) * a(n-1) + 2n(2n-1) * a(n-2), a(0) = 1, a(1) = 11.

The programs for A206532, there is no canonical definition to state claims against.
-/

/-! ## A206532.P18385438263505591812

`A145063(2*n+3)+(4*n+2)*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A206532.P18385438263505591812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145063 (2 * n + 3) + ((4 * n + 2) * (n + 1) : ℤ) * a (n - 1)

end

end A206532.P18385438263505591812

/-! ## A206532.P10092420900611239214

`a(n-1)*A002939(n+1)-A062157(n)` with `a(0)=1`
-/

namespace A206532.P10092420900611239214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A002939 (n + 1) - A062157 n

end

end A206532.P10092420900611239214

/-! ## A206532.P186086620223977914

`(2*(n+1))!-A275651(n+1)`
-/

namespace A206532.P186086620223977914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℤ) - A275651 (n + 1)

end

end A206532.P186086620223977914

/-! ## A206532.P5052028773295921515

`A010050(n+1)-A275651(n+1)`
-/

namespace A206532.P5052028773295921515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 (n + 1) - A275651 (n + 1)

end

end A206532.P5052028773295921515

/-! ## A206532.P9675655392399584554

`A000142(2*(n+1))-abs(A337749(2*(n+1)))`
-/

namespace A206532.P9675655392399584554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * (n + 1)) - |A337749 (2 * (n + 1))|

end

end A206532.P9675655392399584554

/-!
# A206534: Number of (n+1) X (n+1) 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206534, there is no canonical definition to state claims against.
-/

/-! ## A206534.P1491250766839255880

`A206542((n+1)²+n²)`
-/

namespace A206534.P1491250766839255880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 ((n + 1) ^ 2 + n ^ 2)

end

end A206534.P1491250766839255880

/-!
# A206535: Number of (n+1) X 2 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206535, there is no canonical definition to state claims against.
-/

/-! ## A206535.P6577020056654203238

`A206542(∑[n]+1)`
-/

namespace A206535.P6577020056654203238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206535.P6577020056654203238

/-! ## A206535.P16386502344105032848

`record[root(A206542(n+1), A109128(n))]`
-/

namespace A206535.P16386502344105032848
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206542 (n + 1) : ℝ) ^ (1 / (A109128 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206535.P16386502344105032848

/-! ## A206535.P1299014102298746621

`record[root(A206542(n+1), A160449(n))]`
-/

namespace A206535.P1299014102298746621
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206542 (n + 1) : ℝ) ^ (1 / (A160449 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206535.P1299014102298746621

/-! ## A206535.P8891912117323551467

`record[gcd(A002262(n), A206542(n+1))]`
-/

namespace A206535.P8891912117323551467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206542 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206535.P8891912117323551467

/-! ## A206535.P16026950907666104697

`record[root(A206542(n+1), A200370(n+1))]`
-/

namespace A206535.P16026950907666104697
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206542 (n + 1) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206535.P16026950907666104697

/-!
# A206536: Number of (n+1) X 3 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206536, there is no canonical definition to state claims against.
-/

/-! ## A206536.P16504754095850583975

`A206542(∑[n+1]+2)`
-/

namespace A206536.P16504754095850583975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206536.P16504754095850583975

/-! ## A206536.P16043997670575975703

`record[gcd(A002262(n), A206542(n+2))]`
-/

namespace A206536.P16043997670575975703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206542 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206536.P16043997670575975703

/-! ## A206536.P15421976511732395820

`record[root(A206542(n+2), A200370(n+1))]`
-/

namespace A206536.P15421976511732395820
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206542 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206536.P15421976511732395820

/-! ## A206536.P7800038538668981122

`record[A206542(abs(A201163(n)))]`
-/

namespace A206536.P7800038538668981122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206536.P7800038538668981122

/-! ## A206536.P8931739955466168047

`record[A206542(Δ[A003453(n+5)])]`
-/

namespace A206536.P8931739955466168047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206536.P8931739955466168047

/-!
# A206537: Number of (n+1) X 4 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206537, there is no canonical definition to state claims against.
-/

/-! ## A206537.P11746854347415672779

`A206542(∑[n+2]+4)`
-/

namespace A206537.P11746854347415672779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206537.P11746854347415672779

/-! ## A206537.P5038741416842616142

`lcm(3, A206542(A167614(n+1)))`
-/

namespace A206537.P5038741416842616142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206542 (A167614 (n + 1)).toNat)

end

end A206537.P5038741416842616142

/-! ## A206537.P2238172425995758931

`A206542(A167614(n+1))+A185284(n)`
-/

namespace A206537.P2238172425995758931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A167614 (n + 1)).toNat + A185284 n

end

end A206537.P2238172425995758931

/-! ## A206537.P16724785425098349457

`or(A185012(n), A206542(A167614(n+1)))`
-/

namespace A206537.P16724785425098349457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185012 n) (A206542 (A167614 (n + 1)).toNat)

end

end A206537.P16724785425098349457

/-! ## A206537.P45469555661440544

`record[A206542(A198464(n+1))]`
-/

namespace A206537.P45469555661440544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206537.P45469555661440544

/-!
# A206538: Number of (n+1) X 5 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206538, there is no canonical definition to state claims against.
-/

/-! ## A206538.P12117818219690310363

`A206542(A374004(n+1))`
-/

namespace A206538.P12117818219690310363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A374004 (n + 1)).toNat

end

end A206538.P12117818219690310363

/-! ## A206538.P519174761472100044

`A206542(A141214(n)+7)`
-/

namespace A206538.P519174761472100044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A141214 n + 7).toNat

end

end A206538.P519174761472100044

/-! ## A206538.P8724173354268077930

`A206542(A052905(n)+9)`
-/

namespace A206538.P8724173354268077930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A052905 n + 9).toNat

end

end A206538.P8724173354268077930

/-! ## A206538.P3760105056309708707

`A206542(A167614(n+2)+1)`
-/

namespace A206538.P3760105056309708707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A167614 (n + 2) + 1).toNat

end

end A206538.P3760105056309708707

/-! ## A206538.P13558512577567561934

`A206542(Δ[A264443(n)-n²])`
-/

namespace A206538.P13558512577567561934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (f1 (n + 1) - f1 n).toNat

end

end A206538.P13558512577567561934

/-!
# A206539: Number of (n+1) X 6 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206539, there is no canonical definition to state claims against.
-/

/-! ## A206539.P12719973874784877376

`A206542(A374005(n+1))`
-/

namespace A206539.P12719973874784877376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A374005 (n + 1)).toNat

end

end A206539.P12719973874784877376

/-! ## A206539.P16172703540025634324

`A206542(A155212(n)+13)`
-/

namespace A206539.P16172703540025634324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A155212 n + 13).toNat

end

end A206539.P16172703540025634324

/-! ## A206539.P8396756097920398390

`A206542(A056000(n)+15)`
-/

namespace A206539.P8396756097920398390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A056000 n + 15).toNat

end

end A206539.P8396756097920398390

/-! ## A206539.P10950737121998364894

`A206542((n+4)²-A052905(n))`
-/

namespace A206539.P10950737121998364894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (((n + 4) ^ 2 : ℤ) - A052905 n).toNat

end

end A206539.P10950737121998364894

/-! ## A206539.P3610405743096833299

`A206542(Δ[A264443(n)])`
-/

namespace A206539.P3610405743096833299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (f1 (n + 1) - f1 n).toNat

end

end A206539.P3610405743096833299

/-!
# A206540: Number of (n+1) X 7 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206540, there is no canonical definition to state claims against.
-/

/-! ## A206540.P11679657072106646215

`A206542(A374007(n+1))`
-/

namespace A206540.P11679657072106646215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A374007 (n + 1)).toNat

end

end A206540.P11679657072106646215

/-! ## A206540.P14442742204718890819

`A206542(Δ[A023545(n+1)]+10)`
-/

namespace A206540.P14442742204718890819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (f1 (n + 1) - f1 n + 10).toNat

end

end A206540.P14442742204718890819

/-! ## A206540.P7448527437008682595

`A206542(A052905(n+3))`
-/

namespace A206540.P7448527437008682595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A052905 (n + 3)).toNat

end

end A206540.P7448527437008682595

/-! ## A206540.P6956457731057666954

`A206542(eq[3, A219347(n)])`
-/

namespace A206540.P6956457731057666954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206540.P6956457731057666954

/-! ## A206540.P13214904901702525893

`A206542(eq[5, A193592(n)])`
-/

namespace A206540.P13214904901702525893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206540.P13214904901702525893

/-!
# A206541: Number of (n+1) X 8 0..2 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206541, there is no canonical definition to state claims against.
-/

/-! ## A206541.P17189106511082631688

`A206542(A374008(n+1))`
-/

namespace A206541.P17189106511082631688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A374008 (n + 1)).toNat

end

end A206541.P17189106511082631688

/-! ## A206541.P14465354702227674753

`A206542(eq[6, A193592(n)])`
-/

namespace A206541.P14465354702227674753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206541.P14465354702227674753

/-! ## A206541.P3199220907351418261

`A206542(A052905(n+4)-1)`
-/

namespace A206541.P3199220907351418261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (A052905 (n + 4) - 1).toNat

end

end A206541.P3199220907351418261

/-! ## A206541.P12844676843492447530

`A206542(eq[2, A219347(n)-2])`
-/

namespace A206541.P12844676843492447530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206541.P12844676843492447530

/-! ## A206541.P11128637215347949548

`A206542(eq[7, A200370(n+1)])`
-/

namespace A206541.P11128637215347949548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206541.P11128637215347949548

/-!
# A206543: Period 10: repeat 1, 3, 5, 7, 9, 9, 7, 5, 3, 1.

The programs for A206543, the canonical program `A206543.P14866210944393496989` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206543 has offset 1).

The definition of A206543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206543.P14866210944393496989

`10-a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206543

/-- `10-a(n-5)` -/
def P14866210944393496989.Spec : Prop :=
  ∀ n, P14866210944393496989.a n = A206543 (n + 1)

theorem P14866210944393496989.correct : P14866210944393496989.Spec := by
  intro n
  simp only [A206543, Nat.add_sub_cancel]

end A206543

/-!
# A206544: Period 12: repeat 1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1.

The programs for A206544, the canonical program `A206544.P1936267423562286217` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206544 has offset 1).

The definition of A206544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206544.P1936267423562286217

`A271832(n+1)+A271832(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206544

/-- `A271832(n+1)+A271832(n)` -/
def P1936267423562286217.Spec : Prop :=
  ∀ n, P1936267423562286217.a n = A206544 (n + 1)

theorem P1936267423562286217.correct : P1936267423562286217.Spec := by
  intro n
  simp only [A206544, Nat.add_sub_cancel]

end A206544

/-!
# A206545: Period length 16: repeat 1, 3, 5, 7, 9, 11, 13, 15, 15, 13, 11, 9, 7, 5, 3, 1.

The programs for A206545, the canonical program `A206545.P16085938123302613848` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206545 has offset 1).

The definition of A206545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206545.P16085938123302613848

`abs(xor(7, n)-xor(8, n))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206545

/-- `abs(xor(7, n)-xor(8, n))` -/
def P16085938123302613848.Spec : Prop :=
  ∀ n, P16085938123302613848.a n = A206545 (n + 1)

theorem P16085938123302613848.correct : P16085938123302613848.Spec := by
  intro n
  simp only [A206545, Nat.add_sub_cancel]

end A206545

/-!
# A206546: Period 8: repeat [1, 7, 11, 13, 13, 11, 7, 1].

The programs for A206546, the canonical program `A206546.P4990165859290751092` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206546 has offset 1).

The definition of A206546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206546.P4990165859290751092

`A065621(and(6, A065620(n+1))+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206546

/-- `A065621(and(6, A065620(n+1))+1)` -/
def P4990165859290751092.Spec : Prop :=
  ∀ n, P4990165859290751092.a n = A206546 (n + 1)

theorem P4990165859290751092.correct : P4990165859290751092.Spec := by
  intro n
  simp only [A206546, Nat.add_sub_cancel]

end A206546

/-!
# A206547: Positive odd numbers relatively prime to 21.

The programs for A206547, the canonical program `A206547.P853000144665941961` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206547 has offset 1).

The definition of A206547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206547.P17832080758226816557

`record[lcm(42, 7-n)/42]`
-/

namespace A206547.P17832080758226816557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 42 (7 - (n : ℤ)) : ℚ) / 42

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206547.P17832080758226816557

namespace A206547

/-- `record[lcm(42, 7-n)/42]` -/
def P17832080758226816557.Spec : Prop :=
  ∀ n, P17832080758226816557.a n = (A206547 (n + 1) : ℚ)

end A206547

/-! ## A206547.P853000144665941961

`eq[1, gcd(n, 7-gcd(7, n))]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206547

/-- `eq[1, gcd(n, 7-gcd(7, n))]` -/
def P853000144665941961.Spec : Prop :=
  ∀ n, (P853000144665941961.a n : ℤ) = A206547 (n + 1)

theorem P853000144665941961.correct : P853000144665941961.Spec := by
  intro n
  simp only [A206547, Nat.add_sub_cancel]

end A206547

/-! ## A206547.P13633639755104177493

`record[n+1-(n^6)%42]`
-/

namespace A206547.P13633639755104177493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n ^ 6 % 42 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206547.P13633639755104177493

namespace A206547

/-- `record[n+1-(n^6)%42]` -/
def P13633639755104177493.Spec : Prop :=
  ∀ n, P13633639755104177493.a n = A206547 (n + 1)

end A206547

/-! ## A206547.P14386363960958669300

`record[(2*n+1)/gcd(2*n+1, 3*(n-3))]`
-/

namespace A206547.P14386363960958669300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.gcd (2 * n + 1 : ℤ) (3 * ((n : ℤ) - 3)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206547.P14386363960958669300

namespace A206547

/-- `record[(2*n+1)/gcd(2*n+1, 3*(n-3))]` -/
def P14386363960958669300.Spec : Prop :=
  ∀ n, P14386363960958669300.a n = (A206547 (n + 1) : ℚ)

end A206547

/-! ## A206547.P5059484356243100393

`filter[A162699(n+1), A187074(#)]`
-/

namespace A206547.P5059484356243100393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A206547.P5059484356243100393

namespace A206547

/-- `filter[A162699(n+1), A187074(#)]` -/
def P5059484356243100393.Spec : Prop :=
  ∀ n, P5059484356243100393.a n = A206547 (n + 1)

end A206547

/-! ## A206547.P11695289293522535501

`filter[A162699(n+1), A320106(#)]`
-/

namespace A206547.P11695289293522535501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A206547.P11695289293522535501

namespace A206547

/-- `filter[A162699(n+1), A320106(#)]` -/
def P11695289293522535501.Spec : Prop :=
  ∀ n, P11695289293522535501.a n = A206547 (n + 1)

end A206547

/-! ## A206547.P15072336304346554343

`filter[A162699(n+1), A354354(#)]`
-/

namespace A206547.P15072336304346554343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A206547.P15072336304346554343

namespace A206547

/-- `filter[A162699(n+1), A354354(#)]` -/
def P15072336304346554343.Spec : Prop :=
  ∀ n, P15072336304346554343.a n = A206547 (n + 1)

end A206547

/-! ## A206547.P75636760780528707

`filter[A162699(n+1), A359374(#)]`
-/

namespace A206547.P75636760780528707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A206547.P75636760780528707

namespace A206547

/-- `filter[A162699(n+1), A359374(#)]` -/
def P75636760780528707.Spec : Prop :=
  ∀ n, P75636760780528707.a n = A206547 (n + 1)

end A206547

/-! ## A206547.P10222329616436077314

`filter[A162699(n+1), A373155(#)]`
-/

namespace A206547.P10222329616436077314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A206547.P10222329616436077314

namespace A206547

/-- `filter[A162699(n+1), A373155(#)]` -/
def P10222329616436077314.Spec : Prop :=
  ∀ n, P10222329616436077314.a n = A206547 (n + 1)

end A206547

/-! ## A206547.P13054744660678819854

`filter[A162699(n+1), A373156(#)]`
-/

namespace A206547.P13054744660678819854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A206547.P13054744660678819854

namespace A206547

/-- `filter[A162699(n+1), A373156(#)]` -/
def P13054744660678819854.Spec : Prop :=
  ∀ n, P13054744660678819854.a n = A206547 (n + 1)

end A206547

/-! ## A206547.P3642526594309417421

`filter[A162699(n+1), A374043(#)]`
-/

namespace A206547.P3642526594309417421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A206547.P3642526594309417421

namespace A206547

/-- `filter[A162699(n+1), A374043(#)]` -/
def P3642526594309417421.Spec : Prop :=
  ∀ n, P3642526594309417421.a n = A206547 (n + 1)

end A206547

/-! ## A206547.P3758397490521703627

`∩[A007310(n+1), A162699(n+1)]`
-/

namespace A206547.P3758397490521703627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206547.P3758397490521703627

namespace A206547

/-- `∩[A007310(n+1), A162699(n+1)]` -/
def P3758397490521703627.Spec : Prop :=
  ∀ n, (P3758397490521703627.a n : ℤ) = A206547 (n + 1)

end A206547

/-! ## A206547.P16640163906424713665

`∩[A064615(n+1), A162699(n+1)]`
-/

namespace A206547.P16640163906424713665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206547.P16640163906424713665

namespace A206547

/-- `∩[A064615(n+1), A162699(n+1)]` -/
def P16640163906424713665.Spec : Prop :=
  ∀ n, (P16640163906424713665.a n : ℤ) = A206547 (n + 1)

end A206547

/-! ## A206547.P15260861186964540598

`∩[A162699(n+1), A259749(n+1)]`
-/

namespace A206547.P15260861186964540598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206547.P15260861186964540598

namespace A206547

/-- `∩[A162699(n+1), A259749(n+1)]` -/
def P15260861186964540598.Spec : Prop :=
  ∀ n, (P15260861186964540598.a n : ℤ) = A206547 (n + 1)

end A206547

/-! ## A206547.P5290939148387899808

`∩[A084087(n+1), A162699(n+1)]`
-/

namespace A206547.P5290939148387899808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206547.P5290939148387899808

namespace A206547

/-- `∩[A084087(n+1), A162699(n+1)]` -/
def P5290939148387899808.Spec : Prop :=
  ∀ n, (P5290939148387899808.a n : ℤ) = A206547 (n + 1)

end A206547

/-! ## A206547.P5824814645715911836

`record[gcd(Δ[n²], A000540(n))]`
-/

namespace A206547.P5824814645715911836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (A000540 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206547.P5824814645715911836

namespace A206547

/-- `record[gcd(Δ[n²], A000540(n))]` -/
def P5824814645715911836.Spec : Prop :=
  ∀ n, (P5824814645715911836.a n : ℤ) = A206547 (n + 1)

end A206547

/-! ## A206547.P14107611896977560792

`∩[A047259(n+1), A162699(n+1)]`
-/

namespace A206547.P14107611896977560792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206547.P14107611896977560792

namespace A206547

/-- `∩[A047259(n+1), A162699(n+1)]` -/
def P14107611896977560792.Spec : Prop :=
  ∀ n, (P14107611896977560792.a n : ℤ) = A206547 (n + 1)

end A206547

/-! ## A206547.P11207136498213075632

`∩[A047266(n+1), A162699(n+1)]`
-/

namespace A206547.P11207136498213075632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206547.P11207136498213075632

namespace A206547

/-- `∩[A047266(n+1), A162699(n+1)]` -/
def P11207136498213075632.Spec : Prop :=
  ∀ n, (P11207136498213075632.a n : ℤ) = A206547 (n + 1)

end A206547

/-! ## A206547.P6931291069159006761

`∩[A047268(n+1), A162699(n+1)]`
-/

namespace A206547.P6931291069159006761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206547.P6931291069159006761

namespace A206547

/-- `∩[A047268(n+1), A162699(n+1)]` -/
def P6931291069159006761.Spec : Prop :=
  ∀ n, (P6931291069159006761.a n : ℤ) = A206547 (n + 1)

end A206547

/-! ## A206547.P10624583844775270873

`∩[A108118(n+1), A162699(n+1)]`
-/

namespace A206547.P10624583844775270873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206547.P10624583844775270873

namespace A206547

/-- `∩[A108118(n+1), A162699(n+1)]` -/
def P10624583844775270873.Spec : Prop :=
  ∀ n, (P10624583844775270873.a n : ℤ) = A206547 (n + 1)

end A206547

/-!
# A206549: Nontrivial solution of x^2 == 1 (Modd p), where p is the n-th prime of the form 4*k+1, for odd restricted residue classes Modd p.

The programs for A206549, there is no canonical definition to state claims against.
-/

/-! ## A206549.P9087308825684500134

`2*A212353(n+1)+1`
-/

namespace A206549.P9087308825684500134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212353 (n + 1) + 1

end

end A206549.P9087308825684500134

/-! ## A206549.P9458189068346560800

`A070669(2*p?[4*n+1])`
-/

namespace A206549.P9458189068346560800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A206549.P9458189068346560800

/-! ## A206549.P9408507030790094779

`p?[4*n+1]-A209874(n+1)`
-/

namespace A206549.P9408507030790094779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A209874 (n + 1)

end

end A206549.P9408507030790094779

/-! ## A206549.P8486812378745512595

`A070669(2*or(1, p?[4*n-7]-1))`
-/

namespace A206549.P8486812378745512595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (2 * Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat

end

end A206549.P8486812378745512595

/-! ## A206549.P4979846546333246050

`A070669(2*xor(1, p?[4*n-7]-1))`
-/

namespace A206549.P4979846546333246050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (2 * Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat

end

end A206549.P4979846546333246050

/-! ## A206549.P16990935491566183810

`A005408(A212353(n+1))`
-/

namespace A206549.P16990935491566183810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A212353 (n + 1)).toNat

end

end A206549.P16990935491566183810

/-! ## A206549.P15552871834482486649

`A004273(A212353(n+1)+1)`
-/

namespace A206549.P15552871834482486649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A212353 (n + 1) + 1).toNat

end

end A206549.P15552871834482486649

/-! ## A206549.P3682251174393738632

`A070669(2*A002144(n+1))`
-/

namespace A206549.P3682251174393738632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (2 * A002144 (n + 1)).toNat

end

end A206549.P3682251174393738632

/-! ## A206549.P13932170227827333075

`A004442(2*A212353(n+1))`
-/

namespace A206549.P13932170227827333075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A212353 (n + 1)).toNat

end

end A206549.P13932170227827333075

/-!
# A206551: Moduli n for which the multiplicative group Modd n is cyclic.

The programs for A206551, there is no canonical definition to state claims against.
-/

/-! ## A206551.P17490872034464548891

`comp[A206552(n+1)-1]+1`
-/

namespace A206551.P17490872034464548891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206552 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206551.P17490872034464548891

/-! ## A206551.P305761738063521246

`lt[A034380(2*(n+1)), 3]+1`
-/

namespace A206551.P305761738063521246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A206551.P305761738063521246

/-! ## A206551.P1240231927175182271

`lt[n, 4*A002322(n+1)]+1`
-/

namespace A206551.P1240231927175182271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A206551.P1240231927175182271

/-! ## A206551.P6385425724145996267

`(lt[A034380(n+1), gcd(2, n+1)²]+1)/2`
-/

namespace A206551.P6385425724145996267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) / 2

end

end A206551.P6385425724145996267

/-! ## A206551.P1531181705913633834

`lt[A002265(n), A002322(n+1)]+1`
-/

namespace A206551.P1531181705913633834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206551.P1531181705913633834

/-! ## A206551.P4273933769393672756

`comp[lt[2, A034380(A004277(n))]-1]+1`
-/

namespace A206551.P4273933769393672756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206551.P4273933769393672756

/-! ## A206551.P18402632025878722841

`record[(n+1)%A008574(A011773(n+1))]`
-/

namespace A206551.P18402632025878722841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A008574 (A011773 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206551.P18402632025878722841

/-! ## A206551.P7376108753889428974

`A110654(lt[A034380(n+1), A010684(n)])`
-/

namespace A206551.P7376108753889428974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A206551.P7376108753889428974

/-! ## A206551.P11085642523569572950

`record[A032742(n+1)/A000010(A034380(n+1))]`
-/

namespace A206551.P11085642523569572950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A000010 (A034380 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206551.P11085642523569572950

/-! ## A206551.P9627788781453208553

`record[A178804(n+1)/A025566(A034380(n+1))]`
-/

namespace A206551.P9627788781453208553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178804 (n + 1) : ℚ) / (A025566 (A034380 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206551.P9627788781453208553

/-!
# A206552: Moduli n for which the multiplicative group Modd n is non-cyclic (acyclic).

The programs for A206552, there is no canonical definition to state claims against.
-/

/-! ## A206552.P679365463588401196

`lt[2, A034380(2*(n+1))]+1`
-/

namespace A206552.P679365463588401196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A206552.P679365463588401196

/-! ## A206552.P6852754977104856977

`lt[4*A002322(n+1), n]+1`
-/

namespace A206552.P6852754977104856977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002322 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A206552.P6852754977104856977

/-! ## A206552.P5870228981533530095

`lt[2, A034380(gcd(n, C(2, n))+n)]`
-/

namespace A206552.P5870228981533530095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (Nat.gcd n (Nat.choose 2 n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A206552.P5870228981533530095

/-! ## A206552.P2638596690494892272

`lt[4, n/A002322(abs(1-n)+1)]`
-/

namespace A206552.P2638596690494892272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A002322 (|1 - (n : ℤ)| + 1).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A206552.P2638596690494892272

/-! ## A206552.P9624542243158401024

`lt[4*A011773(n+1), n+1]+1`
-/

namespace A206552.P9624542243158401024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A011773 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A206552.P9624542243158401024

/-! ## A206552.P14809558200667884072

`lt[2, A034380(A004277(n))]`
-/

namespace A206552.P14809558200667884072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A206552.P14809558200667884072

/-! ## A206552.P18406703854666151294

`lt[2, A034380(A028310(2*n))]`
-/

namespace A206552.P18406703854666151294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A206552.P18406703854666151294

/-! ## A206552.P3659125782096579108

`lt[2, A034380(A028310(n)+n)]`
-/

namespace A206552.P3659125782096579108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A206552.P3659125782096579108

/-! ## A206552.P41428931917694012

`A061767(lt[2, A034380(2*(n+1))])`
-/

namespace A206552.P41428931917694012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A206552.P41428931917694012

/-! ## A206552.P5442156588118175469

`A113484(lt[2, A034380(2*(n+1))])`
-/

namespace A206552.P5442156588118175469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A206552.P5442156588118175469

/-!
# A206554: Numbers n such that 2^n + 41*2^floor((n+1)/2) - 1 is prime.

The programs for A206554, there is no canonical definition to state claims against.
-/

/-! ## A206554.P2443285013729705687

`record[and(A001844(n), A057937(n+1))]`
-/

namespace A206554.P2443285013729705687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A057937 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206554.P2443285013729705687

/-! ## A206554.P4828887519208774891

`record[and(A048654(n), A087092(n+1))]`
-/

namespace A206554.P4828887519208774891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048654 n) (A087092 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206554.P4828887519208774891

/-! ## A206554.P7113859900465285089

`eq[A291304(n+2), A352226(n+1)]`
-/

namespace A206554.P7113859900465285089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291304 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206554.P7113859900465285089

/-! ## A206554.P3062813359348209353

`record[and(A005940(n+1), A087294(n+1))]`
-/

namespace A206554.P3062813359348209353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005940 (n + 1)) (A087294 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206554.P3062813359348209353

/-! ## A206554.P4927703131519023638

`record[and(A057937(n+1), A057942(n+1))]`
-/

namespace A206554.P4927703131519023638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057937 (n + 1)) (A057942 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206554.P4927703131519023638

/-!
# A206555: Number of 5's in the last section of the set of partitions of n.

The programs for A206555, there is no canonical definition to state claims against.
-/

/-! ## A206555.P8630677458958343543

`A240063(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A206555.P8630677458958343543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A240063 (n - 1) - a (n - 1)

end

end A206555.P8630677458958343543

/-! ## A206555.P15622293325668453999

`A240065(n)-A240063(n+1)`
-/

namespace A206555.P15622293325668453999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240065 n - A240063 (n + 1)

end

end A206555.P15622293325668453999

/-! ## A206555.P9459411439634377228

`Δ[A024789(A028310(n))]`
-/

namespace A206555.P9459411439634377228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206555.P9459411439634377228

/-! ## A206555.P15424167924213809912

`Δ[A024789(A065033(2*n))]`
-/

namespace A206555.P15424167924213809912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206555.P15424167924213809912

/-! ## A206555.P18080818000496832254

`Δ[A024789(A000007(n)+n)]`
-/

namespace A206555.P18080818000496832254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206555.P18080818000496832254

/-! ## A206555.P12487296488294724690

`Δ[A024789(A004277(n)-n)]`
-/

namespace A206555.P12487296488294724690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206555.P12487296488294724690

/-! ## A206555.P3592939112672485257

`Δ[A024789(gcd(n, A008706(n)))]`
-/

namespace A206555.P3592939112672485257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206555.P3592939112672485257

/-! ## A206555.P11995468465036049127

`Δ[A024789(A004525(A004277(n)))]`
-/

namespace A206555.P11995468465036049127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206555.P11995468465036049127

/-! ## A206555.P9718194913547060375

`Δ[A024789(A008619(A004273(n)))]`
-/

namespace A206555.P9718194913547060375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206555.P9718194913547060375

/-! ## A206555.P6032956630685155337

`A024789(n+1)-A024789(A028310(n))`
-/

namespace A206555.P6032956630685155337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 1) - A024789 (A028310 n).toNat

end

end A206555.P6032956630685155337

/-! ## A206555.P674277784222558182

`A024789(n+1)-A024789(A065033(2*n))`
-/

namespace A206555.P674277784222558182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 1) - A024789 (A065033 (2 * n)).toNat

end

end A206555.P674277784222558182

/-! ## A206555.P8036671240084090045

`A024789(n+1)-A024789(A000007(n)+n)`
-/

namespace A206555.P8036671240084090045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 1) - A024789 (A000007 n + (n : ℤ)).toNat

end

end A206555.P8036671240084090045

/-! ## A206555.P16462032760924233226

`A024789(n+1)-A024789(A004277(n)-n)`
-/

namespace A206555.P16462032760924233226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 1) - A024789 (A004277 n - (n : ℤ)).toNat

end

end A206555.P16462032760924233226

/-! ## A206555.P14089956348828740487

`A240063(n)-Δ[A024789(n+1)]`
-/

namespace A206555.P14089956348828740487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240063 n - (f1 (n + 1) - f1 n)

end

end A206555.P14089956348828740487

/-! ## A206555.P3684329631246682828

`Δ[A024789(A007318(A000124(n)))]`
-/

namespace A206555.P3684329631246682828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206555.P3684329631246682828

/-! ## A206555.P12808676217158353166

`Δ[A024789(A134478(A000217(n)))]`
-/

namespace A206555.P12808676217158353166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (A134478 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206555.P12808676217158353166

/-!
# A206556: Number of 6's in the last section of the set of partitions of n.

The programs for A206556, there is no canonical definition to state claims against.
-/

/-! ## A206556.P14727168294541900103

`Δ[A024790(A028310(n))]`
-/

namespace A206556.P14727168294541900103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024790 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206556.P14727168294541900103

/-! ## A206556.P6710572567282366474

`Δ[A024790(A123108(2*n))]`
-/

namespace A206556.P6710572567282366474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024790 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206556.P6710572567282366474

/-! ## A206556.P12052370895948742167

`A024790(n+1)-A024790(A028310(n))`
-/

namespace A206556.P12052370895948742167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024790 (n + 1) - A024790 (A028310 n).toNat

end

end A206556.P12052370895948742167

/-! ## A206556.P5179329132948100698

`A024790(n+1)-A024790(A065033(2*n))`
-/

namespace A206556.P5179329132948100698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024790 (n + 1) - A024790 (A065033 (2 * n)).toNat

end

end A206556.P5179329132948100698

/-! ## A206556.P13257371215122847378

`A024790(n+1)-A024790(A233583(n+1))`
-/

namespace A206556.P13257371215122847378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024790 (n + 1) - A024790 (A233583 (n + 1)).toNat

end

end A206556.P13257371215122847378

/-!
# A206557: Number of 7's in the last section of the set of partitions of n.

The programs for A206557, there is no canonical definition to state claims against.
-/

/-! ## A206557.P1654543521776690173

`Δ[A024791(abs(1-n)+1)]`
-/

namespace A206557.P1654543521776690173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024791 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206557.P1654543521776690173

/-! ## A206557.P9359869155774012460

`abs(Δ[A024791(A028310(n))])`
-/

namespace A206557.P9359869155774012460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024791 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A206557.P9359869155774012460

/-! ## A206557.P2601338020146127467

`A024791(n+1)-A024791(A028310(n))`
-/

namespace A206557.P2601338020146127467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024791 (n + 1) - A024791 (A028310 n).toNat

end

end A206557.P2601338020146127467

/-! ## A206557.P18039530635079796039

`A024791(n+1)-A024791(A065033(2*n))`
-/

namespace A206557.P18039530635079796039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024791 (n + 1) - A024791 (A065033 (2 * n)).toNat

end

end A206557.P18039530635079796039

/-! ## A206557.P4730380207479127441

`A024791(n+1)-A024791(A233583(n+1))`
-/

namespace A206557.P4730380207479127441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024791 (n + 1) - A024791 (A233583 (n + 1)).toNat

end

end A206557.P4730380207479127441

/-!
# A206558: Number of 8's in the last section of the set of partitions of n.

The programs for A206558, there is no canonical definition to state claims against.
-/

/-! ## A206558.P7720501997173279924

`Δ[A024792(floor(acot(n)+n))]`
-/

namespace A206558.P7720501997173279924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206558.P7720501997173279924

/-! ## A206558.P1841847820231135179

`Δ[A024792(A028310(n))]`
-/

namespace A206558.P1841847820231135179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206558.P1841847820231135179

/-! ## A206558.P11792284557184414190

`Δ[A024792(A065033(2*n))]`
-/

namespace A206558.P11792284557184414190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206558.P11792284557184414190

/-! ## A206558.P5204621930518890407

`Δ[A024792(A123108(2*n))]`
-/

namespace A206558.P5204621930518890407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206558.P5204621930518890407

/-! ## A206558.P3374008067392969792

`Δ[A024792(A000007(n)+n)]`
-/

namespace A206558.P3374008067392969792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206558.P3374008067392969792

/-! ## A206558.P17933718311325506361

`A024792(n+1)-A024792(A028310(n))`
-/

namespace A206558.P17933718311325506361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024792 (n + 1) - A024792 (A028310 n).toNat

end

end A206558.P17933718311325506361

/-!
# A206559: Number of 9's in the last section of the set of partitions of n.

The programs for A206559, there is no canonical definition to state claims against.
-/

/-! ## A206559.P455927303661020997

`Δ[A024793(n^floor(atan(n)))]`
-/

namespace A206559.P455927303661020997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P455927303661020997

/-! ## A206559.P17027772810219744647

`Δ[A024793(A028310(n))]`
-/

namespace A206559.P17027772810219744647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P17027772810219744647

/-! ## A206559.P18420234748566643256

`Δ[A024793(abs(A274922(n)))]`
-/

namespace A206559.P18420234748566643256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 |A274922 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P18420234748566643256

/-! ## A206559.P13581661658492324458

`Δ[A024793(A065033(2*n))]`
-/

namespace A206559.P13581661658492324458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P13581661658492324458

/-! ## A206559.P10005889750934044390

`Δ[A024793(A123108(2*n))]`
-/

namespace A206559.P10005889750934044390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P10005889750934044390

/-! ## A206559.P6089579576757302391

`Δ[A024793(A004277(n)-n)]`
-/

namespace A206559.P6089579576757302391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P6089579576757302391

/-! ## A206559.P10835312339072508690

`Δ[A024793(A274922(2*n)-n)]`
-/

namespace A206559.P10835312339072508690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A274922 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P10835312339072508690

/-! ## A206559.P1126224110082869137

`Δ[A024793(or(n, A322586(n+1)))]`
-/

namespace A206559.P1126224110082869137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (Int.lor (n : ℤ) (A322586 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P1126224110082869137

/-! ## A206559.P3822294754101028386

`Δ[A024793(A322586(2*n+1)+n)]`
-/

namespace A206559.P3822294754101028386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A322586 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P3822294754101028386

/-! ## A206559.P16442277440813903956

`A024793(n+1)-A024793(n^floor(atan(n)))`
-/

namespace A206559.P16442277440813903956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 1) - A024793 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A206559.P16442277440813903956

/-! ## A206559.P18396134222601418919

`Δ[A024793(A004525(A004277(n)))]`
-/

namespace A206559.P18396134222601418919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P18396134222601418919

/-! ## A206559.P17972955780672266628

`Δ[A024793(A008619(A004273(n)))]`
-/

namespace A206559.P17972955780672266628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P17972955780672266628

/-! ## A206559.P1087715305875732954

`A024793(n+1)-A024793(A028310(n))`
-/

namespace A206559.P1087715305875732954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 1) - A024793 (A028310 n).toNat

end

end A206559.P1087715305875732954

/-! ## A206559.P4409690385527232730

`A024793(n+1)-A024793(abs(A274922(n)))`
-/

namespace A206559.P4409690385527232730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 1) - A024793 |A274922 n|.toNat

end

end A206559.P4409690385527232730

/-! ## A206559.P15768854511159939682

`A024793(n+1)-A024793(A065033(2*n))`
-/

namespace A206559.P15768854511159939682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 1) - A024793 (A065033 (2 * n)).toNat

end

end A206559.P15768854511159939682

/-! ## A206559.P8686001051133464089

`A024793(n+1)-A024793(A004277(n)-n)`
-/

namespace A206559.P8686001051133464089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 1) - A024793 (A004277 n - (n : ℤ)).toNat

end

end A206559.P8686001051133464089

/-! ## A206559.P13685588008186719687

`A024793(n+1)-A024793(or(n, A322586(n+1)))`
-/

namespace A206559.P13685588008186719687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 1) - A024793 (Int.lor (n : ℤ) (A322586 (n + 1))).toNat

end

end A206559.P13685588008186719687

/-! ## A206559.P15714911749260545754

`A024793(n+1)-A024793(A233583(n+1))`
-/

namespace A206559.P15714911749260545754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 1) - A024793 (A233583 (n + 1)).toNat

end

end A206559.P15714911749260545754

/-! ## A206559.P1999100362872575699

`Δ[A024793(A233583(n+1))]`
-/

namespace A206559.P1999100362872575699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P1999100362872575699

/-! ## A206559.P10537203480075273419

`Δ[A024793(A000267(A002620(n)))]`
-/

namespace A206559.P10537203480075273419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (A000267 (A002620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206559.P10537203480075273419

/-!
# A206560: Number of 10's in the last section of the set of partitions of n.

The programs for A206560, there is no canonical definition to state claims against.
-/

/-! ## A206560.P11225757296003667951

`Δ[A024794(floor(acot(n)+n))]`
-/

namespace A206560.P11225757296003667951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024794 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206560.P11225757296003667951

/-! ## A206560.P8298812497284208710

`Δ[A024794(abs(1-n)+1)]`
-/

namespace A206560.P8298812497284208710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024794 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206560.P8298812497284208710

/-! ## A206560.P1115802746581841601

`A024794(n+1)-A024794(abs(1-n)+1)`
-/

namespace A206560.P1115802746581841601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024794 (n + 1) - A024794 (|1 - (n : ℤ)| + 1).toNat

end

end A206560.P1115802746581841601

/-! ## A206560.P8711405803501148818

`A097448(A024794(n+1))-A326589(n)`
-/

namespace A206560.P8711405803501148818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A024794 (n + 1)).toNat - A326589 n

end

end A206560.P8711405803501148818

/-!
# A206563: Triangle read by rows: T(n,k) = number of odd/even parts >= k in all partitions of n, if k is odd/even.

The programs for A206563, there is no canonical definition to state claims against.
-/

/-! ## A206563.P7255062788684968771

`A191228(A201922(n+1))+A066633(n+1)`
-/

namespace A206563.P7255062788684968771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A201922 (n + 1)).toNat + A066633 (n + 1)

end

end A206563.P7255062788684968771

/-! ## A206563.P5281238666583757686

`A288168(A066633(n+1))%A288152(2*n+1)`
-/

namespace A206563.P5281238666583757686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288168 (A066633 (n + 1)).toNat) (A288152 (2 * n + 1))

end

end A206563.P5281238666583757686

/-!
# A206564: Fibonacci sequence beginning 14, 13.

The programs for A206564, the canonical program `A206564.P9535093305750716082` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206564 has offset 1).

The definition of A206564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206564.P9535093305750716082

`a(n-1)+a(n-2)` with `a(0)=14, a(1)=13`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206564

/-- `a(n-1)+a(n-2)` -/
def P9535093305750716082.Spec : Prop :=
  ∀ n, (P9535093305750716082.a n : ℤ) = A206564 (n + 1)

theorem P9535093305750716082.correct : P9535093305750716082.Spec := by
  intro n
  simp only [A206564, Nat.add_sub_cancel]

end A206564

/-! ## A206564.P2894015100471149726

`A022346(n+1)+A000032(n)`
-/

namespace A206564.P2894015100471149726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (n + 1) + A000032 n

end

end A206564.P2894015100471149726

namespace A206564

/-- `A022346(n+1)+A000032(n)` -/
def P2894015100471149726.Spec : Prop :=
  ∀ n, P2894015100471149726.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P14703907952804646513

`A022345(n+1)+A013655(n)`
-/

namespace A206564.P14703907952804646513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (n + 1) + A013655 n

end

end A206564.P14703907952804646513

namespace A206564

/-- `A022345(n+1)+A013655(n)` -/
def P14703907952804646513.Spec : Prop :=
  ∀ n, P14703907952804646513.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P3712106462923817335

`A118658(n)+A022102(n+1)`
-/

namespace A206564.P3712106462923817335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022102 (n + 1)

end

end A206564.P3712106462923817335

namespace A206564

/-- `A118658(n)+A022102(n+1)` -/
def P3712106462923817335.Spec : Prop :=
  ∀ n, P3712106462923817335.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P16723775735384539468

`A152163(n)+A022103(n+1)`
-/

namespace A206564.P16723775735384539468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022103 (n + 1)

end

end A206564.P16723775735384539468

namespace A206564

/-- `A152163(n)+A022103(n+1)` -/
def P16723775735384539468.Spec : Prop :=
  ∀ n, P16723775735384539468.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P380985094493393435

`A206609(n+1)+A000285(n)`
-/

namespace A206564.P380985094493393435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (n + 1) + A000285 n

end

end A206564.P380985094493393435

namespace A206564

/-- `A206609(n+1)+A000285(n)` -/
def P380985094493393435.Spec : Prop :=
  ∀ n, P380985094493393435.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P1938843253913100447

`A184959(n)+A022087(n+1)`
-/

namespace A206564.P1938843253913100447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + A022087 (n + 1)

end

end A206564.P1938843253913100447

namespace A206564

/-- `A184959(n)+A022087(n+1)` -/
def P1938843253913100447.Spec : Prop :=
  ∀ n, P1938843253913100447.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P7636684225564675858

`A206420(n+1)+A020701(n)`
-/

namespace A206564.P7636684225564675858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 1) + A020701 n

end

end A206564.P7636684225564675858

namespace A206564

/-- `A206420(n+1)+A020701(n)` -/
def P7636684225564675858.Spec : Prop :=
  ∀ n, P7636684225564675858.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P16669206292687220038

`A206423(n+1)+A022112(n)`
-/

namespace A206564.P16669206292687220038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) + A022112 n

end

end A206564.P16669206292687220038

namespace A206564

/-- `A206423(n+1)+A022112(n)` -/
def P16669206292687220038.Spec : Prop :=
  ∀ n, P16669206292687220038.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P4241302293526734025

`A206610(n+1)+A022095(n)`
-/

namespace A206564.P4241302293526734025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) + A022095 n

end

end A206564.P4241302293526734025

namespace A206564

/-- `A206610(n+1)+A022095(n)` -/
def P4241302293526734025.Spec : Prop :=
  ∀ n, P4241302293526734025.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P17690987686366080220

`A206611(n+1)+A022096(n)`
-/

namespace A206564.P17690987686366080220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) + A022096 n

end

end A206564.P17690987686366080220

namespace A206564

/-- `A206611(n+1)+A022096(n)` -/
def P17690987686366080220.Spec : Prop :=
  ∀ n, P17690987686366080220.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P8872415800595019493

`A206612(n+1)+A022097(n)`
-/

namespace A206564.P8872415800595019493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) + A022097 n

end

end A206564.P8872415800595019493

namespace A206564

/-- `A206612(n+1)+A022097(n)` -/
def P8872415800595019493.Spec : Prop :=
  ∀ n, P8872415800595019493.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P3626950502874935144

`A206641(n+1)+A022087(n)`
-/

namespace A206564.P3626950502874935144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) + A022087 n

end

end A206564.P3626950502874935144

namespace A206564

/-- `A206641(n+1)+A022087(n)` -/
def P3626950502874935144.Spec : Prop :=
  ∀ n, P3626950502874935144.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P9598110319485353550

`A212804(n)+A022347(n+1)`
-/

namespace A206564.P9598110319485353550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022347 (n + 1)

end

end A206564.P9598110319485353550

namespace A206564

/-- `A212804(n)+A022347(n+1)` -/
def P9598110319485353550.Spec : Prop :=
  ∀ n, P9598110319485353550.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P4974233063281214066

`A190996(n)+A078642(n+1)`
-/

namespace A206564.P4974233063281214066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A078642 (n + 1)

end

end A206564.P4974233063281214066

namespace A206564

/-- `A190996(n)+A078642(n+1)` -/
def P4974233063281214066.Spec : Prop :=
  ∀ n, P4974233063281214066.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P2318120958149283379

`A022348(n+1)-A000045(n)`
-/

namespace A206564.P2318120958149283379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 (n + 1) - A000045 n

end

end A206564.P2318120958149283379

namespace A206564

/-- `A022348(n+1)-A000045(n)` -/
def P2318120958149283379.Spec : Prop :=
  ∀ n, P2318120958149283379.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P5130751426273192731

`A022117(n+1)-A000285(n)`
-/

namespace A206564.P5130751426273192731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 (n + 1) - A000285 n

end

end A206564.P5130751426273192731

namespace A206564

/-- `A022117(n+1)-A000285(n)` -/
def P5130751426273192731.Spec : Prop :=
  ∀ n, P5130751426273192731.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P374147417186494497

`A022370(n+1)-A001060(n)`
-/

namespace A206564.P374147417186494497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022370 (n + 1) - A001060 n

end

end A206564.P374147417186494497

namespace A206564

/-- `A022370(n+1)-A001060(n)` -/
def P374147417186494497.Spec : Prop :=
  ∀ n, P374147417186494497.a n = A206564 (n + 1)

end A206564

/-! ## A206564.P9105343580226743421

`A022107(n+1)-A020701(n)`
-/

namespace A206564.P9105343580226743421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 (n + 1) - A020701 n

end

end A206564.P9105343580226743421

namespace A206564

/-- `A022107(n+1)-A020701(n)` -/
def P9105343580226743421.Spec : Prop :=
  ∀ n, P9105343580226743421.a n = A206564 (n + 1)

end A206564

/-!
# A206565: Expansion of 1/(1 - 37*x + x^2).

The programs for A206565, the canonical program `A206565.P8486145038807053244` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206565 has offset 0).

The definition of A206565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206565.P8486145038807053244

`37*a(n-1)-a(n-2)` with `a(0)=1, a(1)=37`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A206565

/-- `37*a(n-1)-a(n-2)` -/
def P8486145038807053244.Spec : Prop :=
  ∀ n, P8486145038807053244.a n = A206565 n

theorem P8486145038807053244.correct : P8486145038807053244.Spec := by
  intro n
  simp only [A206565]

end A206565

/-! ## A206565.P7513017034186346188

`(a(n-1)²-1)/a(n-2)` with `a(0)=1, a(1)=37`
-/

namespace A206565.P7513017034186346188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 37] fun n a =>
  (a (n - 1) ^ 2 - 1) / a (n - 2)

end

end A206565.P7513017034186346188

namespace A206565

/-- `(a(n-1)²-1)/a(n-2)` -/
def P7513017034186346188.Spec : Prop :=
  ∀ n, P7513017034186346188.a n = (A206565 n : ℚ)

end A206565

/-!
# A206566: Triangular array: T(i,j) = number of terms common to the binary expansions of i+1 and j, for j=1,2,3,...,i; i=1,2,3,...

The programs for A206566, there is no canonical definition to state claims against.
-/

/-! ## A206566.P18440308626316859219

`A000120(and(1-C(∑[char[∑[n]]], 2)+n, comp[∑[n]]-n))`
-/

namespace A206566.P18440308626316859219
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
  A000120 (Int.land (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A206566.P18440308626316859219

/-! ## A206566.P15664428579118720405

`A000120(and(comp[∑[n]]-n, A002260(n+1)))`
-/

namespace A206566.P15664428579118720405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A002260 (n + 1))).toNat

end

end A206566.P15664428579118720405

/-! ## A206566.P14967210030954508142

`A000120(and(A002262(n)+1, comp[∑[n]]-n))`
-/

namespace A206566.P14967210030954508142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A002262 n + 1) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A206566.P14967210030954508142

/-! ## A206566.P10547861171012462070

`A000120(and(A003057(n+2), A193738(n)))`
-/

namespace A206566.P10547861171012462070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A003057 (n + 2)) (A193738 n)).toNat

end

end A206566.P10547861171012462070

/-! ## A206566.P18003204875531695588

`A086342(and(A003057(n+2), A193738(n)))`
-/

namespace A206566.P18003204875531695588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (Int.land (A003057 (n + 2)) (A193738 n)).toNat

end

end A206566.P18003204875531695588

/-! ## A206566.P15891303931746729015

`A274036(and(A003057(n+2), A193738(n)))`
-/

namespace A206566.P15891303931746729015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (Int.land (A003057 (n + 2)) (A193738 n)).toNat

end

end A206566.P15891303931746729015

/-! ## A206566.P3138499212719643113

`A000120(and(A002260(n+1), A003057(n+2)))`
-/

namespace A206566.P3138499212719643113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A002260 (n + 1)) (A003057 (n + 2))).toNat

end

end A206566.P3138499212719643113

/-! ## A206566.P15836185048055097303

`A086342(and(A002260(n+1), A003057(n+2)))`
-/

namespace A206566.P15836185048055097303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (Int.land (A002260 (n + 1)) (A003057 (n + 2))).toNat

end

end A206566.P15836185048055097303

/-! ## A206566.P11342306682313793824

`A274036(and(A002260(n+1), A003057(n+2)))`
-/

namespace A206566.P11342306682313793824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (Int.land (A002260 (n + 1)) (A003057 (n + 2))).toNat

end

end A206566.P11342306682313793824

/-! ## A206566.P11882181817505452307

`A000120(and(A003057(n+2), A097285(2*n+1)))`
-/

namespace A206566.P11882181817505452307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A003057 (n + 2)) (A097285 (2 * n + 1))).toNat

end

end A206566.P11882181817505452307

/-!
# A206567: S(m,n) = (number of nonzero terms common to the base 3 expansions of m and n), a symmetric matrix read by antidiagonals.

The programs for A206567, there is no canonical definition to state claims against.
-/

/-! ## A206567.P14021190692273814036

`A187080(A039913(n))%A180313(n+1)`
-/

namespace A206567.P14021190692273814036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187080 (A039913 n).toNat) (A180313 (n + 1))

end

end A206567.P14021190692273814036

/-! ## A206567.P14138955075299148983

`A328003(A280544(n))%2`
-/

namespace A206567.P14138955075299148983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328003 (A280544 n).toNat) 2

end

end A206567.P14138955075299148983

/-! ## A206567.P10059537033734110011

`A056558(A129600(n))^n²`
-/

namespace A206567.P10059537033734110011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (A129600 n).toNat ^ n ^ 2

end

end A206567.P10059537033734110011

/-! ## A206567.P4010170714840692925

`A287234(A188910(n+1)/2)`
-/

namespace A206567.P4010170714840692925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (SequenceMachineLib.roundAway ((A188910 (n + 1) : ℚ) / 2)).toNat

end

end A206567.P4010170714840692925

/-! ## A206567.P3643142446805956316

`A287234(A189111(n+1)/2)`
-/

namespace A206567.P3643142446805956316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (SequenceMachineLib.roundAway ((A189111 (n + 1) : ℚ) / 2)).toNat

end

end A206567.P3643142446805956316

/-!
# A206569: Number of n X n 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206569, there is no canonical definition to state claims against.
-/

/-! ## A206569.P4814092301349557154

`A206577((n+1)²+n²)`
-/

namespace A206569.P4814092301349557154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 ((n + 1) ^ 2 + n ^ 2)

end

end A206569.P4814092301349557154

/-!
# A206570: Number of n X 1 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206570, there is no canonical definition to state claims against.
-/

/-! ## A206570.P18341270073636070339

`sqrt(A206571(n+1))`
-/

namespace A206570.P18341270073636070339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206571 (n + 1) : ℝ)

end

end A206570.P18341270073636070339

/-! ## A206570.P9745861988530233154

`root(A206571(n+1), 2%A206577(n+1))`
-/

namespace A206570.P9745861988530233154
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206571 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A206577 (n + 1)) : ℝ))

end

end A206570.P9745861988530233154

/-! ## A206570.P11662234211216068457

`A207057(∑[n]+1)`
-/

namespace A206570.P11662234211216068457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207057 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206570.P11662234211216068457

/-! ## A206570.P4758113573507488108

`record[A010054(n)*A207057(n+1)]`
-/

namespace A206570.P4758113573507488108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A207057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206570.P4758113573507488108

/-! ## A206570.P15163487100495341655

`A206577(∑[n]+1)`
-/

namespace A206570.P15163487100495341655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206570.P15163487100495341655

/-!
# A206571: Number of nX2 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206571, there is no canonical definition to state claims against.
-/

/-! ## A206571.P17547345086839296230

`A206570(n+1)²`
-/

namespace A206571.P17547345086839296230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206570 (n + 1) ^ 2

end

end A206571.P17547345086839296230

/-! ## A206571.P16319721735002944641

`A206570(n+1)^A020639(6*(n+1))`
-/

namespace A206571.P16319721735002944641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206570 (n + 1) : ℚ) ^ (A020639 (6 * (n + 1)) : ℤ)

end

end A206571.P16319721735002944641

/-! ## A206571.P17252267008138145078

`A206570(n+1)^A000005(A014442(n+1))`
-/

namespace A206571.P17252267008138145078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206570 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A206571.P17252267008138145078

/-! ## A206571.P11059033872898941518

`A206570(n+1)^A000005(A206581(n+1))`
-/

namespace A206571.P11059033872898941518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206570 (n + 1) : ℚ) ^ (A000005 (A206581 (n + 1)).toNat : ℤ)

end

end A206571.P11059033872898941518

/-! ## A206571.P8226961495429429790

`A206570(n+1)^A000005(A335331(n+1))`
-/

namespace A206571.P8226961495429429790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206570 (n + 1) : ℚ) ^ (A000005 (A335331 (n + 1)).toNat : ℤ)

end

end A206571.P8226961495429429790

/-!
# A206572: Number of nX3 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206572, there is no canonical definition to state claims against.
-/

/-! ## A206572.P16443029035429374311

`A206577(∑[n+2]+4)`
-/

namespace A206572.P16443029035429374311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206572.P16443029035429374311

/-! ## A206572.P6998587319614479324

`A206577(A167614(n+1))*A238015(n)`
-/

namespace A206572.P6998587319614479324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A167614 (n + 1)).toNat * A238015 n

end

end A206572.P6998587319614479324

/-! ## A206572.P7225056866045178748

`or(A000007(n), A206577(A167614(n+1)))`
-/

namespace A206572.P7225056866045178748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206577 (A167614 (n + 1)).toNat)

end

end A206572.P7225056866045178748

/-! ## A206572.P10569652970556761565

`or(A025458(n), A206577(A167614(n+1)))`
-/

namespace A206572.P10569652970556761565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025458 n) (A206577 (A167614 (n + 1)).toNat)

end

end A206572.P10569652970556761565

/-! ## A206572.P12166478719341384569

`A283666(n+1)+A206577(A167614(n+1))`
-/

namespace A206572.P12166478719341384569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (n + 1) + A206577 (A167614 (n + 1)).toNat

end

end A206572.P12166478719341384569

/-!
# A206573: Number of nX4 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206573, there is no canonical definition to state claims against.
-/

/-! ## A206573.P17964046727032304463

`A206577(A141214(n)+7)`
-/

namespace A206573.P17964046727032304463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A141214 n + 7).toNat

end

end A206573.P17964046727032304463

/-! ## A206573.P8603554002301024011

`A206577(A052905(n)+9)`
-/

namespace A206573.P8603554002301024011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A052905 n + 9).toNat

end

end A206573.P8603554002301024011

/-! ## A206573.P6336727360004328381

`A206577(A055999(n)+10)`
-/

namespace A206573.P6336727360004328381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A055999 n + 10).toNat

end

end A206573.P6336727360004328381

/-! ## A206573.P4144679052245929718

`A206577(A167614(n+2)+1)`
-/

namespace A206573.P4144679052245929718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A167614 (n + 2) + 1).toNat

end

end A206573.P4144679052245929718

/-! ## A206573.P5262024210954888392

`A206577(∑[n+4]+3)`
-/

namespace A206573.P5262024210954888392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A206573.P5262024210954888392

/-!
# A206574: Number of nX5 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206574, there is no canonical definition to state claims against.
-/

/-! ## A206574.P9814906159220714340

`A206577(A374005(n+1))`
-/

namespace A206574.P9814906159220714340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A374005 (n + 1)).toNat

end

end A206574.P9814906159220714340

/-! ## A206574.P4503183937154739142

`A206577(A077169(n+5))`
-/

namespace A206574.P4503183937154739142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A077169 (n + 5)).toNat

end

end A206574.P4503183937154739142

/-! ## A206574.P18140170537614961668

`A206577(eq[2, A092921(n)])`
-/

namespace A206574.P18140170537614961668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206574.P18140170537614961668

/-! ## A206574.P10203000281844299602

`A206577(eq[4, A193592(n)])`
-/

namespace A206574.P10203000281844299602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206574.P10203000281844299602

/-!
# A206575: 

The programs for A206575, there is no canonical definition to state claims against.
-/

/-! ## A206575.P12474797419412298885

`A206577(A167499(n+4)+1)`
-/

namespace A206575.P12474797419412298885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A167499 (n + 4) + 1).toNat

end

end A206575.P12474797419412298885

/-! ## A206575.P15438904642491693798

`A206577(A034856(n+4)+8)`
-/

namespace A206575.P15438904642491693798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A034856 (n + 4) + 8).toNat

end

end A206575.P15438904642491693798

/-! ## A206575.P5428023045314973160

`A206577(A052905(n+3))`
-/

namespace A206575.P5428023045314973160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206577 (A052905 (n + 3)).toNat

end

end A206575.P5428023045314973160

/-!
# A206577: T(n,k)=Number of nXk 0..3 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206577, there is no canonical definition to state claims against.
-/

/-! ## A206577.P2889315744844516795

`A206967(n+1)-A020987(A110148(n+1))`
-/

namespace A206577.P2889315744844516795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (n + 1) - A020987 (A110148 (n + 1)).toNat

end

end A206577.P2889315744844516795

/-! ## A206577.P7391654078678759224

`A206967(n+1)-A010054(A207050(n+1))`
-/

namespace A206577.P7391654078678759224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (n + 1) - A010054 (A207050 (n + 1)).toNat

end

end A206577.P7391654078678759224

/-! ## A206577.P8591857183894246095

`A206967(n+1)-A101605(A000051(n))`
-/

namespace A206577.P8591857183894246095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (n + 1) - A101605 (A000051 n).toNat

end

end A206577.P8591857183894246095

/-! ## A206577.P5671867796292514944

`A206967(n+1)-A206499(A000930(n))`
-/

namespace A206577.P5671867796292514944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (n + 1) - A206499 (A000930 n).toNat

end

end A206577.P5671867796292514944

/-! ## A206577.P13113280196871776342

`A206967(n+1)-A025458(A001676(n+1))`
-/

namespace A206577.P13113280196871776342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (n + 1) - A025458 (A001676 (n + 1)).toNat

end

end A206577.P13113280196871776342

/-!
# A206579: Numbers k such that the periodic part of the continued fraction of sqrt(k) has more ones than any smaller k.

The programs for A206579, there is no canonical definition to state claims against.
-/

/-! ## A206579.P5601206689138601596

`A206578(A206580(n+1))`
-/

namespace A206579.P5601206689138601596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206578 (A206580 (n + 1)).toNat

end

end A206579.P5601206689138601596

/-! ## A206579.P13596681655283719597

`A206578(record[A099725(n+1)])`
-/

namespace A206579.P13596681655283719597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A206579.P13596681655283719597

/-! ## A206579.P14432579841470047614

`A003056(A074664(n+1)*A306466(3*(n+1)))`
-/

namespace A206579.P14432579841470047614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A074664 (n + 1) * A306466 (3 * (n + 1))).toNat

end

end A206579.P14432579841470047614

/-!
# A206581: Odd primes p such that p+1 is a prime times a power of two.

The programs for A206581, the canonical program `A206581.P6744461879614919973` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206581 has offset 1).

The definition of A206581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206581.P6744461879614919973

`p?[A100368(n+1)-1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206581

/-- `p?[A100368(n+1)-1]` -/
def P6744461879614919973.Spec : Prop :=
  ∀ n, P6744461879614919973.a n = A206581 (n + 1)

theorem P6744461879614919973.correct : P6744461879614919973.Spec := by
  intro n
  simp only [A206581, Nat.add_sub_cancel]

end A206581

/-! ## A206581.P12292289880056242971

`p?[n*A353671(n+1)]`
-/

namespace A206581.P12292289880056242971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206581.P12292289880056242971

namespace A206581

/-- `p?[n*A353671(n+1)]` -/
def P12292289880056242971.Spec : Prop :=
  ∀ n, P12292289880056242971.a n = A206581 (n + 1)

end A206581

/-! ## A206581.P4880381610772612023

`p?[2*A038550(n+1)-1]`
-/

namespace A206581.P4880381610772612023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038550 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206581.P4880381610772612023

namespace A206581

/-- `p?[2*A038550(n+1)-1]` -/
def P4880381610772612023.Spec : Prop :=
  ∀ n, P4880381610772612023.a n = A206581 (n + 1)

end A206581

/-! ## A206581.P5090230953956240959

`record[A006530(A100368(n+1)-1)]`
-/

namespace A206581.P5090230953956240959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100368 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206581.P5090230953956240959

namespace A206581

/-- `record[A006530(A100368(n+1)-1)]` -/
def P5090230953956240959.Spec : Prop :=
  ∀ n, P5090230953956240959.a n = A206581 (n + 1)

end A206581

/-! ## A206581.P8766187248311280802

`∩[A063479(n+1), A192862(n+1)]`
-/

namespace A206581.P8766187248311280802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206581.P8766187248311280802

namespace A206581

/-- `∩[A063479(n+1), A192862(n+1)]` -/
def P8766187248311280802.Spec : Prop :=
  ∀ n, (P8766187248311280802.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P395538987828077736

`∩[A138837(n+1), A192868(n+1)]`
-/

namespace A206581.P395538987828077736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206581.P395538987828077736

namespace A206581

/-- `∩[A138837(n+1), A192868(n+1)]` -/
def P395538987828077736.Spec : Prop :=
  ∀ n, (P395538987828077736.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P13682427665111147264

`p?[n*(A340371(n+1)-A340375(n))]`
-/

namespace A206581.P13682427665111147264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A340371 (n + 1) - A340375 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206581.P13682427665111147264

namespace A206581

/-- `p?[n*(A340371(n+1)-A340375(n))]` -/
def P13682427665111147264.Spec : Prop :=
  ∀ n, P13682427665111147264.a n = A206581 (n + 1)

end A206581

/-! ## A206581.P17729251798138398241

`p?[A001222(A000265(n+1))*(2*n+1)]`
-/

namespace A206581.P17729251798138398241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (n + 1)).toNat * (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206581.P17729251798138398241

namespace A206581

/-- `p?[A001222(A000265(n+1))*(2*n+1)]` -/
def P17729251798138398241.Spec : Prop :=
  ∀ n, P17729251798138398241.a n = A206581 (n + 1)

end A206581

/-! ## A206581.P15122956629936188955

`p?[eq[5, A336156(n+1)]]`
-/

namespace A206581.P15122956629936188955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336156 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A206581.P15122956629936188955

namespace A206581

/-- `p?[eq[5, A336156(n+1)]]` -/
def P15122956629936188955.Spec : Prop :=
  ∀ n, (P15122956629936188955.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P6161535048020076766

`p?[lt[A000265(n+1)+1, A008472(n+1)]]`
-/

namespace A206581.P6161535048020076766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A206581.P6161535048020076766

namespace A206581

/-- `p?[lt[A000265(n+1)+1, A008472(n+1)]]` -/
def P6161535048020076766.Spec : Prop :=
  ∀ n, (P6161535048020076766.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P5045900909759584804

`p?[A273401(n+1)]`
-/

namespace A206581.P5045900909759584804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206581.P5045900909759584804

namespace A206581

/-- `p?[A273401(n+1)]` -/
def P5045900909759584804.Spec : Prop :=
  ∀ n, P5045900909759584804.a n = A206581 (n + 1)

end A206581

/-! ## A206581.P18435188602164199034

`record[A006530(A273401(n+2))]`
-/

namespace A206581.P18435188602164199034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A273401 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206581.P18435188602164199034

namespace A206581

/-- `record[A006530(A273401(n+2))]` -/
def P18435188602164199034.Spec : Prop :=
  ∀ n, P18435188602164199034.a n = A206581 (n + 1)

end A206581

/-! ## A206581.P2248967441238871075

`filter[A273401(n+1), A010051(#)]`
-/

namespace A206581.P2248967441238871075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A206581.P2248967441238871075

namespace A206581

/-- `filter[A273401(n+1), A010051(#)]` -/
def P2248967441238871075.Spec : Prop :=
  ∀ n, P2248967441238871075.a n = A206581 (n + 1)

end A206581

/-! ## A206581.P727936381239075762

`∩[A000040(n+1), A273401(n+1)]`
-/

namespace A206581.P727936381239075762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206581.P727936381239075762

namespace A206581

/-- `∩[A000040(n+1), A273401(n+1)]` -/
def P727936381239075762.Spec : Prop :=
  ∀ n, (P727936381239075762.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P9727096355062512420

`∩[A045344(n+1), A273401(n+1)]`
-/

namespace A206581.P9727096355062512420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206581.P9727096355062512420

namespace A206581

/-- `∩[A045344(n+1), A273401(n+1)]` -/
def P9727096355062512420.Spec : Prop :=
  ∀ n, (P9727096355062512420.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P3367807031725673663

`∩[A065091(n+1), A273401(n+1)]`
-/

namespace A206581.P3367807031725673663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206581.P3367807031725673663

namespace A206581

/-- `∩[A065091(n+1), A273401(n+1)]` -/
def P3367807031725673663.Spec : Prop :=
  ∀ n, (P3367807031725673663.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P6525494861417075425

`∩[A066542(n+1), A273401(n+1)]`
-/

namespace A206581.P6525494861417075425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206581.P6525494861417075425

namespace A206581

/-- `∩[A066542(n+1), A273401(n+1)]` -/
def P6525494861417075425.Spec : Prop :=
  ∀ n, (P6525494861417075425.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P12148514755096678020

`∩[A083249(n+1), A273401(n+1)]`
-/

namespace A206581.P12148514755096678020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206581.P12148514755096678020

namespace A206581

/-- `∩[A083249(n+1), A273401(n+1)]` -/
def P12148514755096678020.Spec : Prop :=
  ∀ n, (P12148514755096678020.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P11656225591576182974

`∩[A086983(n+1), A273401(n+1)]`
-/

namespace A206581.P11656225591576182974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206581.P11656225591576182974

namespace A206581

/-- `∩[A086983(n+1), A273401(n+1)]` -/
def P11656225591576182974.Spec : Prop :=
  ∀ n, (P11656225591576182974.a n : ℤ) = A206581 (n + 1)

end A206581

/-! ## A206581.P7726521115705089752

`∩[A138837(n+1), A273401(n+1)]`
-/

namespace A206581.P7726521115705089752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206581.P7726521115705089752

namespace A206581

/-- `∩[A138837(n+1), A273401(n+1)]` -/
def P7726521115705089752.Spec : Prop :=
  ∀ n, (P7726521115705089752.a n : ℤ) = A206581 (n + 1)

end A206581

/-!
# A206584: The least number s having exactly n fours in the continued fraction of sqrt(s).

The programs for A206584, there is no canonical definition to state claims against.
-/

/-! ## A206584.P6477917066275508364

`A008619(A238122(n)*A324317(2*(n+2)))`
-/

namespace A206584.P6477917066275508364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A238122 n * A324317 (2 * (n + 2))).toNat

end

end A206584.P6477917066275508364

/-!
# A206586: Numbers k such that the periodic part of the continued fraction of sqrt(k) has positive even length.

The programs for A206586, there is no canonical definition to state claims against.
-/

/-! ## A206586.P2681990310214696481

`eq[1, A068717(n+1)]+1`
-/

namespace A206586.P2681990310214696481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206586.P2681990310214696481

/-! ## A206586.P14108010931588295033

`comp[∪[A003814(n+1), n²]]`
-/

namespace A206586.P14108010931588295033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A206586.P14108010931588295033

/-! ## A206586.P7763936914995493411

`eq[2, A040001(A003285(n+1))]+1`
-/

namespace A206586.P7763936914995493411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A003285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206586.P7763936914995493411

/-! ## A206586.P7221028074982722448

`eq[2, A020639(A097853(n+1))]+1`
-/

namespace A206586.P7221028074982722448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A097853 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206586.P7221028074982722448

/-! ## A206586.P13506144339921462505

`eq[2, A040001(A097853(n+1)²)]+1`
-/

namespace A206586.P13506144339921462505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A097853 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206586.P13506144339921462505

/-! ## A206586.P12844994515011737966

`eq[6, A010123(A097853(n+1)²)]+1`
-/

namespace A206586.P12844994515011737966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (A097853 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206586.P12844994515011737966

/-! ## A206586.P143557241587231491

`eq[A065803(n+1), A068716(n+1)]+1`
-/

namespace A206586.P143557241587231491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A206586.P143557241587231491

/-! ## A206586.P13471012865339835484

`lt[A002349(A028310(n)), A341862(n)]`
-/

namespace A206586.P13471012865339835484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206586.P13471012865339835484

/-! ## A206586.P8231688395621343862

`eq[A000122(n), A068716(A065033(2*n))]`
-/

namespace A206586.P8231688395621343862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206586.P8231688395621343862

/-! ## A206586.P17903777459128946514

`eq[A000122(n), A068716(A123108(2*n))]`
-/

namespace A206586.P17903777459128946514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206586.P17903777459128946514

/-! ## A206586.P8807546895893524536

`eq[A000122(n), A068716(A000122(n)+n)]`
-/

namespace A206586.P8807546895893524536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (A000122 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206586.P8807546895893524536

/-! ## A206586.P5969908396762986084

`lt[A068716(n+1), A325937(A067280(n+1))]+1`
-/

namespace A206586.P5969908396762986084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A067280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A206586.P5969908396762986084

/-! ## A206586.P2297346623117202864

`filter[A206587(n+1), A049240(#)]`
-/

namespace A206586.P2297346623117202864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A206586.P2297346623117202864

/-! ## A206586.P9733382939951290609

`filter[A206587(n+1), A267635(#)]`
-/

namespace A206586.P9733382939951290609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A206586.P9733382939951290609

/-! ## A206586.P2923329305750706546

`∩[A000037(n+1), A206587(n+1)]`
-/

namespace A206586.P2923329305750706546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206586.P2923329305750706546

/-! ## A206586.P16905884902596142378

`eq[0, A000035(A097853(A233583(n+1)))]`
-/

namespace A206586.P16905884902596142378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A097853 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206586.P16905884902596142378

/-!
# A206587: Numbers k such that the periodic part of the continued fraction of sqrt(k) has even length.

The programs for A206587, there is no canonical definition to state claims against.
-/

/-! ## A206587.P13106366897876979184

`eq[0, A068716(n+1)]+1`
-/

namespace A206587.P13106366897876979184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206587.P13106366897876979184

/-! ## A206587.P12786578393669403376

`comp[A003814(n+1)-1]+1`
-/

namespace A206587.P12786578393669403376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206587.P12786578393669403376

/-! ## A206587.P1947789774629279109

`comp[A031396(n+2)-1]+1`
-/

namespace A206587.P1947789774629279109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206587.P1947789774629279109

/-! ## A206587.P11310652304353386353

`∪[(n+1)², A206586(n+1)]`
-/

namespace A206587.P11310652304353386353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206587.P11310652304353386353

/-! ## A206587.P5209232511910727973

`comp[n*A068716(A028310(n))]`
-/

namespace A206587.P5209232511910727973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068716 (A028310 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A206587.P5209232511910727973

/-! ## A206587.P6714595502472832656

`record[A033999(A003285(n+1))+n]`
-/

namespace A206587.P6714595502472832656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003285 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206587.P6714595502472832656

/-! ## A206587.P10490092332904189038

`comp[A031396(n+1)%A014255(n)]`
-/

namespace A206587.P10490092332904189038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031396 (n + 1)) (A014255 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A206587.P10490092332904189038

/-! ## A206587.P17361978750224202279

`∪[A206586(n+1), A046871(n+1)]`
-/

namespace A206587.P17361978750224202279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206587.P17361978750224202279

/-! ## A206587.P14797871411928416327

`eq[2, A059866(A003285(n+1)+2)]+1`
-/

namespace A206587.P14797871411928416327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059866 (A003285 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206587.P14797871411928416327

/-! ## A206587.P508688476342757851

`eq[A002349(n+1), A006703(n+1)]+1`
-/

namespace A206587.P508688476342757851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A206587.P508688476342757851

/-! ## A206587.P13468283363648532277

`eq[A002350(n+1), A006702(n+1)]+1`
-/

namespace A206587.P13468283363648532277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A206587.P13468283363648532277

/-! ## A206587.P1512591553488782863

`record[n+1-A068716(n+1)*A121576(n)]`
-/

namespace A206587.P1512591553488782863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A068716 (n + 1) * A121576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206587.P1512591553488782863

/-!
# A206588: Number of solutions k of prime(k)=prime(n) (mod n), where 1<=k

The programs for A206588, there is no canonical definition to state claims against.
-/

/-! ## A206588.P14368293985078061254

`A101436(A329793(n+1)²)`
-/

namespace A206588.P14368293985078061254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A329793 (n + 1) ^ 2).toNat

end

end A206588.P14368293985078061254

/-! ## A206588.P11877645552227343735

`A075950(n)%A084558(A131816(n))`
-/

namespace A206588.P11877645552227343735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075950 n) (A084558 (A131816 n).toNat)

end

end A206588.P11877645552227343735

/-! ## A206588.P13478258805533448809

`∑{p}[A225598(3*n+2), A225595(#)]`
-/

namespace A206588.P13478258805533448809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225598 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A225595 p

end

end A206588.P13478258805533448809

/-! ## A206588.P16383515182610691695

`A284203(∑[A064654(A137041(n+1))])`
-/

namespace A206588.P16383515182610691695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064654 (A137041 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206588.P16383515182610691695

/-! ## A206588.P1992736510761785442

`A007877(A196272(2*n)+A000769(n+1))`
-/

namespace A206588.P1992736510761785442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A196272 (2 * n) + A000769 (n + 1)).toNat

end

end A206588.P1992736510761785442

/-!
# A206589: Number of solutions (n,k) of p(k+1)=p(n+1) (mod n), where 1<=k

The programs for A206589, there is no canonical definition to state claims against.
-/

/-! ## A206589.P8758898567686465443

`and(A144396(n+1), A277745(A294563(n)))`
-/

namespace A206589.P8758898567686465443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144396 (n + 1)) (A277745 (A294563 n).toNat)

end

end A206589.P8758898567686465443

/-! ## A206589.P12219690286322250250

`A279497(n+1)-Δ[A279496(A279508(n))]`
-/

namespace A206589.P12219690286322250250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279496 (A279508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279497 (n + 1) - (f1 (n + 1) - f1 n)

end

end A206589.P12219690286322250250

/-! ## A206589.P15620450295845389035

`A043493(2*n+1)%A043534(A043523(2*n+5))`
-/

namespace A206589.P15620450295845389035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043493 (2 * n + 1)) (A043534 (A043523 (2 * n + 5)).toNat)

end

end A206589.P15620450295845389035

/-! ## A206589.P17937312711918571976

`A342595(A284516(n+1)+1)`
-/

namespace A206589.P17937312711918571976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342595 (A284516 (n + 1) + 1).toNat

end

end A206589.P17937312711918571976

/-! ## A206589.P10253946712097214148

`A342595(A284651(n+1)+1)`
-/

namespace A206589.P10253946712097214148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342595 (A284651 (n + 1) + 1).toNat

end

end A206589.P10253946712097214148

/-!
# A206590: Number of solutions (n,k) of k^3=n^3 (mod n), where 1<=k

The programs for A206590, the canonical program `A206590.P3046185336414950720` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206590 has offset 2).

The definition of A206590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206590.P3046185336414950720

`A000189(A057521(n+2))-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A206590

/-- `A000189(A057521(n+2))-1` -/
def P3046185336414950720.Spec : Prop :=
  ∀ n, P3046185336414950720.a n = A206590 (n + 2)

theorem P3046185336414950720.correct : P3046185336414950720.Spec := by
  intro n
  simp only [A206590, Nat.add_sub_cancel]

end A206590

/-! ## A206590.P17280718215128774404

`A000189(n+2)-1`
-/

namespace A206590.P17280718215128774404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 2) - 1

end

end A206590.P17280718215128774404

namespace A206590

/-- `A000189(n+2)-1` -/
def P17280718215128774404.Spec : Prop :=
  ∀ n, P17280718215128774404.a n = A206590 (n + 2)

end A206590

/-! ## A206590.P5273934268225724842

`floor(n/A019555(n+2))`
-/

namespace A206590.P5273934268225724842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A019555 (n + 2) : ℚ)⌋

end

end A206590.P5273934268225724842

namespace A206590

/-- `floor(n/A019555(n+2))` -/
def P5273934268225724842.Spec : Prop :=
  ∀ n, P5273934268225724842.a n = A206590 (n + 2)

end A206590

/-! ## A206590.P6771179677065616303

`(n+1)%A000189(n%(n+1)+2)`
-/

namespace A206590.P6771179677065616303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000189 (n % (n + 1) + 2))

end

end A206590.P6771179677065616303

namespace A206590

/-- `(n+1)%A000189(n%(n+1)+2)` -/
def P6771179677065616303.Spec : Prop :=
  ∀ n, P6771179677065616303.a n = A206590 (n + 2)

end A206590

/-! ## A206590.P10057113495053746932

`∑[gcd(n, n+1)*Δ[A000189(n+1)]]`
-/

namespace A206590.P10057113495053746932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206590.P10057113495053746932

namespace A206590

/-- `∑[gcd(n, n+1)*Δ[A000189(n+1)]]` -/
def P10057113495053746932.Spec : Prop :=
  ∀ n, P10057113495053746932.a n = A206590 (n + 2)

end A206590

/-! ## A206590.P9340995967783205814

`A000578(n+1)%A000189(n+2)`
-/

namespace A206590.P9340995967783205814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (n + 1)) (A000189 (n + 2))

end

end A206590.P9340995967783205814

namespace A206590

/-- `A000578(n+1)%A000189(n+2)` -/
def P9340995967783205814.Spec : Prop :=
  ∀ n, P9340995967783205814.a n = A206590 (n + 2)

end A206590

/-! ## A206590.P15586500571203912483

`(A000010(n+2)-A390753(n+2))/A390753(n+2)`
-/

namespace A206590.P15586500571203912483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) - A390753 (n + 2) : ℚ) / (A390753 (n + 2) : ℚ)

end

end A206590.P15586500571203912483

namespace A206590

/-- `(A000010(n+2)-A390753(n+2))/A390753(n+2)` -/
def P15586500571203912483.Spec : Prop :=
  ∀ n, P15586500571203912483.a n = (A206590 (n + 2) : ℚ)

end A206590

/-! ## A206590.P15297659309566046065

`(A001615(n+2)-A392167(n+2))/A392167(n+2)`
-/

namespace A206590.P15297659309566046065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 2) - A392167 (n + 2) : ℚ) / (A392167 (n + 2) : ℚ)

end

end A206590.P15297659309566046065

namespace A206590

/-- `(A001615(n+2)-A392167(n+2))/A392167(n+2)` -/
def P15297659309566046065.Spec : Prop :=
  ∀ n, P15297659309566046065.a n = (A206590 (n + 2) : ℚ)

end A206590

/-! ## A206590.P1018049236471539469

`A057918(A000189(n+2)²)`
-/

namespace A206590.P1018049236471539469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A000189 (n + 2) ^ 2).toNat

end

end A206590.P1018049236471539469

namespace A206590

/-- `A057918(A000189(n+2)²)` -/
def P1018049236471539469.Spec : Prop :=
  ∀ n, P1018049236471539469.a n = A206590 (n + 2)

end A206590

/-! ## A206590.P4907489172433090333

`A004197(2*A000189(n+2)²)`
-/

namespace A206590.P4907489172433090333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (2 * A000189 (n + 2) ^ 2).toNat

end

end A206590.P4907489172433090333

namespace A206590

/-- `A004197(2*A000189(n+2)²)` -/
def P4907489172433090333.Spec : Prop :=
  ∀ n, P4907489172433090333.a n = A206590 (n + 2)

end A206590

/-! ## A206590.P12553794211371673461

`A070139((2*A000189(n+2))²)`
-/

namespace A206590.P12553794211371673461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 ((2 * A000189 (n + 2)) ^ 2).toNat

end

end A206590.P12553794211371673461

namespace A206590

/-- `A070139((2*A000189(n+2))²)` -/
def P12553794211371673461.Spec : Prop :=
  ∀ n, P12553794211371673461.a n = A206590 (n + 2)

end A206590

/-! ## A206590.P1202312391684388875

`A019555(A003557(n+2)²)-1`
-/

namespace A206590.P1202312391684388875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A003557 (n + 2) ^ 2).toNat - 1

end

end A206590.P1202312391684388875

namespace A206590

/-- `A019555(A003557(n+2)²)-1` -/
def P1202312391684388875.Spec : Prop :=
  ∀ n, P1202312391684388875.a n = A206590 (n + 2)

end A206590

/-! ## A206590.P7415149002510835907

`A053150(A170826(n+2))-1`
-/

namespace A206590.P7415149002510835907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A170826 (n + 2)).toNat - 1

end

end A206590.P7415149002510835907

namespace A206590

/-- `A053150(A170826(n+2))-1` -/
def P7415149002510835907.Spec : Prop :=
  ∀ n, P7415149002510835907.a n = A206590 (n + 2)

end A206590

/-!
# A206591: E.g.f.: Sum_{n>=0} x^(n^2)*exp(n^2*x).

The programs for A206591, there is no canonical definition to state claims against.
-/

/-! ## A206591.P6924479255607437200

`lcm(n, A088803(a(n-1)))` with `a(0)=1`
-/

namespace A206591.P6924479255607437200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (n : ℤ) (A088803 (a (n - 1)))

end

end A206591.P6924479255607437200

/-! ## A206591.P2619406165647615522

`A201198(A001977(n))`
-/

namespace A206591.P2619406165647615522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201198 (A001977 n).toNat

end

end A206591.P2619406165647615522

/-!
# A206592: E.g.f.: Sum_{n>=0} x^(n^2) * exp(n*x).

The programs for A206592, there is no canonical definition to state claims against.
-/

/-! ## A206592.P18302761381451789143

`A072411(3^n)+(n-3)*(n-2)*(n-1)*n*2^(n-4)`
-/

namespace A206592.P18302761381451789143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072411 (3 ^ n) : ℚ) + ((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ))))

end

end A206592.P18302761381451789143

/-! ## A206592.P5517203626418290148

`gcd(A052796(n)+n, A097945(3^n))`
-/

namespace A206592.P5517203626418290148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052796 n + (n : ℤ)) (A097945 (3 ^ n))

end

end A206592.P5517203626418290148

/-! ## A206592.P5848796074364919344

`A105570(A052796(n))+A028310(n)`
-/

namespace A206592.P5848796074364919344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A052796 n).toNat + A028310 n

end

end A206592.P5848796074364919344

/-! ## A206592.P3871383148164161303

`A114806(n)+A105570(A052796(n))`
-/

namespace A206592.P3871383148164161303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 n + A105570 (A052796 n).toNat

end

end A206592.P3871383148164161303

/-! ## A206592.P8329175591063774440

`A105570(A052796(n))+gcd(n, A193421(n))`
-/

namespace A206592.P8329175591063774440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A052796 n).toNat + (Int.gcd (n : ℤ) (A193421 n) : ℤ)

end

end A206592.P8329175591063774440

/-!
# A206593: 

The programs for A206593, there is no canonical definition to state claims against.
-/

/-! ## A206593.P6761850356811588671

`A206600(∑[4*n]+1)`
-/

namespace A206593.P6761850356811588671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206593.P6761850356811588671

/-!
# A206594: Number of (n+1)X2 0..3 arrays with every 2X3 or 3X2 subblock having no more than three equal edges, and new values 0..3 introduced in row major order.

The programs for A206594, there is no canonical definition to state claims against.
-/

/-! ## A206594.P3297679139629308653

`A206600(∑[n]+1)`
-/

namespace A206594.P3297679139629308653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206594.P3297679139629308653

/-! ## A206594.P56472496842426073

`record[A206600(A114091(n+1))]`
-/

namespace A206594.P56472496842426073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206594.P56472496842426073

/-! ## A206594.P9144301218846491058

`record[A206600(n+1)/A176642(n)]`
-/

namespace A206594.P9144301218846491058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206600 (n + 1) : ℚ) / (A176642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206594.P9144301218846491058

/-! ## A206594.P5320481868515823620

`record[root(A206600(n+1), A086404(n))]`
-/

namespace A206594.P5320481868515823620
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206600 (n + 1) : ℝ) ^ (1 / (A086404 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206594.P5320481868515823620

/-! ## A206594.P7103406239226636587

`record[root(A206600(n+1), A307239(n))]`
-/

namespace A206594.P7103406239226636587
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206600 (n + 1) : ℝ) ^ (1 / (A307239 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206594.P7103406239226636587

/-!
# A206595: Number of (n+1)X3 0..3 arrays with every 2X3 or 3X2 subblock having no more than three equal edges, and new values 0..3 introduced in row major order.

The programs for A206595, there is no canonical definition to state claims against.
-/

/-! ## A206595.P10732492629939712585

`A206600(∑[n+1]+2)`
-/

namespace A206595.P10732492629939712585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206595.P10732492629939712585

/-! ## A206595.P166548604088735596

`record[A206600(A114091(n+1)+1)]`
-/

namespace A206595.P166548604088735596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206595.P166548604088735596

/-! ## A206595.P1363973314117634008

`A206600(A133263(n+1))+A178798(n)`
-/

namespace A206595.P1363973314117634008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (A133263 (n + 1)).toNat + A178798 n

end

end A206595.P1363973314117634008

/-! ## A206595.P16772758259363554560

`A292251(2*(n+1))+A206600(A133263(n+1))`
-/

namespace A206595.P16772758259363554560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (2 * (n + 1)) + A206600 (A133263 (n + 1)).toNat

end

end A206595.P16772758259363554560

/-! ## A206595.P9296008454372943595

`record[A206600(A198455(n+1))]`
-/

namespace A206595.P9296008454372943595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206595.P9296008454372943595

/-!
# A206596: Number of (n+1)X4 0..3 arrays with every 2X3 or 3X2 subblock having no more than three equal edges, and new values 0..3 introduced in row major order.

The programs for A206596, there is no canonical definition to state claims against.
-/

/-! ## A206596.P8499775733328359515

`A206600(∑[n+2]+4)`
-/

namespace A206596.P8499775733328359515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206596.P8499775733328359515

/-!
# A206597: 

The programs for A206597, there is no canonical definition to state claims against.
-/

/-! ## A206597.P895806398569079502

`A206600(A055999(n)+10)`
-/

namespace A206597.P895806398569079502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (A055999 n + 10).toNat

end

end A206597.P895806398569079502

/-! ## A206597.P12418036329553730474

`A206600(A077169(n+4)-1)`
-/

namespace A206597.P12418036329553730474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (A077169 (n + 4) - 1).toNat

end

end A206597.P12418036329553730474

/-!
# A206598: 

The programs for A206598, there is no canonical definition to state claims against.
-/

/-! ## A206598.P6431340245793037995

`A206600(A046691(n+3))`
-/

namespace A206598.P6431340245793037995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (A046691 (n + 3)).toNat

end

end A206598.P6431340245793037995

/-!
# A206599: 

The programs for A206599, there is no canonical definition to state claims against.
-/

/-! ## A206599.P18215148389659218114

`A206600(A077169(n+6)+1)`
-/

namespace A206599.P18215148389659218114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206600 (A077169 (n + 6) + 1).toNat

end

end A206599.P18215148389659218114

