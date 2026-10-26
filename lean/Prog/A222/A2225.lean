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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A222500: T(n,k)=Number of nXk 0..3 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222500, there is no canonical definition to state claims against.
-/

/-! ## A222500.P17728165991089532244

`A162343(A222488(n+1))`
-/

namespace A222500.P17728165991089532244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162343 (A222488 (n + 1)).toNat

end

end A222500.P17728165991089532244

/-! ## A222500.P13071852294576916156

`A347520(and(-1, A222488(n+1)))`
-/

namespace A222500.P13071852294576916156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (Int.land (-1) (A222488 (n + 1))).toNat

end

end A222500.P13071852294576916156

/-! ## A222500.P627073758134879145

`A347520(lcm((-1)^n, A222488(n+1)))`
-/

namespace A222500.P627073758134879145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (Int.lcm ((-1) ^ n) (A222488 (n + 1)))

end

end A222500.P627073758134879145

/-! ## A222500.P3904930155252233998

`A347520(A222488(n+1)%(16*n+15))`
-/

namespace A222500.P3904930155252233998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (Int.tmod (A222488 (n + 1)) (16 * n + 15 : ℤ)).toNat

end

end A222500.P3904930155252233998

/-! ## A222500.P13774628478550443687

`A222488(n+1)+A025456(A190502(n))`
-/

namespace A222500.P13774628478550443687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (n + 1) + A025456 (A190502 n).toNat

end

end A222500.P13774628478550443687

/-!
# A222501: Number of 2Xn 0..3 arrays with exactly floor(2Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222501, there is no canonical definition to state claims against.
-/

/-! ## A222501.P6950434456642187816

`A222500(∑[n+1]+2)`
-/

namespace A222501.P6950434456642187816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222501.P6950434456642187816

/-! ## A222501.P12608741479873274071

`and(-1, A222500(A133263(n+1)))`
-/

namespace A222501.P12608741479873274071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222500 (A133263 (n + 1)).toNat)

end

end A222501.P12608741479873274071

/-! ## A222501.P8699748040003095637

`A222500(A133263(n+1))+A000007(n+1)`
-/

namespace A222501.P8699748040003095637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A222501.P8699748040003095637

/-! ## A222501.P13651768696285389151

`A222500(A133263(n+1))+A000035(2*n)`
-/

namespace A222501.P13651768696285389151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A222501.P13651768696285389151

/-! ## A222501.P3135158352900801555

`A222500(A022856(n+5))+A000007(2*(n+1))`
-/

namespace A222501.P3135158352900801555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A022856 (n + 5)).toNat + A000007 (2 * (n + 1))

end

end A222501.P3135158352900801555

/-!
# A222502: Number of 3Xn 0..3 arrays with exactly floor(3Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222502, there is no canonical definition to state claims against.
-/

/-! ## A222502.P15075182920760844004

`A222500(∑[n+2]+4)`
-/

namespace A222502.P15075182920760844004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222502.P15075182920760844004

/-! ## A222502.P10643272684926717238

`and(-1, A222500(A167614(n+1)))`
-/

namespace A222502.P10643272684926717238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222500 (A167614 (n + 1)).toNat)

end

end A222502.P10643272684926717238

/-! ## A222502.P14772469503612595983

`A222500(A167614(n+1))+A011741(n)`
-/

namespace A222502.P14772469503612595983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A167614 (n + 1)).toNat + A011741 n

end

end A222502.P14772469503612595983

/-! ## A222502.P13404895587185958177

`A222500(A167614(n+1))+A011742(n)`
-/

namespace A222502.P13404895587185958177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A167614 (n + 1)).toNat + A011742 n

end

end A222502.P13404895587185958177

/-! ## A222502.P16448186768004193879

`A222500(A167614(n+1))+A011744(n)`
-/

namespace A222502.P16448186768004193879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A167614 (n + 1)).toNat + A011744 n

end

end A222502.P16448186768004193879

/-!
# A222503: Number of 4Xn 0..3 arrays with exactly floor(4Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222503, there is no canonical definition to state claims against.
-/

/-! ## A222503.P3874556398314916576

`A222500(∑[n+3]+7)`
-/

namespace A222503.P3874556398314916576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222503.P3874556398314916576

/-!
# A222504: Number of nX3 0..1 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222504, there is no canonical definition to state claims against.
-/

/-! ## A222504.P1106276304566636361

`A222509(∑[n+3]+1)`
-/

namespace A222504.P1106276304566636361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222504.P1106276304566636361

/-! ## A222504.P9553772927125991772

`lcm(A033999(n), A222509(A034856(n+2)))`
-/

namespace A222504.P9553772927125991772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A222509 (A034856 (n + 2)).toNat)

end

end A222504.P9553772927125991772

/-! ## A222504.P16056107693831590193

`A033999(2*n)*A222509(A034856(n+2))`
-/

namespace A222504.P16056107693831590193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A222509 (A034856 (n + 2)).toNat

end

end A222504.P16056107693831590193

/-! ## A222504.P15096443840478185146

`A222509(A034856(n+2))%A130601(n+1)`
-/

namespace A222504.P15096443840478185146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222509 (A034856 (n + 2)).toNat) (A130601 (n + 1))

end

end A222504.P15096443840478185146

/-!
# A222505: Number of nX4 0..1 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222505, there is no canonical definition to state claims against.
-/

/-! ## A222505.P7457377947520516032

`A222509(∑[n+4]+3)`
-/

namespace A222505.P7457377947520516032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222505.P7457377947520516032

/-! ## A222505.P9917417613560616679

`or(∑{digits}[n, floor(acot(#))], A222509(A141214(n+1)))`
-/

namespace A222505.P9917417613560616679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ)⌋).sum (A222509 (A141214 (n + 1)).toNat)

end

end A222505.P9917417613560616679

/-! ## A222505.P8714597037136106528

`A033999(2*n)*A222509(A141214(n+1))`
-/

namespace A222505.P8714597037136106528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A222509 (A141214 (n + 1)).toNat

end

end A222505.P8714597037136106528

/-! ## A222505.P461532813753632478

`A222509(A141214(n+1))%A086812(n+2)`
-/

namespace A222505.P461532813753632478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222509 (A141214 (n + 1)).toNat) (A086812 (n + 2))

end

end A222505.P461532813753632478

/-! ## A222505.P2588585664311261506

`or(A222509(A141214(n+1)), A266380(2*n))`
-/

namespace A222505.P2588585664311261506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222509 (A141214 (n + 1)).toNat) (A266380 (2 * n))

end

end A222505.P2588585664311261506

/-!
# A222506: Number of nX5 0..1 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222506, there is no canonical definition to state claims against.
-/

/-! ## A222506.P845278397109547582

`A222509(Δ[A264443(n)])`
-/

namespace A222506.P845278397109547582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (f1 (n + 1) - f1 n).toNat

end

end A222506.P845278397109547582

/-! ## A222506.P3001282473766179291

`A222509(A046691(n+3))`
-/

namespace A222506.P3001282473766179291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A046691 (n + 3)).toNat

end

end A222506.P3001282473766179291

/-! ## A222506.P14565486768480139972

`A222509(A056115(n)+11)`
-/

namespace A222506.P14565486768480139972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A056115 n + 11).toNat

end

end A222506.P14565486768480139972

/-! ## A222506.P6905976872500219853

`A222509(eq[2, A092921(n)])`
-/

namespace A222506.P6905976872500219853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222506.P6905976872500219853

/-! ## A222506.P2826015224889816873

`A222509(eq[3, A152157(n)])`
-/

namespace A222506.P2826015224889816873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222506.P2826015224889816873

/-!
# A222507: Number of nX6 0..1 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222507, there is no canonical definition to state claims against.
-/

/-! ## A222507.P13369308478314341140

`A222509(A052905(n+3))`
-/

namespace A222507.P13369308478314341140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A052905 (n + 3)).toNat

end

end A222507.P13369308478314341140

/-! ## A222507.P15161010578694065530

`A222509(A302537(n)+15)`
-/

namespace A222507.P15161010578694065530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A302537 n + 15).toNat

end

end A222507.P15161010578694065530

/-! ## A222507.P46581032431918143

`A222509(A056119(n)+16)`
-/

namespace A222507.P46581032431918143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A056119 n + 16).toNat

end

end A222507.P46581032431918143

/-! ## A222507.P16569877623236026957

`A222509(eq[3, A219347(n)])`
-/

namespace A222507.P16569877623236026957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222507.P16569877623236026957

/-! ## A222507.P15832204299639942736

`A222509(eq[5, A193592(n)])`
-/

namespace A222507.P15832204299639942736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222507.P15832204299639942736

/-!
# A222508: Number of nX7 0..1 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222508, there is no canonical definition to state claims against.
-/

/-! ## A222508.P5906403250565529896

`A222509(A055999(n+4))`
-/

namespace A222508.P5906403250565529896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A055999 (n + 4)).toNat

end

end A222508.P5906403250565529896

/-! ## A222508.P9457080750403476241

`A222509(A056121(n)+22)`
-/

namespace A222508.P9457080750403476241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A056121 n + 22).toNat

end

end A222508.P9457080750403476241

/-! ## A222508.P8262005062384976320

`A222509(eq[4, A219347(n)])`
-/

namespace A222508.P8262005062384976320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222508.P8262005062384976320

/-! ## A222508.P18020369970955499186

`A222509(eq[6, A193592(n)])`
-/

namespace A222508.P18020369970955499186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222508.P18020369970955499186

/-! ## A222508.P17817393747257428437

`A222509(A155212(n+3)+2)`
-/

namespace A222508.P17817393747257428437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A155212 (n + 3) + 2).toNat

end

end A222508.P17817393747257428437

/-!
# A222510: Number of 2Xn 0..1 arrays with exactly floor(2Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222510, there is no canonical definition to state claims against.
-/

/-! ## A222510.P17530433300682806348

`A222509(∑[n+1]+2)`
-/

namespace A222510.P17530433300682806348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222510.P17530433300682806348

/-! ## A222510.P10699990809026749470

`A222509(A000217(n+1)+2)+char[16]`
-/

namespace A222510.P10699990809026749470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A000217 (n + 1) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222510.P10699990809026749470

/-! ## A222510.P1777982038698335009

`A014963(4*n+2)*A222509(A000217(n+1)+2)`
-/

namespace A222510.P1777982038698335009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A222509 (A000217 (n + 1) + 2).toNat

end

end A222510.P1777982038698335009

/-! ## A222510.P11134462412178041219

`A000108(C(2, n+2))*A222509(A000217(n+1)+2)`
-/

namespace A222510.P11134462412178041219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A222509 (A000217 (n + 1) + 2).toNat

end

end A222510.P11134462412178041219

/-! ## A222510.P10353244174010353801

`A222509(A000217(n+1)+2)%A000040(2^n)`
-/

namespace A222510.P10353244174010353801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222509 (A000217 (n + 1) + 2).toNat) (A000040 (2 ^ n))

end

end A222510.P10353244174010353801

/-!
# A222511: Number of 3Xn 0..1 arrays with exactly floor(3Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222511, there is no canonical definition to state claims against.
-/

/-! ## A222511.P14017969773082630530

`A222509(∑[n+2]+4)`
-/

namespace A222511.P14017969773082630530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222511.P14017969773082630530

/-! ## A222511.P5448711676796605043

`A222509(A167614(n+1))+char[24]`
-/

namespace A222511.P5448711676796605043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222511.P5448711676796605043

/-! ## A222511.P12918391433879534198

`A222509(A025747(n)+5+n)+C(n, 47)`
-/

namespace A222511.P12918391433879534198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A025747 n + 5 + (n : ℤ)).toNat + (Nat.choose n 47 : ℤ)

end

end A222511.P12918391433879534198

/-! ## A222511.P7722097228678957095

`A326685(n)+A222509(A167614(n+1))`
-/

namespace A222511.P7722097228678957095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A222509 (A167614 (n + 1)).toNat

end

end A222511.P7722097228678957095

/-! ## A222511.P12662175912540247984

`A222509(A167614(n+1))%A000533(n)`
-/

namespace A222511.P12662175912540247984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222509 (A167614 (n + 1)).toNat) (A000533 n)

end

end A222511.P12662175912540247984

/-!
# A222512: Number of 4Xn 0..1 arrays with exactly floor(4Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222512, there is no canonical definition to state claims against.
-/

/-! ## A222512.P11798567393439716066

`A222509(∑[n+3]+7)`
-/

namespace A222512.P11798567393439716066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222512.P11798567393439716066

/-!
# A222513: Number of 5Xn 0..1 arrays with exactly floor(5Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222513, there is no canonical definition to state claims against.
-/

/-! ## A222513.P16733129144746959913

`A222509(A167499(n+3))`
-/

namespace A222513.P16733129144746959913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A167499 (n + 3)).toNat

end

end A222513.P16733129144746959913

/-! ## A222513.P5207276448773825000

