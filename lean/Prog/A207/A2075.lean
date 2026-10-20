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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A207500: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207500, there is no canonical definition to state claims against.
-/

/-! ## A207500.P14085774072714974378

`A207242(n+1)+A185264(A324362(n))`
-/

namespace A207500.P14085774072714974378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (n + 1) + A185264 (A324362 n).toNat

end

end A207500.P14085774072714974378

/-!
# A207501: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207501, there is no canonical definition to state claims against.
-/

/-! ## A207501.P7532337513947349518

`A207500(A141214(n)+7)`
-/

namespace A207501.P7532337513947349518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A141214 n + 7).toNat

end

end A207501.P7532337513947349518

/-! ## A207501.P8460156645302968191

`A207500(A052905(n)+9)`
-/

namespace A207501.P8460156645302968191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A052905 n + 9).toNat

end

end A207501.P8460156645302968191

/-! ## A207501.P11357915977031316901

`A207500(A055999(n)+10)`
-/

namespace A207501.P11357915977031316901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A055999 n + 10).toNat

end

end A207501.P11357915977031316901

/-! ## A207501.P8052692809493396983

`A207500(A167614(n+2)+1)`
-/

namespace A207501.P8052692809493396983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A167614 (n + 2) + 1).toNat

end

end A207501.P8052692809493396983

/-! ## A207501.P16449596372856643730

`A207500(A112355(n+1)+4)`
-/

namespace A207501.P16449596372856643730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A112355 (n + 1) + 4).toNat

end

end A207501.P16449596372856643730

/-!
# A207502: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207502, there is no canonical definition to state claims against.
-/

/-! ## A207502.P6467413468545965683

`A207500(A167499(n+3))`
-/

namespace A207502.P6467413468545965683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A167499 (n + 3)).toNat

end

end A207502.P6467413468545965683

/-! ## A207502.P12396121006771278985

`A207500(A155212(n)+13)`
-/

namespace A207502.P12396121006771278985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A155212 n + 13).toNat

end

end A207502.P12396121006771278985

/-! ## A207502.P928387177884916921

`A207500(A056000(n)+15)`
-/

namespace A207502.P928387177884916921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A056000 n + 15).toNat

end

end A207502.P928387177884916921

/-! ## A207502.P11265615588491051445

`A207500(A000217(n+4)+5)`
-/

namespace A207502.P11265615588491051445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000217 (n + 4) + 5).toNat

end

end A207502.P11265615588491051445

/-! ## A207502.P15756726995979814677

`A207500(A141214(n+1)+8)`
-/

namespace A207502.P15756726995979814677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A141214 (n + 1) + 8).toNat

end

end A207502.P15756726995979814677

/-!
# A207503: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207503, there is no canonical definition to state claims against.
-/

/-! ## A207503.P15255765031881926717

`A207500(A166136(n+4))`
-/

namespace A207503.P15255765031881926717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A166136 (n + 4)).toNat

end

end A207503.P15255765031881926717

/-! ## A207503.P9146241499524006119

`A207500(A167499(n+4)+1)`
-/

namespace A207503.P9146241499524006119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A167499 (n + 4) + 1).toNat

end

end A207503.P9146241499524006119

/-! ## A207503.P3579971616814623281

`A207500(A000124(n+5)+5)`
-/

namespace A207503.P3579971616814623281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000124 (n + 5) + 5).toNat

end

end A207503.P3579971616814623281

/-! ## A207503.P484327264306526023

`A207500(A000217(n+5)+6)`
-/

namespace A207503.P484327264306526023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000217 (n + 5) + 6).toNat

end

end A207503.P484327264306526023

/-! ## A207503.P15228758176151876745

`A207500(A020715(C(n+6, 2)))`
-/

namespace A207503.P15228758176151876745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A020715 (Nat.choose (n + 6) 2)).toNat

end

end A207503.P15228758176151876745

/-!
# A207504: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207504, there is no canonical definition to state claims against.
-/

/-! ## A207504.P17612286075026760633

`A207500(A167499(n+5)+2)`
-/

namespace A207504.P17612286075026760633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A167499 (n + 5) + 2).toNat

end

end A207504.P17612286075026760633

/-! ## A207504.P10016404092375807410

`A207500(A000217(n+6)+7)`
-/

namespace A207504.P10016404092375807410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A000217 (n + 6) + 7).toNat

end

end A207504.P10016404092375807410

/-! ## A207504.P6736804156347993324

`A207500(A052905(n+3)+12)`
-/

namespace A207504.P6736804156347993324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A052905 (n + 3) + 12).toNat

end

end A207504.P6736804156347993324

/-! ## A207504.P790396089579236907

`A207500(A055998(n)+A008574(n+7))`
-/

namespace A207504.P790396089579236907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A055998 n + A008574 (n + 7)).toNat

end

end A207504.P790396089579236907

/-! ## A207504.P13249143815338413618

`A207500(A008486(n+7)+A000124(n+3))`
-/

namespace A207504.P13249143815338413618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A008486 (n + 7) + A000124 (n + 3)).toNat

end

end A207504.P13249143815338413618

/-!
# A207506: Indices for which A207505(n) = 0.

The programs for A207506, there is no canonical definition to state claims against.
-/

/-! ## A207506.P6625073703973637348

`eq[0, A207505(n)]`
-/

namespace A207506.P6625073703973637348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A207506.P6625073703973637348

/-! ## A207506.P1488641565540163511

`lt[A008585(n)*A207505(n), 3]`
-/

namespace A207506.P1488641565540163511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P1488641565540163511

/-! ## A207506.P4583062000567069490

`lt[A132768(n)*A207505(n), 3]`
-/

namespace A207506.P4583062000567069490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132768 n * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P4583062000567069490

/-! ## A207506.P17888691848750207643

`lt[A207505(n)*A209862(n), 3]`
-/

namespace A207506.P17888691848750207643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207505 n * A209862 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P17888691848750207643

/-! ## A207506.P13771144755737527908

`lt[A207505(n)*A250120(n), 3]`
-/

namespace A207506.P13771144755737527908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207505 n * A250120 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P13771144755737527908

/-! ## A207506.P2556698343416681687

`lt[A000040(n+1)*A207505(n), 3]`
-/

namespace A207506.P2556698343416681687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P2556698343416681687

/-! ## A207506.P12562722410026911369

`lt[A038446(n+1)*A207505(n), 3]`
-/

namespace A207506.P12562722410026911369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038446 (n + 1) * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P12562722410026911369

/-! ## A207506.P12255419953003777174

`lt[A207505(n)*A374040(n+1), 3]`
-/

namespace A207506.P12255419953003777174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207505 n * A374040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P12255419953003777174

/-! ## A207506.P9641933371363754054

`lt[A052335(n)*A207505(n), 3]`
-/

namespace A207506.P9641933371363754054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052335 n * A207505 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A207506.P9641933371363754054

/-!
# A207507: Diameters of quadratic unitary Cayley graphs on the integers modulo n.

The programs for A207507, there is no canonical definition to state claims against.
-/

/-! ## A207507.P4924510191220466468

`A001222(A133632(n+1)+A001317(n))`
-/

namespace A207507.P4924510191220466468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133632 (n + 1) + A001317 n).toNat

end

end A207507.P4924510191220466468

/-! ## A207507.P16794254929767671336

`A001222(A133632(n+1)+A053576(n))`
-/

namespace A207507.P16794254929767671336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133632 (n + 1) + A053576 n).toNat

end

end A207507.P16794254929767671336

/-! ## A207507.P17636012767588954547

`A350067(n+2)-A275601(A276086(n+2))`
-/

namespace A207507.P17636012767588954547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350067 (n + 2) - A275601 (A276086 (n + 2)).toNat

end

end A207507.P17636012767588954547

/-! ## A207507.P16931087398051999688

`A055457(A329662(n))`
-/

namespace A207507.P16931087398051999688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A329662 n).toNat

end

end A207507.P16931087398051999688

/-! ## A207507.P15270181222161425282

`A160385(A285843(n+1))`
-/

namespace A207507.P15270181222161425282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A285843 (n + 1)).toNat

end

end A207507.P15270181222161425282

/-!
# A207508: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207508, there is no canonical definition to state claims against.
-/

/-! ## A207508.P842818929344239818

`A207514(∑[4*n]+1)`
-/

namespace A207508.P842818929344239818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207508.P842818929344239818

/-! ## A207508.P398777668494730935

`lcm(2, A207514(A001844(n)))`
-/

namespace A207508.P398777668494730935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207514 (A001844 n).toNat)

end

end A207508.P398777668494730935

/-! ## A207508.P2590281102574851542

`record[A207514(A152271(n²))]`
-/

namespace A207508.P2590281102574851542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207508.P2590281102574851542

/-! ## A207508.P15635948716051942202

`record[A207514(Δ[A235355(n)])]`
-/

namespace A207508.P15635948716051942202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207508.P15635948716051942202

/-! ## A207508.P17538828955459965109

`record[A207514(A330613(n+1))]`
-/

namespace A207508.P17538828955459965109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207508.P17538828955459965109

/-!
# A207509: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207509, there is no canonical definition to state claims against.
-/

/-! ## A207509.P12840099722878777768

`A207514(∑[n+2]+4)`
-/

namespace A207509.P12840099722878777768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207509.P12840099722878777768

/-! ## A207509.P2623093925909336266

`lcm(2, A207514(A167614(n+1)))`
-/

namespace A207509.P2623093925909336266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207514 (A167614 (n + 1)).toNat)

end

end A207509.P2623093925909336266

/-! ## A207509.P4630455520127847761

`or(1, A207514(A000217(n+2)+3))-1`
-/

namespace A207509.P4630455520127847761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207514 (A000217 (n + 2) + 3).toNat) - 1

end

end A207509.P4630455520127847761

/-! ## A207509.P1834476787362344157

`A207514(A167614(n+1))*A262079(n+1)`
-/

namespace A207509.P1834476787362344157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A167614 (n + 1)).toNat * A262079 (n + 1)

end

end A207509.P1834476787362344157

/-! ## A207509.P18114888645380396057

`A207514(A167614(n+1))+A096268(2*n)`
-/

namespace A207509.P18114888645380396057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A167614 (n + 1)).toNat + A096268 (2 * n)

end

end A207509.P18114888645380396057

/-!
# A207510: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207510, there is no canonical definition to state claims against.
-/

/-! ## A207510.P6196928432860753755

`A207514(∑[n+3]+7)`
-/

namespace A207510.P6196928432860753755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207510.P6196928432860753755

/-! ## A207510.P18177081805855193720

`xor(1, xor(1, A207514(A055999(n)+10)))`
-/

namespace A207510.P18177081805855193720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A207514 (A055999 n + 10).toNat))

end

end A207510.P18177081805855193720

/-! ## A207510.P12750396726467774879

`A007318(C(2, n))*A207514(A055999(n)+10)`
-/

namespace A207510.P12750396726467774879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A207514 (A055999 n + 10).toNat

end

end A207510.P12750396726467774879

/-! ## A207510.P4537195921090876380

`A207514(A055999(n)+10)/A007318(C(n, 2))`
-/

namespace A207510.P4537195921090876380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207514 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A207510.P4537195921090876380

/-! ## A207510.P1162249191682108740

`A000041(C(n, 64))*A207514(A055999(n)+10)`
-/

namespace A207510.P1162249191682108740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A207514 (A055999 n + 10).toNat

end

end A207510.P1162249191682108740

/-!
# A207511: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207511, there is no canonical definition to state claims against.
-/

/-! ## A207511.P14348562524751257662

`A207514(C(n+6, 2)-n)`
-/

namespace A207511.P14348562524751257662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (Nat.choose (n + 6) 2 - n)

end

end A207511.P14348562524751257662

/-! ## A207511.P17156975871449554396

`A207514(A167499(n+3))`
-/

namespace A207511.P17156975871449554396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A167499 (n + 3)).toNat

end

end A207511.P17156975871449554396

/-! ## A207511.P16417078827553983097

`A207514(A155212(n)+13)`
-/

namespace A207511.P16417078827553983097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A155212 n + 13).toNat

end

end A207511.P16417078827553983097

/-! ## A207511.P14878400944080428293

`A207514(A056000(n)+15)`
-/

namespace A207511.P14878400944080428293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A056000 n + 15).toNat

end

end A207511.P14878400944080428293

/-! ## A207511.P13602977801512317210

`A207514(∑[A020705(n)]+11)`
-/

namespace A207511.P13602977801512317210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A207511.P13602977801512317210

/-!
# A207512: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207512, there is no canonical definition to state claims against.
-/

/-! ## A207512.P708118477916856257

`A207514(C(2*n+7-n, 2)-n)`
-/

namespace A207512.P708118477916856257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (Nat.choose ((2 * n + 7 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A207512.P708118477916856257

/-! ## A207512.P7771899683697245808

`A207514(A166136(n+4))`
-/

namespace A207512.P7771899683697245808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A166136 (n + 4)).toNat

end

end A207512.P7771899683697245808

/-! ## A207512.P12446657095844743382

`A207514(A056115(n)+21)`
-/

namespace A207512.P12446657095844743382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A056115 n + 21).toNat

end

end A207512.P12446657095844743382

/-! ## A207512.P9768418725459276352

`A207514(∑[A020710(n)]+16)`
-/

namespace A207512.P9768418725459276352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A207512.P9768418725459276352

/-! ## A207512.P13858523494235435447

`A207514(A167499(n+4)+1)`
-/

namespace A207512.P13858523494235435447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A167499 (n + 4) + 1).toNat

end

end A207512.P13858523494235435447

/-!
# A207513: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207513, there is no canonical definition to state claims against.
-/

/-! ## A207513.P9839826820589425598

`A207514(A167487(n+5))`
-/

namespace A207513.P9839826820589425598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A167487 (n + 5)).toNat

end

end A207513.P9839826820589425598

/-! ## A207513.P17213420209533339195

`A207514(A167499(n+5)+2)`
-/

namespace A207513.P17213420209533339195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A167499 (n + 5) + 2).toNat

end

end A207513.P17213420209533339195

/-! ## A207513.P12319777637993176197

`A207514(A000124(n+6)+6)`
-/

namespace A207513.P12319777637993176197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A000124 (n + 6) + 6).toNat

end

end A207513.P12319777637993176197

/-! ## A207513.P4783360553901882988

`A207514(A000096(n+5)+8)`
-/

namespace A207513.P4783360553901882988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A000096 (n + 5) + 8).toNat

end

end A207513.P4783360553901882988

/-! ## A207513.P8468912081485127441

`A207514(A000217(n+6)+7)`
-/

namespace A207513.P8468912081485127441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207514 (A000217 (n + 6) + 7).toNat

end

end A207513.P8468912081485127441

/-!
# A207514: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207514, there is no canonical definition to state claims against.
-/

/-! ## A207514.P596615348987671873

`A207682(A038722(n+1)%A075953(n))`
-/