`A222509(A155212(n)+13)`
-/

namespace A222513.P5207276448773825000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A155212 n + 13).toNat

end

end A222513.P5207276448773825000

/-! ## A222513.P12825822069323277858

`A222509(A056000(n)+15)`
-/

namespace A222513.P12825822069323277858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A056000 n + 15).toNat

end

end A222513.P12825822069323277858

/-! ## A222513.P2857779396907218690

`A222509(eq[7, A066657(n)])`
-/

namespace A222513.P2857779396907218690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222513.P2857779396907218690

/-! ## A222513.P13967684506372850280

`A222509(A167614(n+3)+2)`
-/

namespace A222513.P13967684506372850280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A167614 (n + 3) + 2).toNat

end

end A222513.P13967684506372850280

/-!
# A222514: Number of 6Xn 0..1 arrays with exactly floor(6Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222514, there is no canonical definition to state claims against.
-/

/-! ## A222514.P14565771599290091951

`A222509(A056115(n)+21)`
-/

namespace A222514.P14565771599290091951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A056115 n + 21).toNat

end

end A222514.P14565771599290091951

/-! ## A222514.P13601153061699981154

`A222509(A167614(n+4)+3)`
-/

namespace A222514.P13601153061699981154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A167614 (n + 4) + 3).toNat

end

end A222514.P13601153061699981154

/-! ## A222514.P9896261188674731926

`A222509(A000217(n+5)+6)`
-/

namespace A222514.P9896261188674731926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A000217 (n + 5) + 6).toNat

end

end A222514.P9896261188674731926

/-! ## A222514.P17370262660123910449

`A222509(A034856(n+4)+8)`
-/

namespace A222514.P17370262660123910449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A034856 (n + 4) + 8).toNat

end

end A222514.P17370262660123910449

/-! ## A222514.P4863086926802229845

`A222509(A055999(n+2)+12)`
-/

namespace A222514.P4863086926802229845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A055999 (n + 2) + 12).toNat

end

end A222514.P4863086926802229845

/-!
# A222515: Number of 7Xn 0..1 arrays with exactly floor(7Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222515, there is no canonical definition to state claims against.
-/

/-! ## A222515.P11086038807527256300

`A222509(A056119(n)+28)`
-/

namespace A222515.P11086038807527256300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A056119 n + 28).toNat

end

end A222515.P11086038807527256300

/-! ## A222515.P6373142717465882120

`A222509(eq[11, A066657(n)])`
-/

namespace A222515.P6373142717465882120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222515.P6373142717465882120

/-! ## A222515.P15844807710626770139

`A222509(A166136(n+5)+1)`
-/

namespace A222515.P15844807710626770139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A166136 (n + 5) + 1).toNat

end

end A222515.P15844807710626770139

/-! ## A222515.P9732734505389581880

`A222509(A167499(n+5)+2)`
-/

namespace A222515.P9732734505389581880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A167499 (n + 5) + 2).toNat

end

end A222515.P9732734505389581880

/-! ## A222515.P8363137554731354418

`A222509(A167614(n+5)+4)`
-/

namespace A222515.P8363137554731354418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222509 (A167614 (n + 5) + 4).toNat

end

end A222515.P8363137554731354418

/-!
# A222516: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222516, there is no canonical definition to state claims against.
-/

/-! ## A222516.P16209149475707281314

`A222522(A133263(A133265(n)))`
-/

namespace A222516.P16209149475707281314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A133263 (A133265 n).toNat).toNat

end

end A222516.P16209149475707281314

/-! ## A222516.P17932936668447000683

`A222522(∑[n+1]+2)`
-/

namespace A222516.P17932936668447000683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222516.P17932936668447000683

/-! ## A222516.P13908516484724622170

`n%2*A222522(C(n+2, 2)+2)`
-/

namespace A222516.P13908516484724622170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A222522 (Nat.choose (n + 2) 2 + 2)

end

end A222516.P13908516484724622170

/-! ## A222516.P8927091987241068305

`lcm(A011591(n), A222522(C(n+2, 2)+2))`
-/

namespace A222516.P8927091987241068305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011591 n) (A222522 (Nat.choose (n + 2) 2 + 2))

end

end A222516.P8927091987241068305

/-! ## A222516.P5453017315598372233

`A222522(C(n+2, 2)+2)%A026014(n+2)`
-/

namespace A222516.P5453017315598372233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222522 (Nat.choose (n + 2) 2 + 2)) (A026014 (n + 2))

end

end A222516.P5453017315598372233

/-!
# A222517: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222517, there is no canonical definition to state claims against.
-/

/-! ## A222517.P10982388018634352418

`A222522(∑[n+2]+4)`
-/

namespace A222517.P10982388018634352418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222517.P10982388018634352418

/-! ## A222517.P11051714346246981770

`A222522(A167614(n+1))+A025469(n)`
-/

namespace A222517.P11051714346246981770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A167614 (n + 1)).toNat + A025469 n

end

end A222517.P11051714346246981770

/-! ## A222517.P6042492424154452271

`A256974(n)+A222522(A167614(n+1))`
-/

namespace A222517.P6042492424154452271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A222522 (A167614 (n + 1)).toNat

end

end A222517.P6042492424154452271

/-! ## A222517.P379400920985804569

`A222522(A167614(n+1))%A017467(n)`
-/

namespace A222517.P379400920985804569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222522 (A167614 (n + 1)).toNat) (A017467 n)

end

end A222517.P379400920985804569

/-! ## A222517.P3869249137524338904

`lcm(A033999(n), A222522(A167614(n+1)))`
-/

namespace A222517.P3869249137524338904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A222522 (A167614 (n + 1)).toNat)

end

end A222517.P3869249137524338904

/-!
# A222518: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222518, there is no canonical definition to state claims against.
-/

/-! ## A222518.P59924953134973947

`A222522(A374004(n+1))`
-/

namespace A222518.P59924953134973947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A374004 (n + 1)).toNat

end

end A222518.P59924953134973947

/-! ## A222518.P9835371375749264866

`A222522(A141214(n)+7)`
-/

namespace A222518.P9835371375749264866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A141214 n + 7).toNat

end

end A222518.P9835371375749264866

/-! ## A222518.P8197005112412710045

`A222522(A052905(n)+9)`
-/

namespace A222518.P8197005112412710045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A052905 n + 9).toNat

end

end A222518.P8197005112412710045

/-! ## A222518.P4221460483382998558

`A222522(A055999(n)+10)`
-/

namespace A222518.P4221460483382998558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A055999 n + 10).toNat

end

end A222518.P4221460483382998558

/-! ## A222518.P14515133454059647027

`A222522(A167614(n+2)+1)`
-/

namespace A222518.P14515133454059647027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A167614 (n + 2) + 1).toNat

end

end A222518.P14515133454059647027

/-!
# A222519: Number of nX5 0..3 arrays with exactly floor(nX5/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222519, there is no canonical definition to state claims against.
-/

/-! ## A222519.P3243752874152209802

`A222522(A374005(n+1))`
-/

namespace A222519.P3243752874152209802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A374005 (n + 1)).toNat

end

end A222519.P3243752874152209802

/-! ## A222519.P9903588092754000065

`A222522(A167499(n+3))`
-/

namespace A222519.P9903588092754000065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A167499 (n + 3)).toNat

end

end A222519.P9903588092754000065

/-! ## A222519.P11542017441776759361

`A222522(A155212(n)+13)`
-/

namespace A222519.P11542017441776759361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A155212 n + 13).toNat

end

end A222519.P11542017441776759361

/-! ## A222519.P2813329232592170362

`A222522(A056000(n)+15)`
-/

namespace A222519.P2813329232592170362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A056000 n + 15).toNat

end

end A222519.P2813329232592170362

/-! ## A222519.P8893191093152036132

`A222522(eq[6, A131818(n+1)])`
-/

namespace A222519.P8893191093152036132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222519.P8893191093152036132

/-!
# A222520: Number of nX6 0..3 arrays with exactly floor(nX6/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222520, there is no canonical definition to state claims against.
-/

/-! ## A222520.P9965590943879367993

`A222522(A374007(n+1))`
-/

namespace A222520.P9965590943879367993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A374007 (n + 1)).toNat

end

end A222520.P9965590943879367993

/-! ## A222520.P6574263933908428783

`A222522(A056115(n)+21)`
-/

namespace A222520.P6574263933908428783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A056115 n + 21).toNat

end

end A222520.P6574263933908428783

/-! ## A222520.P5090730820532309943

`A222522(A167614(n+4)+3)`
-/

namespace A222520.P5090730820532309943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A167614 (n + 4) + 3).toNat

end

end A222520.P5090730820532309943

/-! ## A222520.P15742328880300268288

`A222522(A141214(n+2)+9)`
-/

namespace A222520.P15742328880300268288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A141214 (n + 2) + 9).toNat

end

end A222520.P15742328880300268288

/-! ## A222520.P4452348078888596723

`A222522(A055999(n+2)+12)`
-/

namespace A222520.P4452348078888596723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A055999 (n + 2) + 12).toNat

end

end A222520.P4452348078888596723

/-!
# A222521: Number of nX7 0..3 arrays with exactly floor(nX7/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222521, there is no canonical definition to state claims against.
-/

/-! ## A222521.P14360677714464706960

`A222522(A374008(n+1))`
-/

namespace A222521.P14360677714464706960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A374008 (n + 1)).toNat

end

end A222521.P14360677714464706960

/-! ## A222521.P795538859385391160

`A222522(eq[8, A131818(n+1)])`
-/

namespace A222521.P795538859385391160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222521.P795538859385391160

/-! ## A222521.P6393630337422999729

`A222522(A055999(n+4))`
-/

namespace A222521.P6393630337422999729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (A055999 (n + 4)).toNat

end

end A222521.P6393630337422999729

/-! ## A222521.P6201626656779805351

`A222522(eq[4, A219347(n)])`
-/

namespace A222521.P6201626656779805351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222521.P6201626656779805351

/-! ## A222521.P17758284071240884576

`A222522(eq[6, A193592(n)])`
-/

namespace A222521.P17758284071240884576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222521.P17758284071240884576

/-!
# A222522: T(n,k)=Number of nXk 0..3 arrays with exactly floor(nXk/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222522, there is no canonical definition to state claims against.
-/

/-! ## A222522.P2491803032316863179

`A130574(A222402(n+1))`
-/

namespace A222522.P2491803032316863179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (A222402 (n + 1)).toNat

end

end A222522.P2491803032316863179

/-! ## A222522.P13592615703147955870

`A247143(A222402(n+1)%A352221(n+1))`
-/

namespace A222522.P13592615703147955870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247143 (Int.tmod (A222402 (n + 1)) (A352221 (n + 1))).toNat

end

end A222522.P13592615703147955870

/-! ## A222522.P10851577154135469562

`A222402(A348553(n))-A256974(A222402(n+1))`
-/

namespace A222522.P10851577154135469562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A348553 n).toNat - A256974 (A222402 (n + 1)).toNat

end

end A222522.P10851577154135469562

/-! ## A222522.P6238593759876890908

`A222402(A032513(n+1))-A256974(A222402(n+1))`
-/

namespace A222522.P6238593759876890908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A032513 (n + 1)).toNat - A256974 (A222402 (n + 1)).toNat

end

end A222522.P6238593759876890908

/-! ## A222522.P9731842375018856561

`A222402(n+1)-(A256974(A222402(n+1))+A256974(n))`
-/

namespace A222522.P9731842375018856561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (n + 1) - (A256974 (A222402 (n + 1)).toNat + A256974 n)

end

end A222522.P9731842375018856561

/-!
# A222523: O.g.f.: Sum_{n>=0} (n^2+n+1)^n * exp(-(n^2+n+1)*x) * x^n / n!.

The programs for A222523, there is no canonical definition to state claims against.
-/

/-! ## A222523.P15374281415330600507

`A052419(A047055(n))+A006882(n)`
-/

namespace A222523.P15374281415330600507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (A047055 n).toNat + A006882 n

end

end A222523.P15374281415330600507

/-!
# A222525: O.g.f.: Sum_{n>=0} (2*n+1)^(2*n) * exp(-(2*n+1)^2*x) * x^n / n!.

The programs for A222525, there is no canonical definition to state claims against.
-/

/-! ## A222525.P2064156975865725504

`2^n*A039755(∑[4*n])`
-/

namespace A222525.P2064156975865725504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A039755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222525.P2064156975865725504

/-! ## A222525.P3570290793930567052

`A039755(A046092(n))*A059268(A001105(n))`
-/

namespace A222525.P3570290793930567052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A046092 n).toNat * A059268 (A001105 n).toNat

end

end A222525.P3570290793930567052

/-! ## A222525.P15134003925873994783

`A154537(∑[4*n])`
-/

namespace A222525.P15134003925873994783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222525.P15134003925873994783

/-! ## A222525.P17443848023023070101