namespace A207514.P596615348987671873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (Int.tmod (A038722 (n + 1)) (A075953 n)).toNat

end

end A207514.P596615348987671873

/-! ## A207514.P153307061885022227

`A207682(A038722(n+1))%A057973(n+3)`
-/

namespace A207514.P153307061885022227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207682 (A038722 (n + 1)).toNat) (A057973 (n + 3))

end

end A207514.P153307061885022227

/-! ## A207514.P792872900415882161

`A207682(or(A038722(n+1), A244172(n+9)))`
-/

namespace A207514.P792872900415882161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (Int.lor (A038722 (n + 1)) (A244172 (n + 9))).toNat

end

end A207514.P792872900415882161

/-! ## A207514.P7563865643125887514

`A207682(A244172(n+9)!*A038722(n+1))`
-/

namespace A207514.P7563865643125887514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 ((Nat.factorial (A244172 (n + 9)).toNat : ℤ) * A038722 (n + 1)).toNat

end

end A207514.P7563865643125887514

/-! ## A207514.P1029823586101175404

`A207682(A038722(n+1)/A244172(n+9)!)`
-/

namespace A207514.P1029823586101175404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) / (Nat.factorial (A244172 (n + 9)).toNat : ℚ))).toNat

end

end A207514.P1029823586101175404

/-!
# A207515: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207515, there is no canonical definition to state claims against.
-/

/-! ## A207515.P2336410082846786820

`A207519(∑[4*n]+1)`
-/

namespace A207515.P2336410082846786820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207515.P2336410082846786820

/-! ## A207515.P16639990017804256790

`record[A207519(Δ[A079824(n+1)])]`
-/

namespace A207515.P16639990017804256790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207515.P16639990017804256790

/-! ## A207515.P9988097453240039526

`record[A003982(n)*A207519(n+1)]`
-/

namespace A207515.P9988097453240039526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207515.P9988097453240039526

/-! ## A207515.P6177295245649053223

`record[A207519(n+1)*A214505(n)]`
-/

namespace A207515.P6177295245649053223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207515.P6177295245649053223

/-! ## A207515.P2326436051706309556

`record[gcd(A114327(n), A207519(n+1))]`
-/

namespace A207515.P2326436051706309556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207519 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207515.P2326436051706309556

/-!
# A207516: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207516, there is no canonical definition to state claims against.
-/

/-! ## A207516.P1259910231897850864

`A207519(A046691(n+3))`
-/

namespace A207516.P1259910231897850864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A046691 (n + 3)).toNat

end

end A207516.P1259910231897850864

/-! ## A207516.P11192423473525050777

`A207519(eq[4, A193592(n)])`
-/

namespace A207516.P11192423473525050777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207516.P11192423473525050777

/-! ## A207516.P12720052049780615538

`A207519(Δ[A023545(n+1)])`
-/

namespace A207516.P12720052049780615538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (f1 (n + 1) - f1 n).toNat

end

end A207516.P12720052049780615538

/-! ## A207516.P8230553120378025289

`A207519(A055999(n+2)+2)`
-/

namespace A207516.P8230553120378025289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A055999 (n + 2) + 2).toNat

end

end A207516.P8230553120378025289

/-! ## A207516.P16717666444763834431

`A207519(A133263(n+5)-6)`
-/

namespace A207516.P16717666444763834431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A133263 (n + 5) - 6).toNat

end

end A207516.P16717666444763834431

/-!
# A207517: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207517, there is no canonical definition to state claims against.
-/

/-! ## A207517.P16599864605122500278

`A207519(A052905(n+3))`
-/

namespace A207517.P16599864605122500278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A052905 (n + 3)).toNat

end

end A207517.P16599864605122500278

/-! ## A207517.P12006553133106295285

`A207519(eq[3, A219347(n)])`
-/

namespace A207517.P12006553133106295285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207517.P12006553133106295285

/-! ## A207517.P8502144598881230194

`A207519(A055999(n+3)+1)`
-/

namespace A207517.P8502144598881230194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A055999 (n + 3) + 1).toNat

end

end A207517.P8502144598881230194

/-! ## A207517.P17836077418172685110

`A207519(A000124(n+6)-6)`
-/

namespace A207517.P17836077418172685110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A000124 (n + 6) - 6).toNat

end

end A207517.P17836077418172685110

/-! ## A207517.P18124594994388919794

`A207519(Δ[Δ[A006504(n+1)]])`
-/

namespace A207517.P18124594994388919794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (f1 (n + 1) - f1 n).toNat

end

end A207517.P18124594994388919794

/-!
# A207518: Number of nX7 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207518, there is no canonical definition to state claims against.
-/

/-! ## A207518.P9447139037679579379

`A207519(A055999(n+4))`
-/

namespace A207518.P9447139037679579379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A055999 (n + 4)).toNat

end

end A207518.P9447139037679579379

/-! ## A207518.P13183984636931845319

`A207519(eq[4, A219347(n)])`
-/

namespace A207518.P13183984636931845319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207518.P13183984636931845319

/-! ## A207518.P11109134033661135009

`A207519(eq[6, A193592(n)])`
-/

namespace A207518.P11109134033661135009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207518.P11109134033661135009

/-! ## A207518.P14269803494571066732

`A207519(A056000(n+3)+4)`
-/

namespace A207518.P14269803494571066732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A056000 (n + 3) + 4).toNat

end

end A207518.P14269803494571066732

/-! ## A207518.P13588464893912613584

`A207519(eq[7, A200370(n+1)])`
-/

namespace A207518.P13588464893912613584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207518.P13588464893912613584

/-!
# A207519: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207519, there is no canonical definition to state claims against.
-/

/-! ## A207519.P9887424743165698224

`A208698(n+1)-A016389(A119502(n))`
-/

namespace A207519.P9887424743165698224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (n + 1) - A016389 (A119502 n).toNat

end

end A207519.P9887424743165698224

/-! ## A207519.P13643264360529863455

`A208698(n+1)-A016389(A152656(n))`
-/

namespace A207519.P13643264360529863455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (n + 1) - A016389 (A152656 n).toNat

end

end A207519.P13643264360529863455

/-! ## A207519.P7214673899086421980

`A208698(n+1)-A070204(A126331(n))`
-/

namespace A207519.P7214673899086421980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (n + 1) - A070204 (A126331 n).toNat

end

end A207519.P7214673899086421980

/-! ## A207519.P10765913780814244880

`A208698(A187829(n+1))`
-/

namespace A207519.P10765913780814244880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A187829 (n + 1)).toNat

end

end A207519.P10765913780814244880

/-! ## A207519.P1835259953196036498

`filter[A208698(n+1), A140074(#)]`
-/

namespace A207519.P1835259953196036498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A140074 (f1 j).toNat = 1) n)

end

end A207519.P1835259953196036498

/-!
# A207520: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207520, there is no canonical definition to state claims against.
-/

/-! ## A207520.P1595589170751276914

`A207519(A141214(n)+7)`
-/

namespace A207520.P1595589170751276914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A141214 n + 7).toNat

end

end A207520.P1595589170751276914

/-! ## A207520.P3517419616197627600

`A207519(A055999(n)+10)`
-/

namespace A207520.P3517419616197627600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A055999 n + 10).toNat

end

end A207520.P3517419616197627600

/-! ## A207520.P9223848965732817269

`A207519(A167614(n+2)+1)`
-/

namespace A207520.P9223848965732817269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A167614 (n + 2) + 1).toNat

end

end A207520.P9223848965732817269

/-! ## A207520.P10601634563864943077

`A207519(A167499(n+2)-1)`
-/

namespace A207520.P10601634563864943077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A167499 (n + 2) - 1).toNat

end

end A207520.P10601634563864943077

/-! ## A207520.P14580551206937421782

`A207519(A166136(n+2)-2)`
-/

namespace A207520.P14580551206937421782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A166136 (n + 2) - 2).toNat

end

end A207520.P14580551206937421782

/-!
# A207521: Number of 5 X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207521, there is no canonical definition to state claims against.
-/

/-! ## A207521.P17305371087433905165

`A207519(A167499(n+3))`
-/

namespace A207521.P17305371087433905165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A167499 (n + 3)).toNat

end

end A207521.P17305371087433905165

/-! ## A207521.P11479359293750280820

`A207519(A155212(n)+13)`
-/

namespace A207521.P11479359293750280820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A155212 n + 13).toNat

end

end A207521.P11479359293750280820

/-! ## A207521.P4867309398720276267

`A207519(A056000(n)+15)`
-/

namespace A207521.P4867309398720276267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A056000 n + 15).toNat

end

end A207521.P4867309398720276267

/-! ## A207521.P4545062555141360788

`A207519(A000217(n+4)+5)`
-/

namespace A207521.P4545062555141360788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A000217 (n + 4) + 5).toNat

end

end A207521.P4545062555141360788

/-! ## A207521.P7162918727206317761

`A207519(A133263(n+5)-(n+2))`
-/

namespace A207521.P7162918727206317761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A133263 (n + 5) - (n + 2 : ℤ)).toNat

end

end A207521.P7162918727206317761

/-!
# A207522: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207522, there is no canonical definition to state claims against.
-/

/-! ## A207522.P1713935301182088931

`A207519(A166136(n+4))`
-/

namespace A207522.P1713935301182088931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A166136 (n + 4)).toNat

end

end A207522.P1713935301182088931

/-! ## A207522.P16680359326158485220

`A207519(A167614(n+4)+3)`
-/

namespace A207522.P16680359326158485220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A167614 (n + 4) + 3).toNat

end

end A207522.P16680359326158485220

/-! ## A207522.P587059040871991594

`A207519(A000217(n+5)+6)`
-/

namespace A207522.P587059040871991594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A000217 (n + 5) + 6).toNat

end

end A207522.P587059040871991594

/-! ## A207522.P9035200044804556755

`A207519(Δ[A023545(n+1)]+10)`
-/

namespace A207522.P9035200044804556755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (f1 (n + 1) - f1 n + 10).toNat

end

end A207522.P9035200044804556755

/-! ## A207522.P3276052358776192572

`A207519(A000124(n+6)-(n+1))`
-/

namespace A207522.P3276052358776192572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A207522.P3276052358776192572

/-!
# A207523: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207523, there is no canonical definition to state claims against.
-/

/-! ## A207523.P1567571452898830401

`A207519(A000124(n+6)+6)`
-/

namespace A207523.P1567571452898830401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A000124 (n + 6) + 6).toNat

end

end A207523.P1567571452898830401

/-! ## A207523.P7637868546399641323

`A207519(A000096(n+5)+8)`
-/

namespace A207523.P7637868546399641323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A000096 (n + 5) + 8).toNat

end

end A207523.P7637868546399641323

/-! ## A207523.P6386762465273088053

`A207519(A000217(n+6)+7)`
-/

namespace A207523.P6386762465273088053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A000217 (n + 6) + 7).toNat

end

end A207523.P6386762465273088053

/-! ## A207523.P7822076548135742547

`A207519(A055998(n+4)+10)`
-/

namespace A207523.P7822076548135742547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (A055998 (n + 4) + 10).toNat

end

end A207523.P7822076548135742547

/-! ## A207523.P779385743782092002

`A207519(eq[8, A004736(n+1)]-2*n)`
-/

namespace A207523.P779385743782092002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A207523.P779385743782092002

/-!
# A207524: Number of rational numbers p/q such that 0

The programs for A207524, there is no canonical definition to state claims against.
-/

/-! ## A207524.P18322380092150340759

`A340275(n+2)+A046657(n+2)`
-/

namespace A207524.P18322380092150340759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (n + 2) + A046657 (n + 2)

end

end A207524.P18322380092150340759

/-! ## A207524.P9342444176333258460

`A340275(n+2)+∑[A023022(n+2)]`
-/

namespace A207524.P9342444176333258460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207524.P9342444176333258460

/-! ## A207524.P13503697084671332185

`∑[A000010(n+2)-A133755(n+2)]`
-/

namespace A207524.P13503697084671332185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) - A133755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207524.P13503697084671332185

/-! ## A207524.P436380150588967257

`A004396(A015614(n+2)+A015161(n)!)`
-/

namespace A207524.P436380150588967257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A015614 (n + 2) + (Nat.factorial (A015161 n).toNat : ℤ)).toNat

end

end A207524.P436380150588967257

/-! ## A207524.P5250865223680642201

`∩[A090108(n+1), A004396(A002088(n+2))]`
-/

namespace A207524.P5250865223680642201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A002088 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207524.P5250865223680642201

/-!
# A207526: Primes p such that p-2 or p+2 are semiprimes.

The programs for A207526, there is no canonical definition to state claims against.
-/

/-! ## A207526.P12919937300069613607

`∪[A063637(n+1), A063638(n+1)]`
-/

namespace A207526.P12919937300069613607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207526.P12919937300069613607

/-! ## A207526.P14844712876820671975

`∪[A062721(n+1)-2, A063638(n+1)]`
-/

namespace A207526.P14844712876820671975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207526.P14844712876820671975

/-! ## A207526.P8083932619501351100

`∪[A063638(n+1), p?[A157931(n+1)-2]]`
-/

namespace A207526.P8083932619501351100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207526.P8083932619501351100

/-! ## A207526.P1180528528577136398

`∪[A062721(n+1)-2, A241809(n+1)+2]`
-/

namespace A207526.P1180528528577136398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241809 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207526.P1180528528577136398

/-! ## A207526.P8961424261361103269

`p?[record[A115561((n+2)²-1)]]`
-/

namespace A207526.P8961424261361103269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 ((n + 2) ^ 2 - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207526.P8961424261361103269

/-!
# A207529: Number of n X n 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207529, there is no canonical definition to state claims against.
-/

/-! ## A207529.P2556402360167020859

`A207535((n+1)²+n²)`
-/

namespace A207529.P2556402360167020859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 ((n + 1) ^ 2 + n ^ 2)

end

end A207529.P2556402360167020859

/-!
# A207530: Number of nX3 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207530, there is no canonical definition to state claims against.
-/

/-! ## A207530.P18305797359403539128

`A207535(∑[n+2]+4)`
-/

namespace A207530.P18305797359403539128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207530.P18305797359403539128

/-! ## A207530.P14183462773833900305

`lcm(2, A207535(A167614(n+1)))`
-/

namespace A207530.P14183462773833900305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207535 (A167614 (n + 1)).toNat)

end

end A207530.P14183462773833900305

/-! ## A207530.P16910745093209302954

`A124778(n)*A207535(A167614(n+1))`
-/

namespace A207530.P16910745093209302954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n * A207535 (A167614 (n + 1)).toNat

end

end A207530.P16910745093209302954

/-! ## A207530.P12050489999957481188

`A139337(n)*A207535(A167614(n+1))`
-/

namespace A207530.P12050489999957481188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n * A207535 (A167614 (n + 1)).toNat

end

end A207530.P12050489999957481188

/-! ## A207530.P4084577888605929601

`A293496(n+1)+A207535(A167614(n+1))`
-/