`and(-3, A154537(A046092(n)))`
-/

namespace A222525.P17443848023023070101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A154537 (A046092 n).toNat)

end

end A222525.P17443848023023070101

/-! ## A222525.P10283917150005050027

`record[A154537(gcd(n, A114327(n)))]`
-/

namespace A222525.P10283917150005050027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154537 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222525.P10283917150005050027

/-!
# A222532: a(1)=2; for n >= 1, a(n+1) is the least prime p_m such that a(n)=p_m-p_{m-1}+...+(-1)^{m-k}p_k for some 0

The programs for A222532, there is no canonical definition to state claims against.
-/

/-! ## A222532.P17845049053261918606

`A225889(a(n-1))` with `a(0)=2`
-/

namespace A222532.P17845049053261918606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A225889 (a (n - 1)).toNat

end

end A222532.P17845049053261918606

/-! ## A222532.P7358317472053635387

`record[A225889(a(A029578(n)))]` with `a(0)=2`
-/

namespace A222532.P7358317472053635387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A225889 (f1 (A029578 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222532.P7358317472053635387

/-! ## A222532.P16746245093339824660

`A000040(∑[A111620(p?[2*n+1]+1+n)])`
-/

namespace A222532.P16746245093339824660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111620 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A222532.P16746245093339824660

/-! ## A222532.P6815603922309080698

`A230775(A260652(3*n+5)*A260652(n+1)+1)`
-/

namespace A222532.P6815603922309080698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A260652 (3 * n + 5) * A260652 (n + 1) + 1).toNat

end

end A222532.P6815603922309080698

/-!
# A222535: Number of nX2 0..1 arrays with no more than floor(nX2/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222535, there is no canonical definition to state claims against.
-/

/-! ## A222535.P5315945584444057231

`A222703(∑[n+1]+2)`
-/

namespace A222535.P5315945584444057231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222535.P5315945584444057231

/-! ## A222535.P7117376763525704455

`A222703(A133263(n+1))+char[17]`
-/

namespace A222535.P7117376763525704455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222703 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222535.P7117376763525704455

/-! ## A222535.P2329859231157613908

`or(char[1], A222703(A238531(n+2)))`
-/

namespace A222535.P2329859231157613908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222703 (A238531 (n + 2)).toNat)

end

end A222535.P2329859231157613908

/-! ## A222535.P15010333306150569670

`A087960(n)²*A222703(Δ[A000292(n)]+2)`
-/

namespace A222535.P15010333306150569670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A222703 (f1 (n + 1) - f1 n + 2).toNat

end

end A222535.P15010333306150569670

/-! ## A222535.P3347303860769505062

`A014963(6*(n+1))*A222703(A133263(n+1))`
-/

namespace A222535.P3347303860769505062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A222703 (A133263 (n + 1)).toNat

end

end A222535.P3347303860769505062

/-!
# A222536: Number of nX3 0..1 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222536, there is no canonical definition to state claims against.
-/

/-! ## A222536.P7160479501790958098

`A222541(∑[n+3]+1)`
-/

namespace A222536.P7160479501790958098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222536.P7160479501790958098

/-! ## A222536.P2311734104327794585

`record[A222541(n+1)^Δ[A129186(n)]]`
-/

namespace A222536.P2311734104327794585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222541 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222536.P2311734104327794585

/-! ## A222536.P4736152646571385757

`record[A010054(n+3)*A222541(n+1)]`
-/

namespace A222536.P4736152646571385757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A222541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222536.P4736152646571385757

/-! ## A222536.P5978951988229869673

`record[A222541(n+1)/A039814(n+3)]`
-/

namespace A222536.P5978951988229869673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222541 (n + 1) : ℚ) / (A039814 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222536.P5978951988229869673

/-! ## A222536.P2122525815055233158

`record[A222541(n+1)/A062264(n+3)]`
-/

namespace A222536.P2122525815055233158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222541 (n + 1) : ℚ) / (A062264 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222536.P2122525815055233158

/-!
# A222537: Number of nX4 0..1 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222537, there is no canonical definition to state claims against.
-/

/-! ## A222537.P15264670582782080894

`A222541(∑[n+4]+3)`
-/

namespace A222537.P15264670582782080894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222537.P15264670582782080894

/-! ## A222537.P16197663971868572659

`A222541(A055998(n+2))%A046883(n+1)`
-/

namespace A222537.P16197663971868572659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222541 (A055998 (n + 2)).toNat) (A046883 (n + 1))

end

end A222537.P16197663971868572659

/-!
# A222538: Number of nX5 0..1 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222538, there is no canonical definition to state claims against.
-/

/-! ## A222538.P3885051195350948202

`A222541(∑[n+5]+6)`
-/

namespace A222538.P3885051195350948202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222538.P3885051195350948202

/-! ## A222538.P12102809815718817406

`A326540(n)+A222541(A000217(n+5)-4)`
-/

namespace A222538.P12102809815718817406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n + A222541 (A000217 (n + 5) - 4).toNat

end

end A222538.P12102809815718817406

/-! ## A222538.P9597250561802757349

`A222541(A000217(n+5)-4)%A281146(n+2)`
-/

namespace A222538.P9597250561802757349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222541 (A000217 (n + 5) - 4).toNat) (A281146 (n + 2))

end

end A222538.P9597250561802757349

/-!
# A222539: Number of nX6 0..1 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222539, there is no canonical definition to state claims against.
-/

/-! ## A222539.P6691148040614633293

`A222541(A052905(n+3))`
-/

namespace A222539.P6691148040614633293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A052905 (n + 3)).toNat

end

end A222539.P6691148040614633293

/-! ## A222539.P5154649638161222944

`A222541(A056119(n)+16)`
-/

namespace A222539.P5154649638161222944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A056119 n + 16).toNat

end

end A222539.P5154649638161222944

/-! ## A222539.P5661509505535866689

`A222541(eq[3, A219347(n)])`
-/

namespace A222539.P5661509505535866689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222539.P5661509505535866689

/-! ## A222539.P13393220118656300440

`A222541(eq[5, A193592(n)])`
-/

namespace A222539.P13393220118656300440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222539.P13393220118656300440

/-! ## A222539.P3643261128701866168

`A222541(eq[8, A258709(n)])`
-/

namespace A222539.P3643261128701866168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222539.P3643261128701866168

/-!
# A222540: Number of nX7 0..1 arrays with no more than floor(nX7/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222540, there is no canonical definition to state claims against.
-/

/-! ## A222540.P16971873207352715409

`A222541(A055999(n+4))`
-/

namespace A222540.P16971873207352715409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A055999 (n + 4)).toNat

end

end A222540.P16971873207352715409

/-! ## A222540.P8677991239480226598

`A222541(eq[4, A219347(n)])`
-/

namespace A222540.P8677991239480226598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222540.P8677991239480226598

/-! ## A222540.P4003896713938494744

`A222541(eq[6, A193592(n)])`
-/

namespace A222540.P4003896713938494744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222540.P4003896713938494744

/-! ## A222540.P10619942494114515126

`A222541(A027379(n+5)-3)`
-/

namespace A222540.P10619942494114515126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A027379 (n + 5) - 3).toNat

end

end A222540.P10619942494114515126

/-! ## A222540.P9926557442441420928

`A222541(A000124(n+7)-7)`
-/

namespace A222540.P9926557442441420928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A000124 (n + 7) - 7).toNat

end

end A222540.P9926557442441420928

/-!
# A222542: Number of 2Xn 0..1 arrays with no more than floor(2Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222542, there is no canonical definition to state claims against.
-/

/-! ## A222542.P6373531279753757473

`A222541(∑[n+1]+2)`
-/

namespace A222542.P6373531279753757473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222542.P6373531279753757473

/-! ## A222542.P1360232018084217308

`A222541(A133263(n+1))+char[16]`
-/

namespace A222542.P1360232018084217308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222542.P1360232018084217308

/-! ## A222542.P18161049732839761912

`A222541(A133263(n+1))%A000108(n+3)`
-/

namespace A222542.P18161049732839761912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222541 (A133263 (n + 1)).toNat) (A000108 (n + 3))

end

end A222542.P18161049732839761912

/-! ## A222542.P15888425174193043821

`A014963(10*(n+1))*A222541(A133263(n+1))`
-/

namespace A222542.P15888425174193043821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A222541 (A133263 (n + 1)).toNat

end

end A222542.P15888425174193043821

/-! ## A222542.P16533366155402282039

`A007318(((-1)^n)²)*A222541(A133263(n+1))`
-/

namespace A222542.P16533366155402282039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((-1) ^ n) ^ 2).toNat * A222541 (A133263 (n + 1)).toNat

end

end A222542.P16533366155402282039

/-!
# A222543: Number of 3Xn 0..1 arrays with no more than floor(3Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222543, there is no canonical definition to state claims against.
-/

/-! ## A222543.P10951202778601570851

`A222541(∑[n+2]+4)`
-/

namespace A222543.P10951202778601570851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222543.P10951202778601570851

/-! ## A222543.P18278901810618131171

`record[A222541(A347633(n+1)+5)]`
-/

namespace A222543.P18278901810618131171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A347633 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222543.P18278901810618131171

/-! ## A222543.P9065729176669012022

`A222541(A167614(n+1))+char[18]`
-/

namespace A222543.P9065729176669012022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222543.P9065729176669012022

/-! ## A222543.P18391518591515597173

`lcm(A016251(n), A222541(A167614(n+1)))`
-/

namespace A222543.P18391518591515597173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016251 n) (A222541 (A167614 (n + 1)).toNat)

end

end A222543.P18391518591515597173

/-! ## A222543.P4246586669598650461

`or(A185255(n), A222541(A167614(n+1)))`
-/

namespace A222543.P4246586669598650461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185255 n) (A222541 (A167614 (n + 1)).toNat)

end

end A222543.P4246586669598650461

/-!
# A222544: Number of 4Xn 0..1 arrays with no more than floor(4Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222544, there is no canonical definition to state claims against.
-/

/-! ## A222544.P8767047739943812096

`A222541(C(n+5, 2)-n)`
-/

namespace A222544.P8767047739943812096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (Nat.choose (n + 5) 2 - n)

end

end A222544.P8767047739943812096

/-! ## A222544.P12750992765556702501

`A222541(A145018(n+4))`
-/

namespace A222544.P12750992765556702501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A145018 (n + 4)).toNat

end

end A222544.P12750992765556702501

/-! ## A222544.P7144840111837301032

`A222541(A141214(n)+7)`
-/

namespace A222544.P7144840111837301032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A141214 n + 7).toNat

end

end A222544.P7144840111837301032

/-! ## A222544.P17924606942829539507

`A222541(A052905(n)+9)`
-/

namespace A222544.P17924606942829539507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A052905 n + 9).toNat

end

end A222544.P17924606942829539507

/-! ## A222544.P11118429849805854063

`A222541(A055999(n)+10)`
-/

namespace A222544.P11118429849805854063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A055999 n + 10).toNat

end

end A222544.P11118429849805854063

/-!
# A222545: Number of 5 X n 0..1 arrays with no more than floor(5 X n/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222545, there is no canonical definition to state claims against.
-/

/-! ## A222545.P4559516709495327249

`A222541(A167499(n+3))`
-/

namespace A222545.P4559516709495327249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A167499 (n + 3)).toNat

end

end A222545.P4559516709495327249

/-! ## A222545.P11561626691220709200

`A222541(A155212(n)+13)`
-/

namespace A222545.P11561626691220709200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A155212 n + 13).toNat

end

end A222545.P11561626691220709200

/-! ## A222545.P12380594521230375052

`A222541(A056000(n)+15)`
-/

namespace A222545.P12380594521230375052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A056000 n + 15).toNat

end

end A222545.P12380594521230375052

/-! ## A222545.P135638077662079533

`A222541(eq[7, A066657(n)])`
-/

namespace A222545.P135638077662079533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222545.P135638077662079533

/-! ## A222545.P4984948753646973479

`A222541(A166136(n+3)-1)`
-/

namespace A222545.P4984948753646973479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A166136 (n + 3) - 1).toNat

end

end A222545.P4984948753646973479

/-!
# A222546: Number of 6Xn 0..1 arrays with no more than floor(6Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222546, there is no canonical definition to state claims against.
-/

/-! ## A222546.P11577643317344812336

`A222541(A056115(n)+21)`
-/

namespace A222546.P11577643317344812336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A056115 n + 21).toNat

end

end A222546.P11577643317344812336

/-! ## A222546.P10516701599273549805

`A222541(A167499(n+4)+1)`
-/

namespace A222546.P10516701599273549805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A167499 (n + 4) + 1).toNat

end

end A222546.P10516701599273549805

/-! ## A222546.P1652473683666705958

`A222541(A167614(n+4)+3)`
-/

namespace A222546.P1652473683666705958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A167614 (n + 4) + 3).toNat

end