namespace A207530.P4084577888605929601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293496 (n + 1) + A207535 (A167614 (n + 1)).toNat

end

end A207530.P4084577888605929601

/-!
# A207531: Number of nX4 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207531, there is no canonical definition to state claims against.
-/

/-! ## A207531.P12639485156896294482

`A207535(A141214(n)+7)`
-/

namespace A207531.P12639485156896294482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (A141214 n + 7).toNat

end

end A207531.P12639485156896294482

/-! ## A207531.P16397721756826726111

`A207535(A052905(n)+9)`
-/

namespace A207531.P16397721756826726111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (A052905 n + 9).toNat

end

end A207531.P16397721756826726111

/-! ## A207531.P11483888107950052826

`A207535(A055999(n)+10)`
-/

namespace A207531.P11483888107950052826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (A055999 n + 10).toNat

end

end A207531.P11483888107950052826

/-! ## A207531.P4192637899297523241

`A207535(eq[5, A066657(n)])`
-/

namespace A207531.P4192637899297523241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207531.P4192637899297523241

/-! ## A207531.P11240637336888492762

`A207535(A167614(n+2)+1)`
-/

namespace A207531.P11240637336888492762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (A167614 (n + 2) + 1).toNat

end

end A207531.P11240637336888492762

/-!
# A207532: Number of nX5 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row or column.

The programs for A207532, there is no canonical definition to state claims against.
-/

/-! ## A207532.P2909115641097089169

`A207535(eq[7, A066657(n)])`
-/

namespace A207532.P2909115641097089169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207532.P2909115641097089169

/-! ## A207532.P1156310238300889901

`A207535(A374005(n+1))`
-/

namespace A207532.P1156310238300889901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (A374005 (n + 1)).toNat

end

end A207532.P1156310238300889901

/-! ## A207532.P10058439189052370231

`A207535(Δ[A023545(n+1)])`
-/

namespace A207532.P10058439189052370231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (f1 (n + 1) - f1 n).toNat

end

end A207532.P10058439189052370231

/-!
# A207536: Triangle of coefficients of polynomials u(n,x) jointly generated with A105070; see Formula section.

The programs for A207536, the canonical program `A207536.P11378481812331935203` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207536 has offset 1).

The definition of A207536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207536.P11378481812331935203

`A034839(n+1)/A034867(n+1)*A105070(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A207536

/-- `A034839(n+1)/A034867(n+1)*A105070(n+2)` -/
def P11378481812331935203.Spec : Prop :=
  ∀ n, P11378481812331935203.a n = (A207536 (n + 1) : ℚ)

end A207536

/-! ## A207536.P774558478727283018

`A034839(n+1)*A059268(A091018(n+1))`
-/

namespace A207536.P774558478727283018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (n + 1) * A059268 (A091018 (n + 1)).toNat

end

end A207536.P774558478727283018

namespace A207536

/-- `A034839(n+1)*A059268(A091018(n+1))` -/
def P774558478727283018.Spec : Prop :=
  ∀ n, P774558478727283018.a n = A207536 (n + 1)

end A207536

/-! ## A207536.P466205969252336038

`A123519(A091018(n+1))`
-/

namespace A207536.P466205969252336038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123519 (A091018 (n + 1)).toNat

end

end A207536.P466205969252336038

namespace A207536

/-- `A123519(A091018(n+1))` -/
def P466205969252336038.Spec : Prop :=
  ∀ n, P466205969252336038.a n = A207536 (n + 1)

end A207536

/-! ## A207536.P267775335599692282

`A123519(A056536(n+2)-1)`
-/

namespace A207536.P267775335599692282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123519 (A056536 (n + 2) - 1).toNat

end

end A207536.P267775335599692282

namespace A207536

/-- `A123519(A056536(n+2)-1)` -/
def P267775335599692282.Spec : Prop :=
  ∀ n, P267775335599692282.a n = A207536 (n + 1)

end A207536

/-! ## A207536.P195005256637057278

`A117919(A028391(n+1)+n+2)`
-/

namespace A207536.P195005256637057278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (A028391 (n + 1) + (n + 2 : ℤ)).toNat

end

end A207536.P195005256637057278

namespace A207536

/-- `A117919(A028391(n+1)+n+2)` -/
def P195005256637057278.Spec : Prop :=
  ∀ n, P195005256637057278.a n = A207536 (n + 1)

end A207536

/-! ## A207536.P12717798351600317473

`A117919(record[(n+2)/A133083(n+1)])`
-/

namespace A207536.P12717798351600317473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A133083 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A207536.P12717798351600317473

namespace A207536

/-- `A117919(record[(n+2)/A133083(n+1)])` -/
def P12717798351600317473.Spec : Prop :=
  ∀ n, P12717798351600317473.a n = A207536 (n + 1)

end A207536

/-!
# A207537: Triangle of coefficients of polynomials u(n,x) jointly generated with A207538; see Formula section.

The programs for A207537, the canonical program `A207537.P9241399492848314122` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207537 has offset 1).

The definition of A207537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207537.P15885358005870480284

`abs(A028297(n+1))`
-/

namespace A207537.P15885358005870480284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028297 (n + 1)|

end

end A207537.P15885358005870480284

namespace A207537

/-- `abs(A028297(n+1))` -/
def P15885358005870480284.Spec : Prop :=
  ∀ n, P15885358005870480284.a n = A207537 (n + 1)

end A207537

/-! ## A207537.P15323765751708066532

`∏[abs(ratio[A028297(n)])]`
-/

namespace A207537.P15323765751708066532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A207537.P15323765751708066532

namespace A207537

/-- `∏[abs(ratio[A028297(n)])]` -/
def P15323765751708066532.Spec : Prop :=
  ∀ n, P15323765751708066532.a n = (A207537 (n + 1) : ℚ)

end A207537

/-! ## A207537.P14075235020557529838

`gcd(A000038(n), A028297(n+1))`
-/

namespace A207537.P14075235020557529838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A028297 (n + 1))

end

end A207537.P14075235020557529838

namespace A207537

/-- `gcd(A000038(n), A028297(n+1))` -/
def P14075235020557529838.Spec : Prop :=
  ∀ n, (P14075235020557529838.a n : ℤ) = A207537 (n + 1)

end A207537

/-! ## A207537.P3670394625213414736

`lcm(A028297(n+1), A057077(n))`
-/

namespace A207537.P3670394625213414736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028297 (n + 1)) (A057077 n)

end

end A207537.P3670394625213414736

namespace A207537

/-- `lcm(A028297(n+1), A057077(n))` -/
def P3670394625213414736.Spec : Prop :=
  ∀ n, (P3670394625213414736.a n : ℤ) = A207537 (n + 1)

end A207537

/-! ## A207537.P9241399492848314122

`A200139(A091018(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A207537

/-- `A200139(A091018(n+1))` -/
def P9241399492848314122.Spec : Prop :=
  ∀ n, P9241399492848314122.a n = A207537 (n + 1)

theorem P9241399492848314122.correct : P9241399492848314122.Spec := by
  intro n
  simp only [A207537, Nat.add_sub_cancel]

end A207537

/-! ## A207537.P10567082949884944831

`A201701(lt[A202023(n+1), A201701(n)])`
-/

namespace A207537.P10567082949884944831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A207537.P10567082949884944831

namespace A207537

/-- `A201701(lt[A202023(n+1), A201701(n)])` -/
def P10567082949884944831.Spec : Prop :=
  ∀ n, P10567082949884944831.a n = A207537 (n + 1)

end A207537

/-! ## A207537.P4739686565626342187

`A201701(lt[A124182(n), n*A201701(n)])`
-/

namespace A207537.P4739686565626342187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A201701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A207537.P4739686565626342187

namespace A207537

/-- `A201701(lt[A124182(n), n*A201701(n)])` -/
def P4739686565626342187.Spec : Prop :=
  ∀ n, P4739686565626342187.a n = A207537 (n + 1)

end A207537

/-! ## A207537.P16765682545850256612

`A201701(lt[A157218(n+1), n*A201701(n)])`
-/

namespace A207537.P16765682545850256612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A201701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A207537.P16765682545850256612

namespace A207537

/-- `A201701(lt[A157218(n+1), n*A201701(n)])` -/
def P16765682545850256612.Spec : Prop :=
  ∀ n, P16765682545850256612.a n = A207537 (n + 1)

end A207537

/-! ## A207537.P874876899208093060

`gcd(C(2, n), A028297(A110514(2*n)))`
-/

namespace A207537.P874876899208093060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A028297 (A110514 (2 * n)).toNat)

end

end A207537.P874876899208093060

namespace A207537

/-- `gcd(C(2, n), A028297(A110514(2*n)))` -/
def P874876899208093060.Spec : Prop :=
  ∀ n, (P874876899208093060.a n : ℤ) = A207537 (n + 1)

end A207537

/-! ## A207537.P18356215571617843669

`∑{d}[A028297(n+1), A000010(#)]`
-/

namespace A207537.P18356215571617843669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A207537.P18356215571617843669

namespace A207537

/-- `∑{d}[A028297(n+1), A000010(#)]` -/
def P18356215571617843669.Spec : Prop :=
  ∀ n, P18356215571617843669.a n = A207537 (n + 1)

end A207537

/-!
# A207538: Triangle of coefficients of polynomials v(n,x) jointly generated with A207537; see Formula section.

The programs for A207538, the canonical program `A207538.P3362735136045177086` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207538 has offset 1).

The definition of A207538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207538.P12336122118697086797

`abs(A133156(n))`
-/

namespace A207538.P12336122118697086797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133156 n|

end

end A207538.P12336122118697086797

namespace A207538

/-- `abs(A133156(n))` -/
def P12336122118697086797.Spec : Prop :=
  ∀ n, P12336122118697086797.a n = A207538 (n + 1)

end A207538

/-! ## A207538.P4942406258911586024

`gcd(A000038(n), A133156(n))`
-/

namespace A207538.P4942406258911586024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A133156 n)

end

end A207538.P4942406258911586024

namespace A207538

/-- `gcd(A000038(n), A133156(n))` -/
def P4942406258911586024.Spec : Prop :=
  ∀ n, (P4942406258911586024.a n : ℤ) = A207538 (n + 1)

end A207538

/-! ## A207538.P4539803716275395707

`lcm(A011973(n), A133156(n))`
-/

namespace A207538.P4539803716275395707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011973 n) (A133156 n)

end

end A207538.P4539803716275395707

namespace A207538

/-- `lcm(A011973(n), A133156(n))` -/
def P4539803716275395707.Spec : Prop :=
  ∀ n, (P4539803716275395707.a n : ℤ) = A207538 (n + 1)

end A207538

/-! ## A207538.P3362735136045177086

`A000079(A082375(n))*A011973(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A207538

/-- `A000079(A082375(n))*A011973(n)` -/
def P3362735136045177086.Spec : Prop :=
  ∀ n, P3362735136045177086.a n = A207538 (n + 1)

theorem P3362735136045177086.correct : P3362735136045177086.Spec := by
  intro n
  simp only [A207538, Nat.add_sub_cancel]

end A207538

/-! ## A207538.P15671528030745929138

`A051288(n)/A034868(n)`
-/

namespace A207538.P15671528030745929138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051288 n : ℚ) / (A034868 n : ℚ)

end

end A207538.P15671528030745929138

namespace A207538

/-- `A051288(n)/A034868(n)` -/
def P15671528030745929138.Spec : Prop :=
  ∀ n, P15671528030745929138.a n = (A207538 (n + 1) : ℚ)

end A207538

/-! ## A207538.P18290593522665285188

`A213343(n+1)/A257241(n+1)`
-/

namespace A207538.P18290593522665285188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213343 (n + 1) : ℚ) / (A257241 (n + 1) : ℚ)

end

end A207538.P18290593522665285188

namespace A207538

/-- `A213343(n+1)/A257241(n+1)` -/
def P18290593522665285188.Spec : Prop :=
  ∀ n, P18290593522665285188.a n = (A207538 (n + 1) : ℚ)

end A207538

/-! ## A207538.P12394745778497918047

`A038207(A091018(n))`
-/

namespace A207538.P12394745778497918047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A091018 n).toNat

end

end A207538.P12394745778497918047

namespace A207538

/-- `A038207(A091018(n))` -/
def P12394745778497918047.Spec : Prop :=
  ∀ n, P12394745778497918047.a n = A207538 (n + 1)

end A207538

/-! ## A207538.P10651045660195824718

`A038207(A056536(n+1)-1)`
-/

namespace A207538.P10651045660195824718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A056536 (n + 1) - 1).toNat

end

end A207538.P10651045660195824718

namespace A207538

/-- `A038207(A056536(n+1)-1)` -/
def P10651045660195824718.Spec : Prop :=
  ∀ n, P10651045660195824718.a n = A207538 (n + 1)

end A207538

/-! ## A207538.P312007447858902625

`abs(A053118(eq[1, A132728(n)]))`
-/

namespace A207538.P312007447858902625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A207538.P312007447858902625

namespace A207538

/-- `abs(A053118(eq[1, A132728(n)]))` -/
def P312007447858902625.Spec : Prop :=
  ∀ n, P312007447858902625.a n = A207538 (n + 1)

end A207538

/-! ## A207538.P14039076374745605098

`abs(A053118(A028391(n)+n))`
-/

namespace A207538.P14039076374745605098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053118 (A028391 n + (n : ℤ)).toNat|

end

end A207538.P14039076374745605098

namespace A207538

/-- `abs(A053118(A028391(n)+n))` -/
def P14039076374745605098.Spec : Prop :=
  ∀ n, P14039076374745605098.a n = A207538 (n + 1)

end A207538

/-!
# A207539: Dodecanacci numbers (12th-order Fibonacci sequence): a(n) = a(n-1) +...+ a(n-12) with a(0)=...=a(11)=1.

The programs for A207539, there is no canonical definition to state claims against.
-/

/-! ## A207539.P4041878418387634564

`A319409(A163551(n+2))`
-/

namespace A207539.P4041878418387634564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319409 (A163551 (n + 2)).toNat

end

end A207539.P4041878418387634564

/-! ## A207539.P6173638841070835861

`C(A091205(n), A333381(A217152(n+1)))`
-/

namespace A207539.P6173638841070835861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091205 n).toNat (A333381 (A217152 (n + 1)).toNat).toNat

end

end A207539.P6173638841070835861

/-!
# A207540: Degrees (with multiplicity) of simple surface singularities (ADE singularities, Du Val singularities, double rational points, Gorenstein quotient singularities, Klein singularities).

The programs for A207540, there is no canonical definition to state claims against.
-/

/-! ## A207540.P13320423804655162120

`A113724(A008676(A018252(∑[n+1]))+n+1)`
-/

namespace A207540.P13320423804655162120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113724 (A008676 (A018252 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n + 1 : ℤ)).toNat

end

end A207540.P13320423804655162120

/-! ## A207540.P16009685608548055981

`∑[A028953(A005408(A101410(n+1)))]`
-/

namespace A207540.P16009685608548055981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A005408 (A101410 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207540.P16009685608548055981

/-!
# A207541: Expansion of phi(q)^3 * phi(-q) in powers of q where phi() is a Ramanujan theta function.

The programs for A207541, there is no canonical definition to state claims against.
-/

/-! ## A207541.P18025358354697096261

`(-1)^n*A208451(n)`
-/

namespace A207541.P18025358354697096261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A208451 n

end

end A207541.P18025358354697096261

/-! ## A207541.P6217590489150675339

`2*A236923(n)-A000118(n)`
-/

namespace A207541.P6217590489150675339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236923 n - A000118 n

end

end A207541.P6217590489150675339

/-! ## A207541.P5525035199587471394

`2*A236922(n)-A097057(n)`
-/

namespace A207541.P5525035199587471394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236922 n - A097057 n

end

end A207541.P5525035199587471394

/-! ## A207541.P2492180767140713499

`2*A236922(n)-A236922(A005843(n))`
-/

namespace A207541.P2492180767140713499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236922 n - A236922 (A005843 n).toNat

end

end A207541.P2492180767140713499

/-! ## A207541.P1614241831003155996

`A005843(A236922(n))-A236922(A005843(n))`
-/

namespace A207541.P1614241831003155996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A236922 n).toNat - A236922 (A005843 n).toNat

end

end A207541.P1614241831003155996

/-! ## A207541.P10718126348907399066

`A261403(2*n)`
-/

namespace A207541.P10718126348907399066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261403 (2 * n)

end

end A207541.P10718126348907399066

/-!
# A207542: Number of solid standard Young tableaux with n cells.

The programs for A207542, there is no canonical definition to state claims against.
-/

/-! ## A207542.P3831721466067160372

`A215120(∑[n])`
-/

namespace A207542.P3831721466067160372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207542.P3831721466067160372

/-! ## A207542.P8500118492691763634

`or(1, A215120(floor((2*n+1)²/8)))`
-/

namespace A207542.P8500118492691763634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A215120 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat)

end

end A207542.P8500118492691763634

/-! ## A207542.P16283919759652557249

`A215120(A000217(n))+A185246(n)`
-/

namespace A207542.P16283919759652557249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215120 (A000217 n).toNat + A185246 n

end

end A207542.P16283919759652557249

/-! ## A207542.P3377357452630816816

`A015526(n)*A215120(A000217(n))`
-/

namespace A207542.P3377357452630816816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n * A215120 (A000217 n).toNat

end

end A207542.P3377357452630816816

/-! ## A207542.P5713606487878914384

`A015600(n)*A215120(A000217(n))`
-/

namespace A207542.P5713606487878914384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A215120 (A000217 n).toNat

end

end A207542.P5713606487878914384

/-!
# A207543: Triangle read by rows, expansion of (1+y*x)/(1-2*y*x+y*(y-1)*x^2).

The programs for A207543, the canonical program `A207543.P2222567261959713361` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207543 has offset 0).

The definition of A207543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207543.P2222567261959713361

`2*A119900(n)-A098158(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A207543

/-- `2*A119900(n)-A098158(n)` -/
def P2222567261959713361.Spec : Prop :=
  ∀ n, P2222567261959713361.a n = A207543 n

theorem P2222567261959713361.correct : P2222567261959713361.Spec := by
  intro n
  simp only [A207543]

end A207543

/-! ## A207543.P350295402939304458

`A091042(n)/A103327(n)*A098158(n)`
-/

namespace A207543.P350295402939304458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091042 n : ℚ) / (A103327 n : ℚ) * (A098158 n : ℚ)