end A222546.P1652473683666705958

/-! ## A222546.P6437439863685614248

`A222541(eq[7, A131818(n+1)])`
-/

namespace A222546.P6437439863685614248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222546.P6437439863685614248

/-! ## A222546.P11259095765694785398

`A222541(A000124(n+6)-(n+1))`
-/

namespace A222546.P11259095765694785398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A222546.P11259095765694785398

/-!
# A222547: Number of 7Xn 0..1 arrays with no more than floor(7Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222547, there is no canonical definition to state claims against.
-/

/-! ## A222547.P5217286387036999240

`A222541(A056119(n)+28)`
-/

namespace A222547.P5217286387036999240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A056119 n + 28).toNat

end

end A222547.P5217286387036999240

/-! ## A222547.P8789948195786919850

`A222541(eq[11, A066657(n)])`
-/

namespace A222547.P8789948195786919850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222547.P8789948195786919850

/-! ## A222547.P5927983389274353666

`A222541(A167499(n+5)+2)`
-/

namespace A222547.P5927983389274353666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A167499 (n + 5) + 2).toNat

end

end A222547.P5927983389274353666

/-! ## A222547.P6653171845633678275

`A222541(A167614(n+5)+4)`
-/

namespace A222547.P6653171845633678275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A167614 (n + 5) + 4).toNat

end

end A222547.P6653171845633678275

/-! ## A222547.P14890568302425890881

`A222541(A000124(n+6)+6)`
-/

namespace A222547.P14890568302425890881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222541 (A000124 (n + 6) + 6).toNat

end

end A222547.P14890568302425890881

/-!
# A222548: a(n) = Sum_{k=1..n} floor(n/k)^2.

The programs for A222548, the canonical program `A222548.P12009654421931561066` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222548 has offset 1).

The definition of A222548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222548.P12009654421931561066

`2*A024916(n+1)-A006218(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A222548

/-- `2*A024916(n+1)-A006218(n+1)` -/
def P12009654421931561066.Spec : Prop :=
  ∀ n, P12009654421931561066.a n = A222548 (n + 1)

theorem P12009654421931561066.correct : P12009654421931561066.Spec := by
  intro n
  simp only [A222548, Nat.add_sub_cancel]

end A222548

/-! ## A222548.P12690867123798401627

`∑[∑{d}[n+1, 2*#-1]]`
-/

namespace A222548.P12690867123798401627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((2 * d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222548.P12690867123798401627

namespace A222548

/-- `∑[∑{d}[n+1, 2*#-1]]` -/
def P12690867123798401627.Spec : Prop :=
  ∀ n, P12690867123798401627.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P368859583945929231

`∑[∑{d}[n+1, #-1]+∑{d}[n+1, #]]`
-/

namespace A222548.P368859583945929231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1) + ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222548.P368859583945929231

namespace A222548

/-- `∑[∑{d}[n+1, #-1]+∑{d}[n+1, #]]` -/
def P368859583945929231.Spec : Prop :=
  ∀ n, P368859583945929231.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P17902564607531266980

`∑{d}[n+1, 2*#-1]+a(n-1)` with `a(0)=1`
-/

namespace A222548.P17902564607531266980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 * d : ℤ) - 1) + a (n - 1)

end

end A222548.P17902564607531266980

namespace A222548

/-- `∑{d}[n+1, 2*#-1]+a(n-1)` -/
def P17902564607531266980.Spec : Prop :=
  ∀ n, P17902564607531266980.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P6810463965268858155

`∑[A129235(n+1)]`
-/

namespace A222548.P6810463965268858155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222548.P6810463965268858155

namespace A222548

/-- `∑[A129235(n+1)]` -/
def P6810463965268858155.Spec : Prop :=
  ∀ n, P6810463965268858155.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P2298552106316598967

`A330476(n+1)+(n+1)²`
-/

namespace A222548.P2298552106316598967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330476 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A222548.P2298552106316598967

namespace A222548

/-- `A330476(n+1)+(n+1)²` -/
def P2298552106316598967.Spec : Prop :=
  ∀ n, P2298552106316598967.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P327763316750458915

`A236632(n+1)+∑[∑{d}[n+1, #]]`
-/

namespace A222548.P327763316750458915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236632 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A222548.P327763316750458915

namespace A222548

/-- `A236632(n+1)+∑[∑{d}[n+1, #]]` -/
def P327763316750458915.Spec : Prop :=
  ∀ n, P327763316750458915.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P15122261046391498440

`A327329(n+1)-∑[∏{e}[n+1, #+1]]`
-/

namespace A222548.P15122261046391498440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A222548.P15122261046391498440

namespace A222548

/-- `A327329(n+1)-∑[∏{e}[n+1, #+1]]` -/
def P15122261046391498440.Spec : Prop :=
  ∀ n, P15122261046391498440.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P13525747064531126095

`A236632(n+1)+A024916(n+1)`
-/

namespace A222548.P13525747064531126095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236632 (n + 1) + A024916 (n + 1)

end

end A222548.P13525747064531126095

namespace A222548

/-- `A236632(n+1)+A024916(n+1)` -/
def P13525747064531126095.Spec : Prop :=
  ∀ n, P13525747064531126095.a n = A222548 (n + 1)

theorem P13525747064531126095.correct : P13525747064531126095.Spec := by
  intro n
  simp only [A222548, Nat.add_sub_cancel, A222548.P13525747064531126095.a, A222548.P12009654421931561066.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A236632, A236632.P7240843620257617603.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222548

/-! ## A222548.P17375796807024347955

`A327329(n+1)-A006218(n+1)`
-/

namespace A222548.P17375796807024347955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - A006218 (n + 1)

end

end A222548.P17375796807024347955

namespace A222548

/-- `A327329(n+1)-A006218(n+1)` -/
def P17375796807024347955.Spec : Prop :=
  ∀ n, P17375796807024347955.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P8672686565808455825

`A332569(n+1)-A098798(n+1)`
-/

namespace A222548.P8672686565808455825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332569 (n + 1) - A098798 (n + 1)

end

end A222548.P8672686565808455825

namespace A222548

/-- `A332569(n+1)-A098798(n+1)` -/
def P8672686565808455825.Spec : Prop :=
  ∀ n, P8672686565808455825.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P1122182480095490139

`A364970(n+1)-A366970(n+1)`
-/

namespace A222548.P1122182480095490139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364970 (n + 1) - A366970 (n + 1)

end

end A222548.P1122182480095490139

namespace A222548

/-- `A364970(n+1)-A366970(n+1)` -/
def P1122182480095490139.Spec : Prop :=
  ∀ n, P1122182480095490139.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P6271877302823312842

`A236632(n+1)+A327329(n+1)/2`
-/

namespace A222548.P6271877302823312842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236632 (n + 1) : ℚ) + (A327329 (n + 1) : ℚ) / 2

end

end A222548.P6271877302823312842

namespace A222548

/-- `A236632(n+1)+A327329(n+1)/2` -/
def P6271877302823312842.Spec : Prop :=
  ∀ n, P6271877302823312842.a n = (A222548 (n + 1) : ℚ)

theorem P6271877302823312842.correct : P6271877302823312842.Spec := by
  intro n
  simp only [A222548, Nat.add_sub_cancel, A222548.P6271877302823312842.a, A222548.P12009654421931561066.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A236632, A236632.P7240843620257617603.a, A327329, A327329.P5185755489289824233.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222548

/-! ## A222548.P9012932678900286811

`2*A350143(n+1)-A344720(n+1)`
-/

namespace A222548.P9012932678900286811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350143 (n + 1) - A344720 (n + 1)

end

end A222548.P9012932678900286811

namespace A222548

/-- `2*A350143(n+1)-A344720(n+1)` -/
def P9012932678900286811.Spec : Prop :=
  ∀ n, P9012932678900286811.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P8924132030956361741

`∑[A000005(n+1)+2*A065608(n+1)]`
-/

namespace A222548.P8924132030956361741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 2 * A065608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222548.P8924132030956361741

namespace A222548

/-- `∑[A000005(n+1)+2*A065608(n+1)]` -/
def P8924132030956361741.Spec : Prop :=
  ∀ n, P8924132030956361741.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P9773394870081905930

`∑[2*A000203(n+1)-A000005(n+1)]`
-/

namespace A222548.P9773394870081905930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222548.P9773394870081905930

namespace A222548

/-- `∑[2*A000203(n+1)-A000005(n+1)]` -/
def P9773394870081905930.Spec : Prop :=
  ∀ n, P9773394870081905930.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P11037005732026827115

`2*A024916(n+1)-∑[A000005(n+1)]`
-/

namespace A222548.P11037005732026827115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024916 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222548.P11037005732026827115

namespace A222548

/-- `2*A024916(n+1)-∑[A000005(n+1)]` -/
def P11037005732026827115.Spec : Prop :=
  ∀ n, P11037005732026827115.a n = A222548 (n + 1)

end A222548

/-! ## A222548.P16580581947856265650

`A007429(n+1)+A236632(n+1)+A076663(n+1)`
-/

namespace A222548.P16580581947856265650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A236632 (n + 1) + A076663 (n + 1))

end

end A222548.P16580581947856265650

namespace A222548

/-- `A007429(n+1)+A236632(n+1)+A076663(n+1)` -/
def P16580581947856265650.Spec : Prop :=
  ∀ n, P16580581947856265650.a n = A222548 (n + 1)

theorem P16580581947856265650.correct : P16580581947856265650.Spec := by
  intro n
  simp only [A222548, Nat.add_sub_cancel, A222548.P16580581947856265650.a, A222548.P12009654421931561066.a, A006218, A006218.P9218434490128439557.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A024916, A024916.P6070136297472608546.a, A076663, A076663.P9173981958373011071.a, A236632, A236632.P7240843620257617603.a, A000005, A000005.P16091521709108585461.a, A001065, A001065.P4097147489331274860.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222548

/-! ## A222548.P12221369402443898286

`A006218(n+1)+A236632(n+1)+A236632(n+1)`
-/

namespace A222548.P12221369402443898286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A236632 (n + 1) + A236632 (n + 1))

end

end A222548.P12221369402443898286

namespace A222548

/-- `A006218(n+1)+A236632(n+1)+A236632(n+1)` -/
def P12221369402443898286.Spec : Prop :=
  ∀ n, P12221369402443898286.a n = A222548 (n + 1)

theorem P12221369402443898286.correct : P12221369402443898286.Spec := by
  intro n
  simp only [A222548, Nat.add_sub_cancel, A222548.P12221369402443898286.a, A222548.P12009654421931561066.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A236632, A236632.P7240843620257617603.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222548

/-! ## A222548.P2092736055211990414

`A024916(n+1)+A160664(n+1)-A054519(n+1)`
-/

namespace A222548.P2092736055211990414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A160664 (n + 1) - A054519 (n + 1))

end

end A222548.P2092736055211990414

namespace A222548

/-- `A024916(n+1)+A160664(n+1)-A054519(n+1)` -/
def P2092736055211990414.Spec : Prop :=
  ∀ n, P2092736055211990414.a n = A222548 (n + 1)

theorem P2092736055211990414.correct : P2092736055211990414.Spec := by
  intro n
  simp only [A222548, Nat.add_sub_cancel, A222548.P2092736055211990414.a, A222548.P12009654421931561066.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A054519, A054519.P3292618312068876157.a, A160664, A160664.P14996881624845338289.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222548

/-!
# A222549: Number of (n+2) X 1 arrays of occupancy after each element moves up to +-2 places but not 0.

The programs for A222549, there is no canonical definition to state claims against.
-/

/-! ## A222549.P2124553711805721688

`A222555(∑[n+2])`
-/

namespace A222549.P2124553711805721688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222549.P2124553711805721688

/-! ## A222549.P5448664605483315841

`A222555(A055998(n)+2)%A000597(n+4)`
-/

namespace A222549.P5448664605483315841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222555 (A055998 n + 2).toNat) (A000597 (n + 4))

end

end A222549.P5448664605483315841

/-!
# A222550: Number of (n+3) X 1 arrays of occupancy after each element moves up to +-3 places but not 0.

The programs for A222550, there is no canonical definition to state claims against.
-/

/-! ## A222550.P8405901962379736097

`A222555(∑[n+3]+1)`
-/

namespace A222550.P8405901962379736097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222550.P8405901962379736097

/-! ## A222550.P2226438497166128838

`A222555(A165157(2*n+3))+A185284(n)`
-/

namespace A222550.P2226438497166128838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (A165157 (2 * n + 3)).toNat + A185284 n

end

end A222550.P2226438497166128838

/-! ## A222550.P16866167405533222659

`A181937(n)*A222555(A165157(2*n+3))`
-/

namespace A222550.P16866167405533222659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 n * A222555 (A165157 (2 * n + 3)).toNat

end

end A222550.P16866167405533222659

/-! ## A222550.P5205871648738564833

`A222555(A141214(n)+1)%A000597(n+4)`
-/

namespace A222550.P5205871648738564833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222555 (A141214 n + 1).toNat) (A000597 (n + 4))