end

end A207543.P350295402939304458

namespace A207543

/-- `A091042(n)/A103327(n)*A098158(n)` -/
def P350295402939304458.Spec : Prop :=
  ∀ n, P350295402939304458.a n = (A207543 n : ℚ)

end A207543

/-! ## A207543.P11825714936990402598

`A029637(A185180(n+1))*A101688(n)`
-/

namespace A207543.P11825714936990402598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (A185180 (n + 1)).toNat * A101688 n

end

end A207543.P11825714936990402598

namespace A207543

/-- `A029637(A185180(n+1))*A101688(n)` -/
def P11825714936990402598.Spec : Prop :=
  ∀ n, P11825714936990402598.a n = A207543 n

end A207543

/-! ## A207543.P8333340680777577806

`A029635(A132118(n+1))*A101688(n)`
-/

namespace A207543.P8333340680777577806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A132118 (n + 1)).toNat * A101688 n

end

end A207543.P8333340680777577806

namespace A207543

/-- `A029635(A132118(n+1))*A101688(n)` -/
def P8333340680777577806.Spec : Prop :=
  ∀ n, P8333340680777577806.a n = A207543 n

end A207543

/-! ## A207543.P15646420809666021886

`A114525(A091995(2*(n+1)))`
-/

namespace A207543.P15646420809666021886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 (A091995 (2 * (n + 1))).toNat

end

end A207543.P15646420809666021886

namespace A207543

/-- `A114525(A091995(2*(n+1)))` -/
def P15646420809666021886.Spec : Prop :=
  ∀ n, P15646420809666021886.a n = A207543 n

end A207543

/-! ## A207543.P10419821502979430301

`A005843(A119900(n))-A098158(n)`
-/

namespace A207543.P10419821502979430301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A119900 n).toNat - A098158 n

end

end A207543.P10419821502979430301

namespace A207543

/-- `A005843(A119900(n))-A098158(n)` -/
def P10419821502979430301.Spec : Prop :=
  ∀ n, P10419821502979430301.a n = A207543 n

end A207543

/-!
# A207544: Number of n X n 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207544, there is no canonical definition to state claims against.
-/

/-! ## A207544.P16175536070616979667

`A207550((n+1)²+n²)`
-/

namespace A207544.P16175536070616979667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 ((n + 1) ^ 2 + n ^ 2)

end

end A207544.P16175536070616979667

/-!
# A207545: Number of nX3 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207545, there is no canonical definition to state claims against.
-/

/-! ## A207545.P837961911440076030

`A207550(∑[n+3]+1)`
-/

namespace A207545.P837961911440076030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207545.P837961911440076030

/-!
# A207546: Number of nX4 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207546, there is no canonical definition to state claims against.
-/

/-! ## A207546.P3982113504121837923

`A207550(A141214(n+1))`
-/

namespace A207546.P3982113504121837923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A141214 (n + 1)).toNat

end

end A207546.P3982113504121837923

/-! ## A207546.P171279487486548535

`A207550(A055998(n+2))`
-/

namespace A207546.P171279487486548535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A055998 (n + 2)).toNat

end

end A207546.P171279487486548535

/-! ## A207546.P17603242244911525046

`A207550(A155212(n)+5)`
-/

namespace A207546.P17603242244911525046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A155212 n + 5).toNat

end

end A207546.P17603242244911525046

/-! ## A207546.P12678919562108647112

`A207550(eq[3, A193592(n)])`
-/

namespace A207546.P12678919562108647112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207546.P12678919562108647112

/-! ## A207546.P17536166552052484636

`A207550(A052905(n+1)+2)`
-/

namespace A207546.P17536166552052484636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A052905 (n + 1) + 2).toNat

end

end A207546.P17536166552052484636

/-!
# A207547: Number of nX5 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207547, there is no canonical definition to state claims against.
-/

/-! ## A207547.P7011869693472138518

`A207550(Δ[A264443(n)])`
-/

namespace A207547.P7011869693472138518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (f1 (n + 1) - f1 n).toNat

end

end A207547.P7011869693472138518

/-! ## A207547.P14365369846026124794

`A207550(A046691(n+3))`
-/

namespace A207547.P14365369846026124794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A046691 (n + 3)).toNat

end

end A207547.P14365369846026124794

/-! ## A207547.P529785564381537427

`A207550(A056115(n)+11)`
-/

namespace A207547.P529785564381537427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A056115 n + 11).toNat

end

end A207547.P529785564381537427

/-! ## A207547.P2982183727575286703

`A207550(eq[4, A193592(n)])`
-/

namespace A207547.P2982183727575286703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207547.P2982183727575286703

/-! ## A207547.P13408466104741779018

`A207550(Δ[A023545(n+1)])`
-/

namespace A207547.P13408466104741779018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (f1 (n + 1) - f1 n).toNat

end

end A207547.P13408466104741779018

/-!
# A207548: Number of nX6 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207548, there is no canonical definition to state claims against.
-/

/-! ## A207548.P13592436178724229172

`A207550(A052905(n+3))`
-/

namespace A207548.P13592436178724229172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A052905 (n + 3)).toNat

end

end A207548.P13592436178724229172

/-! ## A207548.P7697527697672031709

`A207550(Δ[Δ[A006504(n+1)]])`
-/

namespace A207548.P7697527697672031709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (f1 (n + 1) - f1 n).toNat

end

end A207548.P7697527697672031709

/-! ## A207548.P4396415549305442809

`A207550(Δ[A264443(n+1)]-1)`
-/

namespace A207548.P4396415549305442809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (f1 (n + 1) - f1 n - 1).toNat

end

end A207548.P4396415549305442809

/-!
# A207549: Number of nX7 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207549, there is no canonical definition to state claims against.
-/

/-! ## A207549.P16833826877628428071

`A207550(A055999(n+4))`
-/

namespace A207549.P16833826877628428071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A055999 (n + 4)).toNat

end

end A207549.P16833826877628428071

/-! ## A207549.P3945272757864574850

`A207550(eq[6, A193592(n)])`
-/

namespace A207549.P3945272757864574850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207549.P3945272757864574850

/-!
# A207550: T(n,k) = Number of n X k 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207550, there is no canonical definition to state claims against.
-/

/-! ## A207550.P6373444395847685037

`A206700(A084192(∑[n]))`
-/

namespace A207550.P6373444395847685037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207550.P6373444395847685037

/-! ## A207550.P1114926100152083623

`A206700(A084193(∑[n]))`
-/

namespace A207550.P1114926100152083623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207550.P1114926100152083623

/-! ## A207550.P1305015934435411291

`A206700(A177878(∑[n]))`
-/

namespace A207550.P1305015934435411291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206700 (A177878 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207550.P1305015934435411291

/-! ## A207550.P5817446834169328116

`A004151(A206700(n+1))`
-/

namespace A207550.P5817446834169328116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A206700 (n + 1)).toNat

end

end A207550.P5817446834169328116

/-! ## A207550.P9633436105813104361

`A004151(A207317(n+1))`
-/

namespace A207550.P9633436105813104361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A207317 (n + 1)).toNat

end

end A207550.P9633436105813104361

/-!
# A207551: Number of 3Xn 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207551, there is no canonical definition to state claims against.
-/

/-! ## A207551.P12931616926571417683

`A207550(∑[n+2]+4)`
-/

namespace A207551.P12931616926571417683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207551.P12931616926571417683

/-! ## A207551.P2283328273955871641

`A207550(A167614(n+1))+A185284(n)`
-/

namespace A207551.P2283328273955871641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A167614 (n + 1)).toNat + A185284 n

end

end A207551.P2283328273955871641

/-! ## A207551.P13798883559869170429

`A326688(n)+A207550(A167614(n+1))`
-/

namespace A207551.P13798883559869170429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A207550 (A167614 (n + 1)).toNat

end

end A207551.P13798883559869170429

/-! ## A207551.P255750042026839724

`A207550(A167614(n+1))*A269626(n)`
-/

namespace A207551.P255750042026839724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A167614 (n + 1)).toNat * A269626 n

end

end A207551.P255750042026839724

/-! ## A207551.P12925097389792974752

`lcm(A033999(n), A207550(A167614(n+1)))`
-/

namespace A207551.P12925097389792974752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207550 (A167614 (n + 1)).toNat)

end

end A207551.P12925097389792974752

/-!
# A207552: Number of 4Xn 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207552, there is no canonical definition to state claims against.
-/

/-! ## A207552.P11419265263632131069

`A207550(A141214(n)+7)`
-/

namespace A207552.P11419265263632131069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A141214 n + 7).toNat

end

end A207552.P11419265263632131069

/-! ## A207552.P7880734343356268886

`A207550(A052905(n)+9)`
-/

namespace A207552.P7880734343356268886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A052905 n + 9).toNat

end

end A207552.P7880734343356268886

/-! ## A207552.P3623455094204060236

`A207550(A055999(n)+10)`
-/

namespace A207552.P3623455094204060236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A055999 n + 10).toNat

end

end A207552.P3623455094204060236

/-! ## A207552.P7525556461649450574

`A207550(A167614(n+2)+1)`
-/

namespace A207552.P7525556461649450574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A167614 (n + 2) + 1).toNat

end

end A207552.P7525556461649450574

/-! ## A207552.P12995445589172003880

`A207550(A166136(n+2)-2)`
-/

namespace A207552.P12995445589172003880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A166136 (n + 2) - 2).toNat

end

end A207552.P12995445589172003880

/-!
# A207553: Number of 5 X n 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207553, there is no canonical definition to state claims against.
-/

/-! ## A207553.P7889216812429715762

`A207550(A167499(n+3))`
-/

namespace A207553.P7889216812429715762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A167499 (n + 3)).toNat

end

end A207553.P7889216812429715762

/-! ## A207553.P4816933526034349683

`A207550(A155212(n)+13)`
-/

namespace A207553.P4816933526034349683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A155212 n + 13).toNat

end

end A207553.P4816933526034349683

/-! ## A207553.P3644924206362216851

`A207550(A056000(n)+15)`
-/

namespace A207553.P3644924206362216851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A056000 n + 15).toNat

end

end A207553.P3644924206362216851

/-! ## A207553.P5346946395327343759

`A207550(A000217(n+4)+5)`
-/

namespace A207553.P5346946395327343759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A000217 (n + 4) + 5).toNat

end

end A207553.P5346946395327343759

/-! ## A207553.P8177134077290877594

`A207550(A052905(n+1)+10)`
-/

namespace A207553.P8177134077290877594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A052905 (n + 1) + 10).toNat

end

end A207553.P8177134077290877594

/-!
# A207554: Number of 6Xn 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207554, there is no canonical definition to state claims against.
-/

/-! ## A207554.P4803976405885394609

`A207550(A166136(n+4))`
-/

namespace A207554.P4803976405885394609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (A166136 (n + 4)).toNat

end

end A207554.P4803976405885394609

/-! ## A207554.P16087229507043709966

`A207550(Δ[A023545(n+1)]+10)`
-/

namespace A207554.P16087229507043709966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (f1 (n + 1) - f1 n + 10).toNat

end

end A207554.P16087229507043709966

/-!
# A207555: Number of 7Xn 0..2 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207555, there is no canonical definition to state claims against.
-/

/-! ## A207555.P3898134809656411306

`A207550(C(n+7, 2)+7)`
-/

namespace A207555.P3898134809656411306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207550 (Nat.choose (n + 7) 2 + 7)

end

end A207555.P3898134809656411306

/-!
# A207556: G.f.: Sum_{n>=0} (1+x)^n * Product_{k=1..n} ((1+x)^k - 1).

The programs for A207556, there is no canonical definition to state claims against.
-/

/-! ## A207556.P3466624609421332167

`2*A179525(n)-a(n-1)` with `a(0)=1`
-/

namespace A207556.P3466624609421332167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A179525 n - a (n - 1)

end

end A207556.P3466624609421332167

/-! ## A207556.P6921322877073659768

`A064736(A215522(n))-A275768(n)`
-/

namespace A207556.P6921322877073659768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A215522 n).toNat - A275768 n

end

end A207556.P6921322877073659768

/-! ## A207556.P14729001546342849892

`A064736(A215522(n))-A335447(n+1)`
-/

namespace A207556.P14729001546342849892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A215522 n).toNat - A335447 (n + 1)

end

end A207556.P14729001546342849892

/-!
# A207557: G.f.: Sum_{n>=0} 1/(1+x)^(n^2-n) * Product_{k=1..n} ((1+x)^(2*k-1) - 1).

The programs for A207557, there is no canonical definition to state claims against.
-/

/-! ## A207557.P9855361806518116773

`A060508((1-2*n)²*a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A207557.P9855361806518116773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060508 ((1 - (2 * n : ℤ)) ^ 2 * a (n - 1) + 1).toNat

end

end A207557.P9855361806518116773

/-! ## A207557.P12887738138531868589

`A048486(A301594(n))`
-/

namespace A207557.P12887738138531868589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048486 (A301594 n).toNat

end

end A207557.P12887738138531868589

/-!
# A207558: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207558, there is no canonical definition to state claims against.
-/

/-! ## A207558.P361936422614764652

`A207564((n+1)²+n²)`
-/

namespace A207558.P361936422614764652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 ((n + 1) ^ 2 + n ^ 2)

end

end A207558.P361936422614764652

/-! ## A207558.P6591756884644233699

`record[A003982(n)*A207564(n+1)]`
-/

namespace A207558.P6591756884644233699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207558.P6591756884644233699

/-! ## A207558.P13738621553231037445

`record[root(A207564(n+1), A027420(n))]`
-/

namespace A207558.P13738621553231037445
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207564 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207558.P13738621553231037445

/-! ## A207558.P4091185737253186699

`record[gcd(A114327(n), A207564(n+1))]`
-/

namespace A207558.P4091185737253186699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207564 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207558.P4091185737253186699

/-! ## A207558.P4797964161067746928

`A207564(A001844(n))+A008683(8*(n+1))`
-/

namespace A207558.P4797964161067746928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A001844 n).toNat + A008683 (8 * (n + 1))

end

end A207558.P4797964161067746928

/-!
# A207559: Number of n X 3 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207559, there is no canonical definition to state claims against.
-/

/-! ## A207559.P12592361152305169291

`A207564(∑[n+3]+1)`
-/

namespace A207559.P12592361152305169291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207559.P12592361152305169291

/-! ## A207559.P1264260303982261761

`A208007(∑[n+2]+4)`
-/

namespace A207559.P1264260303982261761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207559.P1264260303982261761

/-! ## A207559.P11826434085200415681

`lcm((-1)^n, A208007(A167614(n+1)))`
-/

namespace A207559.P11826434085200415681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A208007 (A167614 (n + 1)).toNat)

end

end A207559.P11826434085200415681

/-! ## A207559.P9846928944035112457

`A208007(A167614(n+1))%A222117(n)`
-/

namespace A207559.P9846928944035112457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208007 (A167614 (n + 1)).toNat) (A222117 n)

end

end A207559.P9846928944035112457

/-! ## A207559.P14529055200171714523

`A208007(A167614(n+1))+A034550(n+1)`
-/

namespace A207559.P14529055200171714523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208007 (A167614 (n + 1)).toNat + A034550 (n + 1)

end

end A207559.P14529055200171714523

/-!
# A207560: Number of n X 4 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207560, there is no canonical definition to state claims against.
-/

/-! ## A207560.P5671310094888979554

`A207564(A141214(n+1))`
-/

namespace A207560.P5671310094888979554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A141214 (n + 1)).toNat

end

end A207560.P5671310094888979554

/-! ## A207560.P8731837656663487249

`A207564(A027379(n+2))`
-/

namespace A207560.P8731837656663487249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A027379 (n + 2)).toNat

end

end A207560.P8731837656663487249

/-! ## A207560.P9671655497658583799

`A207564(A055998(n+2))`
-/

namespace A207560.P9671655497658583799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A055998 (n + 2)).toNat

end

end A207560.P9671655497658583799

/-! ## A207560.P7283748721651878333

`A207564(A056000(n)+7)`
-/

namespace A207560.P7283748721651878333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A056000 n + 7).toNat

end

end A207560.P7283748721651878333

/-! ## A207560.P13966323632454743069

`A207564(A052905(n+1)+2)`
-/

namespace A207560.P13966323632454743069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A052905 (n + 1) + 2).toNat

end

end A207560.P13966323632454743069

/-!
# A207561: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207561, there is no canonical definition to state claims against.
-/

/-! ## A207561.P5694185501831914528

`A207564(A046691(n+3))`
-/

namespace A207561.P5694185501831914528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A046691 (n + 3)).toNat

end

end A207561.P5694185501831914528

/-! ## A207561.P3985788572524415676

`A207564(Δ[A023545(n+1)])`
-/

namespace A207561.P3985788572524415676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (f1 (n + 1) - f1 n).toNat

end

end A207561.P3985788572524415676

/-! ## A207561.P15020929292326619021

`A207564(A056000(n+1)+6)`
-/

namespace A207561.P15020929292326619021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A056000 (n + 1) + 6).toNat

end

end A207561.P15020929292326619021

/-! ## A207561.P16305966391723909655

`A207564(record[xor(1, n)]+A141214(n)+7)`
-/

namespace A207561.P16305966391723909655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + (A141214 n + 7)).toNat

end

end A207561.P16305966391723909655

/-! ## A207561.P14151415508745847890

`A207564(eq[2, A020639(n+1)]+A141214(n)+7)`
-/

namespace A207561.P14151415508745847890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (A141214 n + 7)).toNat

end

end A207561.P14151415508745847890

/-!
# A207562: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207562, there is no canonical definition to state claims against.
-/

/-! ## A207562.P14533059075238807227

`A207564(A052905(n+3))`
-/

namespace A207562.P14533059075238807227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A052905 (n + 3)).toNat

end

end A207562.P14533059075238807227

/-! ## A207562.P11542431296061947939

`A207564(A055999(n+3)+1)`
-/

namespace A207562.P11542431296061947939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A055999 (n + 3) + 1).toNat

end

end A207562.P11542431296061947939

/-! ## A207562.P13160173120912020503

`A207564(A000217(n+6)-5)`
-/

namespace A207562.P13160173120912020503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000217 (n + 6) - 5).toNat

end

end A207562.P13160173120912020503

/-! ## A207562.P5622112461236631317

`A207564(A000124(n+6)-6)`
-/

namespace A207562.P5622112461236631317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000124 (n + 6) - 6).toNat

end

end A207562.P5622112461236631317

/-! ## A207562.P15290340343052040954

`A207564(Δ[Δ[A006504(n+1)]])`
-/

namespace A207562.P15290340343052040954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (f1 (n + 1) - f1 n).toNat

end

end A207562.P15290340343052040954

/-!
# A207563: Number of nX7 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207563, there is no canonical definition to state claims against.
-/

/-! ## A207563.P17086443677005234983

`A207564(A055999(n+4))`
-/

namespace A207563.P17086443677005234983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A055999 (n + 4)).toNat

end

end A207563.P17086443677005234983

/-! ## A207563.P16112767064752595684

`A207564(A000124(n+7)-7)`
-/

namespace A207563.P16112767064752595684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000124 (n + 7) - 7).toNat

end

end A207563.P16112767064752595684

/-! ## A207563.P17808260757618111049

`A207564(A167614(n+6)-9)`
-/

namespace A207563.P17808260757618111049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A167614 (n + 6) - 9).toNat

end

end A207563.P17808260757618111049

/-! ## A207563.P8236380238677822926

`A207564(A000096(n+5)+n+2)`
-/

namespace A207563.P8236380238677822926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A207563.P8236380238677822926

/-! ## A207563.P12197644609262629594

`A207564(A000217(n+6)+n+1)`
-/

namespace A207563.P12197644609262629594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207563.P12197644609262629594

/-!
# A207564: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207564, there is no canonical definition to state claims against.
-/

/-! ## A207564.P18049278666168039641

`A207419(C(A269395(n+1), n))`
-/

namespace A207564.P18049278666168039641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (Nat.choose (A269395 (n + 1)).toNat n)

end

end A207564.P18049278666168039641

/-! ## A207564.P8840611483579034863

`A207419(n+1)%A014603(n+1)`
-/

namespace A207564.P8840611483579034863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207419 (n + 1)) (A014603 (n + 1))

end

end A207564.P8840611483579034863

/-! ## A207564.P9459485722841886198

`A207419(n+1)+A000007(A003229(n))`
-/

namespace A207564.P9459485722841886198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (n + 1) + A000007 (A003229 n).toNat

end

end A207564.P9459485722841886198

/-! ## A207564.P2050056756439173108

`A207419(n+1)+A000007(A006955(n))`
-/

namespace A207564.P2050056756439173108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (n + 1) + A000007 (A006955 n).toNat

end

end A207564.P2050056756439173108

/-! ## A207564.P15283163163179734753

`A207419(n+1)+A000007(A023359(n))`
-/

namespace A207564.P15283163163179734753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (n + 1) + A000007 (A023359 n).toNat

end

end A207564.P15283163163179734753

/-!
# A207565: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207565, there is no canonical definition to state claims against.
-/

/-! ## A207565.P16806681081305222702

`A207564(∑[n+3]+7)`
-/

namespace A207565.P16806681081305222702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207565.P16806681081305222702

/-! ## A207565.P7541155890054973023

`lcm((-1)^n, A207564(A141214(n)+7))`
-/

namespace A207565.P7541155890054973023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A207564 (A141214 n + 7).toNat)

end

end A207565.P7541155890054973023

/-! ## A207565.P8972893988348877389

`or(A036987(2*n), A207564(A141214(n)+7))`
-/

namespace A207565.P8972893988348877389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (2 * n)) (A207564 (A141214 n + 7).toNat)

end

end A207565.P8972893988348877389

/-! ## A207565.P10935327122922873206

`A001221(A054801(n+1))*A207564(A141214(n)+7)`
-/

namespace A207565.P10935327122922873206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A054801 (n + 1)).toNat * A207564 (A141214 n + 7).toNat

end

end A207565.P10935327122922873206

/-!
# A207566: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207566, there is no canonical definition to state claims against.
-/

/-! ## A207566.P612404866354563205

`A207564(A167499(n+3))`
-/

namespace A207566.P612404866354563205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A167499 (n + 3)).toNat

end

end A207566.P612404866354563205

/-! ## A207566.P16805607667564501796

`A207564(A056000(n)+15)`
-/

namespace A207566.P16805607667564501796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A056000 n + 15).toNat

end

end A207566.P16805607667564501796

/-! ## A207566.P8649704834277391755

`A207564(A000217(n+4)+5)`
-/

namespace A207566.P8649704834277391755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000217 (n + 4) + 5).toNat

end

end A207566.P8649704834277391755

/-! ## A207566.P18273866066212160563

`A207564(A141214(n+1)+8)`
-/

namespace A207566.P18273866066212160563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A141214 (n + 1) + 8).toNat

end

end A207566.P18273866066212160563

/-! ## A207566.P8314799801167398560

`A207564(A052905(n+1)+10)`
-/

namespace A207566.P8314799801167398560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A052905 (n + 1) + 10).toNat

end

end A207566.P8314799801167398560

/-!
# A207567: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207567, there is no canonical definition to state claims against.
-/

/-! ## A207567.P4936000526353912075

`A207564(A166136(n+4))`
-/

namespace A207567.P4936000526353912075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A166136 (n + 4)).toNat

end

end A207567.P4936000526353912075

/-! ## A207567.P9261323500670941409

`A207564(A167499(n+4)+1)`
-/

namespace A207567.P9261323500670941409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A167499 (n + 4) + 1).toNat

end

end A207567.P9261323500670941409

/-! ## A207567.P11731797856258466280

`A207564(A000217(n+5)+6)`
-/

namespace A207567.P11731797856258466280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000217 (n + 5) + 6).toNat

end

end A207567.P11731797856258466280

/-! ## A207567.P8861094458471156293

`A207564(A141214(n+2)+9)`
-/

namespace A207567.P8861094458471156293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A141214 (n + 2) + 9).toNat

end

end A207567.P8861094458471156293

/-! ## A207567.P17291282276349238098

`A207564(A052905(n+2)+11)`
-/

namespace A207567.P17291282276349238098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A052905 (n + 2) + 11).toNat

end

end A207567.P17291282276349238098

/-!
# A207568: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A207568, there is no canonical definition to state claims against.
-/

/-! ## A207568.P8445836859601450355

`A207564(A000096(n+5)+8)`
-/

namespace A207568.P8445836859601450355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000096 (n + 5) + 8).toNat

end

end A207568.P8445836859601450355

/-! ## A207568.P17854167665230369279

`A207564(A000217(n+6)+7)`
-/

namespace A207568.P17854167665230369279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A000217 (n + 6) + 7).toNat

end

end A207568.P17854167665230369279

/-! ## A207568.P14592540618859934013

`A207564(A055998(n+4)+10)`
-/

namespace A207568.P14592540618859934013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A055998 (n + 4) + 10).toNat

end

end A207568.P14592540618859934013

/-! ## A207568.P5061059503908963389

`A207564(A161680(n+7)+7)`
-/

namespace A207568.P5061059503908963389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A161680 (n + 7) + 7).toNat

end

end A207568.P5061059503908963389

/-! ## A207568.P5645331007860386916

`A207564(A052905(n+3)+12)`
-/

namespace A207568.P5645331007860386916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207564 (A052905 (n + 3) + 12).toNat

end

end A207568.P5645331007860386916

/-!
# A207569: G.f.: Sum_{n>=0} Product_{k=1..n} ((1+x)^(2*k-1) - 1).

The programs for A207569, there is no canonical definition to state claims against.
-/

/-! ## A207569.P9486008149152308049

`A048801(n)+A001065(A001147(n))`
-/

namespace A207569.P9486008149152308049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048801 n + A001065 (A001147 n).toNat

end

end A207569.P9486008149152308049

/-! ## A207569.P13939776777169621990

`A008619(A121323(n)+A020049(n))`
-/

namespace A207569.P13939776777169621990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A121323 n + A020049 n).toNat

end

end A207569.P13939776777169621990

/-!
# A207570: G.f.: Sum_{n>=0} Product_{k=1..n} ((1+x)^(3*k-2) - 1).

The programs for A207570, there is no canonical definition to state claims against.
-/

/-! ## A207570.P9939354109921843740

`A087062(∑[(n+2)^(n+1)])`
-/

namespace A207570.P9939354109921843740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207570.P9939354109921843740

/-!
# A207571: G.f.: Sum_{n>=0} Product_{k=1..n} ((1+x)^(3*k-1) - 1).

The programs for A207571, there is no canonical definition to state claims against.
-/

/-! ## A207571.P14603752837010100288

`∑[n*A106747(8*a(n-1))+1]` with `a(0)=1, a(1)=1`
-/

namespace A207571.P14603752837010100288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) * A106747 (8 * f1 (n - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207571.P14603752837010100288

/-!
# A207572: Least number k > 0 such that 3*prime(n)*2^k-1 is a prime number.

The programs for A207572, there is no canonical definition to state claims against.
-/

/-! ## A207572.P5343932494553786702

`A050412(3*p?[round(8*n/7)]-1)`
-/

namespace A207572.P5343932494553786702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A207572.P5343932494553786702

/-! ## A207572.P4970659105150267295

`A040081(C(2, n+2)+3*p?[round(8*n/7)])`
-/

namespace A207572.P4970659105150267295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 ((Nat.choose 2 (n + 2) : ℤ) + 3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A207572.P4970659105150267295

/-! ## A207572.P5816725524195136919

`A040081(3*p?[A195159(n)])`
-/

namespace A207572.P5816725524195136919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A207572.P5816725524195136919

/-! ## A207572.P1416430036626229281

`A050412(A001281(p?[xor(1, n)]))`
-/

namespace A207572.P1416430036626229281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A001281 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A207572.P1416430036626229281

/-! ## A207572.P9883214314110631119

`A050412(A001748(n+1)-1)`
-/

namespace A207572.P9883214314110631119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A001748 (n + 1) - 1).toNat

end

end A207572.P9883214314110631119

/-! ## A207572.P3053284472728255809

`A050412(A129075(n+1)-5)`
-/

namespace A207572.P3053284472728255809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A129075 (n + 1) - 5).toNat

end

end A207572.P3053284472728255809

/-! ## A207572.P15402159179613927752

`A040081(or(1, A001748(n+1)))`
-/

namespace A207572.P15402159179613927752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (Int.lor 1 (A001748 (n + 1))).toNat

end

end A207572.P15402159179613927752

/-! ## A207572.P7429591027134651868

`A050412(3*A000040(n+1)-1)`
-/

namespace A207572.P7429591027134651868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (3 * A000040 (n + 1) - 1).toNat

end

end A207572.P7429591027134651868

/-! ## A207572.P3929492418407062364

`A040081(A001748(n+1)+C(4, n+1))`
-/

namespace A207572.P3929492418407062364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A001748 (n + 1) + (Nat.choose 4 (n + 1) : ℤ)).toNat

end

end A207572.P3929492418407062364

/-! ## A207572.P6677707060744520760

`A040081(3*A000040(round(sqrt(n²+1))+1))`
-/

namespace A207572.P6677707060744520760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (3 * A000040 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat).toNat

end

end A207572.P6677707060744520760

/-! ## A207572.P6503036171743784108

`A040081(A008486(p?[A257143(n)]))`
-/

namespace A207572.P6503036171743784108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A008486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A207572.P6503036171743784108

/-! ## A207572.P9461646868675038817

`A040081(A109613(A001748(n+1)))`
-/

namespace A207572.P9461646868675038817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A109613 (A001748 (n + 1)).toNat).toNat

end

end A207572.P9461646868675038817

/-! ## A207572.P10224886160016369136

`A050412(A001281(A008578(n+2)))`
-/

namespace A207572.P10224886160016369136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A001281 (A008578 (n + 2)).toNat).toNat

end

end A207572.P10224886160016369136

/-! ## A207572.P13057914441736749273

`A040081(A001748(n+1)+A000007(n))`
-/

namespace A207572.P13057914441736749273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A001748 (n + 1) + A000007 n).toNat

end

end A207572.P13057914441736749273

/-! ## A207572.P10436906529527085979

`A050412(A100484(n+1)+record[A000010(n+1)])`
-/

namespace A207572.P10436906529527085979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A100484 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207572.P10436906529527085979

/-! ## A207572.P7498444619834114942

`A040081(A094497(n)+A001748(n+1))`
-/

namespace A207572.P7498444619834114942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A094497 n + A001748 (n + 1)).toNat

end

end A207572.P7498444619834114942

/-!
# A207573: a(1)=1, a(n+1) = prime(a(n)+1) - a(n).

The programs for A207573, there is no canonical definition to state claims against.
-/

/-! ## A207573.P9162209444138715404

`A001748(a(n-1)+1)/3-a(n-1)` with `a(0)=1`
-/

namespace A207573.P9162209444138715404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001748 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) / 3 - a (n - 1)

end

end A207573.P9162209444138715404

/-! ## A207573.P14214892107583736864

`A014692(a(n-1)+1)` with `a(0)=1`
-/

namespace A207573.P14214892107583736864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014692 (a (n - 1) + 1).toNat

end

end A207573.P14214892107583736864

/-! ## A207573.P7181119220128246030

`A014689(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A207573.P7181119220128246030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014689 (a (n - 1) + 1).toNat + 1

end

end A207573.P7181119220128246030

/-! ## A207573.P12346820099243209223

`A065890(a(n-1)+1)+2` with `a(0)=1`
-/

namespace A207573.P12346820099243209223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065890 (a (n - 1) + 1).toNat + 2

end

end A207573.P12346820099243209223

/-! ## A207573.P17568469133043607014

`A065091(a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A207573.P17568469133043607014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065091 (a (n - 1)).toNat - a (n - 1)

end

end A207573.P17568469133043607014

/-!
# A207574: Numbers k such that phi(k)+2 divides k+2.

The programs for A207574, there is no canonical definition to state claims against.
-/

/-! ## A207574.P10893501391820863010

`gcd(2*A322394(n+1), floor(acot(n)))`
-/

namespace A207574.P10893501391820863010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A322394 (n + 1)) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A207574.P10893501391820863010

/-! ## A207574.P17996834163623819017

`A064680(A322394(n+1))`
-/

namespace A207574.P17996834163623819017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A322394 (n + 1)).toNat

end

end A207574.P17996834163623819017

/-! ## A207574.P10734554129279810434

`A007913(2*A322394(n+1))`
-/

namespace A207574.P10734554129279810434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * A322394 (n + 1)).toNat

end

end A207574.P10734554129279810434

/-! ## A207574.P2121454000428061405

`A055231(2*A322394(n+1))`
-/

namespace A207574.P2121454000428061405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (2 * A322394 (n + 1)).toNat

end

end A207574.P2121454000428061405

/-! ## A207574.P7958426082661236782

`A071975(2*A322394(n+1))`
-/

namespace A207574.P7958426082661236782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (2 * A322394 (n + 1)).toNat

end

end A207574.P7958426082661236782

/-! ## A207574.P10743282842981123913

`A048671(lcm(2, A322394(n+1)))`
-/

namespace A207574.P10743282842981123913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (Int.lcm 2 (A322394 (n + 1)))

end

end A207574.P10743282842981123913

/-! ## A207574.P5628978499210427925

`(2*A322394(n+1))%A051227(n+1)`
-/

namespace A207574.P5628978499210427925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A322394 (n + 1)) (A051227 (n + 1))

end

end A207574.P5628978499210427925

/-! ## A207574.P12708138277458948123

`(2*A322394(n+1))^and(1, A000040(n+1))`
-/

namespace A207574.P12708138277458948123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A322394 (n + 1) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A207574.P12708138277458948123

/-! ## A207574.P4378519547617285810

`(2*A322394(n+1))^(n²%(n+1))^A000041(2*n)`
-/

namespace A207574.P4378519547617285810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A322394 (n + 1) : ℝ) ^ (((n ^ 2 % (n + 1) : ℕ) : ℚ) ^ (A000041 (2 * n) : ℤ) : ℝ)

end

end A207574.P4378519547617285810

/-! ## A207574.P18168353913503422488

`a(n-1)*A008683(32*(n+1))+2*A322394(n+1)` with `a(0)=1`
-/

namespace A207574.P18168353913503422488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008683 (32 * (n + 1)) + 2 * A322394 (n + 1)

end

end A207574.P18168353913503422488

/-!
# A207576: Number of n X n 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207576, there is no canonical definition to state claims against.
-/

/-! ## A207576.P14612562110806541644

`A207582((n+1)²+n²)`
-/

namespace A207576.P14612562110806541644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 ((n + 1) ^ 2 + n ^ 2)

end

end A207576.P14612562110806541644

/-!
# A207577: Number of nX3 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207577, there is no canonical definition to state claims against.
-/

/-! ## A207577.P14203016002001382166

`A207582(∑[n+2]+4)`
-/

namespace A207577.P14203016002001382166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207577.P14203016002001382166

/-! ## A207577.P9058793779960857656

`A207582(A167614(n+1))*A214564(n)`
-/

namespace A207577.P9058793779960857656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A167614 (n + 1)).toNat * A214564 n

end

end A207577.P9058793779960857656

/-! ## A207577.P4637037242990839689

`A207582(A167614(n+1))*A238015(n)`
-/

namespace A207577.P4637037242990839689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A167614 (n + 1)).toNat * A238015 n

end

end A207577.P4637037242990839689

/-! ## A207577.P270687836251803528

`lcm(A020985(n), A207582(A167614(n+1)))`
-/

namespace A207577.P270687836251803528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A207582 (A167614 (n + 1)).toNat)

end

end A207577.P270687836251803528

/-! ## A207577.P16655599728360020965

`or(A000007(n), A207582(A167614(n+1)))`
-/

namespace A207577.P16655599728360020965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A207582 (A167614 (n + 1)).toNat)

end

end A207577.P16655599728360020965

/-!
# A207578: Number of nX4 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207578, there is no canonical definition to state claims against.
-/

/-! ## A207578.P3181910435726789262

`A207582(A167614(n+2)+1)`
-/

namespace A207578.P3181910435726789262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A167614 (n + 2) + 1).toNat

end

end A207578.P3181910435726789262

/-! ## A207578.P11936493069560874884

`A207582(Δ[A023545(n+1)-n²])`
-/

namespace A207578.P11936493069560874884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (f1 (n + 1) - f1 n).toNat

end

end A207578.P11936493069560874884

/-! ## A207578.P3008670853126752935

`A207582(∑[n+4]+3)`
-/

namespace A207578.P3008670853126752935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A207578.P3008670853126752935

/-!
# A207579: Number of nX5 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207579, there is no canonical definition to state claims against.
-/

/-! ## A207579.P15600468513745500580

`A207582(A374005(n+1))`
-/

namespace A207579.P15600468513745500580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A374005 (n + 1)).toNat

end

end A207579.P15600468513745500580

/-! ## A207579.P630306902547675087

`A207582(Δ[A023545(n+1)])`
-/

namespace A207579.P630306902547675087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (f1 (n + 1) - f1 n).toNat

end

end A207579.P630306902547675087

/-! ## A207579.P1855227723213183658

`A207582(A000217(n+5)-4)`
-/

namespace A207579.P1855227723213183658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A000217 (n + 5) - 4).toNat

end

end A207579.P1855227723213183658

/-! ## A207579.P12271274284330525628

`A207582(A000124(n+5)-5)`
-/

namespace A207579.P12271274284330525628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A000124 (n + 5) - 5).toNat

end

end A207579.P12271274284330525628

/-!
# A207580: 

The programs for A207580, there is no canonical definition to state claims against.
-/

/-! ## A207580.P15994468571059325722

`A207582(A167499(n+4)+1)`
-/

namespace A207580.P15994468571059325722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A167499 (n + 4) + 1).toNat

end

end A207580.P15994468571059325722

/-! ## A207580.P12951857722366915593

`A207582(A000124(n+5)+5)`
-/

namespace A207580.P12951857722366915593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A000124 (n + 5) + 5).toNat

end

end A207580.P12951857722366915593

/-! ## A207580.P14384595601502078220

`A207582(A052905(n+3))`
-/

namespace A207580.P14384595601502078220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (A052905 (n + 3)).toNat

end

end A207580.P14384595601502078220

/-!
# A207581: 

The programs for A207581, there is no canonical definition to state claims against.
-/

/-! ## A207581.P14611117221004200545

`A207582(eq[6, A025581(n)]+1)`
-/

namespace A207581.P14611117221004200545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207581.P14611117221004200545

/-!
# A207582: T(n,k)=Number of nXk 0..3 arrays avoiding the pattern z+1 z+1 z horizontally and z-1 z-1 z vertically.

The programs for A207582, there is no canonical definition to state claims against.
-/

/-! ## A207582.P5365377376765665435

`A209092(n+1)-A020987(A110148(n+1))`
-/

namespace A207582.P5365377376765665435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A020987 (A110148 (n + 1)).toNat

end

end A207582.P5365377376765665435

/-! ## A207582.P18163134619943701107

`A209092(n+1)-A010054(A207050(n+1))`
-/

namespace A207582.P18163134619943701107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A010054 (A207050 (n + 1)).toNat

end

end A207582.P18163134619943701107

/-! ## A207582.P11793860671812360218

`A209092(n+1)-A101605(A000051(n))`
-/

namespace A207582.P11793860671812360218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A101605 (A000051 n).toNat

end

end A207582.P11793860671812360218

/-! ## A207582.P1299863087334425458

`A209092(n+1)-A206499(A000930(n))`
-/

namespace A207582.P1299863087334425458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A206499 (A000930 n).toNat

end

end A207582.P1299863087334425458

/-! ## A207582.P10112254408315840253

`A209092(n+1)-A206499(A347576(n))`
-/

namespace A207582.P10112254408315840253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (n + 1) - A206499 (A347576 (n + 45)).toNat

end

end A207582.P10112254408315840253

/-!
# A207583: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207583, there is no canonical definition to state claims against.
-/

/-! ## A207583.P4812401227463971982

`A207589((n+1)²+n²)`
-/

namespace A207583.P4812401227463971982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 ((n + 1) ^ 2 + n ^ 2)

end

end A207583.P4812401227463971982

/-! ## A207583.P1478350391173584403

`lcm(2, A207589(A001844(n)))`
-/

namespace A207583.P1478350391173584403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207589 (A001844 n).toNat)

end

end A207583.P1478350391173584403

/-! ## A207583.P14040275639487572179

`record[root(A207589(n+1), A331886(n))]`
-/

namespace A207583.P14040275639487572179
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207589 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207583.P14040275639487572179

/-! ## A207583.P8386986673238326156

`record[gcd(A207589(n+1), A231713(n))]`
-/

namespace A207583.P8386986673238326156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A207589 (n + 1)) (A231713 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207583.P8386986673238326156

/-! ## A207583.P9865788288151491064

`record[root(A207589(n+1), A072030(n+1))]`
-/

namespace A207583.P9865788288151491064
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207589 (n + 1) : ℝ) ^ (1 / (A072030 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207583.P9865788288151491064

/-!
# A207584: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207584, there is no canonical definition to state claims against.
-/

/-! ## A207584.P1112135358613563418

`(A167385(n)+1)*sqrt(A207689(n+1))`
-/

namespace A207584.P1112135358613563418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167385 n + 1 : ℝ) * Real.sqrt (A207689 (n + 1) : ℝ)

end

end A207584.P1112135358613563418

/-! ## A207584.P11701632017165046923

`sqrt(A207025(n+1))*sqrt(A207689(n+1))`
-/

namespace A207584.P11701632017165046923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) : ℝ) * Real.sqrt (A207689 (n + 1) : ℝ)

end

end A207584.P11701632017165046923

/-! ## A207584.P9418392940310682748

`sqrt(A207025(n+1)*A207689(n+1))`
-/

namespace A207584.P9418392940310682748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) * A207689 (n + 1) : ℝ)

end

end A207584.P9418392940310682748

/-! ## A207584.P17053395412893697130

`sqrt(A164315(n+1)²*A207689(n+1))`
-/

namespace A207584.P17053395412893697130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A164315 (n + 1) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P17053395412893697130

/-! ## A207584.P17501766994282769508

`sqrt(record[(2-A023434(n))²]*A207689(n+1))`
-/

namespace A207584.P17501766994282769508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A023434 n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A207689 (n + 1) : ℝ)

end

end A207584.P17501766994282769508

/-! ## A207584.P7708260107162512179

`sqrt((1-A054405(n+2))²*A207689(n+1))`
-/

namespace A207584.P7708260107162512179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((1 - A054405 (n + 2)) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P7708260107162512179

/-! ## A207584.P16799839352944198387

`sqrt((3-A134816(n+8))²*A207689(n+1))`
-/

namespace A207584.P16799839352944198387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - A134816 (n + 8)) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P16799839352944198387

/-! ## A207584.P4680788616019568387

`sqrt((∑[A134816(n+3)]+1)²*A207689(n+1))`
-/

namespace A207584.P4680788616019568387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 * A207689 (n + 1) : ℤ) : ℝ)

end

end A207584.P4680788616019568387

/-! ## A207584.P10071207636640441569

`sqrt((3-Δ[A018917(n+3)])²*A207689(n+1))`
-/

namespace A207584.P10071207636640441569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018917 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - (f1 (n + 1) - f1 n)) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P10071207636640441569

/-! ## A207584.P14635427897105362172

`sqrt((3-Δ[A020720(n+3)])²*A207689(n+1))`
-/

namespace A207584.P14635427897105362172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - (f1 (n + 1) - f1 n)) ^ 2 * A207689 (n + 1) : ℝ)

end

end A207584.P14635427897105362172

/-!
# A207585: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207585, there is no canonical definition to state claims against.
-/

/-! ## A207585.P15415189672764466682

`A207025(n+1)/A207584(n+1)*A207690(n+1)`
-/

namespace A207585.P15415189672764466682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207025 (n + 1) : ℚ) / (A207584 (n + 1) : ℚ) * (A207690 (n + 1) : ℚ)

end

end A207585.P15415189672764466682

/-! ## A207585.P4277875563272138886

`A207584(n+1)/A207689(n+1)*A207690(n+1)`
-/

namespace A207585.P4277875563272138886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207689 (n + 1) : ℚ) * (A207690 (n + 1) : ℚ)

end

end A207585.P4277875563272138886

/-! ## A207585.P18220392941361432352

`sqrt(A207025(n+1))*sqrt(A207691(n+1))`
-/

namespace A207585.P18220392941361432352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) : ℝ) * Real.sqrt (A207691 (n + 1) : ℝ)

end

end A207585.P18220392941361432352

/-! ## A207585.P12483581977796848567

`A207584(n+1)/A207690(n+1)*A207691(n+1)`
-/

namespace A207585.P12483581977796848567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207690 (n + 1) : ℚ) * (A207691 (n + 1) : ℚ)

end

end A207585.P12483581977796848567

/-! ## A207585.P9957804065333700237

`sqrt(A207025(n+1)*A207691(n+1))`
-/

namespace A207585.P9957804065333700237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) * A207691 (n + 1) : ℝ)

end

end A207585.P9957804065333700237

/-!
# A207586: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207586, there is no canonical definition to state claims against.
-/

/-! ## A207586.P9788062680952691742

`A207584(n+1)/A207690(n+1)*A207692(n+1)`
-/

namespace A207586.P9788062680952691742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207690 (n + 1) : ℚ) * (A207692 (n + 1) : ℚ)

end

end A207586.P9788062680952691742

/-! ## A207586.P12607996392634422010

`A207589(A046691(n+3))`
-/

namespace A207586.P12607996392634422010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A046691 (n + 3)).toNat

end

end A207586.P12607996392634422010

/-! ## A207586.P12818184273491026237

`A207589(Δ[A023545(n+1)])`
-/

namespace A207586.P12818184273491026237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (f1 (n + 1) - f1 n).toNat

end

end A207586.P12818184273491026237

/-! ## A207586.P12108345251082841944

`A207589(A052905(n+2)+1)`
-/

namespace A207586.P12108345251082841944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A052905 (n + 2) + 1).toNat

end

end A207586.P12108345251082841944

/-! ## A207586.P4828984554204565271

`A207589(A056000(n+1)+6)`
-/

namespace A207586.P4828984554204565271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A056000 (n + 1) + 6).toNat

end

end A207586.P4828984554204565271

/-!
# A207587: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207587, there is no canonical definition to state claims against.
-/

/-! ## A207587.P6145679449730668230

`A207589(A052905(n+3))`
-/

namespace A207587.P6145679449730668230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A052905 (n + 3)).toNat

end

end A207587.P6145679449730668230

/-! ## A207587.P1603974240847640507

`A207589(A055999(n+3)+1)`
-/

namespace A207587.P1603974240847640507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A055999 (n + 3) + 1).toNat

end

end A207587.P1603974240847640507

/-! ## A207587.P10188956178563401761

`A207589(A046691(n+4)-1)`
-/

namespace A207587.P10188956178563401761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A046691 (n + 4) - 1).toNat

end

end A207587.P10188956178563401761

/-! ## A207587.P666172296927391506

`A207589(A000096(n+5)-4)`
-/

namespace A207587.P666172296927391506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000096 (n + 5) - 4).toNat

end

end A207587.P666172296927391506

/-! ## A207587.P10853791698993875287

`A207589(A000217(n+6)-5)`
-/

namespace A207587.P10853791698993875287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000217 (n + 6) - 5).toNat

end

end A207587.P10853791698993875287

/-!
# A207588: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207588, there is no canonical definition to state claims against.
-/

/-! ## A207588.P17639836494990019784

`A207589(A055999(n+4))`
-/

namespace A207588.P17639836494990019784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A055999 (n + 4)).toNat

end

end A207588.P17639836494990019784

/-! ## A207588.P8784170163238307761

`A207589(A056000(n+3)+4)`
-/

namespace A207588.P8784170163238307761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A056000 (n + 3) + 4).toNat

end

end A207588.P8784170163238307761

/-! ## A207588.P8836555043984608949

`A207589(A000124(n+7)-7)`
-/

namespace A207588.P8836555043984608949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000124 (n + 7) - 7).toNat

end

end A207588.P8836555043984608949

/-! ## A207588.P12803802890022263936

`A207589(A000217(n+6)+n+1)`
-/

namespace A207588.P12803802890022263936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207588.P12803802890022263936

/-! ## A207588.P8653611186005033208

`A207589(A027379(n+3)+A020739(n+2))`
-/

namespace A207588.P8653611186005033208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A027379 (n + 3) + A020739 (n + 2)).toNat

end

end A207588.P8653611186005033208

/-!
# A207589: T(n,k) = Number of n X k 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207589, there is no canonical definition to state claims against.
-/

/-! ## A207589.P1468477601841098932

`A210709(A067747(n+1))+A208501(n+1)`
-/

namespace A207589.P1468477601841098932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A067747 (n + 1)).toNat + A208501 (n + 1)

end

end A207589.P1468477601841098932

/-! ## A207589.P15123682052024233645

`A210709(n+11)+A208501(n+1)`
-/

namespace A207589.P15123682052024233645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (n + 11) + A208501 (n + 1)

end

end A207589.P15123682052024233645

/-! ## A207589.P4005277033681715290

`A208501(n+1-A185284(2*n+1))`
-/

namespace A207589.P4005277033681715290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 ((n + 1 : ℤ) - A185284 (2 * n + 1)).toNat

end

end A207589.P4005277033681715290

/-! ## A207589.P4380399331631165052

`A208501(C(A302026(n+1), n))`
-/

namespace A207589.P4380399331631165052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (Nat.choose (A302026 (n + 1)).toNat n)

end

end A207589.P4380399331631165052

/-! ## A207589.P7010974770607923478

`A208501(n+1)%Δ[A003211(n)]`
-/

namespace A207589.P7010974770607923478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208501 (n + 1)) (f1 (n + 1) - f1 n)

end

end A207589.P7010974770607923478

/-!
# A207590: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207590, the canonical program `A207590.P5084477848894834414` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207590 has offset 1).

The definition of A207590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207590.P5084477848894834414

`a(n-1)+3*a(n-2)` with `a(0)=6, a(1)=36, a(2)=60, a(3)=144`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207590

/-- `a(n-1)+3*a(n-2)` -/
def P5084477848894834414.Spec : Prop :=
  ∀ n, (P5084477848894834414.a n : ℤ) = A207590 (n + 1)

theorem P5084477848894834414.correct : P5084477848894834414.Spec := by
  intro n
  simp only [A207590, Nat.add_sub_cancel]

end A207590

/-! ## A207590.P5258083772063998616

`A208501(∑[n+2]+4)`
-/

namespace A207590.P5258083772063998616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207590.P5258083772063998616

namespace A207590

/-- `A208501(∑[n+2]+4)` -/
def P5258083772063998616.Spec : Prop :=
  ∀ n, P5258083772063998616.a n = A207590 (n + 1)

end A207590

/-! ## A207590.P14375409675111849305

`lcm(2, A208501(A167614(n+1)))`
-/

namespace A207590.P14375409675111849305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208501 (A167614 (n + 1)).toNat)

end

end A207590.P14375409675111849305

namespace A207590

/-- `lcm(2, A208501(A167614(n+1)))` -/
def P14375409675111849305.Spec : Prop :=
  ∀ n, (P14375409675111849305.a n : ℤ) = A207590 (n + 1)

end A207590

/-! ## A207590.P864359803646017633

`or(A000038(n), A208501(A167614(n+1)))`
-/

namespace A207590.P864359803646017633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A208501 (A167614 (n + 1)).toNat)

end

end A207590.P864359803646017633

namespace A207590

/-- `or(A000038(n), A208501(A167614(n+1)))` -/
def P864359803646017633.Spec : Prop :=
  ∀ n, P864359803646017633.a n = A207590 (n + 1)

end A207590

/-! ## A207590.P5450624045850524797

`A208501(A167614(n+1))%A207587(n+1)`
-/

namespace A207590.P5450624045850524797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208501 (A167614 (n + 1)).toNat) (A207587 (n + 1))

end

end A207590.P5450624045850524797

namespace A207590

/-- `A208501(A167614(n+1))%A207587(n+1)` -/
def P5450624045850524797.Spec : Prop :=
  ∀ n, P5450624045850524797.a n = A207590 (n + 1)

end A207590

/-!
# A207591: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207591, there is no canonical definition to state claims against.
-/

/-! ## A207591.P958895778866118928

`A207589(A145018(n+4))`
-/

namespace A207591.P958895778866118928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A145018 (n + 4)).toNat

end

end A207591.P958895778866118928

/-! ## A207591.P2197860169570379335

`A207589(A055999(n)+10)`
-/

namespace A207591.P2197860169570379335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A055999 n + 10).toNat

end

end A207591.P2197860169570379335

/-! ## A207591.P13969502397565617017

`A207589(A167614(n+2)+1)`
-/

namespace A207591.P13969502397565617017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A167614 (n + 2) + 1).toNat

end

end A207591.P13969502397565617017

/-! ## A207591.P12504275546399820558

`A207589(A166136(n+2)-2)`
-/

namespace A207591.P12504275546399820558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A166136 (n + 2) - 2).toNat

end

end A207591.P12504275546399820558

/-! ## A207591.P15803689216464453833

`A207589(A027379(n+1)+7)`
-/

namespace A207591.P15803689216464453833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A027379 (n + 1) + 7).toNat

end

end A207591.P15803689216464453833

/-!
# A207592: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207592, there is no canonical definition to state claims against.
-/

/-! ## A207592.P11526023017472394667

`A207589(A167499(n+3))`
-/

namespace A207592.P11526023017472394667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A167499 (n + 3)).toNat

end

end A207592.P11526023017472394667

/-! ## A207592.P8662398810726618876

`A207589(A056000(n)+15)`
-/

namespace A207592.P8662398810726618876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A056000 n + 15).toNat

end

end A207592.P8662398810726618876

/-! ## A207592.P15960481407957711840

`A207589(A000096(n+3)+6)`
-/

namespace A207592.P15960481407957711840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000096 (n + 3) + 6).toNat

end

end A207592.P15960481407957711840

/-! ## A207592.P8573225826447082349

`A207589(A000217(n+4)+5)`
-/

namespace A207592.P8573225826447082349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000217 (n + 4) + 5).toNat

end

end A207592.P8573225826447082349

/-! ## A207592.P14130715940952887104

`A207589(A027379(n+2)+8)`
-/

namespace A207592.P14130715940952887104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A027379 (n + 2) + 8).toNat

end

end A207592.P14130715940952887104

/-!
# A207593: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207593, there is no canonical definition to state claims against.
-/

/-! ## A207593.P15416290768688585378

`A207589(A167499(n+4)+1)`
-/

namespace A207593.P15416290768688585378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A167499 (n + 4) + 1).toNat

end

end A207593.P15416290768688585378

/-! ## A207593.P5787894679220960676

`A207589(A167614(n+4)+3)`
-/

namespace A207593.P5787894679220960676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A167614 (n + 4) + 3).toNat

end

end A207593.P5787894679220960676

/-! ## A207593.P2583637994770367825

`A207589(A000217(n+5)+6)`
-/

namespace A207593.P2583637994770367825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000217 (n + 5) + 6).toNat

end

end A207593.P2583637994770367825

/-! ## A207593.P14043845242560577929

`A207589(A034856(n+4)+8)`
-/

namespace A207593.P14043845242560577929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A034856 (n + 4) + 8).toNat

end

end A207593.P14043845242560577929

/-! ## A207593.P11300528028756295974

`A207589(A000124(n+6)-(n+1))`
-/

namespace A207593.P11300528028756295974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A207593.P11300528028756295974

/-!
# A207594: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207594, there is no canonical definition to state claims against.
-/

/-! ## A207594.P3626608467042578732

`A207589(A167499(n+5)+2)`
-/

namespace A207594.P3626608467042578732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A167499 (n + 5) + 2).toNat

end

end A207594.P3626608467042578732

/-! ## A207594.P4681026206014241811

`A207589(A000124(n+6)+6)`
-/

namespace A207594.P4681026206014241811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000124 (n + 6) + 6).toNat

end

end A207594.P4681026206014241811

/-! ## A207594.P6625206853877768207

`A207589(A000096(n+5)+8)`
-/

namespace A207594.P6625206853877768207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000096 (n + 5) + 8).toNat

end

end A207594.P6625206853877768207

/-! ## A207594.P2109111686389784587

`A207589(A000217(n+6)+7)`
-/

namespace A207594.P2109111686389784587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A000217 (n + 6) + 7).toNat

end

end A207594.P2109111686389784587

/-! ## A207594.P16949808630309916297

`A207589(A034856(n+5)+9)`
-/

namespace A207594.P16949808630309916297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207589 (A034856 (n + 5) + 9).toNat

end

end A207594.P16949808630309916297

/-!
# A207595: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207595, there is no canonical definition to state claims against.
-/

/-! ## A207595.P11982276683780481049

`A207599((n+1)²+n²)`
-/

namespace A207595.P11982276683780481049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 ((n + 1) ^ 2 + n ^ 2)

end

end A207595.P11982276683780481049

/-! ## A207595.P11593985423455475098

`record[gcd(A003987(n), A207599(n+1))]`
-/

namespace A207595.P11593985423455475098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A207599 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207595.P11593985423455475098

/-! ## A207595.P14613425750588426827

`A207599(A001844(n))+A025469(n)`
-/

namespace A207595.P14613425750588426827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A001844 n).toNat + A025469 n

end

end A207595.P14613425750588426827

/-! ## A207595.P17835385935138769203

`lcm(A097807(n), A207599(A001844(n)))`
-/

namespace A207595.P17835385935138769203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A207599 (A001844 n).toNat)

end

end A207595.P17835385935138769203

/-! ## A207595.P5171688719032384513

`or(A122841(n+1), A207599(A001844(n)))`
-/

namespace A207595.P5171688719032384513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122841 (n + 1)) (A207599 (A001844 n).toNat)

end

end A207595.P5171688719032384513

/-!
# A207596: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207596, the canonical program `A207596.P12940979556610413563` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207596 has offset 1).

The definition of A207596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207596.P12940979556610413563

`5*(6*n+3)*((n+1)²+n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207596

/-- `5*(6*n+3)*((n+1)²+n)` -/
def P12940979556610413563.Spec : Prop :=
  ∀ n, (P12940979556610413563.a n : ℤ) = A207596 (n + 1)

theorem P12940979556610413563.correct : P12940979556610413563.Spec := by
  intro n
  simp only [A207596, Nat.add_sub_cancel]

end A207596

/-! ## A207596.P5470013528915687285

`sqrt(A016946(n)*A207597(n+1))`
-/

namespace A207596.P5470013528915687285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016946 n * A207597 (n + 1) : ℝ)

end

end A207596.P5470013528915687285

namespace A207596

/-- `sqrt(A016946(n)*A207597(n+1))` -/
def P5470013528915687285.Spec : Prop :=
  ∀ n, P5470013528915687285.a n = (A207596 (n + 1) : ℝ)

end A207596

/-! ## A207596.P17801156026000477927

`sqrt((5*A028387(n))²*A016946(n))`
-/

namespace A207596.P17801156026000477927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((5 * A028387 n) ^ 2 * A016946 n : ℝ)

end

end A207596.P17801156026000477927

namespace A207596

/-- `sqrt((5*A028387(n))²*A016946(n))` -/
def P17801156026000477927.Spec : Prop :=
  ∀ n, P17801156026000477927.a n = (A207596 (n + 1) : ℝ)

end A207596

/-! ## A207596.P4108005678250392521

`sqrt(5*5*A062938(n)*A016946(n))`
-/

namespace A207596.P4108005678250392521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 * (5 * A062938 n) * A016946 n : ℝ)