end

end A222550.P5205871648738564833

/-!
# A222551: Number of (n+4)X1 arrays of occupancy after each element moves up to +-4 places but not 0.

The programs for A222551, there is no canonical definition to state claims against.
-/

/-! ## A222551.P18328532591921203249

`A222555(A141214(n+1))`
-/

namespace A222551.P18328532591921203249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (A141214 (n + 1)).toNat

end

end A222551.P18328532591921203249

/-! ## A222551.P14931881339070913089

`A222555(A027379(n+2))`
-/

namespace A222551.P14931881339070913089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (A027379 (n + 2)).toNat

end

end A222551.P14931881339070913089

/-! ## A222551.P5691671229680142462

`A222555(A055998(n+2))`
-/

namespace A222551.P5691671229680142462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (A055998 (n + 2)).toNat

end

end A222551.P5691671229680142462

/-!
# A222552: Number of (n+5)X1 arrays of occupancy after each element moves up to +-5 places but not 0.

The programs for A222552, there is no canonical definition to state claims against.
-/

/-! ## A222552.P10307615411676559357

`A222555(Δ[A264443(n)])`
-/

namespace A222552.P10307615411676559357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (f1 (n + 1) - f1 n).toNat

end

end A222552.P10307615411676559357

/-! ## A222552.P5088672404119361814

`A222555(A046691(n+3))`
-/

namespace A222552.P5088672404119361814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (A046691 (n + 3)).toNat

end

end A222552.P5088672404119361814

/-!
# A222553: Number of (n+6)X1 arrays of occupancy after each element moves up to +-6 places but not 0.

The programs for A222553, there is no canonical definition to state claims against.
-/

/-! ## A222553.P5773685860811191465

`A222555(A052905(n+3))`
-/

namespace A222553.P5773685860811191465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (A052905 (n + 3)).toNat

end

end A222553.P5773685860811191465

/-!
# A222556: Number of (n+2)X1 arrays of occupancy after each element moves up to +-n places but not 0.

The programs for A222556, there is no canonical definition to state claims against.
-/

/-! ## A222556.P7838800366184286280

`A387913(n+1)+1`
-/

namespace A222556.P7838800366184286280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387913 (n + 1) + 1

end

end A222556.P7838800366184286280

/-! ## A222556.P834943861639408240

`A359435(n+3)+2`
-/

namespace A222556.P834943861639408240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359435 (n + 3) + 2

end

end A222556.P834943861639408240

/-! ## A222556.P6757212689046810063

`record[A260878(n)-n²]`
-/

namespace A222556.P6757212689046810063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222556.P6757212689046810063

/-! ## A222556.P6505011224286262494

`A222555(∑[n+1]+2)`
-/

namespace A222556.P6505011224286262494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222556.P6505011224286262494

/-! ## A222556.P12857708391639693387

`A352027(n+3)-(n+1)`
-/

namespace A222556.P12857708391639693387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352027 (n + 3) - (n + 1 : ℤ)

end

end A222556.P12857708391639693387

/-!
# A222557: Number of (n+3)X1 arrays of occupancy after each element moves up to +-n places but not 0.

The programs for A222557, there is no canonical definition to state claims against.
-/

/-! ## A222557.P16677070193270465307

`A222555(∑[n+2]+4)`
-/

namespace A222557.P16677070193270465307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222557.P16677070193270465307

/-! ## A222557.P15997273722690886035

`(1-(∑{digits}[n, #]-n))*A222555(A167614(n+1))`
-/

namespace A222557.P15997273722690886035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))) * A222555 (A167614 (n + 1)).toNat

end

end A222557.P15997273722690886035

/-! ## A222557.P14660430417841553012

`A222555(A167614(n+1))+A185037(n)`
-/

namespace A222557.P14660430417841553012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (A167614 (n + 1)).toNat + A185037 n

end

end A222557.P14660430417841553012

/-! ## A222557.P3837998172132892414

`A222555(A167614(n+1))+A185237(n)`
-/

namespace A222557.P3837998172132892414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222555 (A167614 (n + 1)).toNat + A185237 n

end

end A222557.P3837998172132892414

/-!
# A222559: a(0) = 0. If n is odd, a(n) = a(n-1) * n, otherwise a(n) = a(n-1) + n.

The programs for A222559, the canonical program `A222559.P7406129077156502269` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222559 has offset 0).

The definition of A222559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222559.P7406129077156502269

`A047905(n+1)-∏[A093178(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A222559

/-- `A047905(n+1)-∏[A093178(n)]` -/
def P7406129077156502269.Spec : Prop :=
  ∀ n, P7406129077156502269.a n = A222559 n

theorem P7406129077156502269.correct : P7406129077156502269.Spec := by
  intro n
  simp only [A222559]

end A222559

/-! ## A222559.P14921048932568020492

`∏[A093178(n)]-A047907(n+1)`
-/

namespace A222559.P14921048932568020492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A047907 (n + 1)

end

end A222559.P14921048932568020492

namespace A222559

/-- `∏[A093178(n)]-A047907(n+1)` -/
def P14921048932568020492.Spec : Prop :=
  ∀ n, P14921048932568020492.a n = A222559 n

theorem P14921048932568020492.correct : P14921048932568020492.Spec := by
  intro n
  simp only [A222559, Nat.add_sub_cancel, A222559.P14921048932568020492.f1, A222559.P14921048932568020492.a, A222559.P7406129077156502269.f1, A222559.P7406129077156502269.a, A047905, A047905.P13381829321678238955.f1, A047905.P13381829321678238955.a, A047907, A047907.P7987209180483204258.a, A093178, A093178.P12085837158869515185.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222559

/-! ## A222559.P7617751312324212043

`(A047905(n+1)-A047907(n+1))/2`
-/

namespace A222559.P7617751312324212043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047905 (n + 1) - A047907 (n + 1) : ℚ) / 2

end

end A222559.P7617751312324212043

namespace A222559

/-- `(A047905(n+1)-A047907(n+1))/2` -/
def P7617751312324212043.Spec : Prop :=
  ∀ n, P7617751312324212043.a n = (A222559 n : ℚ)

theorem P7617751312324212043.correct : P7617751312324212043.Spec := by
  intro n
  simp only [A222559, Nat.add_sub_cancel, A222559.P7617751312324212043.a, A222559.P7406129077156502269.f1, A222559.P7406129077156502269.a, A047905, A047905.P13381829321678238955.f1, A047905.P13381829321678238955.a, A047907, A047907.P7987209180483204258.a, A093178, A093178.P12085837158869515185.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222559

/-! ## A222559.P10781738608064824357

`A123023(n+1)+A123023(n)-A047907(n+1)`
-/

namespace A222559.P10781738608064824357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (n + 1) + (A123023 n - A047907 (n + 1))

end

end A222559.P10781738608064824357

namespace A222559

/-- `A123023(n+1)+A123023(n)-A047907(n+1)` -/
def P10781738608064824357.Spec : Prop :=
  ∀ n, P10781738608064824357.a n = A222559 n

end A222559

/-! ## A222559.P9439103614755298329

`A047905(n+1)-A000142(n)/A037223(n)`
-/

namespace A222559.P9439103614755298329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047905 (n + 1) : ℚ) - (A000142 n : ℚ) / (A037223 n : ℚ)

end

end A222559.P9439103614755298329

namespace A222559

/-- `A047905(n+1)-A000142(n)/A037223(n)` -/
def P9439103614755298329.Spec : Prop :=
  ∀ n, P9439103614755298329.a n = (A222559 n : ℚ)

end A222559

/-! ## A222559.P13486332415203057274

`A000142(n)/A037223(n)-A047907(n+1)`
-/

namespace A222559.P13486332415203057274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A037223 n : ℚ) - (A047907 (n + 1) : ℚ)

end

end A222559.P13486332415203057274

namespace A222559

/-- `A000142(n)/A037223(n)-A047907(n+1)` -/
def P13486332415203057274.Spec : Prop :=
  ∀ n, P13486332415203057274.a n = (A222559 n : ℚ)

end A222559

/-!
# A222560: (Denominators of Cauchy numbers of the first kind c_{2n})/6.

The programs for A222560, there is no canonical definition to state claims against.
-/

/-! ## A222560.P7379317121796214833

`A006233(2*(n+1))/6`
-/

namespace A222560.P7379317121796214833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006233 (2 * (n + 1)) : ℚ) / 6

end

end A222560.P7379317121796214833

/-! ## A222560.P18440549121119045367

`ceil(A006233(A103517(n))/6)`
-/

namespace A222560.P18440549121119045367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006233 (A103517 n).toNat : ℚ) / 6⌉

end

end A222560.P18440549121119045367

/-! ## A222560.P14243439081170417463

`A103221(A006233(2*(n+1))+1)`
-/

namespace A222560.P14243439081170417463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A006233 (2 * (n + 1)) + 1).toNat

end

end A222560.P14243439081170417463

/-! ## A222560.P12019359347277714584

`A071281(A006233(2*(n+1))+2)`
-/

namespace A222560.P12019359347277714584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 (A006233 (2 * (n + 1)) + 2).toNat

end

end A222560.P12019359347277714584

/-! ## A222560.P16418577990723297168

`gcd(A006233(2*n+2), A194275(A006233(2*n+2)))`
-/

namespace A222560.P16418577990723297168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006233 (2 * n + 2)) (A194275 (A006233 (2 * n + 2)).toNat)

end

end A222560.P16418577990723297168

/-!
# A222561: (Denominators of Cauchy numbers of the second kind hat c_{2n})/6.

The programs for A222561, there is no canonical definition to state claims against.
-/

/-! ## A222561.P8621576266399666459

`A002790(2*(n+1))/6`
-/

namespace A222561.P8621576266399666459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 (2 * (n + 1)) : ℚ) / 6

end

end A222561.P8621576266399666459

/-! ## A222561.P3641906766449786855

`ceil(A002790(A103517(n))/6)`
-/

namespace A222561.P3641906766449786855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002790 (A103517 n).toNat : ℚ) / 6⌉

end

end A222561.P3641906766449786855

/-! ## A222561.P17075633272663324685

`(A002790(A103517(n))/6)^A092695(A127321(n))`
-/

namespace A222561.P17075633272663324685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002790 (A103517 n).toNat : ℚ) / 6) ^ (A092695 (A127321 n).toNat : ℤ)

end

end A222561.P17075633272663324685

/-! ## A222561.P3290197020329715744

`(A002790(A103517(n))/6)^A001221(A000015(n+1))`
-/

namespace A222561.P3290197020329715744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002790 (A103517 n).toNat : ℚ) / 6) ^ (A001221 (A000015 (n + 1)).toNat : ℤ)

end

end A222561.P3290197020329715744

/-! ## A222561.P12184184539837726967

`(A002790(A103517(n))/6)^A001222(A008578(n+1))`
-/

namespace A222561.P12184184539837726967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002790 (A103517 n).toNat : ℚ) / 6) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A222561.P12184184539837726967

/-!
# A222562: Numbers that are highest in their respective Collatz (3x+1) trajectories only.

The programs for A222562, there is no canonical definition to state claims against.
-/

/-! ## A222562.P3511769210557824758

`eq[1, A087255(n+1)]+1`
-/

namespace A222562.P3511769210557824758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A222562.P3511769210557824758

/-! ## A222562.P11854734920735376969

`record[A033496(n+1)/A275109(n+1)]`
-/

namespace A222562.P11854734920735376969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033496 (n + 1) : ℚ) / (A275109 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222562.P11854734920735376969

/-! ## A222562.P1892910961006048758

`∪[A000116(n), A087254(n+1)]`
-/

namespace A222562.P1892910961006048758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222562.P1892910961006048758

/-! ## A222562.P12269502906285164633

`∪[A060899(n), A087254(n+1)]`
-/

namespace A222562.P12269502906285164633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222562.P12269502906285164633

/-! ## A222562.P5544087770610274423

`∪[A081294(n), A087254(n+1)]`
-/

namespace A222562.P5544087770610274423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222562.P5544087770610274423

/-! ## A222562.P8083604185044858003

`∪[A084137(n), A087254(n+1)]`
-/

namespace A222562.P8083604185044858003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222562.P8083604185044858003

/-! ## A222562.P12630518896091716420

`∪[A087254(n+1), A133443(n)]`
-/

namespace A222562.P12630518896091716420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133443 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222562.P12630518896091716420

/-! ## A222562.P2256981184908003038

`∪[A087254(n+1), A150667(n)]`
-/

namespace A222562.P2256981184908003038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222562.P2256981184908003038

/-! ## A222562.P10066427507445929849

`∪[A087254(n+1), A150863(n)]`
-/

namespace A222562.P10066427507445929849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222562.P10066427507445929849

/-! ## A222562.P4194028303238238290

`∪[A087254(n+1), A155084(n)]`
-/

namespace A222562.P4194028303238238290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155084 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222562.P4194028303238238290

/-!
# A222563: Primes p such that the sum of divisors (excluding 1 and p - 1) of p - 1 and the sum of divisors (excluding 1 and p + 1) of p + 1 are both prime.

The programs for A222563, there is no canonical definition to state claims against.
-/

/-! ## A222563.P4533043701719113632

`A106886(A106457(p?[or(4, 6*n)-3]))`
-/

namespace A222563.P4533043701719113632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 (6 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (A106457 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A222563.P4533043701719113632

/-!
# A222565: Primes that are the largest anti-divisor of primes.

The programs for A222565, the canonical program `A222565.P1816382862273423881` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222565 has offset 1).

The definition of A222565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222565.P1816382862273423881

`∪[A158708(n+1), A158709(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A222565

/-- `∪[A158708(n+1), A158709(n+1)]` -/
def P1816382862273423881.Spec : Prop :=
  ∀ n, (P1816382862273423881.a n : ℤ) = A222565 (n + 1)

theorem P1816382862273423881.correct : P1816382862273423881.Spec := by
  intro n
  simp only [A222565, Nat.add_sub_cancel]

end A222565

/-! ## A222565.P13190883142449671383

`p?[A008620(A005097(n+1))+A005097(n+1)]`
-/

namespace A222565.P13190883142449671383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A005097 (n + 1)).toNat + A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222565.P13190883142449671383

namespace A222565

/-- `p?[A008620(A005097(n+1))+A005097(n+1)]` -/
def P13190883142449671383.Spec : Prop :=
  ∀ n, P13190883142449671383.a n = A222565 (n + 1)

end A222565

/-! ## A222565.P9058372802585972213

`p?[A004396(p?[2*n+1])]`
-/

namespace A222565.P9058372802585972213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222565.P9058372802585972213

namespace A222565

/-- `p?[A004396(p?[2*n+1])]` -/
def P9058372802585972213.Spec : Prop :=
  ∀ n, P9058372802585972213.a n = A222565 (n + 1)

end A222565

/-! ## A222565.P4563571017631999638

`p?[A026185(p?[2*n+1])]`
-/

namespace A222565.P4563571017631999638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222565.P4563571017631999638

namespace A222565

/-- `p?[A026185(p?[2*n+1])]` -/
def P4563571017631999638.Spec : Prop :=
  ∀ n, P4563571017631999638.a n = A222565 (n + 1)

end A222565

/-! ## A222565.P763756645750748200

`p?[A066481(p?[2*n+1])]`
-/

namespace A222565.P763756645750748200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066481 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222565.P763756645750748200

namespace A222565

/-- `p?[A066481(p?[2*n+1])]` -/
def P763756645750748200.Spec : Prop :=
  ∀ n, P763756645750748200.a n = A222565 (n + 1)

end A222565

/-! ## A222565.P8188652062074027138

`p?[A274616(p?[2*n+1])]`
-/

namespace A222565.P8188652062074027138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222565.P8188652062074027138

namespace A222565

/-- `p?[A274616(p?[2*n+1])]` -/
def P8188652062074027138.Spec : Prop :=
  ∀ n, P8188652062074027138.a n = A222565 (n + 1)

end A222565

/-! ## A222565.P15310371344219603462

`p?[A002264(A005408(n))*A032741(n)]`
-/

namespace A222565.P15310371344219603462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005408 n).toNat * A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222565.P15310371344219603462