end

end A207596.P4108005678250392521

namespace A207596

/-- `sqrt(5*5*A062938(n)*A016946(n))` -/
def P4108005678250392521.Spec : Prop :=
  ∀ n, P4108005678250392521.a n = (A207596 (n + 1) : ℝ)

end A207596

/-! ## A207596.P9484948831001786246

`A194715(2*n)+(n+1)*A194715(2*n+1)`
-/

namespace A207596.P9484948831001786246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 (2 * n) + (n + 1 : ℤ) * A194715 (2 * n + 1)

end

end A207596.P9484948831001786246

namespace A207596

/-- `A194715(2*n)+(n+1)*A194715(2*n+1)` -/
def P9484948831001786246.Spec : Prop :=
  ∀ n, P9484948831001786246.a n = A207596 (n + 1)

end A207596

/-! ## A207596.P12305295670070648549

`A000096(2*n+1)*A008597(n+1)-A008597(2*n+1)`
-/

namespace A207596.P12305295670070648549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (2 * n + 1) * A008597 (n + 1) - A008597 (2 * n + 1)

end

end A207596.P12305295670070648549

namespace A207596

/-- `A000096(2*n+1)*A008597(n+1)-A008597(2*n+1)` -/
def P12305295670070648549.Spec : Prop :=
  ∀ n, P12305295670070648549.a n = A207596 (n + 1)

end A207596

/-!
# A207597: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207597, the canonical program `A207597.P3134893209629327883` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207597 has offset 1).

The definition of A207597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207597.P3134893209629327883

`(5-∑[10*(n+1)])²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207597

/-- `(5-∑[10*(n+1)])²` -/
def P3134893209629327883.Spec : Prop :=
  ∀ n, P3134893209629327883.a n = A207597 (n + 1)

theorem P3134893209629327883.correct : P3134893209629327883.Spec := by
  intro n
  simp only [A207597, Nat.add_sub_cancel]

end A207597

/-! ## A207597.P18126873182625108654

`25*or(1, n*(n+3))²`
-/

namespace A207597.P18126873182625108654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * Nat.lor 1 (n * (n + 3)) ^ 2

end

end A207597.P18126873182625108654

namespace A207597

/-- `25*or(1, n*(n+3))²` -/
def P18126873182625108654.Spec : Prop :=
  ∀ n, (P18126873182625108654.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P9292209988692614088

`25*xor(1, n*(n+3))²`
-/

namespace A207597.P9292209988692614088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * Nat.xor 1 (n * (n + 3)) ^ 2

end

end A207597.P9292209988692614088

namespace A207597

/-- `25*xor(1, n*(n+3))²` -/
def P9292209988692614088.Spec : Prop :=
  ∀ n, (P9292209988692614088.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P6481298134591172272

`∑[a(n-1)+10]^2` with `a(0)=5, a(1)=20`
-/

namespace A207597.P6481298134591172272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 20] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207597.P6481298134591172272

namespace A207597

/-- `∑[a(n-1)+10]^2` -/
def P6481298134591172272.Spec : Prop :=
  ∀ n, (P6481298134591172272.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P16002434497389578961

`(5*xor(1, n*(n+3)))^2`
-/

namespace A207597.P16002434497389578961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * Nat.xor 1 (n * (n + 3))) ^ 2

end

end A207597.P16002434497389578961

namespace A207597

/-- `(5*xor(1, n*(n+3)))^2` -/
def P16002434497389578961.Spec : Prop :=
  ∀ n, (P16002434497389578961.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P832681761818109439

`lcm(5, (5*((n+1)²+n))²)`
-/

namespace A207597.P832681761818109439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 ((5 * ((n + 1) ^ 2 + n)) ^ 2)

end

end A207597.P832681761818109439

namespace A207597

/-- `lcm(5, (5*((n+1)²+n))²)` -/
def P832681761818109439.Spec : Prop :=
  ∀ n, (P832681761818109439.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P10528908489268300216

`and(-5, (5*((n+1)²+n))²)`
-/

namespace A207597.P10528908489268300216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) ((5 * ((n + 1) ^ 2 + n)) ^ 2 : ℤ)

end

end A207597.P10528908489268300216

namespace A207597

/-- `and(-5, (5*((n+1)²+n))²)` -/
def P10528908489268300216.Spec : Prop :=
  ∀ n, P10528908489268300216.a n = A207597 (n + 1)

end A207597

/-! ## A207597.P13120508160948217169

`25*(n%(n+1)+(n+1)²)²`
-/

namespace A207597.P13120508160948217169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * (n % (n + 1) + (n + 1) ^ 2) ^ 2

end

end A207597.P13120508160948217169

namespace A207597

/-- `25*(n%(n+1)+(n+1)²)²` -/
def P13120508160948217169.Spec : Prop :=
  ∀ n, (P13120508160948217169.a n : ℤ) = A207597 (n + 1)

end A207597

/-! ## A207597.P9095503315192174741

`25*A062938(n)`
-/

namespace A207597.P9095503315192174741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A062938 n

end

end A207597.P9095503315192174741

namespace A207597

/-- `25*A062938(n)` -/
def P9095503315192174741.Spec : Prop :=
  ∀ n, P9095503315192174741.a n = A207597 (n + 1)

end A207597

/-! ## A207597.P2916510354569988932

`A207596(n+1)²/A016946(n)`
-/

namespace A207597.P2916510354569988932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207596 (n + 1) ^ 2 : ℚ) / (A016946 n : ℚ)

end

end A207597.P2916510354569988932

namespace A207597

/-- `A207596(n+1)²/A016946(n)` -/
def P2916510354569988932.Spec : Prop :=
  ∀ n, P2916510354569988932.a n = (A207597 (n + 1) : ℚ)

end A207597

/-! ## A207597.P3430844840214327997

`A207449(n+1)/A016742(n+1)*A207449(n+1)`
-/

namespace A207597.P3430844840214327997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207449 (n + 1) : ℚ) / (A016742 (n + 1) : ℚ) * (A207449 (n + 1) : ℚ)

end

end A207597.P3430844840214327997

namespace A207597

/-- `A207449(n+1)/A016742(n+1)*A207449(n+1)` -/
def P3430844840214327997.Spec : Prop :=
  ∀ n, P3430844840214327997.a n = (A207597 (n + 1) : ℚ)

end A207597

/-! ## A207597.P14909355888660433423

`A017330(∑[n]+n)`
-/

namespace A207597.P14909355888660433423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A207597.P14909355888660433423

namespace A207597

/-- `A017330(∑[n]+n)` -/
def P14909355888660433423.Spec : Prop :=
  ∀ n, P14909355888660433423.a n = A207597 (n + 1)

end A207597

/-!
# A207598: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207598, the canonical program `A207598.P4866717690251908741` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207598 has offset 1).

The definition of A207598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207598.P4325583708277193672

`120*(n+1)^4+40*(n+1)^3-200*(n+1)²+80*(n+1)`
-/

namespace A207598.P4325583708277193672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (120 * (n + 1) ^ 4 + 40 * (n + 1) ^ 3 : ℤ) - (200 * (n + 1) ^ 2 : ℤ) + (80 * (n + 1) : ℤ)

end

end A207598.P4325583708277193672

namespace A207598

/-- `120*(n+1)^4+40*(n+1)^3-200*(n+1)²+80*(n+1)` -/
def P4325583708277193672.Spec : Prop :=
  ∀ n, P4325583708277193672.a n = A207598 (n + 1)

end A207598

/-! ## A207598.P4866717690251908741

`(12*n+4)*A207449(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A207598

/-- `(12*n+4)*A207449(n+1)` -/
def P4866717690251908741.Spec : Prop :=
  ∀ n, P4866717690251908741.a n = A207598 (n + 1)

theorem P4866717690251908741.correct : P4866717690251908741.Spec := by
  intro n
  simp only [A207598, Nat.add_sub_cancel]

end A207598

/-! ## A207598.P13783132043162338043

`10*A017569(n)*A081437(n)`
-/

namespace A207598.P13783132043162338043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A017569 n * A081437 n)