namespace A222565

/-- `p?[A002264(A005408(n))*A032741(n)]` -/
def P15310371344219603462.Spec : Prop :=
  ∀ n, P15310371344219603462.a n = A222565 (n + 1)

end A222565

/-! ## A222565.P17918130442279069325

`A285872(A265761(n+1))`
-/

namespace A222565.P17918130442279069325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285872 (A265761 (n + 1)).toNat

end

end A222565.P17918130442279069325

namespace A222565

/-- `A285872(A265761(n+1))` -/
def P17918130442279069325.Spec : Prop :=
  ∀ n, P17918130442279069325.a n = A222565 (n + 1)

end A222565

/-!
# A222566: a(1)=2; for n>0, a(n+1) is the least prime p>a(n) such that 2*(a(n)+1)-p is prime.

The programs for A222566, there is no canonical definition to state claims against.
-/

/-! ## A222566.P15546581275777032393

`A078496(a(n-1)+1)` with `a(0)=2, a(1)=3`
-/

namespace A222566.P15546581275777032393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A078496 (a (n - 1) + 1).toNat

end

end A222566.P15546581275777032393

/-! ## A222566.P1473269966740325629

`A234345(a(n-1)+1)` with `a(0)=2`
-/

namespace A222566.P1473269966740325629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A234345 (a (n - 1) + 1).toNat

end

end A222566.P1473269966740325629

/-! ## A222566.P7517276952290313975

`A234345(A000203(a(n-1)))` with `a(0)=2`
-/

namespace A222566.P7517276952290313975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A234345 (A000203 (a (n - 1)).toNat).toNat

end

end A222566.P7517276952290313975

/-! ## A222566.P6870450686126657525

`A234345(A063655(a(n-1)))` with `a(0)=2`
-/

namespace A222566.P6870450686126657525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A234345 (A063655 (a (n - 1)).toNat).toNat

end

end A222566.P6870450686126657525

/-! ## A222566.P15823281490778833751

`A234345(A103391(2*a(n-1)))` with `a(0)=2`
-/

namespace A222566.P15823281490778833751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A234345 (A103391 (2 * a (n - 1)).toNat).toNat

end

end A222566.P15823281490778833751

/-!
# A222567: Number of nX2 0..2 arrays with no more than floor(nX2/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222567, there is no canonical definition to state claims against.
-/

/-! ## A222567.P7837720823883861499

`A222587(∑[n+1]+2)`
-/

namespace A222567.P7837720823883861499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222567.P7837720823883861499

/-! ## A222567.P18368358006396468946

`A222587(A133263(n+1))^floor(atan(n))`
-/

namespace A222567.P18368358006396468946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222587 (A133263 (n + 1)).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A222567.P18368358006396468946

/-! ## A222567.P819216673731160371

`A222587(A133263(n+1))+A014083(n)`
-/

namespace A222567.P819216673731160371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A133263 (n + 1)).toNat + A014083 n

end

end A222567.P819216673731160371

/-! ## A222567.P8328248518581427857

`gcd(A000038(n), A222587(A133263(n+1)))`
-/

namespace A222567.P8328248518581427857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222587 (A133263 (n + 1)).toNat)

end

end A222567.P8328248518581427857

/-! ## A222567.P15610151086394844890

`or(A222587(A133263(n+1)), A316865(n))`
-/

namespace A222567.P15610151086394844890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222587 (A133263 (n + 1)).toNat) (A316865 n)

end

end A222567.P15610151086394844890

/-!
# A222568: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222568, there is no canonical definition to state claims against.
-/

/-! ## A222568.P12052215538487360764

`A222573(∑[n+3]+1)`
-/

namespace A222568.P12052215538487360764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222568.P12052215538487360764

/-! ## A222568.P1474938154387858835

`record[A222573(A198464(n+1))]`
-/

namespace A222568.P1474938154387858835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222568.P1474938154387858835

/-! ## A222568.P4116326163444140069

`record[char[A055998(n)]*A222573(n+1)]`
-/

namespace A222568.P4116326163444140069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222568.P4116326163444140069

/-! ## A222568.P7339623302565447834

`record[A010054(n+3)*A222573(n+1)]`
-/

namespace A222568.P7339623302565447834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A222573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222568.P7339623302565447834

/-! ## A222568.P18435147112108974172

`record[A222573(n+1)/A109692(n+3)]`
-/

namespace A222568.P18435147112108974172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222573 (n + 1) : ℚ) / (A109692 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222568.P18435147112108974172

/-!
# A222569: Number of n X 4 0..2 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222569, there is no canonical definition to state claims against.
-/

/-! ## A222569.P3763982369149675068

`A222573(Δ[n²]+∑[n+2]+4)`
-/

namespace A222569.P3763982369149675068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A222569.P3763982369149675068

/-! ## A222569.P758727223737077765

`A222573(A027379(n+2))%A186672(n+3)`
-/

namespace A222569.P758727223737077765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222573 (A027379 (n + 2)).toNat) (A186672 (n + 3))

end

end A222569.P758727223737077765

/-! ## A222569.P5880102375599452218

`A222573(A027379(n+2))+A000007(3*n+4)`
-/

namespace A222569.P5880102375599452218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A027379 (n + 2)).toNat + A000007 (3 * n + 4)

end

end A222569.P5880102375599452218

/-!
# A222570: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222570, there is no canonical definition to state claims against.
-/

/-! ## A222570.P16457197473085095768

`A222573(Δ[A264443(n)])`
-/

namespace A222570.P16457197473085095768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (f1 (n + 1) - f1 n).toNat

end

end A222570.P16457197473085095768

/-! ## A222570.P10116989953113006319

`A222573(A046691(n+3))`
-/

namespace A222570.P10116989953113006319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A046691 (n + 3)).toNat

end

end A222570.P10116989953113006319

/-! ## A222570.P745383487514624677

`A222573(A056115(n)+11)`
-/

namespace A222570.P745383487514624677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A056115 n + 11).toNat

end

end A222570.P745383487514624677

/-! ## A222570.P10786381682811938687

`A222573(eq[2, A092921(n)])`
-/

namespace A222570.P10786381682811938687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222570.P10786381682811938687

/-! ## A222570.P8304648615495539885

`A222573(eq[3, A152157(n)])`
-/

namespace A222570.P8304648615495539885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222570.P8304648615495539885

/-!
# A222571: Number of nX6 0..2 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222571, there is no canonical definition to state claims against.
-/

/-! ## A222571.P8930069623301149005

`A222573(A052905(n+3))`
-/

namespace A222571.P8930069623301149005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A052905 (n + 3)).toNat

end

end A222571.P8930069623301149005

/-! ## A222571.P14305388995502064685

`A222573(A056119(n)+16)`
-/

namespace A222571.P14305388995502064685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A056119 n + 16).toNat

end

end A222571.P14305388995502064685

/-! ## A222571.P15593549403467424404

`A222573(eq[3, A219347(n)])`
-/

namespace A222571.P15593549403467424404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222571.P15593549403467424404

/-! ## A222571.P17553492007150295198

`A222573(eq[5, A193592(n)])`
-/

namespace A222571.P17553492007150295198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222571.P17553492007150295198

/-! ## A222571.P7147371079068179292

`A222573(eq[8, A258709(n)])`
-/

namespace A222571.P7147371079068179292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222571.P7147371079068179292

/-!
# A222572: Number of nX7 0..2 arrays with no more than floor(nX7/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222572, there is no canonical definition to state claims against.
-/

/-! ## A222572.P6630203893566375081

`A222573(A055999(n+4))`
-/

namespace A222572.P6630203893566375081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A055999 (n + 4)).toNat

end

end A222572.P6630203893566375081

/-! ## A222572.P9615236701109715453

`A222573(eq[4, A219347(n)])`
-/

namespace A222572.P9615236701109715453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222572.P9615236701109715453

/-! ## A222572.P14918124399419620065

`A222573(eq[6, A193592(n)])`
-/

namespace A222572.P14918124399419620065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222572.P14918124399419620065

/-! ## A222572.P5208431866169768867

`A222573(Δ[A026054(n+4)])`
-/

namespace A222572.P5208431866169768867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (f1 (n + 1) - f1 n).toNat

end

end A222572.P5208431866169768867

/-!
# A222573: T(n,k)=Number of nXk 0..2 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222573, there is no canonical definition to state claims against.
-/

/-! ## A222573.P3224016475535228597

`A222679(n+1)-A014083(A000129(n))`
-/

namespace A222573.P3224016475535228597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (n + 1) - A014083 (A000129 n).toNat

end

end A222573.P3224016475535228597

/-! ## A222573.P3569903850789316569

`A222679(n+1)-A102683(A005803(n))`
-/

namespace A222573.P3569903850789316569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (n + 1) - A102683 (A005803 n).toNat

end

end A222573.P3569903850789316569

/-! ## A222573.P9148672030500808843

`A222679(n+1)-A324088(A109202(n))`
-/

namespace A222573.P9148672030500808843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (n + 1) - A324088 (A109202 n).toNat

end

end A222573.P9148672030500808843

/-! ## A222573.P5595674619628131206

`A222679(n+1)-A335453(A222679(n+5))`
-/

namespace A222573.P5595674619628131206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (n + 1) - A335453 (A222679 (n + 5)).toNat

end

end A222573.P5595674619628131206

/-! ## A222573.P10540828434143341655

`A222679(n+1)-A102243(A007590(3*(n+1)))`
-/