end

end A207598.P13783132043162338043

namespace A207598

/-- `10*A017569(n)*A081437(n)` -/
def P13783132043162338043.Spec : Prop :=
  ∀ n, P13783132043162338043.a n = A207598 (n + 1)

end A207598

/-! ## A207598.P8319698183588685561

`40*A016777(n)*A081437(n)`
-/

namespace A207598.P8319698183588685561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * (A016777 n * A081437 n)

end

end A207598.P8319698183588685561

namespace A207598

/-- `40*A016777(n)*A081437(n)` -/
def P8319698183588685561.Spec : Prop :=
  ∀ n, P8319698183588685561.a n = A207598 (n + 1)

end A207598

/-! ## A207598.P10855322080190640844

`4*A207449(n+1)*A016777(n)`
-/

namespace A207598.P10855322080190640844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A207449 (n + 1) * A016777 n

end

end A207598.P10855322080190640844

namespace A207598

/-- `4*A207449(n+1)*A016777(n)` -/
def P10855322080190640844.Spec : Prop :=
  ∀ n, P10855322080190640844.a n = A207598 (n + 1)

end A207598

/-! ## A207598.P14046781806887394800

`A081437(n)*A317095(A016777(n))`
-/

namespace A207598.P14046781806887394800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 n * A317095 (A016777 n).toNat

end

end A207598.P14046781806887394800

namespace A207598

/-- `A081437(n)*A317095(A016777(n))` -/
def P14046781806887394800.Spec : Prop :=
  ∀ n, P14046781806887394800.a n = A207598 (n + 1)

end A207598

/-!
# A207599: T(n,k) = Number of n X k 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207599, there is no canonical definition to state claims against.
-/

/-! ## A207599.P16121083148275350059

`A207024(n+1)+A067168(A067176(n))`
-/

namespace A207599.P16121083148275350059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207024 (n + 1) + A067168 ((A067176 n).toNat + 10)

end

end A207599.P16121083148275350059

/-! ## A207599.P3619776934991188532

`A207169(n+1)+A067168(A067176(n))`
-/

namespace A207599.P3619776934991188532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207169 (n + 1) + A067168 ((A067176 n).toNat + 10)

end

end A207599.P3619776934991188532

/-! ## A207599.P6369001190449519574

`A342376(A342342(n))+A207024(n+1)`
-/

namespace A207599.P6369001190449519574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342342 n).toNat + A207024 (n + 1)

end

end A207599.P6369001190449519574

/-! ## A207599.P2312900254563747217

`A342376(A342342(n))+A207169(n+1)`
-/

namespace A207599.P2312900254563747217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342342 n).toNat + A207169 (n + 1)

end

end A207599.P2312900254563747217

/-! ## A207599.P2472005652317572220

`A369054(A304266(n+1))+A207024(n+1)`
-/

namespace A207599.P2472005652317572220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A304266 (n + 1)).toNat + A207024 (n + 1)

end

end A207599.P2472005652317572220