namespace A222573.P10540828434143341655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222679 (n + 1) - A102243 (A007590 (3 * (n + 1))).toNat

end

end A222573.P10540828434143341655

/-!
# A222574: Number of 2Xn 0..2 arrays with no more than floor(2Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222574, there is no canonical definition to state claims against.
-/

/-! ## A222574.P12852876177042428914

`A222573(∑[n+1]+2)`
-/

namespace A222574.P12852876177042428914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222574.P12852876177042428914

/-! ## A222574.P14654126798761227706

`A222573(A133263(n+1))+A014083(n)`
-/

namespace A222574.P14654126798761227706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A133263 (n + 1)).toNat + A014083 n

end

end A222574.P14654126798761227706

/-! ## A222574.P7579417120018552915

`gcd(A000038(n), A222573(A133263(n+1)))`
-/

namespace A222574.P7579417120018552915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222573 (A133263 (n + 1)).toNat)

end

end A222574.P7579417120018552915

/-! ## A222574.P3381776636164511942

`or(A222573(A133263(n+1)), A316865(n))`
-/

namespace A222574.P3381776636164511942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222573 (A133263 (n + 1)).toNat) (A316865 n)

end

end A222574.P3381776636164511942

/-! ## A222574.P9693396070931460076

`A222573(A133263(n+1))%A222575(n+1)`
-/

namespace A222574.P9693396070931460076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222573 (A133263 (n + 1)).toNat) (A222575 (n + 1))

end

end A222574.P9693396070931460076

/-!
# A222575: Number of 3Xn 0..2 arrays with no more than floor(3Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222575, there is no canonical definition to state claims against.
-/

/-! ## A222575.P13553834908446492411

`A222573(∑[n+2]+4)`
-/

namespace A222575.P13553834908446492411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222575.P13553834908446492411

/-! ## A222575.P9997860854250877552

`A222573(A166136(n+1)-3)+char[14]`
-/

namespace A222575.P9997860854250877552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A166136 (n + 1) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222575.P9997860854250877552

/-! ## A222575.P8757240552845366645

`A222573(A167614(n+1))+and(2, char[1])`
-/

namespace A222575.P8757240552845366645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A167614 (n + 1)).toNat + (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A222575.P8757240552845366645

/-! ## A222575.P15534144131867968305

`A222573(A167614(n+1))+A011744(n)`
-/

namespace A222575.P15534144131867968305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A167614 (n + 1)).toNat + A011744 n

end

end A222575.P15534144131867968305

/-! ## A222575.P14424207132668722851

`A222573(A167614(n+1))+A000007(n+1)`
-/

namespace A222575.P14424207132668722851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A222575.P14424207132668722851

/-!
# A222576: Number of 4Xn 0..2 arrays with no more than floor(4Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222576, there is no canonical definition to state claims against.
-/

/-! ## A222576.P11597602888309099915

`A222573(A141214(n)+7)`
-/

namespace A222576.P11597602888309099915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A141214 n + 7).toNat

end

end A222576.P11597602888309099915

/-! ## A222576.P14363124074754861714

`A222573(A052905(n)+9)`
-/

namespace A222576.P14363124074754861714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A052905 n + 9).toNat

end

end A222576.P14363124074754861714

/-! ## A222576.P8577441621616309178

`A222573(A055999(n)+10)`
-/

namespace A222576.P8577441621616309178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A055999 n + 10).toNat

end

end A222576.P8577441621616309178

/-! ## A222576.P16767981181903664550

`A222573(eq[5, A066657(n)])`
-/

namespace A222576.P16767981181903664550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222576.P16767981181903664550

/-! ## A222576.P5861922429128234236

`A222573(A167614(n+2)+1)`
-/

namespace A222576.P5861922429128234236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A167614 (n + 2) + 1).toNat

end

end A222576.P5861922429128234236

/-!
# A222577: Number of 5Xn 0..2 arrays with no more than floor(5Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222577, there is no canonical definition to state claims against.
-/

/-! ## A222577.P17996990471815525085

`A222573(A167499(n+3))`
-/

namespace A222577.P17996990471815525085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A167499 (n + 3)).toNat

end

end A222577.P17996990471815525085

/-! ## A222577.P5310646381045037791

`A222573(A155212(n)+13)`
-/

namespace A222577.P5310646381045037791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A155212 n + 13).toNat

end

end A222577.P5310646381045037791

/-! ## A222577.P586071566485808057

`A222573(A056000(n)+15)`
-/

namespace A222577.P586071566485808057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A056000 n + 15).toNat

end

end A222577.P586071566485808057

/-! ## A222577.P3483830191841993072

`A222573(eq[7, A066657(n)])`
-/

namespace A222577.P3483830191841993072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222577.P3483830191841993072

/-! ## A222577.P15667800441833472129

`A222573(A166136(n+3)-1)`
-/

namespace A222577.P15667800441833472129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (A166136 (n + 3) - 1).toNat

end

end A222577.P15667800441833472129

/-!
# A222578: Number of 6Xn 0..2 arrays with no more than floor(6Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222578, there is no canonical definition to state claims against.
-/

/-! ## A222578.P4874558343133193222

`A222573(∑[n+5]+16)`
-/

namespace A222578.P4874558343133193222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222573 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A222578.P4874558343133193222

/-!
# A222580: Number of ways to write n=p_m-p_{m-1}+...+(-1)^{m-k}p_k with k

The programs for A222580, there is no canonical definition to state claims against.
-/

/-! ## A222580.P2166043218304342606

`A065719(n)+A020639(A173779(n))`
-/

namespace A222580.P2166043218304342606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 n + A020639 (A173779 n).toNat

end

end A222580.P2166043218304342606

/-! ## A222580.P4303961665174866500

`A001221(A296612(n)+A026764(n))`
-/

namespace A222580.P4303961665174866500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A296612 n + A026764 n).toNat

end

end A222580.P4303961665174866500

/-! ## A222580.P11320930315480057687

`A001221(xor(A084964(n), A285948(n)))`
-/

namespace A222580.P11320930315480057687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A084964 n) (A285948 n)).toNat

end

end A222580.P11320930315480057687

/-! ## A222580.P3677652075906841290

`A001222(A176627(n)+A051135(n+1))`
-/

namespace A222580.P3677652075906841290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A176627 n + A051135 (n + 1)).toNat

end

end A222580.P3677652075906841290

/-! ## A222580.P12267435043391074028

`A001221(A299354(n+1)+A016777(n))`
-/

namespace A222580.P12267435043391074028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A299354 (n + 1) + A016777 n).toNat

end

end A222580.P12267435043391074028

/-!
# A222581: Run lengths of digits when concatenating Roman numerals less than 4000, cf. A093796.

The programs for A222581, there is no canonical definition to state claims against.
-/

/-! ## A222581.P15846917180123336722

`A228351(A087767(3*n+2)+A057729(n+1))`
-/

namespace A222581.P15846917180123336722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A087767 (3 * n + 2) + A057729 (n + 1)).toNat

end

end A222581.P15846917180123336722

/-! ## A222581.P5583615208007154735

`A066099(∑[A318812(3*n+5)+A110290(n+2)])`
-/

namespace A222581.P5583615208007154735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318812 (3 * n + 5) + A110290 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A222581.P5583615208007154735

/-!
# A222582: Smallest numbers k such that A006577(n+k) = A006577(n) + A006577(k), or 0 if no such number exists.

The programs for A222582, there is no canonical definition to state claims against.
-/

/-! ## A222582.P13374020846471301124

`2*A342862(A187993(n+2))`
-/

namespace A222582.P13374020846471301124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342862 (A187993 (n + 2)).toNat

end

end A222582.P13374020846471301124

/-!
# A222583: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222583, there is no canonical definition to state claims against.
-/

/-! ## A222583.P5180146244643570289

`A222587(∑[n+2]+4)`
-/

namespace A222583.P5180146244643570289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222583.P5180146244643570289

/-! ## A222583.P16456034121049981019

`record[A010054(n)*A222587(n+3)]`
-/

namespace A222583.P16456034121049981019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222587 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222583.P16456034121049981019

/-! ## A222583.P11028394592186549702

`record[gcd(A222587(n+4), A238889(n))]`
-/

namespace A222583.P11028394592186549702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222587 (n + 4)) (A238889 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222583.P11028394592186549702

/-! ## A222583.P8735250269224611122

`A222587(A167614(n+1))+C(n, 64)`
-/

namespace A222583.P8735250269224611122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A167614 (n + 1)).toNat + (Nat.choose n 64 : ℤ)

end

end A222583.P8735250269224611122

/-! ## A222583.P160994783969608122

`A222587(A167614(n+1))+A011744(n)`
-/

namespace A222583.P160994783969608122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A167614 (n + 1)).toNat + A011744 n

end

end A222583.P160994783969608122

/-!
# A222584: Number of nX4 0..2 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222584, there is no canonical definition to state claims against.
-/

/-! ## A222584.P16373762348585624903

`A222587(∑[n+3]+7)`
-/

namespace A222584.P16373762348585624903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222584.P16373762348585624903

/-!
# A222585: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222585, there is no canonical definition to state claims against.
-/

/-! ## A222585.P15966015590661152041

`A222587(A374005(n+1))`
-/

namespace A222585.P15966015590661152041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A374005 (n + 1)).toNat

end

end A222585.P15966015590661152041

/-! ## A222585.P9128713879434362154

`A222587(A167499(n+3))`
-/

namespace A222585.P9128713879434362154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A167499 (n + 3)).toNat

end

end A222585.P9128713879434362154

/-! ## A222585.P4401063543479113531

`A222587(A155212(n)+13)`
-/

namespace A222585.P4401063543479113531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A155212 n + 13).toNat

end

end A222585.P4401063543479113531

/-! ## A222585.P11922919418433531008

`A222587(A056000(n)+15)`
-/

namespace A222585.P11922919418433531008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A056000 n + 15).toNat

end

end A222585.P11922919418433531008

/-! ## A222585.P8067468186356040371

`A222587(eq[7, A066657(n)])`
-/

namespace A222585.P8067468186356040371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222585.P8067468186356040371

/-!
# A222586: Number of n X 6 0..2 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222586, there is no canonical definition to state claims against.
-/

/-! ## A222586.P14616426421153929181

`A222587(A374007(n+1))`
-/

namespace A222586.P14616426421153929181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A374007 (n + 1)).toNat

end

end A222586.P14616426421153929181

/-! ## A222586.P9362922645513673994

`A222587(A166136(n+4))`
-/

namespace A222586.P9362922645513673994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A166136 (n + 4)).toNat

end

end A222586.P9362922645513673994

/-! ## A222586.P15919938995681310022

`A222587(A056115(n)+21)`
-/

namespace A222586.P15919938995681310022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A056115 n + 21).toNat

end

end A222586.P15919938995681310022

/-! ## A222586.P15049880032704000069

`A222587(A000217(n+5)+6)`
-/

namespace A222586.P15049880032704000069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (A000217 (n + 5) + 6).toNat

end

end A222586.P15049880032704000069

/-! ## A222586.P1274746843770109931

`A222587(eq[7, A131818(n+1)])`
-/

namespace A222586.P1274746843770109931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222586.P1274746843770109931

/-!
# A222587: T(n,k)=Number of nXk 0..2 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222587, there is no canonical definition to state claims against.
-/

/-! ## A222587.P14171174797071563634

`A089868(A222378(n+1))`
-/

namespace A222587.P14171174797071563634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A222378 (n + 1)).toNat

end

end A222587.P14171174797071563634

/-! ## A222587.P14708783970660093265

`A089867(A222378(n+1)-char[16])`
-/

namespace A222587.P14708783970660093265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A222378 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A222587.P14708783970660093265

/-! ## A222587.P11604392446616006612

`A089869(A222378(n+1)-char[16])`
-/

namespace A222587.P11604392446616006612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A222378 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A222587.P11604392446616006612

/-! ## A222587.P11011805383690460802

`A089867(xor(char[16], A222378(n+1)))`
-/

namespace A222587.P11011805383690460802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222378 (n + 1))).toNat

end

end A222587.P11011805383690460802

/-! ## A222587.P12791808647943687987

`A089869(xor(char[16], A222378(n+1)))`
-/

namespace A222587.P12791808647943687987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222378 (n + 1))).toNat

end

end A222587.P12791808647943687987

/-!
# A222588: Composites of the form 2^n-1 or 2^n+1 that are non-multiples of 3.

The programs for A222588, there is no canonical definition to state claims against.
-/

/-! ## A222588.P13967212628640261332

`∩[A163170(n+1), A166977(n)]`
-/

namespace A222588.P13967212628640261332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166977 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222588.P13967212628640261332

/-! ## A222588.P13177902996577070713

`filter[A014551(n), A066247(#)]`
-/

namespace A222588.P13177902996577070713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A222588.P13177902996577070713

/-! ## A222588.P3519501640180002746

`filter[A014551(n), A202238(#)]`
-/

namespace A222588.P3519501640180002746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A222588.P3519501640180002746

/-!
# A222589: G.f. satisfies: A(x) = Sum_{n>=0} x^n*(1 + n*x)^n * A(x)^n / (1 + x*A(x) + n*x^2*A(x))^n.

The programs for A222589, there is no canonical definition to state claims against.
-/

/-! ## A222589.P16861544364176567136

`A157271(A148110(n+1))`
-/

namespace A222589.P16861544364176567136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148110 (n + 1)).toNat

end

end A222589.P16861544364176567136

/-! ## A222589.P6208576963900821406

`A289494(A246604(n)+A000984(n))`
-/

namespace A222589.P6208576963900821406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A246604 n + A000984 n).toNat

end

end A222589.P6208576963900821406

/-! ## A222589.P15514923484834682354

`A030530(A176828(n)-A000217(n))`
-/

namespace A222589.P15514923484834682354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A176828 n - A000217 n).toNat

end

end A222589.P15514923484834682354

/-!
# A222591: Numerators of (n*(n - 3)/6) + 1, arising as the maximum possible number of triple lines for an n-element set.

The programs for A222591, the canonical program `A222591.P8957191884463757725` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222591 has offset 3).

The definition of A222591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222591.P8957191884463757725

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=5, a(2)=8, a(3)=4, a(4)=17, a(5)=23, a(6)=10, a(7)=38, a(8)=47`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A222591

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P8957191884463757725.Spec : Prop :=
  ∀ n, P8957191884463757725.a n = A222591 (n + 3)

theorem P8957191884463757725.correct : P8957191884463757725.Spec := by
  intro n
  simp only [A222591, Nat.add_sub_cancel]

end A222591

/-! ## A222591.P807147321075711993

`lcm(3, ∑[n+1]+2)/3`
-/

namespace A222591.P807147321075711993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 3

end

end A222591.P807147321075711993

namespace A222591

/-- `lcm(3, ∑[n+1]+2)/3` -/
def P807147321075711993.Spec : Prop :=
  ∀ n, P807147321075711993.a n = (A222591 (n + 3) : ℚ)

end A222591

/-! ## A222591.P9130984124711047980

`(∑[n+1]+2)/gcd(3, n)`
-/

namespace A222591.P9130984124711047980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / (Nat.gcd 3 n : ℚ)

end

end A222591.P9130984124711047980

namespace A222591

/-- `(∑[n+1]+2)/gcd(3, n)` -/
def P9130984124711047980.Spec : Prop :=
  ∀ n, P9130984124711047980.a n = (A222591 (n + 3) : ℚ)

end A222591

/-! ## A222591.P17830850005264128258

`(∑[n+1]+2)/or(1, (n+2)%3)`
-/

namespace A222591.P17830850005264128258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / (Nat.lor 1 ((n + 2) % 3) : ℚ)

end

end A222591.P17830850005264128258

namespace A222591

/-- `(∑[n+1]+2)/or(1, (n+2)%3)` -/
def P17830850005264128258.Spec : Prop :=
  ∀ n, P17830850005264128258.a n = (A222591 (n + 3) : ℚ)

end A222591

/-! ## A222591.P6019066090816684099

`(∑[n+1]+2)/7%(4-n%3)`
-/

namespace A222591.P6019066090816684099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / (Int.tmod 7 (4 - ((n % 3 : ℕ) : ℤ)) : ℚ)

end

end A222591.P6019066090816684099

namespace A222591

/-- `(∑[n+1]+2)/7%(4-n%3)` -/
def P6019066090816684099.Spec : Prop :=
  ∀ n, P6019066090816684099.a n = (A222591 (n + 3) : ℚ)

end A222591

/-! ## A222591.P6824358341069623417

`gcd(∑[n+1]+2, ∑[∑[n²+1+n]])`
-/

namespace A222591.P6824358341069623417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + 2) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A222591.P6824358341069623417

namespace A222591

/-- `gcd(∑[n+1]+2, ∑[∑[n²+1+n]])` -/
def P6824358341069623417.Spec : Prop :=
  ∀ n, (P6824358341069623417.a n : ℤ) = A222591 (n + 3)

end A222591

/-! ## A222591.P6793572042992039175

`(A000217(n+1)+2)/A109007(n)`
-/

namespace A222591.P6793572042992039175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) + 2 : ℚ) / (A109007 n : ℚ)

end

end A222591.P6793572042992039175

namespace A222591

/-- `(A000217(n+1)+2)/A109007(n)` -/
def P6793572042992039175.Spec : Prop :=
  ∀ n, P6793572042992039175.a n = (A222591 (n + 3) : ℚ)

end A222591

/-! ## A222591.P6629221158793602845

`(A194767(n+1)-A051176(2*n))/2`
-/

namespace A222591.P6629221158793602845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194767 (n + 1) - A051176 (2 * n) : ℚ) / 2

end

end A222591.P6629221158793602845

namespace A222591

/-- `(A194767(n+1)-A051176(2*n))/2` -/
def P6629221158793602845.Spec : Prop :=
  ∀ n, P6629221158793602845.a n = (A222591 (n + 3) : ℚ)

end A222591

/-! ## A222591.P1476728816942289454

`A014682(A096777(n+2))`
-/

namespace A222591.P1476728816942289454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A096777 (n + 2)).toNat

end

end A222591.P1476728816942289454

namespace A222591

/-- `A014682(A096777(n+2))` -/
def P1476728816942289454.Spec : Prop :=
  ∀ n, P1476728816942289454.a n = A222591 (n + 3)

end A222591

/-! ## A222591.P16202258391999470340

`A014682(A001399(2*n)+1)`
-/

namespace A222591.P16202258391999470340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001399 (2 * n) + 1).toNat

end

end A222591.P16202258391999470340

namespace A222591

/-- `A014682(A001399(2*n)+1)` -/
def P16202258391999470340.Spec : Prop :=
  ∀ n, P16202258391999470340.a n = A222591 (n + 3)

end A222591

/-! ## A222591.P15114773714384266132

`A014682(A008724(2*n)+n+2)`
-/

namespace A222591.P15114773714384266132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008724 (2 * n) + (n + 2 : ℤ)).toNat

end

end A222591.P15114773714384266132

namespace A222591

/-- `A014682(A008724(2*n)+n+2)` -/
def P15114773714384266132.Spec : Prop :=
  ∀ n, P15114773714384266132.a n = A222591 (n + 3)

end A222591

/-! ## A222591.P5276744485846569503

`A014682(A014682(A056827(2*n))+n+2)`
-/

namespace A222591.P5276744485846569503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014682 (A056827 (2 * n)).toNat + (n + 2 : ℤ)).toNat

end

end A222591.P5276744485846569503

namespace A222591

/-- `A014682(A014682(A056827(2*n))+n+2)` -/
def P5276744485846569503.Spec : Prop :=
  ∀ n, P5276744485846569503.a n = A222591 (n + 3)

end A222591

/-! ## A222591.P7311884120211242298

`A106610(∑[n+1]+2)`
-/

namespace A222591.P7311884120211242298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222591.P7311884120211242298

namespace A222591

/-- `A106610(∑[n+1]+2)` -/
def P7311884120211242298.Spec : Prop :=
  ∀ n, P7311884120211242298.a n = A222591 (n + 3)

end A222591

/-! ## A222591.P4142309200761976466

`A145064(∑[n+1])`
-/

namespace A222591.P4142309200761976466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222591.P4142309200761976466

namespace A222591

/-- `A145064(∑[n+1])` -/
def P4142309200761976466.Spec : Prop :=
  ∀ n, P4142309200761976466.a n = A222591 (n + 3)

end A222591

/-! ## A222591.P4761358835484489228

`A038502(∑[n+1]+2)`
-/

namespace A222591.P4761358835484489228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222591.P4761358835484489228

namespace A222591

/-- `A038502(∑[n+1]+2)` -/
def P4761358835484489228.Spec : Prop :=
  ∀ n, P4761358835484489228.a n = A222591 (n + 3)

end A222591

/-! ## A222591.P6413460137626902836

`A051176(∑[n+1]+2)`
-/

namespace A222591.P6413460137626902836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222591.P6413460137626902836

namespace A222591

/-- `A051176(∑[n+1]+2)` -/
def P6413460137626902836.Spec : Prop :=
  ∀ n, P6413460137626902836.a n = A222591 (n + 3)

end A222591

/-! ## A222591.P12959112796947759852

`A172500(∑[n+1]+2)`
-/

namespace A222591.P12959112796947759852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222591.P12959112796947759852

namespace A222591

/-- `A172500(∑[n+1]+2)` -/
def P12959112796947759852.Spec : Prop :=
  ∀ n, P12959112796947759852.a n = A222591 (n + 3)

end A222591

/-! ## A222591.P157758989756423745

`abs(1-A038502(A278506(2*(n+1))+1))+1`
-/

namespace A222591.P157758989756423745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A038502 (A278506 (2 * (n + 1)) + 1).toNat| + 1

end

end A222591.P157758989756423745

namespace A222591

/-- `abs(1-A038502(A278506(2*(n+1))+1))+1` -/
def P157758989756423745.Spec : Prop :=
  ∀ n, P157758989756423745.a n = A222591 (n + 3)

end A222591

/-!
# A222593: Pairs of numbers (a,b) such that a + b*I is a first-quadrant Gaussian prime, ordered by a+b and then a.

The programs for A222593, there is no canonical definition to state claims against.
-/

/-! ## A222593.P9252773229393324206

`A314540(A280976(n))%A077567(n+1)`
-/

namespace A222593.P9252773229393324206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314540 (A280976 n).toNat) (A077567 (n + 1))

end

end A222593.P9252773229393324206

/-! ## A222593.P16329250123252011048

`A341127(n+9)%A088568(A253044(n+4))`
-/

namespace A222593.P16329250123252011048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341127 (n + 9)) (A088568 (A253044 (n + 4)).toNat)

end

end A222593.P16329250123252011048

/-! ## A222593.P4920627533401419399

`A058033(n+3)-A329313(A353833(3*(n+1)))`
-/

namespace A222593.P4920627533401419399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058033 (n + 3) - A329313 (A353833 (3 * (n + 1))).toNat

end

end A222593.P4920627533401419399

/-!
# A222597: Number of terms of the Collatz (3x+1) trajectory of n that are greater than n.

The programs for A222597, there is no canonical definition to state claims against.
-/

/-! ## A222597.P5924353995413179876

`A213204(n+1)-1`
-/

namespace A222597.P5924353995413179876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (n + 1) - 1

end

end A222597.P5924353995413179876

/-! ## A222597.P5112622859586118145

`A023443(A213204(n+1))`
-/

namespace A222597.P5112622859586118145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A213204 (n + 1)).toNat

end

end A222597.P5112622859586118145

/-! ## A222597.P16899829586987114926

`A023444(A213204(n+1)+1)`
-/

namespace A222597.P16899829586987114926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A213204 (n + 1) + 1).toNat

end

end A222597.P16899829586987114926

/-! ## A222597.P9826645787600582300

`A289207(A213204(n+1)+1)`
-/

namespace A222597.P9826645787600582300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A213204 (n + 1) + 1).toNat

end

end A222597.P9826645787600582300

/-! ## A222597.P13223012838575990146

`A006577(n+1)-A076228(n+1)`
-/

namespace A222597.P13223012838575990146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A076228 (n + 1)

end

end A222597.P13223012838575990146

/-! ## A222597.P7049690165250156526

`A008908(n+1)-A159999(n+1)`
-/

namespace A222597.P7049690165250156526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A159999 (n + 1)

end

end A222597.P7049690165250156526

/-! ## A222597.P3409403244809728517

`A008908(n+1)-(A076228(n+1)+1)`
-/

namespace A222597.P3409403244809728517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A076228 (n + 1) + 1)

end

end A222597.P3409403244809728517

/-! ## A222597.P8555866306241347552

`A008908(n+1)+A246436(n+1)-(n+1)`
-/

namespace A222597.P8555866306241347552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) + (A246436 (n + 1) - (n + 1 : ℤ))

end

end A222597.P8555866306241347552

/-! ## A222597.P689670258451941970

`A023443(A008908(n+1)-A076228(n+1))`
-/

namespace A222597.P689670258451941970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (n + 1) - A076228 (n + 1)).toNat

end

end A222597.P689670258451941970

/-!
# A222598: Least number k having Collatz (3x+1) sequence with exactly n pairs of odd and even numbers in a row.

The programs for A222598, there is no canonical definition to state claims against.
-/

/-! ## A222598.P17059663334077613146

`A205477(a(n-1)+1)` with `a(0)=5, a(1)=3`
-/

namespace A222598.P17059663334077613146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n a =>
  A205477 (a (n - 1) + 1).toNat

end

end A222598.P17059663334077613146

