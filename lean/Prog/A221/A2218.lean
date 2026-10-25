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
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A221800: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A221800, there is no canonical definition to state claims against.
-/

/-! ## A221800.P16898678769869434038

`xor(A136575(A056941(n)), A189355(n+1))`
-/

namespace A221800.P16898678769869434038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A136575 (A056941 n).toNat) (A189355 (n + 1))

end

end A221800.P16898678769869434038

/-!
# A221801: Number of n X 2 arrays of occupancy after each element moves to some king-move neighbor, without 2-loops or left turns.

The programs for A221801, there is no canonical definition to state claims against.
-/

/-! ## A221801.P6884217177775049296

`A221804(∑[n+1]+2)`
-/

namespace A221801.P6884217177775049296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221804 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221801.P6884217177775049296

/-! ## A221801.P16147941172043234270

`record[A221804(A252460(n+1))]`
-/

namespace A221801.P16147941172043234270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221804 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221801.P16147941172043234270

/-! ## A221801.P246288762017227544

`record[A221804(A358466(n+1))]`
-/

namespace A221801.P246288762017227544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221804 (A358466 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221801.P246288762017227544

/-! ## A221801.P6735256343365694007

`record[A221804(record[A091995(n+1)])]`
-/

namespace A221801.P6735256343365694007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221804 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221801.P6735256343365694007

/-!
# A221802: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor, without 2-loops or left turns.

The programs for A221802, there is no canonical definition to state claims against.
-/

/-! ## A221802.P7271496562018561790

`A221804(∑[n+2]+4)`
-/

namespace A221802.P7271496562018561790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221804 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221802.P7271496562018561790

/-! ## A221802.P15838125806329188179

`record[A221804(Δ[A293403(n)])]`
-/

namespace A221802.P15838125806329188179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221804 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221802.P15838125806329188179

/-! ## A221802.P9287445271357523646

`record[A221804(A279388(n+1))]`
-/

namespace A221802.P9287445271357523646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221804 (A279388 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221802.P9287445271357523646

/-!
# A221803: Number of nX4 arrays of occupancy after each element moves to some king-move neighbor, without 2-loops or left turns.

The programs for A221803, there is no canonical definition to state claims against.
-/

/-! ## A221803.P12776000772672627088

`A221804(∑[n+3]+7)`
-/

namespace A221803.P12776000772672627088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221804 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221803.P12776000772672627088

/-! ## A221803.P7310022282683493348

`A133502(n)*A221804(A052905(n)+9)`
-/

namespace A221803.P7310022282683493348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133502 n * A221804 (A052905 n + 9).toNat

end

end A221803.P7310022282683493348

/-!
# A221804: T(n,k)=Number of nXk arrays of occupancy after each element moves to some king-move neighbor, without 2-loops or left turns.

The programs for A221804, there is no canonical definition to state claims against.
-/

/-! ## A221804.P18086865532686206605

`xor(A022171(n), A212370(A185037(2*n+3)))`
-/

namespace A221804.P18086865532686206605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022171 n) (A212370 (A185037 (2 * n + 3)).toNat)

end

end A221804.P18086865532686206605

/-! ## A221804.P7243253022629350275

`A006530(n!)*A068606(n)`
-/

namespace A221804.P7243253022629350275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial n) * A068606 n

end

end A221804.P7243253022629350275

/-! ## A221804.P7996805317687652753

`xor(A146075(n)!, A022171(n))`
-/

namespace A221804.P7996805317687652753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A146075 n).toNat : ℤ) (A022171 n)

end

end A221804.P7996805317687652753

/-! ## A221804.P10002856598545244293

`xor(A238919(n)!, A022171(n))`
-/

namespace A221804.P10002856598545244293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A238919 n).toNat : ℤ) (A022171 n)

end

end A221804.P10002856598545244293

/-! ## A221804.P3088024359405230455

`xor(A022171(n), A051903(A075932(n)))`
-/

namespace A221804.P3088024359405230455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022171 n) (A051903 (A075932 n).toNat)

end

end A221804.P3088024359405230455

/-!
# A221805: Number of nX2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221805, there is no canonical definition to state claims against.
-/

/-! ## A221805.P16026096742754176465

`A221809(∑[n+2])`
-/

namespace A221805.P16026096742754176465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221805.P16026096742754176465

/-! ## A221805.P1171915564994556565

`record[A221809(A198453(n+1))]`
-/

namespace A221805.P1171915564994556565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221805.P1171915564994556565

/-! ## A221805.P17371163656231996639

`record[A221809(Δ[A003453(n+5)])]`
-/

namespace A221805.P17371163656231996639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221805.P17371163656231996639

/-! ## A221805.P9558172147968562333

`record[gcd(A065600(n), A221809(n+1))]`
-/

namespace A221805.P9558172147968562333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065600 n) (A221809 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221805.P9558172147968562333

/-! ## A221805.P12500425353069775942

`record[A221809(lt[A221809(n+1), n])]`
-/

namespace A221805.P12500425353069775942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221805.P12500425353069775942

/-!
# A221806: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221806, there is no canonical definition to state claims against.
-/

/-! ## A221806.P6746353219923345393

`A221809(∑[n+3]+1)`
-/

namespace A221806.P6746353219923345393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221806.P6746353219923345393

/-! ## A221806.P8791181602251674463

`record[A221809(A198464(n+1))]`
-/

namespace A221806.P8791181602251674463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221806.P8791181602251674463

/-! ## A221806.P9391947512573689194

`record[char[A141214(n)]*A221809(n+1)]`
-/

namespace A221806.P9391947512573689194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A221809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221806.P9391947512573689194

/-! ## A221806.P16111042067028573958

`A221809(A034856(n+2))*A322803(n)`
-/

namespace A221806.P16111042067028573958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (A034856 (n + 2)).toNat * A322803 n

end

end A221806.P16111042067028573958

/-!
# A221807: Number of nX4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221807, there is no canonical definition to state claims against.
-/

/-! ## A221807.P12564526157922559158

`A221809(∑[n+4]+3)`
-/

namespace A221807.P12564526157922559158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221807.P12564526157922559158

/-! ## A221807.P13236826105683596889

`record[A221809(A198464(n+1)-1)]`
-/

namespace A221807.P13236826105683596889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (A198464 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221807.P13236826105683596889

/-!
# A221808: Number of nX5 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221808, there is no canonical definition to state claims against.
-/

/-! ## A221808.P6535541576357772444

`A221809(Δ[A264443(n)])`
-/

namespace A221808.P6535541576357772444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (f1 (n + 1) - f1 n).toNat

end

end A221808.P6535541576357772444

/-! ## A221808.P6021340569387488862

`A221809(A046691(n+3))`
-/

namespace A221808.P6021340569387488862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (A046691 (n + 3)).toNat

end

end A221808.P6021340569387488862

/-!
# A221809: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221809, there is no canonical definition to state claims against.
-/

/-! ## A221809.P12587153174649084928

`A221432(n+1)%A080684(A221355(n+1))`
-/

namespace A221809.P12587153174649084928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221432 (n + 1)) (A080684 (A221355 (n + 1)).toNat)

end

end A221809.P12587153174649084928

/-! ## A221809.P16471561005299981425

`A244991(2*(n+2))%A325119(A006899(n+1))`
-/

namespace A221809.P16471561005299981425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244991 (2 * (n + 2))) (A325119 (A006899 (n + 1)).toNat)

end

end A221809.P16471561005299981425

/-!
# A221810: Number of 2Xn arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221810, there is no canonical definition to state claims against.
-/

/-! ## A221810.P17060925720185910505

`A221809(∑[n+1]+2)`
-/

namespace A221810.P17060925720185910505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221810.P17060925720185910505

/-! ## A221810.P7458913269023632649

`record[A221809(A249725(n+1)+1)]`
-/

namespace A221810.P7458913269023632649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (A249725 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221810.P7458913269023632649

/-! ## A221810.P15069926330144152102

`record[A010054(n)*A221809(n+2)]`
-/

namespace A221810.P15069926330144152102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221809 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221810.P15069926330144152102

/-! ## A221810.P14285237138643683158

`record[A221809(n+3)/A127082(n)]`
-/

namespace A221810.P14285237138643683158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221809 (n + 3) : ℚ) / (A127082 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221810.P14285237138643683158

/-! ## A221810.P10043397676740704192

`record[A221809(n+2)^A073423(n)]`
-/

namespace A221810.P10043397676740704192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221809 (n + 2) : ℚ) ^ (A073423 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221810.P10043397676740704192

/-!
# A221811: Number of 3Xn arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221811, there is no canonical definition to state claims against.
-/

/-! ## A221811.P3548525277398666060

`A221809(∑[n+2]+4)`
-/

namespace A221811.P3548525277398666060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221811.P3548525277398666060

/-! ## A221811.P18089571478206778597

`and(-1, A221809(A167614(n+1)))`
-/

namespace A221811.P18089571478206778597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221809 (A167614 (n + 1)).toNat)

end

end A221811.P18089571478206778597

/-! ## A221811.P3390136865131488886

`A221809(A167614(n+1))+A025469(n)`
-/

namespace A221811.P3390136865131488886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (A167614 (n + 1)).toNat + A025469 n

end

end A221811.P3390136865131488886

/-! ## A221811.P694807679689497366

`A221809(A167614(n+1))+A053392(n)`
-/

namespace A221811.P694807679689497366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (A167614 (n + 1)).toNat + A053392 n

end

end A221811.P694807679689497366

/-! ## A221811.P3227573309281748519

`A221809(A167614(n+1))+A102683(n)`
-/

namespace A221811.P3227573309281748519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (A167614 (n + 1)).toNat + A102683 n

end

end A221811.P3227573309281748519

/-!
# A221812: Number of 4Xn arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221812, there is no canonical definition to state claims against.
-/

/-! ## A221812.P6849341947895275838

`A221809(∑[n+3]+7)`
-/

namespace A221812.P6849341947895275838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221812.P6849341947895275838

/-!
# A221813: Number of 5 X n arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221813, there is no canonical definition to state claims against.
-/

/-! ## A221813.P15825065408579005171

`A221809(∑[n+4]+11)`
-/

namespace A221813.P15825065408579005171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A221813.P15825065408579005171

/-!
# A221814: Number of nX3 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221814, there is no canonical definition to state claims against.
-/

/-! ## A221814.P12461241479173714232

`A221817(∑[n+3]+1)`
-/

namespace A221814.P12461241479173714232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221814.P12461241479173714232

/-! ## A221814.P15951788406601253103

`A221817(A034856(n+2))+(n+1)%∑{digits}[n+1, #]`
-/

namespace A221814.P15951788406601253103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (A034856 (n + 2)).toNat + (((n + 1) % ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A221814.P15951788406601253103

/-! ## A221814.P15083573552027883539

`A221836(n+1)+A221817(A034856(n+2))`
-/

namespace A221814.P15083573552027883539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221836 (n + 1) + A221817 (A034856 (n + 2)).toNat

end

end A221814.P15083573552027883539

/-! ## A221814.P12028293624519329611

`A082516(n+1)*A221817(A034856(n+2))`
-/

namespace A221814.P12028293624519329611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (n + 1) * A221817 (A034856 (n + 2)).toNat

end

end A221814.P12028293624519329611

/-!
# A221815: Number of nX4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221815, there is no canonical definition to state claims against.
-/

/-! ## A221815.P1860955642464500680

`A221817(∑[n+4]+3)`
-/

namespace A221815.P1860955642464500680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221815.P1860955642464500680

/-! ## A221815.P16951985871170165898

`or(A000007(n), A221817(A055998(n+2)))`
-/

namespace A221815.P16951985871170165898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A221817 (A055998 (n + 2)).toNat)

end

end A221815.P16951985871170165898

/-! ## A221815.P7964951868250900731

`or(A221817(A055998(n+2)), A341882(n))`
-/

namespace A221815.P7964951868250900731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221817 (A055998 (n + 2)).toNat) (A341882 (n + 64))

end

end A221815.P7964951868250900731

/-!
# A221816: Number of n X 5 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221816, there is no canonical definition to state claims against.
-/

/-! ## A221816.P670355961026000696

`A221817(Δ[A264443(n)])`
-/

namespace A221816.P670355961026000696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (f1 (n + 1) - f1 n).toNat

end

end A221816.P670355961026000696

/-! ## A221816.P1326931352968975689

`A221817(A046691(n+3))`
-/

namespace A221816.P1326931352968975689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (A046691 (n + 3)).toNat

end

end A221816.P1326931352968975689

/-!
# A221818: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221818, there is no canonical definition to state claims against.
-/

/-! ## A221818.P16309226324134152743

`A221817(∑[n+1]+2)`
-/

namespace A221818.P16309226324134152743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221818.P16309226324134152743

/-! ## A221818.P11915735704342628449

`and(-1, A221817(A133263(n+1)))`
-/

namespace A221818.P11915735704342628449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221817 (A133263 (n + 1)).toNat)

end

end A221818.P11915735704342628449

/-! ## A221818.P5380250917812873864

`record[A221817(n+3)/A075501(n+1)]`
-/

namespace A221818.P5380250917812873864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221817 (n + 3) : ℚ) / (A075501 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221818.P5380250917812873864

/-! ## A221818.P3805106496598926772

`A221817(A133263(n+1))+A000007(n+1)`
-/

namespace A221818.P3805106496598926772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A221818.P3805106496598926772

/-! ## A221818.P17525860373965085960

`A221817(A133263(n+1))+A020761(3*n+2)`
-/

namespace A221818.P17525860373965085960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (A133263 (n + 1)).toNat + A020761 (3 * n + 2)

end

end A221818.P17525860373965085960

/-!
# A221819: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221819, there is no canonical definition to state claims against.
-/

/-! ## A221819.P8116311119912552392

`A221817(∑[n+2]+4)`
-/

namespace A221819.P8116311119912552392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221819.P8116311119912552392

/-! ## A221819.P13106711856419583568

`and(-1, A221817(A167614(n+1)))`
-/

namespace A221819.P13106711856419583568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221817 (A167614 (n + 1)).toNat)

end

end A221819.P13106711856419583568

/-! ## A221819.P7319366487456720688

`A221817(A167614(n+1))+A025465(n)`
-/

namespace A221819.P7319366487456720688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (A167614 (n + 1)).toNat + A025465 n

end

end A221819.P7319366487456720688

/-! ## A221819.P6233125782164141394

`A221817(A167614(n+1))+A054908(n)`
-/

namespace A221819.P6233125782164141394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (A167614 (n + 1)).toNat + A054908 n

end

end A221819.P6233125782164141394

/-! ## A221819.P14768462063731745437

`A221817(A167614(n+1))+A055959(n)`
-/

namespace A221819.P14768462063731745437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (A167614 (n + 1)).toNat + A055959 n

end

end A221819.P14768462063731745437

/-!
# A221820: Number of 4Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221820, there is no canonical definition to state claims against.
-/

/-! ## A221820.P8182969823208773623

`A221817(∑[n+3]+7)`
-/

namespace A221820.P8182969823208773623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221820.P8182969823208773623

/-! ## A221820.P12883012467606167026

`record[A221817(A056865(2*(n+2)))]`
-/

namespace A221820.P12883012467606167026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221817 (A056865 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221820.P12883012467606167026

/-!
# A221821: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without consecutive moves in the same direction.

The programs for A221821, there is no canonical definition to state claims against.
-/

/-! ## A221821.P15489010813512127233

`A221824(∑[n+1]+2)`
-/

namespace A221821.P15489010813512127233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221821.P15489010813512127233

/-! ## A221821.P8790137957608390714

`record[A221824(abs(A201163(n)))]`
-/

namespace A221821.P8790137957608390714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221821.P8790137957608390714

/-! ## A221821.P12225472456856789621

`record[A221824(lt[A184883(n), n])]`
-/

namespace A221821.P12225472456856789621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184883 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221821.P12225472456856789621

/-! ## A221821.P17142584079574126685

`record[A221824(lt[A221824(n+1), n²])]`
-/

namespace A221821.P17142584079574126685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221821.P17142584079574126685

/-! ## A221821.P3387731067744362781

`record[A221824(n+3)/A221780(n+1)]`
-/

namespace A221821.P3387731067744362781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221824 (n + 3) : ℚ) / (A221780 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221821.P3387731067744362781

/-!
# A221822: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without consecutive moves in the same direction.

The programs for A221822, there is no canonical definition to state claims against.
-/

/-! ## A221822.P1846475694587651656

`A221824(∑[n+2]+4)`
-/

namespace A221822.P1846475694587651656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221822.P1846475694587651656

/-! ## A221822.P7785119897114931697

`and(-1, A221824(A167614(n+1)))`
-/

namespace A221822.P7785119897114931697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221824 (A167614 (n + 1)).toNat)

end

end A221822.P7785119897114931697

/-! ## A221822.P10270528661696086537

`A332874(n)+A221824(A167614(n+1))`
-/

namespace A221822.P10270528661696086537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332874 n + A221824 (A167614 (n + 1)).toNat

end

end A221822.P10270528661696086537

/-! ## A221822.P4527363004365142048

`A221824(A167614(n+1))*A298782(n+1)`
-/

namespace A221822.P4527363004365142048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (A167614 (n + 1)).toNat * A298782 (n + 1)

end

end A221822.P4527363004365142048

/-! ## A221822.P16921465884274526851

`A221824(A167614(n+1))%A138979(n+1)`
-/

namespace A221822.P16921465884274526851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221824 (A167614 (n + 1)).toNat) (A138979 (n + 1))

end

end A221822.P16921465884274526851

/-!
# A221823: Number of n X 4 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without consecutive moves in the same direction.

The programs for A221823, there is no canonical definition to state claims against.
-/

/-! ## A221823.P16918730167605436072

`A221824(A374004(n+1))`
-/

namespace A221823.P16918730167605436072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (A374004 (n + 1)).toNat

end

end A221823.P16918730167605436072

/-! ## A221823.P6267952298169641619

`A221824(A141214(n)+7)`
-/

namespace A221823.P6267952298169641619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (A141214 n + 7).toNat

end

end A221823.P6267952298169641619

/-! ## A221823.P9275263774428060966

`A221824(A052905(n)+9)`
-/

namespace A221823.P9275263774428060966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (A052905 n + 9).toNat

end

end A221823.P9275263774428060966

/-! ## A221823.P6462970779025136391

`A221824(A055999(n)+10)`
-/

namespace A221823.P6462970779025136391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221824 (A055999 n + 10).toNat

end

end A221823.P6462970779025136391

/-!
# A221825: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221825, there is no canonical definition to state claims against.
-/

/-! ## A221825.P506758068462866683

`A221828(∑[n+3]+1)`
-/

namespace A221825.P506758068462866683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221825.P506758068462866683

/-! ## A221825.P10214495205579505855

`record[A221828(A198464(n+1))]`
-/

namespace A221825.P10214495205579505855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221825.P10214495205579505855

/-! ## A221825.P494050743649134220

`record[A115359(n+2)*A221828(n+1)]`
-/

namespace A221825.P494050743649134220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (n + 2) * A221828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221825.P494050743649134220

/-! ## A221825.P17346894243465639205

`record[A010054(n+3)*A221828(n+1)]`
-/

namespace A221825.P17346894243465639205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A221828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221825.P17346894243465639205

/-! ## A221825.P14689928538931478865

`Δ[A072088(n)]*A221828(A034856(n+2))`
-/

namespace A221825.P14689928538931478865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A221828 (A034856 (n + 2)).toNat

end

end A221825.P14689928538931478865

/-!
# A221826: Number of nX4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221826, there is no canonical definition to state claims against.
-/

/-! ## A221826.P4613406243914667322

`A221828(∑[n+3]+4+n)`
-/

namespace A221826.P4613406243914667322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (∑ j ∈ Finset.range (n + 1), f1 j + 4 + n)

end

end A221826.P4613406243914667322

/-! ## A221826.P15601533766528807435

`record[A221828(A019304(n))]`
-/

namespace A221826.P15601533766528807435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221826.P15601533766528807435

/-! ## A221826.P715921605814517865

`record[A221828(A198464(n+1)-1)]`
-/

namespace A221826.P715921605814517865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (A198464 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221826.P715921605814517865

/-!
# A221827: Number of nX5 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221827, there is no canonical definition to state claims against.
-/

/-! ## A221827.P6276426801683440591

`A221828(Δ[A264443(n)])`
-/

namespace A221827.P6276426801683440591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (f1 (n + 1) - f1 n).toNat

end

end A221827.P6276426801683440591

/-! ## A221827.P3186498283861792855

`A221828(A046691(n+3))`
-/

namespace A221827.P3186498283861792855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (A046691 (n + 3)).toNat

end

end A221827.P3186498283861792855

/-! ## A221827.P2670590579199416374

`A221828(A056115(n)+11)`
-/

namespace A221827.P2670590579199416374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (A056115 n + 11).toNat

end

end A221827.P2670590579199416374

/-!
# A221828: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221828, there is no canonical definition to state claims against.
-/

/-! ## A221828.P870928710576572055

`A161328(A208930(n+1))%A035348(n+1)`
-/

namespace A221828.P870928710576572055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161328 (A208930 (n + 1)).toNat) (A035348 (n + 1))

end

end A221828.P870928710576572055

/-!
# A221829: Number of 2 X n arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221829, the canonical program `A221829.P3162277317787177934` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221829 has offset 1).

The definition of A221829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221829.P15450596190600239455

`ogf((3x+x^2-x^3)/(1-5x+2x^2))`
-/

namespace A221829.P15450596190600239455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, -1] [1, -5, 2] n

end

end A221829.P15450596190600239455

namespace A221829

/-- `ogf((3x+x^2-x^3)/(1-5x+2x^2))` -/
def P15450596190600239455.Spec : Prop :=
  ∀ n, P15450596190600239455.a n = A221829 (n + 1)

end A221829

/-! ## A221829.P3162277317787177934

`5*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=3, a(2)=16, a(3)=73`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221829

/-- `5*a(n-1)-2*a(n-2)` -/
def P3162277317787177934.Spec : Prop :=
  ∀ n, P3162277317787177934.a n = A221829 (n + 1)

theorem P3162277317787177934.correct : P3162277317787177934.Spec := by
  intro n
  simp only [A221829, Nat.add_sub_cancel]

end A221829

/-! ## A221829.P17123521084199035309

`floor(Δ[A052913(n)/4])`
-/

namespace A221829.P17123521084199035309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052913 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A221829.P17123521084199035309

namespace A221829

/-- `floor(Δ[A052913(n)/4])` -/
def P17123521084199035309.Spec : Prop :=
  ∀ n, P17123521084199035309.a n = A221829 (n + 1)

end A221829

/-! ## A221829.P15099523015239383369

`floor(A060801(n+1)/4)`
-/

namespace A221829.P15099523015239383369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060801 (n + 1) : ℚ) / 4⌋

end

end A221829.P15099523015239383369

namespace A221829

/-- `floor(A060801(n+1)/4)` -/
def P15099523015239383369.Spec : Prop :=
  ∀ n, P15099523015239383369.a n = A221829 (n + 1)

end A221829

/-! ## A221829.P4967974946420053214

`floor((A107839(n)+A020698(n))/4)`
-/

namespace A221829.P4967974946420053214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107839 n + A020698 n : ℚ) / 4⌋

end

end A221829.P4967974946420053214

namespace A221829

/-- `floor((A107839(n)+A020698(n))/4)` -/
def P4967974946420053214.Spec : Prop :=
  ∀ n, P4967974946420053214.a n = A221829 (n + 1)

end A221829

/-!
# A221830: Number of 3Xn arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221830, there is no canonical definition to state claims against.
-/

/-! ## A221830.P5752708958713369493

`A221828(∑[n+2]+4)`
-/

namespace A221830.P5752708958713369493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221830.P5752708958713369493

/-! ## A221830.P16183568805638517606

`and(-1, A221828(A167614(n+1)))`
-/

namespace A221830.P16183568805638517606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221828 (A167614 (n + 1)).toNat)

end

end A221830.P16183568805638517606

/-! ## A221830.P7809994090855073919

`record[A103452(n)*A221828(n+4)]`
-/

namespace A221830.P7809994090855073919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A221828 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221830.P7809994090855073919

/-! ## A221830.P14447141429433700891

`record[A010054(n+1)*A221828(n+4)]`
-/

namespace A221830.P14447141429433700891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A221828 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221830.P14447141429433700891

/-! ## A221830.P5935314478688431486

`A221828(A167614(n+1))+A006927(n)`
-/

namespace A221830.P5935314478688431486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (A167614 (n + 1)).toNat + A006927 n

end

end A221830.P5935314478688431486

/-!
# A221831: Number of 4Xn arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221831, there is no canonical definition to state claims against.
-/

/-! ## A221831.P5221546568846532459

`A221828(∑[n+3]+7)`
-/

namespace A221831.P5221546568846532459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221831.P5221546568846532459

/-!
# A221832: Number of 5 X n arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221832, there is no canonical definition to state claims against.
-/

/-! ## A221832.P6982855502193138424

`A221828(A167499(n+3))`
-/

namespace A221832.P6982855502193138424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (A167499 (n + 3)).toNat

end

end A221832.P6982855502193138424

/-! ## A221832.P2685665797071247088

`A221828(A155212(n)+13)`
-/

namespace A221832.P2685665797071247088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (A155212 n + 13).toNat

end

end A221832.P2685665797071247088

/-! ## A221832.P691461857852389507

`A221828(A056000(n)+15)`
-/

namespace A221832.P691461857852389507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (A056000 n + 15).toNat

end

end A221832.P691461857852389507

/-! ## A221832.P1406033441873004829

`A221828(eq[7, A066657(n)])`
-/

namespace A221832.P1406033441873004829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221832.P1406033441873004829

/-!
# A221833: Triangle, read by rows, where T(n,k) = [x^n] x^k*(1-x^k)^(k-1) / (1-x)^(k-1) for n>=k>=1.

The programs for A221833, there is no canonical definition to state claims against.
-/

/-! ## A221833.P12278056134032461792

`A071675(n-A353464(A089408(n)))`
-/

namespace A221833.P12278056134032461792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 ((n : ℤ) - A353464 (A089408 n).toNat).toNat

end

end A221833.P12278056134032461792

/-! ## A221833.P9630388916220643190

`A071675(n)*A136868(A322280(n))`
-/

namespace A221833.P9630388916220643190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 n * A136868 (A322280 n).toNat

end

end A221833.P9630388916220643190

/-! ## A221833.P12337176958492107986

`A071675(n)%A132478(A132478(n))`
-/

namespace A221833.P12337176958492107986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071675 n) (A132478 (A132478 n).toNat)

end

end A221833.P12337176958492107986

/-! ## A221833.P6894196945154407818

`lcm(A071675(n), A136868(A118350(n)))`
-/

namespace A221833.P6894196945154407818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071675 n) (A136868 (A118350 n).toNat)

end

end A221833.P6894196945154407818

/-! ## A221833.P13215328827886611786

`C(A071675(n), A118914(A200976(2*(n+2))))`
-/

namespace A221833.P13215328827886611786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071675 n).toNat (A118914 (A200976 (2 * (n + 2))).toNat).toNat

end

end A221833.P13215328827886611786

/-!
# A221834: G.f.: Sum_{n>=1} x^n * (1-x^n)^(n-1) / (1-x)^(n-1).

The programs for A221834, there is no canonical definition to state claims against.
-/

/-! ## A221834.P7552793137590234294

`A262689(or(A127126(n), A157418(n+1)))`
-/

namespace A221834.P7552793137590234294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (A127126 n) (A157418 (n + 1))).toNat

end

end A221834.P7552793137590234294

/-! ## A221834.P6612243286812943037

`A262689(or(A006670(n+1), A157418(n+1)))`
-/

namespace A221834.P6612243286812943037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (A006670 (n + 1)) (A157418 (n + 1))).toNat

end

end A221834.P6612243286812943037

/-! ## A221834.P14292798495014111116

`A262689(or(A124496(n+1), A157418(n+1)))`
-/

namespace A221834.P14292798495014111116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (A124496 (n + 1)) (A157418 (n + 1))).toNat

end

end A221834.P14292798495014111116

/-! ## A221834.P8429355570777919325

`A006670(A098465(n))`
-/

namespace A221834.P8429355570777919325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A098465 n).toNat

end

end A221834.P8429355570777919325

/-! ## A221834.P1906415658732765878

`A103128(A102318(n))`
-/

namespace A221834.P1906415658732765878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A102318 n).toNat

end

end A221834.P1906415658732765878

/-!
# A221835: G.f. satisfies: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (x + A(-x)^k).

The programs for A221835, there is no canonical definition to state claims against.
-/

/-! ## A221835.P3368783929378827292

`A306468(∑[A036656(n)²])`
-/

namespace A221835.P3368783929378827292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306468 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221835.P3368783929378827292

/-! ## A221835.P16499751845426397586

`A091591(or(7, A074448(n+1)))`
-/

namespace A221835.P16499751845426397586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (Int.lor 7 (A074448 (n + 1))).toNat

end

end A221835.P16499751845426397586

/-! ## A221835.P3574225178344533702

`A295342(n)+A218935(A241339(n))`
-/

namespace A221835.P3574225178344533702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295342 n + A218935 (A241339 n).toNat

end

end A221835.P3574225178344533702

/-! ## A221835.P13978781639172441528

`A193159(A327019(n))%A312267(2*(n+2))`
-/

namespace A221835.P13978781639172441528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193159 (A327019 n).toNat) (A312267 (2 * (n + 2)))

end

end A221835.P13978781639172441528

/-!
# A221836: Triangle in which m-th term of n-th row is the number of integer Heron triangles with two of the sides having lengths n, m.

The programs for A221836, there is no canonical definition to state claims against.
-/

/-! ## A221836.P7317062948519345572

`A082207(n+1)%A076259(A126736(n))`
-/

namespace A221836.P7317062948519345572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082207 (n + 1)) (A076259 (A126736 n).toNat)

end

end A221836.P7317062948519345572

/-! ## A221836.P11275270169263471775

`A167614(A176561(n))%A054526(n+1)`
-/

namespace A221836.P11275270169263471775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167614 (A176561 n).toNat) (A054526 (n + 1))

end

end A221836.P11275270169263471775

/-! ## A221836.P9386993746355191544

`val(A036626(n), A018252(A104887(n+1)))`
-/

namespace A221836.P9386993746355191544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036626 n).toNat (A018252 (A104887 (n + 1)).toNat).toNat

end

end A221836.P9386993746355191544

/-! ## A221836.P13074690624236534506

`A167614(A176561(n))%A163109(A059268(n))`
-/

namespace A221836.P13074690624236534506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167614 (A176561 n).toNat) (A163109 (A059268 n).toNat)

end

end A221836.P13074690624236534506

/-!
# A221837: Number of integer Heron triangles of height n such that the angles adjacent to the base are not right.

The programs for A221837, the canonical program `A221837.P10112316691659458481` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221837 has offset 1).

The definition of A221837 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A221837.P10112316691659458481

`A046079(n+1)²`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A221837

/-- `A046079(n+1)²` -/
def P10112316691659458481.Spec : Prop :=
  ∀ n, P10112316691659458481.a n = A221837 (n + 1)

theorem P10112316691659458481.correct : P10112316691659458481.Spec := by
  intro n
  simp only [A221837, Nat.add_sub_cancel]

end A221837

/-! ## A221837.P4135794795088923175

`floor(sqrt(A221838(n+1)))²`
-/

namespace A221837.P4135794795088923175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A221838 (n + 1)) ^ 2

end

end A221837.P4135794795088923175

namespace A221837

/-- `floor(sqrt(A221838(n+1)))²` -/
def P4135794795088923175.Spec : Prop :=
  ∀ n, P4135794795088923175.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P15760211008535673711

`∑{d}[n+1, A024361(#)]²`
-/

namespace A221837.P15760211008535673711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A024361 d) ^ 2

end

end A221837.P15760211008535673711

namespace A221837

/-- `∑{d}[n+1, A024361(#)]²` -/
def P15760211008535673711.Spec : Prop :=
  ∀ n, P15760211008535673711.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P11199269356931932761

`(1-A176835(2*(n+1)))²`
-/

namespace A221837.P11199269356931932761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176835 (2 * (n + 1))) ^ 2

end

end A221837.P11199269356931932761

namespace A221837

/-- `(1-A176835(2*(n+1)))²` -/
def P11199269356931932761.Spec : Prop :=
  ∀ n, P11199269356931932761.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P171950992962663437

`(A176835(A004277(n+1))-1)²`
-/

namespace A221837.P171950992962663437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176835 (A004277 (n + 1)).toNat - 1) ^ 2

end

end A221837.P171950992962663437

namespace A221837

/-- `(A176835(A004277(n+1))-1)²` -/
def P171950992962663437.Spec : Prop :=
  ∀ n, P171950992962663437.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P14694720289299992187

`A023443(A176835(2*(n+1)))²`
-/

namespace A221837.P14694720289299992187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A176835 (2 * (n + 1))).toNat ^ 2

end

end A221837.P14694720289299992187

namespace A221837

/-- `A023443(A176835(2*(n+1)))²` -/
def P14694720289299992187.Spec : Prop :=
  ∀ n, P14694720289299992187.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P12422235021034262099

`A221838(n+1)-A046079(n+1)`
-/

namespace A221837.P12422235021034262099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221838 (n + 1) - A046079 (n + 1)

end

end A221837.P12422235021034262099

namespace A221837

/-- `A221838(n+1)-A046079(n+1)` -/
def P12422235021034262099.Spec : Prop :=
  ∀ n, P12422235021034262099.a n = A221837 (n + 1)

theorem P12422235021034262099.correct : P12422235021034262099.Spec := by
  intro n
  simp only [A221837, Nat.add_sub_cancel, A221837.P12422235021034262099.a, A221837.P10112316691659458481.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A221838, A221838.P16241372166790464696.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P14010432101562150871.a, A034444, A034444.P6574915864346323298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A221837

/-! ## A221837.P6652397957631825335

`A000290(A046079(n+1)%(n+1))`
-/

namespace A221837.P6652397957631825335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A046079 (n + 1)) (n + 1 : ℤ)).toNat

end

end A221837.P6652397957631825335

namespace A221837

/-- `A000290(A046079(n+1)%(n+1))` -/
def P6652397957631825335.Spec : Prop :=
  ∀ n, P6652397957631825335.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P7553505313636736995

`(A328708(n+1)+A024361(n+1))²`
-/

namespace A221837.P7553505313636736995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A328708 (n + 1) + A024361 (n + 1)) ^ 2

end

end A221837.P7553505313636736995

namespace A221837

/-- `(A328708(n+1)+A024361(n+1))²` -/
def P7553505313636736995.Spec : Prop :=
  ∀ n, P7553505313636736995.a n = A221837 (n + 1)

theorem P7553505313636736995.correct : P7553505313636736995.Spec := by
  intro n
  simp only [A221837, Nat.add_sub_cancel, A221837.P7553505313636736995.a, A221837.P10112316691659458481.a, A024361, A024361.P1146025692209475519.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A328708, A328708.P9117693535644354588.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P14010432101562150871.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P10258181745752134128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A221837

/-! ## A221837.P3127919348448304755

`(A046080(n+1)-A046081(n+1))²`
-/

namespace A221837.P3127919348448304755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046080 (n + 1) - A046081 (n + 1)) ^ 2

end

end A221837.P3127919348448304755

namespace A221837

/-- `(A046080(n+1)-A046081(n+1))²` -/
def P3127919348448304755.Spec : Prop :=
  ∀ n, P3127919348448304755.a n = A221837 (n + 1)

theorem P3127919348448304755.correct : P3127919348448304755.Spec := by
  intro n
  simp only [A221837, Nat.add_sub_cancel, A221837.P3127919348448304755.a, A221837.P10112316691659458481.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A046081, A046081.P5098545024402691022.a, A024361, A024361.P1146025692209475519.a, A063014, A063014.P2435970929241132637.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P14010432101562150871.a, A034444, A034444.P6574915864346323298.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A221837

/-! ## A221837.P270733785851015537

`(A146564(n+1)%A078644(n+1))²`
-/

namespace A221837.P270733785851015537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146564 (n + 1)) (A078644 (n + 1)) ^ 2

end

end A221837.P270733785851015537

namespace A221837

/-- `(A146564(n+1)%A078644(n+1))²` -/
def P270733785851015537.Spec : Prop :=
  ∀ n, P270733785851015537.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P1326060017138189088

`A046079(n+1)^A020639(2*(n+1))`
-/

namespace A221837.P1326060017138189088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046079 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A221837.P1326060017138189088

namespace A221837

/-- `A046079(n+1)^A020639(2*(n+1))` -/
def P1326060017138189088.Spec : Prop :=
  ∀ n, P1326060017138189088.a n = (A221837 (n + 1) : ℚ)

end A221837

/-! ## A221837.P17076205359977605345

`A000290(A046081(n+1)-A046080(n+1))`
-/

namespace A221837.P17076205359977605345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A046081 (n + 1) - A046080 (n + 1)).toNat

end

end A221837.P17076205359977605345

namespace A221837

/-- `A000290(A046081(n+1)-A046080(n+1))` -/
def P17076205359977605345.Spec : Prop :=
  ∀ n, P17076205359977605345.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P7008429491395187189

`(A328708(n+1)+A024361(n+1))*A046079(n+1)`
-/

namespace A221837.P7008429491395187189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A328708 (n + 1) + A024361 (n + 1)) * A046079 (n + 1)

end

end A221837.P7008429491395187189

namespace A221837

/-- `(A328708(n+1)+A024361(n+1))*A046079(n+1)` -/
def P7008429491395187189.Spec : Prop :=
  ∀ n, P7008429491395187189.a n = A221837 (n + 1)

theorem P7008429491395187189.correct : P7008429491395187189.Spec := by
  intro n
  simp only [A221837, Nat.add_sub_cancel, A221837.P7008429491395187189.a, A221837.P10112316691659458481.a, A024361, A024361.P1146025692209475519.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A328708, A328708.P9117693535644354588.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P14010432101562150871.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P10258181745752134128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A221837

/-! ## A221837.P16163519402314712978

`(A046081(n+1)-A046080(n+1))*A046079(n+1)`
-/

namespace A221837.P16163519402314712978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046081 (n + 1) - A046080 (n + 1)) * A046079 (n + 1)

end

end A221837.P16163519402314712978

namespace A221837

/-- `(A046081(n+1)-A046080(n+1))*A046079(n+1)` -/
def P16163519402314712978.Spec : Prop :=
  ∀ n, P16163519402314712978.a n = A221837 (n + 1)

theorem P16163519402314712978.correct : P16163519402314712978.Spec := by
  intro n
  simp only [A221837, Nat.add_sub_cancel, A221837.P16163519402314712978.a, A221837.P10112316691659458481.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A046081, A046081.P5098545024402691022.a, A024361, A024361.P1146025692209475519.a, A063014, A063014.P2435970929241132637.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P14010432101562150871.a, A034444, A034444.P6574915864346323298.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A221837

/-! ## A221837.P1976110674425596173

`(A024361(n+1)+A328949(n+1)-A328712(n+1))²`
-/

namespace A221837.P1976110674425596173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024361 (n + 1) + (A328949 (n + 1) - A328712 (n + 1))) ^ 2

end

end A221837.P1976110674425596173

namespace A221837

/-- `(A024361(n+1)+A328949(n+1)-A328712(n+1))²` -/
def P1976110674425596173.Spec : Prop :=
  ∀ n, P1976110674425596173.a n = A221837 (n + 1)

theorem P1976110674425596173.correct : P1976110674425596173.Spec := by
  intro n
  simp only [A221837, Nat.add_sub_cancel, A221837.P1976110674425596173.a, A221837.P10112316691659458481.a, A024361, A024361.P1146025692209475519.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A328712, A328712.P8522307854513457100.a, A328949, A328949.P9082150225325732429.a, A004526, A004526.P10084182425416171735.a, A024362, A024362.P4327117018867467884.a, A046080, A046080.P16111352627053334427.a, A317528, A317528.P12745314278989265988.a, A328708, A328708.P9117693535644354588.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P14010432101562150871.a, A034444, A034444.P6574915864346323298.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A001221, A001221.P10258181745752134128.a, A019590, A019590.P10517823757212113743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A221837

/-! ## A221837.P13418801975143274032

`A046079(n+1)*A046079(A020484(n))*A046079(n+1)`
-/

namespace A221837.P13418801975143274032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) * A046079 (A020484 n).toNat * A046079 (n + 1)

end

end A221837.P13418801975143274032

namespace A221837

/-- `A046079(n+1)*A046079(A020484(n))*A046079(n+1)` -/
def P13418801975143274032.Spec : Prop :=
  ∀ n, P13418801975143274032.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P11385469031188825352

`A046079(n+1)*A046079(A151800(n))*A046079(n+1)`
-/

namespace A221837.P11385469031188825352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) * A046079 (A151800 n).toNat * A046079 (n + 1)

end

end A221837.P11385469031188825352

namespace A221837

/-- `A046079(n+1)*A046079(A151800(n))*A046079(n+1)` -/
def P11385469031188825352.Spec : Prop :=
  ∀ n, P11385469031188825352.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P10251094302474754222

`A115878(A022998(n+1))²`
-/

namespace A221837.P10251094302474754222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (A022998 (n + 1)).toNat ^ 2

end

end A221837.P10251094302474754222

namespace A221837

/-- `A115878(A022998(n+1))²` -/
def P10251094302474754222.Spec : Prop :=
  ∀ n, P10251094302474754222.a n = A221837 (n + 1)

end A221837

/-! ## A221837.P16313574209952158091

`A115878(2*(n+1))²`
-/

namespace A221837.P16313574209952158091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (2 * (n + 1)) ^ 2

end

end A221837.P16313574209952158091

namespace A221837

/-- `A115878(2*(n+1))²` -/
def P16313574209952158091.Spec : Prop :=
  ∀ n, P16313574209952158091.a n = A221837 (n + 1)

end A221837

/-!
# A221838: Number of integer Heron triangles of height n.

The programs for A221838, the canonical program `A221838.P16241372166790464696` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221838 has offset 1).

The definition of A221838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, A221837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A221838.P16241372166790464696

`A221837(n+1)+A046079(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A221838

/-- `A221837(n+1)+A046079(n+1)` -/
def P16241372166790464696.Spec : Prop :=
  ∀ n, P16241372166790464696.a n = A221838 (n + 1)

theorem P16241372166790464696.correct : P16241372166790464696.Spec := by
  intro n
  simp only [A221838, Nat.add_sub_cancel]

end A221838

/-! ## A221838.P14760047526774704366

`2*C(A176835(2*(n+1)), 2)`
-/

namespace A221838.P14760047526774704366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A176835 (2 * (n + 1))).toNat 2

end

end A221838.P14760047526774704366

namespace A221838

/-- `2*C(A176835(2*(n+1)), 2)` -/
def P14760047526774704366.Spec : Prop :=
  ∀ n, (P14760047526774704366.a n : ℤ) = A221838 (n + 1)

end A221838

/-! ## A221838.P14606257644856888953

`A002378(A046079(n+1))`
-/

namespace A221838.P14606257644856888953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A046079 (n + 1)).toNat

end

end A221838.P14606257644856888953

namespace A221838

/-- `A002378(A046079(n+1))` -/
def P14606257644856888953.Spec : Prop :=
  ∀ n, P14606257644856888953.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P12321236814466118704

`A165900(A046079(n+1)+1)+1`
-/

namespace A221838.P12321236814466118704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A046079 (n + 1) + 1).toNat + 1

end

end A221838.P12321236814466118704

namespace A221838

/-- `A165900(A046079(n+1)+1)+1` -/
def P12321236814466118704.Spec : Prop :=
  ∀ n, P12321236814466118704.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P2309134097165594769

`A176835(2*n+2)²-A176835(2*n+2)`
-/

namespace A221838.P2309134097165594769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (2 * n + 2) ^ 2 - A176835 (2 * n + 2)

end

end A221838.P2309134097165594769

namespace A221838

/-- `A176835(2*n+2)²-A176835(2*n+2)` -/
def P2309134097165594769.Spec : Prop :=
  ∀ n, P2309134097165594769.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P10400542538758524307

`A046079(n+1)*A233583(A046079(n+1)+2)`
-/

namespace A221838.P10400542538758524307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) * A233583 (A046079 (n + 1) + 2).toNat

end

end A221838.P10400542538758524307

namespace A221838

/-- `A046079(n+1)*A233583(A046079(n+1)+2)` -/
def P10400542538758524307.Spec : Prop :=
  ∀ n, P10400542538758524307.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P9214711314552665726

`A008619(2*A046079(n+1))*A046079(n+1)`
-/

namespace A221838.P9214711314552665726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A046079 (n + 1)).toNat * A046079 (n + 1)

end

end A221838.P9214711314552665726

namespace A221838

/-- `A008619(2*A046079(n+1))*A046079(n+1)` -/
def P9214711314552665726.Spec : Prop :=
  ∀ n, P9214711314552665726.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P6040562946473156362

`(A057427(n)+A046079(n+1))*A046079(n+1)`
-/

namespace A221838.P6040562946473156362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + A046079 (n + 1)) * A046079 (n + 1)

end

end A221838.P6040562946473156362

namespace A221838

/-- `(A057427(n)+A046079(n+1))*A046079(n+1)` -/
def P6040562946473156362.Spec : Prop :=
  ∀ n, P6040562946473156362.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P2890383355325446348

`(A046079(n+1)-A057428(n))*A046079(n+1)`
-/

namespace A221838.P2890383355325446348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046079 (n + 1) - A057428 n) * A046079 (n + 1)

end

end A221838.P2890383355325446348

namespace A221838

/-- `(A046079(n+1)-A057428(n))*A046079(n+1)` -/
def P2890383355325446348.Spec : Prop :=
  ∀ n, P2890383355325446348.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P4978226725997794189

`A046079(n+1)+(A033999(n)*A046079(n+1))²`
-/

namespace A221838.P4978226725997794189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) + (A033999 n * A046079 (n + 1)) ^ 2

end

end A221838.P4978226725997794189

namespace A221838

/-- `A046079(n+1)+(A033999(n)*A046079(n+1))²` -/
def P4978226725997794189.Spec : Prop :=
  ∀ n, P4978226725997794189.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P13619741663760180914

`(A046079(n+1)+A046079(A020484(n)))*A046079(n+1)`
-/

namespace A221838.P13619741663760180914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046079 (n + 1) + A046079 (A020484 n).toNat) * A046079 (n + 1)

end

end A221838.P13619741663760180914

namespace A221838

/-- `(A046079(n+1)+A046079(A020484(n)))*A046079(n+1)` -/
def P13619741663760180914.Spec : Prop :=
  ∀ n, P13619741663760180914.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P10699039771149497524

`(A046079(n+1)+A046079(A151800(n)))*A046079(n+1)`
-/

namespace A221838.P10699039771149497524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046079 (n + 1) + A046079 (A151800 n).toNat) * A046079 (n + 1)

end

end A221838.P10699039771149497524

namespace A221838

/-- `(A046079(n+1)+A046079(A151800(n)))*A046079(n+1)` -/
def P10699039771149497524.Spec : Prop :=
  ∀ n, P10699039771149497524.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P17482340990155540664

`(A046079(A001751(n+1))+A046079(n+1))*A046079(n+1)`
-/

namespace A221838.P17482340990155540664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046079 (A001751 (n + 1)).toNat + A046079 (n + 1)) * A046079 (n + 1)

end

end A221838.P17482340990155540664

namespace A221838

/-- `(A046079(A001751(n+1))+A046079(n+1))*A046079(n+1)` -/
def P17482340990155540664.Spec : Prop :=
  ∀ n, P17482340990155540664.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P16628014960787026754

`A115880(2*A115878(2*(n+1))+1)`
-/

namespace A221838.P16628014960787026754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115880 (2 * A115878 (2 * (n + 1)) + 1).toNat

end

end A221838.P16628014960787026754

namespace A221838

/-- `A115880(2*A115878(2*(n+1))+1)` -/
def P16628014960787026754.Spec : Prop :=
  ∀ n, P16628014960787026754.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P6023413106459268615

`A115878(2*(n+1))*A176835(2*(n+1))`
-/

namespace A221838.P6023413106459268615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (2 * (n + 1)) * A176835 (2 * (n + 1))

end

end A221838.P6023413106459268615

namespace A221838

/-- `A115878(2*(n+1))*A176835(2*(n+1))` -/
def P6023413106459268615.Spec : Prop :=
  ∀ n, P6023413106459268615.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P13170838195130681498

`A115878(2*n+2)+A115878(2*n+2)²`
-/

namespace A221838.P13170838195130681498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (2 * n + 2) + A115878 (2 * n + 2) ^ 2

end

end A221838.P13170838195130681498

namespace A221838

/-- `A115878(2*n+2)+A115878(2*n+2)²` -/
def P13170838195130681498.Spec : Prop :=
  ∀ n, P13170838195130681498.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P6296023597540216249

`(A046079(A000040(n+1))+A046079(n+1))*A046079(n+1)`
-/

namespace A221838.P6296023597540216249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046079 (A000040 (n + 1)).toNat + A046079 (n + 1)) * A046079 (n + 1)

end

end A221838.P6296023597540216249

namespace A221838

/-- `(A046079(A000040(n+1))+A046079(n+1))*A046079(n+1)` -/
def P6296023597540216249.Spec : Prop :=
  ∀ n, P6296023597540216249.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P14066447568007635521

`floor((A068074(2*(n+1))/2)²)`
-/

namespace A221838.P14066447568007635521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A068074 (2 * (n + 1)) : ℚ) / 2) ^ 2⌋

end

end A221838.P14066447568007635521

namespace A221838

/-- `floor((A068074(2*(n+1))/2)²)` -/
def P14066447568007635521.Spec : Prop :=
  ∀ n, P14066447568007635521.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P4346067578564961330

`(A046079(A001747(n+1))+A046079(n+1))*A046079(n+1)`
-/

namespace A221838.P4346067578564961330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046079 (A001747 (n + 1)).toNat + A046079 (n + 1)) * A046079 (n + 1)

end

end A221838.P4346067578564961330

namespace A221838

/-- `(A046079(A001747(n+1))+A046079(n+1))*A046079(n+1)` -/
def P4346067578564961330.Spec : Prop :=
  ∀ n, P4346067578564961330.a n = A221838 (n + 1)

end A221838

/-! ## A221838.P18382311264707384431

`A028392(A221837(n+1))`
-/

namespace A221838.P18382311264707384431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A221837 (n + 1)).toNat

end

end A221838.P18382311264707384431

namespace A221838

/-- `A028392(A221837(n+1))` -/
def P18382311264707384431.Spec : Prop :=
  ∀ n, P18382311264707384431.a n = A221838 (n + 1)

end A221838

/-!
# A221839: Number of rectangles dissectible into a minimum of n squares.

The programs for A221839, there is no canonical definition to state claims against.
-/

/-! ## A221839.P11326795093350185498

`A291751(A049143(n+1))`
-/

namespace A221839.P11326795093350185498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291751 (A049143 (n + 1)).toNat

end

end A221839.P11326795093350185498

/-! ## A221839.P5820270446951531981

`A249563(n)+A011664(n)`
-/

namespace A221839.P5820270446951531981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249563 n + A011664 n

end

end A221839.P5820270446951531981

/-! ## A221839.P3809206715401316032

`A249563(n)+A025428(n)`
-/

namespace A221839.P3809206715401316032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249563 n + A025428 n

end

end A221839.P3809206715401316032

/-! ## A221839.P9882994343565358466

`A249563(n)+A080343(n)`
-/

namespace A221839.P9882994343565358466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249563 n + A080343 n

end

end A221839.P9882994343565358466

/-! ## A221839.P8993234015685829276

`A249563(n)+A085857(n)`
-/

namespace A221839.P8993234015685829276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249563 n + A085857 n

end

end A221839.P8993234015685829276

/-!
# A221841: Number of ways to dissect a square into n squares up to symmetry.

The programs for A221841, there is no canonical definition to state claims against.
-/

/-! ## A221841.P3675424061725956812

`A168201(A122031(n))+A168201(n)`
-/

namespace A221841.P3675424061725956812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A122031 n).toNat + A168201 n

end

end A221841.P3675424061725956812

/-!
# A221843: Number of partitions of n^2 into squares providing prime dissections of an n X n square into integer-sided squares.

The programs for A221843, there is no canonical definition to state claims against.
-/

/-! ## A221843.P2943547137756352885

`A308981(A167606(n)+1)`
-/

namespace A221843.P2943547137756352885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308981 (A167606 n + 1).toNat

end

end A221843.P2943547137756352885

/-! ## A221843.P11126935514863372108

`A308981(A065491(n+1)+1)`
-/

namespace A221843.P11126935514863372108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308981 (A065491 (n + 1) + 1).toNat

end

end A221843.P11126935514863372108

/-! ## A221843.P2006888242940821885

`A352702(n)+A066057(A348615(n))`
-/

namespace A221843.P2006888242940821885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352702 n + A066057 (A348615 n).toNat

end

end A221843.P2006888242940821885

/-! ## A221843.P1030531079947258555

`A172471(or(A242820(n), A284713(n+1)))`
-/

namespace A221843.P1030531079947258555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.lor (A242820 n) (A284713 (n + 1))).toNat

end

end A221843.P1030531079947258555

/-!
# A221844: Number of prime dissections of an n X n square into integer-sided squares up to symmetry.

The programs for A221844, there is no canonical definition to state claims against.
-/

/-! ## A221844.P6142551668236881521

`A227690(∑[4*(n+1)])-A051953(n+1)`
-/

namespace A221844.P6142551668236881521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (∑ j ∈ Finset.range (n + 1), f1 j) - A051953 (n + 1)

end

end A221844.P6142551668236881521

/-! ## A221844.P6631561133589144020

`A000027(A224239(n+1)-A051953(n+1))`
-/

namespace A221844.P6631561133589144020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A224239 (n + 1) - A051953 (n + 1)).toNat

end

end A221844.P6631561133589144020

/-! ## A221844.P2937282691187740925

`A052410(A224239(n+1)-A051953(n+1))`
-/

namespace A221844.P2937282691187740925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A224239 (n + 1) - A051953 (n + 1)).toNat

end

end A221844.P2937282691187740925

/-!
# A221845: Number of prime dissections of an n X n square into integer-sided squares.

The programs for A221845, there is no canonical definition to state claims against.
-/

/-! ## A221845.P10624073637601935892

`A151735(C(comp[2*(n+1)], n))`
-/

namespace A221845.P10624073637601935892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151735 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n)

end

end A221845.P10624073637601935892

/-!
# A221846: Number of primes of the form (x+1)^5 - x^5 less than 10^n.

The programs for A221846, there is no canonical definition to state claims against.
-/

/-! ## A221846.P18319363850735991943

`∑[A221847(n)]`
-/

namespace A221846.P18319363850735991943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221846.P18319363850735991943

/-!
# A221847: Number of primes of the form (x+1)^5 - x^5 having n digits.

The programs for A221847, there is no canonical definition to state claims against.
-/

/-! ## A221847.P7536045433108042545

`Δ[A221846(abs(1-n))]`
-/

namespace A221847.P7536045433108042545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221846 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221847.P7536045433108042545

/-! ## A221847.P6549316998452180742

`A221846(n)-A221846(abs(A024000(n)))`
-/

namespace A221847.P6549316998452180742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221846 n - A221846 |A024000 n|.toNat

end

end A221847.P6549316998452180742

/-!
# A221848: Partial sums of primes equal (x+1)^5 - x^5.

The programs for A221848, there is no canonical definition to state claims against.
-/

/-! ## A221848.P8973685797684736918

`∑[A121616(n+1)]`
-/

namespace A221848.P8973685797684736918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221848.P8973685797684736918

/-! ## A221848.P1825972835037599574

`∑[record[A121616(A158416(n))]]`
-/

namespace A221848.P1825972835037599574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121616 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221848.P1825972835037599574

/-! ## A221848.P12711224421622234116

`∑[record[A121616(A236858(n))]]`
-/

namespace A221848.P12711224421622234116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121616 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221848.P12711224421622234116

/-! ## A221848.P10219400900836545207

`∑[record[A121616(A291769(n))]]`
-/

namespace A221848.P10219400900836545207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121616 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221848.P10219400900836545207

/-! ## A221848.P17566408506917987623

`∑[A022521(A121617(n+1)-1)]`
-/

namespace A221848.P17566408506917987623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 (A121617 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221848.P17566408506917987623

/-! ## A221848.P9065995972381630607

`∑[record[A121616(A020986(n))]]`
-/

namespace A221848.P9065995972381630607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121616 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221848.P9065995972381630607

/-! ## A221848.P2264745953993263834

`∑[record[A121616(A143182(n))]]`
-/

namespace A221848.P2264745953993263834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121616 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221848.P2264745953993263834

/-!
# A221849: Number of primes of the form (x+1)^5 - x^5 with x <= 10^n.

The programs for A221849, there is no canonical definition to state claims against.
-/

/-! ## A221849.P15646499160079355352

`A004525(A081346(n)+A081337(n))`
-/

namespace A221849.P15646499160079355352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A081346 n + A081337 n).toNat

end

end A221849.P15646499160079355352

/-!
# A221850: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221850, there is no canonical definition to state claims against.
-/

/-! ## A221850.P4091436742267058386

`A221852(∑[n+3]+1)`
-/

namespace A221850.P4091436742267058386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221852 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221850.P4091436742267058386

/-!
# A221851: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221851, there is no canonical definition to state claims against.
-/

/-! ## A221851.P9565605249934232071

`A221852(∑[n+4]+3)`
-/

namespace A221851.P9565605249934232071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221852 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221851.P9565605249934232071

/-!
# A221853: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221853, there is no canonical definition to state claims against.
-/

/-! ## A221853.P6612226355244088778

`A221852(∑[n+1]+2)`
-/

namespace A221853.P6612226355244088778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221852 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221853.P6612226355244088778

/-! ## A221853.P13875153994643347665

`record[A221852(n+3)/A075501(n+1)]`
-/

namespace A221853.P13875153994643347665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221852 (n + 3) : ℚ) / (A075501 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221853.P13875153994643347665

/-!
# A221854: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221854, there is no canonical definition to state claims against.
-/

/-! ## A221854.P8060421707483803197

`A221852(∑[n+2]+4)`
-/

namespace A221854.P8060421707483803197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221852 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221854.P8060421707483803197

/-! ## A221854.P13218477017745483215

`lcm((-1)^n, A221852(A167614(n+1)))`
-/

namespace A221854.P13218477017745483215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A221852 (A167614 (n + 1)).toNat)

end

end A221854.P13218477017745483215

/-! ## A221854.P6264404806432437392

`A221852(A167614(n+1))+A025439(n)`
-/

namespace A221854.P6264404806432437392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221852 (A167614 (n + 1)).toNat + A025439 n

end

end A221854.P6264404806432437392

/-!
# A221855: Number of cyclotomic cosets of 13 mod 10^n.

The programs for A221855, there is no canonical definition to state claims against.
-/

/-! ## A221855.P6344066673454701463

`record[(2*n+1)*(C(or(1, n), n)+3)]`
-/

namespace A221855.P6344066673454701463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (Nat.lor 1 n) n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221855.P6344066673454701463

/-! ## A221855.P782709823281337971

`record[((n+1)/(or(n, n+1)-n)+3)*(2*n+1)]`
-/

namespace A221855.P782709823281337971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) + 3) * (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221855.P782709823281337971

/-! ## A221855.P15711665777225032021

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=12, a(2)=30, a(3)=72, a(4)=130`
-/

namespace A221855.P15711665777225032021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 12, 30, 72, 130] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A221855.P15711665777225032021

/-! ## A221855.P17324860515443213450

`record[A278512(8*n+17)-9]`
-/

namespace A221855.P17324860515443213450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278512 (8 * n + 17) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221855.P17324860515443213450

/-! ## A221855.P16520737571685961522

`2*(n+1)*record[A115379(n)+2]`
-/

namespace A221855.P16520737571685961522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115379 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A221855.P16520737571685961522

/-! ## A221855.P18070120349360476907

`record[(4*n+2)*(A025480(n)+2)]`
-/

namespace A221855.P18070120349360476907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) * (A025480 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221855.P18070120349360476907

/-! ## A221855.P15644853562668489207

`record[(4*n+2)*A103391(n+2)]`
-/

namespace A221855.P15644853562668489207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) * A103391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221855.P15644853562668489207

/-! ## A221855.P17908539306504956724

`record[(4*n+2)*(A142150(n)+2)]`
-/

namespace A221855.P17908539306504956724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) * (A142150 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221855.P17908539306504956724

/-! ## A221855.P13358867333198715388

`(A019442(n+1)+1)*2*(n+1)`
-/

namespace A221855.P13358867333198715388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019442 (n + 1) + 1) * (2 * (n + 1) : ℤ)

end

end A221855.P13358867333198715388

/-! ## A221855.P9574246928303444929

`(n+1)*(A116728(n+1)+n+3)`
-/

namespace A221855.P9574246928303444929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A116728 (n + 1) + (n + 3 : ℤ))

end

end A221855.P9574246928303444929

/-!
# A221857: Number A(n,k) of shapes of balanced k-ary trees with n nodes, where a tree is balanced if the total number of nodes in subtrees corresponding to the branches of any node differ by at most one; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A221857, there is no canonical definition to state claims against.
-/

/-! ## A221857.P8574641918013899158

`gcd(A273712(n)²², A195151(n))`
-/

namespace A221857.P8574641918013899158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A273712 n ^ 2) ^ 2) (A195151 n)

end

end A221857.P8574641918013899158

/-! ## A221857.P6113594218567179461

`gcd(A001222(A118180(n)), A355576(n))`
-/

namespace A221857.P6113594218567179461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A118180 n).toNat) (A355576 n)

end

end A221857.P6113594218567179461

/-! ## A221857.P1757020069069357312

`gcd(A001221(A105599(n+1)), A273712(n))`
-/

namespace A221857.P1757020069069357312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A105599 (n + 1)).toNat) (A273712 n)

end

end A221857.P1757020069069357312

/-! ## A221857.P2316953839778146961

`A025581(n)^A085838(A113143(n))`
-/

namespace A221857.P2316953839778146961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A085838 (A113143 n).toNat : ℤ)

end

end A221857.P2316953839778146961

/-! ## A221857.P11079654754192685497

`A355576(n)%A186189(A026351(2*(n+2)))`
-/

namespace A221857.P11079654754192685497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355576 n) (A186189 (A026351 (2 * (n + 2))).toNat)

end

end A221857.P11079654754192685497

/-!
# A221858: a(1)=2, a(2)=3, for n>=3, a(n) is the n-th number which is obtained by application of Eratosthenes-like sieve (with removing 1's) to sequence: odd part of digit sum of 2^m, m>=1.

The programs for A221858, there is no canonical definition to state claims against.
-/

/-! ## A221858.P4052579503866180057

`p?[A004396(p?[A259019(n+1)])]`
-/

namespace A221858.P4052579503866180057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259019 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221858.P4052579503866180057

/-! ## A221858.P15361564904584712209

`p?[A265364(p?[A218530(n)])]`
-/

namespace A221858.P15361564904584712209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221858.P15361564904584712209

/-! ## A221858.P12161548928972016173

`p?[n-A020639(A326105(n+1))]`
-/

namespace A221858.P12161548928972016173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A020639 (A326105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A221858.P12161548928972016173

/-! ## A221858.P2539023488385935782

`A160902(A351160(n+1)+A001694(n+1))`
-/

namespace A221858.P2539023488385935782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160902 (A351160 (n + 1) + A001694 (n + 1)).toNat

end

end A221858.P2539023488385935782

/-!
# A221859: Expansion of (1-3*x+x^2)*(1-2*x)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A221859, the canonical program `A221859.P1088119084002205825` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221859 has offset 0).

The definition of A221859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+7x^2-2x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A221859.P1088119084002205825`, by `A221859.P1088119084002205825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221859.P1088119084002205825

`ogf((1-5x+7x^2-2x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221859

/-- `ogf((1-5x+7x^2-2x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P1088119084002205825.Spec : Prop :=
  ∀ n, P1088119084002205825.a n = A221859 n

theorem P1088119084002205825.correct : P1088119084002205825.Spec := by
  intro n
  simp only [A221859]

end A221859

/-! ## A221859.P6410653075691853643

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=15, a(3)=56, a(4)=209`
-/

namespace A221859.P6410653075691853643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 15, 56, 209] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A221859.P6410653075691853643

namespace A221859

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P6410653075691853643.Spec : Prop :=
  ∀ n, P6410653075691853643.a n = A221859 n

end A221859

/-! ## A221859.P5726328419837408287

`A224514(n+1)-A211216(n+1)`
-/

namespace A221859.P5726328419837408287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 (n + 1) - A211216 (n + 1)

end

end A221859.P5726328419837408287

namespace A221859

/-- `A224514(n+1)-A211216(n+1)` -/
def P5726328419837408287.Spec : Prop :=
  ∀ n, P5726328419837408287.a n = A221859 n

end A221859

/-! ## A221859.P17147435354573962505

`Δ[A216710(n)]-A224509(n)`
-/

namespace A221859.P17147435354573962505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A224509 n

end

end A221859.P17147435354573962505

namespace A221859

/-- `Δ[A216710(n)]-A224509(n)` -/
def P17147435354573962505.Spec : Prop :=
  ∀ n, P17147435354573962505.a n = A221859 n

end A221859

/-! ## A221859.P244602914941497114

`2*A221862(n)-A221863(n)`
-/

namespace A221859.P244602914941497114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221862 n - A221863 n

end

end A221859.P244602914941497114

namespace A221859

/-- `2*A221862(n)-A221863(n)` -/
def P244602914941497114.Spec : Prop :=
  ∀ n, P244602914941497114.a n = A221859 n

end A221859

/-! ## A221859.P16680763352952830943

`A216710(n+1)-A224514(n+1)`
-/

namespace A221859.P16680763352952830943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 (n + 1) - A224514 (n + 1)

end

end A221859.P16680763352952830943

namespace A221859

/-- `A216710(n+1)-A224514(n+1)` -/
def P16680763352952830943.Spec : Prop :=
  ∀ n, P16680763352952830943.a n = A221859 n

end A221859

/-! ## A221859.P6962727873246090062

`Δ[A224514(n+1)]-A224509(n+1)`
-/

namespace A221859.P6962727873246090062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A224509 (n + 1)

end

end A221859.P6962727873246090062

namespace A221859

/-- `Δ[A224514(n+1)]-A224509(n+1)` -/
def P6962727873246090062.Spec : Prop :=
  ∀ n, P6962727873246090062.a n = A221859 n

end A221859

/-! ## A221859.P10064255161562446275

`A216710(n+1)-A336675(2*(n+1))`
-/

namespace A221859.P10064255161562446275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 (n + 1) - A336675 (2 * (n + 1))

end

end A221859.P10064255161562446275

namespace A221859

/-- `A216710(n+1)-A336675(2*(n+1))` -/
def P10064255161562446275.Spec : Prop :=
  ∀ n, P10064255161562446275.a n = A221859 n

end A221859

/-! ## A221859.P757340253633314477

`A336675(2*n+3)-A224514(n+1)`
-/

namespace A221859.P757340253633314477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (2 * n + 3) - A224514 (n + 1)

end

end A221859.P757340253633314477

namespace A221859

/-- `A336675(2*n+3)-A224514(n+1)` -/
def P757340253633314477.Spec : Prop :=
  ∀ n, P757340253633314477.a n = A221859 n

end A221859

/-! ## A221859.P7391941433375359957

`A336675(2*n+3)-A336675(2*(n+1))`
-/

namespace A221859.P7391941433375359957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (2 * n + 3) - A336675 (2 * (n + 1))

end

end A221859.P7391941433375359957

namespace A221859

/-- `A336675(2*n+3)-A336675(2*(n+1))` -/
def P7391941433375359957.Spec : Prop :=
  ∀ n, P7391941433375359957.a n = A221859 n

end A221859

/-! ## A221859.P13137275251393271906

`A216710(n+1)-(A224509(n)+A216710(n))`
-/

namespace A221859.P13137275251393271906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 (n + 1) - (A224509 n + A216710 n)

end

end A221859.P13137275251393271906

namespace A221859

/-- `A216710(n+1)-(A224509(n)+A216710(n))` -/
def P13137275251393271906.Spec : Prop :=
  ∀ n, P13137275251393271906.a n = A221859 n

end A221859

/-!
# A221862: Expansion of (1-3*x+x^2)*(1-x)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A221862, the canonical program `A221862.P17190640848241773606` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221862 has offset 0).

The definition of A221862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+4x^2-x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A221862.P17190640848241773606`, by `A221862.P17190640848241773606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221862.P17190640848241773606

`ogf((1-4x+4x^2-x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221862

/-- `ogf((1-4x+4x^2-x^3)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P17190640848241773606.Spec : Prop :=
  ∀ n, P17190640848241773606.a n = A221862 n

theorem P17190640848241773606.correct : P17190640848241773606.Spec := by
  intro n
  simp only [A221862]

end A221862

/-! ## A221862.P10899435985249399309

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=83, a(4)=319`
-/

namespace A221862.P10899435985249399309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 21, 83, 319] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A221862.P10899435985249399309

namespace A221862

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P10899435985249399309.Spec : Prop :=
  ∀ n, P10899435985249399309.a n = A221862 n

end A221862

/-! ## A221862.P4295692041692818597

`A224514(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A221862.P4295692041692818597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A224514 n + 3 * a (n - 1)

end

end A221862.P4295692041692818597

namespace A221862

/-- `A224514(n)+3*a(n-1)` -/
def P4295692041692818597.Spec : Prop :=
  ∀ n, P4295692041692818597.a n = A221862 n

end A221862

/-! ## A221862.P7634840522054353440

`A231185(2*n+1)+A231185(2*n)`
-/

namespace A221862.P7634840522054353440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231185 (2 * n + 1) + A231185 (2 * n)

end

end A221862.P7634840522054353440

namespace A221862

/-- `A231185(2*n+1)+A231185(2*n)` -/
def P7634840522054353440.Spec : Prop :=
  ∀ n, P7634840522054353440.a n = A221862 n

end A221862

/-! ## A221862.P2715579586827648682

`Δ[A231182(2*(n+2))]`
-/

namespace A221862.P2715579586827648682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221862.P2715579586827648682

namespace A221862

/-- `Δ[A231182(2*(n+2))]` -/
def P2715579586827648682.Spec : Prop :=
  ∀ n, P2715579586827648682.a n = A221862 n

end A221862

/-! ## A221862.P7893127101012366883

`(A221863(n)+A221859(n))/2`
-/

namespace A221862.P7893127101012366883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221863 n + A221859 n : ℚ) / 2

end

end A221862.P7893127101012366883

namespace A221862

/-- `(A221863(n)+A221859(n))/2` -/
def P7893127101012366883.Spec : Prop :=
  ∀ n, P7893127101012366883.a n = (A221862 n : ℚ)

end A221862

/-! ## A221862.P17293229534456274310

`Δ[A221859(n)-∑[A224514(n)]]`
-/

namespace A221862.P17293229534456274310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221859 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221862.P17293229534456274310

namespace A221862

/-- `Δ[A221859(n)-∑[A224514(n)]]` -/
def P17293229534456274310.Spec : Prop :=
  ∀ n, P17293229534456274310.a n = A221862 n

end A221862

/-! ## A221862.P16792408804801636287

`Δ[record[A000035(n)*A231181(n)]]`
-/

namespace A221862.P16792408804801636287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A231181 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221862.P16792408804801636287

namespace A221862

/-- `Δ[record[A000035(n)*A231181(n)]]` -/
def P16792408804801636287.Spec : Prop :=
  ∀ n, P16792408804801636287.a n = A221862 n

end A221862

/-! ## A221862.P13888995619447867456

`Δ[A221859(n)]-A224514(n+1)`
-/

namespace A221862.P13888995619447867456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A224514 (n + 1)

end

end A221862.P13888995619447867456

namespace A221862

/-- `Δ[A221859(n)]-A224514(n+1)` -/
def P13888995619447867456.Spec : Prop :=
  ∀ n, P13888995619447867456.a n = A221862 n

end A221862

/-! ## A221862.P14210748698674315741

`A221859(n+1)-A216710(n+1)`
-/

namespace A221862.P14210748698674315741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221859 (n + 1) - A216710 (n + 1)

end

end A221862.P14210748698674315741

namespace A221862

/-- `A221859(n+1)-A216710(n+1)` -/
def P14210748698674315741.Spec : Prop :=
  ∀ n, P14210748698674315741.a n = A221862 n

end A221862

/-! ## A221862.P8790019285174119995

`A221863(n)+A370051(n)-A224422(n)`
-/

namespace A221862.P8790019285174119995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221863 n + (A370051 n - A224422 n)

end

end A221862.P8790019285174119995

namespace A221862

/-- `A221863(n)+A370051(n)-A224422(n)` -/
def P8790019285174119995.Spec : Prop :=
  ∀ n, P8790019285174119995.a n = A221862 n

end A221862

/-! ## A221862.P10652415933745095856

`Δ[record[A231181(n)-A279030(n)]]`
-/

namespace A221862.P10652415933745095856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 n - A279030 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221862.P10652415933745095856

namespace A221862

/-- `Δ[record[A231181(n)-A279030(n)]]` -/
def P10652415933745095856.Spec : Prop :=
  ∀ n, P10652415933745095856.a n = A221862 n

end A221862

/-!
# A221863: Expansion of (1-3*x+x^2)/(1-9*x+28*x^2-35*x^3+15*x^4-x^5).

The programs for A221863, the canonical program `A221863.P5729343731604708728` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221863 has offset 0).

The definition of A221863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+x^2)/(1-9x+28x^2-35x^3+15x^4-x^5))` (program `A221863.P5729343731604708728`, by `A221863.P5729343731604708728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221863.P5729343731604708728

`ogf((1-3x+x^2)/(1-9x+28x^2-35x^3+15x^4-x^5))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221863

/-- `ogf((1-3x+x^2)/(1-9x+28x^2-35x^3+15x^4-x^5))` -/
def P5729343731604708728.Spec : Prop :=
  ∀ n, P5729343731604708728.a n = A221863 n

theorem P5729343731604708728.correct : P5729343731604708728.Spec := by
  intro n
  simp only [A221863]

end A221863

/-! ## A221863.P10655241663819174783

`9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=27, a(3)=110, a(4)=429`
-/

namespace A221863.P10655241663819174783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 27, 110, 429] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 35 * a (n - 3) - 15 * a (n - 4) + a (n - 5)

end

end A221863.P10655241663819174783

namespace A221863

/-- `9*a(n-1)-28*a(n-2)+35*a(n-3)-15*a(n-4)+a(n-5)` -/
def P10655241663819174783.Spec : Prop :=
  ∀ n, P10655241663819174783.a n = A221863 n

end A221863

/-! ## A221863.P12104001893516439763

`∑[A221862(n)]`
-/

namespace A221863.P12104001893516439763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221863.P12104001893516439763

namespace A221863

/-- `∑[A221862(n)]` -/
def P12104001893516439763.Spec : Prop :=
  ∀ n, P12104001893516439763.a n = A221863 n

end A221863

/-! ## A221863.P17674283671389544286

`A231181(Δ[n²])`
-/

namespace A221863.P17674283671389544286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A221863.P17674283671389544286

namespace A221863

/-- `A231181(Δ[n²])` -/
def P17674283671389544286.Spec : Prop :=
  ∀ n, P17674283671389544286.a n = A221863 n

end A221863

/-! ## A221863.P11600536786486963758

`record[A231182(2*n)]`
-/

namespace A221863.P11600536786486963758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221863.P11600536786486963758

namespace A221863

/-- `record[A231182(2*n)]` -/
def P11600536786486963758.Spec : Prop :=
  ∀ n, P11600536786486963758.a n = A221863 n

end A221863

/-! ## A221863.P10212663410801048477

`A231182(2*(n+3))`
-/

namespace A221863.P10212663410801048477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (2 * (n + 3))

end

end A221863.P10212663410801048477

namespace A221863

/-- `A231182(2*(n+3))` -/
def P10212663410801048477.Spec : Prop :=
  ∀ n, P10212663410801048477.a n = A221863 n

end A221863

/-! ## A221863.P1986353781919843698

`record[A231182(n)/(-1)^n]`
-/

namespace A221863.P1986353781919843698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231182 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221863.P1986353781919843698

namespace A221863

/-- `record[A231182(n)/(-1)^n]` -/
def P1986353781919843698.Spec : Prop :=
  ∀ n, P1986353781919843698.a n = (A221863 n : ℚ)

end A221863

/-! ## A221863.P5650825731188413241

`a(n-1)+A221859(n)+a(n-1)` with `a(0)=1`
-/

namespace A221863.P5650825731188413241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A221859 n + a (n - 1))

end

end A221863.P5650825731188413241

namespace A221863

/-- `a(n-1)+A221859(n)+a(n-1)` -/
def P5650825731188413241.Spec : Prop :=
  ∀ n, P5650825731188413241.a n = A221863 n

end A221863

/-! ## A221863.P13725831045084300347

`record[A231181(A026741(n))]`
-/

namespace A221863.P13725831045084300347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221863.P13725831045084300347

namespace A221863

/-- `record[A231181(A026741(n))]` -/
def P13725831045084300347.Spec : Prop :=
  ∀ n, P13725831045084300347.a n = A221863 n

end A221863

/-! ## A221863.P5641263067385239178

`record[A231181(A014681(n)+1)]`
-/

namespace A221863.P5641263067385239178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221863.P5641263067385239178

namespace A221863

/-- `record[A231181(A014681(n)+1)]` -/
def P5641263067385239178.Spec : Prop :=
  ∀ n, P5641263067385239178.a n = A221863 n

end A221863

/-! ## A221863.P6965847240306609065

`record[A231181(n*A000035(n))]`
-/

namespace A221863.P6965847240306609065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221863.P6965847240306609065

namespace A221863

/-- `record[A231181(n*A000035(n))]` -/
def P6965847240306609065.Spec : Prop :=
  ∀ n, P6965847240306609065.a n = A221863 n

end A221863

/-! ## A221863.P11750780842302802082

`2*A221862(n)-A221859(n)`
-/

namespace A221863.P11750780842302802082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221862 n - A221859 n

end

end A221863.P11750780842302802082

namespace A221863

/-- `2*A221862(n)-A221859(n)` -/
def P11750780842302802082.Spec : Prop :=
  ∀ n, P11750780842302802082.a n = A221863 n

end A221863

/-! ## A221863.P7759090345345309191

`record[A231181(ceil(A064680(n)/2))]`
-/

namespace A221863.P7759090345345309191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 ⌈(A064680 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221863.P7759090345345309191

namespace A221863

/-- `record[A231181(ceil(A064680(n)/2))]` -/
def P7759090345345309191.Spec : Prop :=
  ∀ n, P7759090345345309191.a n = A221863 n

end A221863

/-! ## A221863.P4397565251219714018

`record[A231181(n²/A257088(n))]`
-/

namespace A221863.P4397565251219714018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (A257088 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221863.P4397565251219714018

namespace A221863

/-- `record[A231181(n²/A257088(n))]` -/
def P4397565251219714018.Spec : Prop :=
  ∀ n, P4397565251219714018.a n = A221863 n

end A221863

/-! ## A221863.P14666176975764766026

`record[A231181(A257088(n+1)-n)]`
-/

namespace A221863.P14666176975764766026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (A257088 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221863.P14666176975764766026

namespace A221863

/-- `record[A231181(A257088(n+1)-n)]` -/
def P14666176975764766026.Spec : Prop :=
  ∀ n, P14666176975764766026.a n = A221863 n

end A221863

/-! ## A221863.P11655978570199752440

`A221862(n+1)-A221859(n+1)`
-/

namespace A221863.P11655978570199752440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221862 (n + 1) - A221859 (n + 1)

end

end A221863.P11655978570199752440

namespace A221863

/-- `A221862(n+1)-A221859(n+1)` -/
def P11655978570199752440.Spec : Prop :=
  ∀ n, P11655978570199752440.a n = A221863 n

end A221863

/-! ## A221863.P4314352498766083495

`A224422(n+1)-A370051(n+1)`
-/

namespace A221863.P4314352498766083495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224422 (n + 1) - A370051 (n + 1)

end

end A221863.P4314352498766083495

namespace A221863

/-- `A224422(n+1)-A370051(n+1)` -/
def P4314352498766083495.Spec : Prop :=
  ∀ n, P4314352498766083495.a n = A221863 n

end A221863

/-! ## A221863.P483766752393846476

`A231181(2*n+1)+A000007(n+1)`
-/

namespace A221863.P483766752393846476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 (2 * n + 1) + A000007 (n + 1)

end

end A221863.P483766752393846476

namespace A221863

/-- `A231181(2*n+1)+A000007(n+1)` -/
def P483766752393846476.Spec : Prop :=
  ∀ n, P483766752393846476.a n = A221863 n

end A221863

/-! ## A221863.P256639844610198968

`A231185(2*n+1)+A231181(2*n)`
-/

namespace A221863.P256639844610198968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231185 (2 * n + 1) + A231181 (2 * n)

end

end A221863.P256639844610198968

namespace A221863

/-- `A231185(2*n+1)+A231181(2*n)` -/
def P256639844610198968.Spec : Prop :=
  ∀ n, P256639844610198968.a n = A221863 n

end A221863

/-! ## A221863.P3116517864389837541

`∑[A231185(2*n+1)+A231185(2*n)]`
-/

namespace A221863.P3116517864389837541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231185 (2 * n + 1) + A231185 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221863.P3116517864389837541

namespace A221863

/-- `∑[A231185(2*n+1)+A231185(2*n)]` -/
def P3116517864389837541.Spec : Prop :=
  ∀ n, P3116517864389837541.a n = A221863 n

end A221863

/-!
# A221864: Number of forests (sets) of rooted labeled trees on {1,2,...,n} such that the node with label 1 is in the same rooted tree as the node with label 2.

The programs for A221864, there is no canonical definition to state claims against.
-/

/-! ## A221864.P10401962466978885640

`A072000(∑[A239368(n)])`
-/

namespace A221864.P10401962466978885640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221864.P10401962466978885640

/-! ## A221864.P4644217288210484763

`A152467(∑[A303914(n)])`
-/

namespace A221864.P4644217288210484763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221864.P4644217288210484763

/-!
# A221865: The nonprimes k such that k + 2 is either a prime or a semiprime.

The programs for A221865, the canonical program `A221865.P10154145289672600813` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221865 has offset 1).

The definition of A221865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221865.P9710689507550509440

`eq[A055671(n), A153011(n+2)]`
-/

namespace A221865.P9710689507550509440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153011 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P9710689507550509440

namespace A221865

/-- `eq[A055671(n), A153011(n+2)]` -/
def P9710689507550509440.Spec : Prop :=
  ∀ n, (P9710689507550509440.a n : ℤ) = A221865 (n + 1)

end A221865

/-! ## A221865.P9715683926791820705

`eq[A055672(n), A153011(n+2)]`
-/

namespace A221865.P9715683926791820705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153011 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P9715683926791820705

namespace A221865

/-- `eq[A055672(n), A153011(n+2)]` -/
def P9715683926791820705.Spec : Prop :=
  ∀ n, (P9715683926791820705.a n : ℤ) = A221865 (n + 1)

end A221865

/-! ## A221865.P16472040152683458949

`eq[A002264(A001222(n+2)), A055671(n)]`
-/

namespace A221865.P16472040152683458949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001222 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P16472040152683458949

namespace A221865

/-- `eq[A002264(A001222(n+2)), A055671(n)]` -/
def P16472040152683458949.Spec : Prop :=
  ∀ n, (P16472040152683458949.a n : ℤ) = A221865 (n + 1)

end A221865

/-! ## A221865.P4829174809740037364

`eq[A002264(A001222(n+2)), A055672(n)]`
-/

namespace A221865.P4829174809740037364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001222 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P4829174809740037364

namespace A221865

/-- `eq[A002264(A001222(n+2)), A055672(n)]` -/
def P4829174809740037364.Spec : Prop :=
  ∀ n, (P4829174809740037364.a n : ℤ) = A221865 (n + 1)

end A221865

/-! ## A221865.P10154145289672600813

`eq[A055671(n), A060278(n+2)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A221865

/-- `eq[A055671(n), A060278(n+2)]` -/
def P10154145289672600813.Spec : Prop :=
  ∀ n, (P10154145289672600813.a n : ℤ) = A221865 (n + 1)

theorem P10154145289672600813.correct : P10154145289672600813.Spec := by
  intro n
  simp only [A221865, Nat.add_sub_cancel]

end A221865

/-! ## A221865.P18026088732356559440

`eq[A055672(n), A060278(n+2)]`
-/

namespace A221865.P18026088732356559440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P18026088732356559440

namespace A221865

/-- `eq[A055672(n), A060278(n+2)]` -/
def P18026088732356559440.Spec : Prop :=
  ∀ n, (P18026088732356559440.a n : ℤ) = A221865 (n + 1)

end A221865

/-! ## A221865.P3768381736399816137

`eq[A055672(n), A101606(n+2)]`
-/

namespace A221865.P3768381736399816137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P3768381736399816137

namespace A221865

/-- `eq[A055672(n), A101606(n+2)]` -/
def P3768381736399816137.Spec : Prop :=
  ∀ n, (P3768381736399816137.a n : ℤ) = A221865 (n + 1)

end A221865

/-! ## A221865.P6262599559625016418

`eq[A055671(n), A160086(n+2)]`
-/

namespace A221865.P6262599559625016418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P6262599559625016418

namespace A221865

/-- `eq[A055671(n), A160086(n+2)]` -/
def P6262599559625016418.Spec : Prop :=
  ∀ n, (P6262599559625016418.a n : ℤ) = A221865 (n + 1)

end A221865

/-! ## A221865.P8205738329756616673

`eq[A055672(n), A160086(n+2)]`
-/

namespace A221865.P8205738329756616673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P8205738329756616673

namespace A221865

/-- `eq[A055672(n), A160086(n+2)]` -/
def P8205738329756616673.Spec : Prop :=
  ∀ n, (P8205738329756616673.a n : ℤ) = A221865 (n + 1)

end A221865

/-! ## A221865.P9121256925775747176

`eq[A008612(A001222(n+2)!), A055671(n)]`
-/

namespace A221865.P9121256925775747176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Nat.factorial (A001222 (n + 2)).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P9121256925775747176

namespace A221865

/-- `eq[A008612(A001222(n+2)!), A055671(n)]` -/
def P9121256925775747176.Spec : Prop :=
  ∀ n, (P9121256925775747176.a n : ℤ) = A221865 (n + 1)

end A221865

/-!
# A221869: New primes found by Rowland's recurrence in the order of their appearance.

The programs for A221869, there is no canonical definition to state claims against.
-/

/-! ## A221869.P16070610927168660313

`A325372((-1)^val(n+1, 2)+2^n)`
-/

namespace A221869.P16070610927168660313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325372 ((-1) ^ SequenceMachineLib.valuation (n + 1) 2 + (2 ^ n : ℤ)).toNat

end

end A221869.P16070610927168660313

/-! ## A221869.P7026204525535476597

`A360114(A226311(n))`
-/

namespace A221869.P7026204525535476597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360114 (A226311 n).toNat

end

end A221869.P7026204525535476597

/-!
# A221870: Number of nX2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221870, there is no canonical definition to state claims against.
-/

/-! ## A221870.P16545695158265135574

`A221873(∑[n+1]+2)`
-/

namespace A221870.P16545695158265135574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221873 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221870.P16545695158265135574

/-! ## A221870.P7715146483461566708

`record[A010054(n)*A221873(n+2)]`
-/

namespace A221870.P7715146483461566708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221873 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221870.P7715146483461566708

/-! ## A221870.P7843955585082285752

`record[A103452(n)*A221873(n+3)]`
-/

namespace A221870.P7843955585082285752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A221873 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221870.P7843955585082285752

/-! ## A221870.P9558395020076498697

`record[gcd(A098825(n), A221873(n+1))]`
-/

namespace A221870.P9558395020076498697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A221873 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221870.P9558395020076498697

/-! ## A221870.P15832842005915430822

`record[gcd(A221828(n+1), A221873(n+2))]`
-/

namespace A221870.P15832842005915430822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221828 (n + 1)) (A221873 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221870.P15832842005915430822

/-!
# A221871: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221871, there is no canonical definition to state claims against.
-/

/-! ## A221871.P6053531762987304481

`A221873(∑[n+2]+4)`
-/

namespace A221871.P6053531762987304481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221873 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221871.P6053531762987304481

/-! ## A221871.P4495406324516927286

`record[∑{e}[n, A221873(A167614(#))]]`
-/

namespace A221871.P4495406324516927286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A221873 (A167614 (Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221871.P4495406324516927286

/-! ## A221871.P14299512896559508486

`A221873(A167614(n+1))+char[8]`
-/

namespace A221871.P14299512896559508486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221873 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221871.P14299512896559508486

/-! ## A221871.P15548993142089168630

`or(A011736(n), A221873(A167614(n+1)))`
-/

namespace A221871.P15548993142089168630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011736 n) (A221873 (A167614 (n + 1)).toNat)

end

end A221871.P15548993142089168630

/-!
# A221872: Number of nX4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221872, there is no canonical definition to state claims against.
-/

/-! ## A221872.P4038388363088181963

`A221873(A141214(n)+7)`
-/

namespace A221872.P4038388363088181963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221873 (A141214 n + 7).toNat

end

end A221872.P4038388363088181963

/-! ## A221872.P12075829163114247559

`A221873(A052905(n)+9)`
-/

namespace A221872.P12075829163114247559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221873 (A052905 n + 9).toNat

end

end A221872.P12075829163114247559

/-! ## A221872.P12709989134391522086

`A221873(A055999(n)+10)`
-/

namespace A221872.P12709989134391522086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221873 (A055999 n + 10).toNat

end

end A221872.P12709989134391522086

/-!
# A221873: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221873, there is no canonical definition to state claims against.
-/

/-! ## A221873.P5193878304061169893

`A304760(A221429(n+1)^A249026(n))`
-/

namespace A221873.P5193878304061169893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304760 (SequenceMachineLib.roundAway ((A221429 (n + 1) : ℚ) ^ (A249026 n : ℤ))).toNat

end

end A221873.P5193878304061169893

/-! ## A221873.P9837945315211697343

`A304760(A221429(n+1)^A341073(n))`
-/

namespace A221873.P9837945315211697343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304760 (SequenceMachineLib.roundAway ((A221429 (n + 1) : ℚ) ^ (A341073 (n + 11) : ℤ))).toNat

end

end A221873.P9837945315211697343

/-!
# A221874: Numbers m such that 10*m^2 + 6 is a square.

The programs for A221874, the canonical program `A221874.P16110993488221044620` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221874 has offset 1).

The definition of A221874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221874.P16110993488221044620

`2*A129556(n+1)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A221874

/-- `2*A129556(n+1)+1` -/
def P16110993488221044620.Spec : Prop :=
  ∀ n, P16110993488221044620.a n = A221874 (n + 1)

theorem P16110993488221044620.correct : P16110993488221044620.Spec := by
  intro n
  simp only [A221874, Nat.add_sub_cancel]

end A221874

/-! ## A221874.P3318340526400540515

`2*A254332(n+1)-1`
-/

namespace A221874.P3318340526400540515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254332 (n + 1) - 1

end

end A221874.P3318340526400540515

namespace A221874

/-- `2*A254332(n+1)-1` -/
def P3318340526400540515.Spec : Prop :=
  ∀ n, P3318340526400540515.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P16559390985860367798

`A031150(A047346(n+1))`
-/

namespace A221874.P16559390985860367798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031150 (A047346 (n + 1)).toNat

end

end A221874.P16559390985860367798

namespace A221874

/-- `A031150(A047346(n+1))` -/
def P16559390985860367798.Spec : Prop :=
  ∀ n, P16559390985860367798.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P2045404847127431913

`A295334(A047241(n+1))`
-/

namespace A221874.P2045404847127431913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A047241 (n + 1)).toNat

end

end A221874.P2045404847127431913

namespace A221874

/-- `A295334(A047241(n+1))` -/
def P2045404847127431913.Spec : Prop :=
  ∀ n, P2045404847127431913.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P15447554739361002540

`A295334(or(1, A008486(n)))`
-/

namespace A221874.P15447554739361002540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (Int.lor 1 (A008486 n)).toNat

end

end A221874.P15447554739361002540

namespace A221874

/-- `A295334(or(1, A008486(n)))` -/
def P15447554739361002540.Spec : Prop :=
  ∀ n, P15447554739361002540.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P813978045130821296

`A295334(or(1, A008585(n)))`
-/

namespace A221874.P813978045130821296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (Int.lor 1 (A008585 n)).toNat

end

end A221874.P813978045130821296

namespace A221874

/-- `A295334(or(1, A008585(n)))` -/
def P813978045130821296.Spec : Prop :=
  ∀ n, P813978045130821296.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P15797959558729250788

`A295334(∑[gcd(4, A078469(n))])`
-/

namespace A221874.P15797959558729250788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A078469 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221874.P15797959558729250788

namespace A221874

/-- `A295334(∑[gcd(4, A078469(n))])` -/
def P15797959558729250788.Spec : Prop :=
  ∀ n, P15797959558729250788.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P14964113979324796774

`A031150(A047355(n+1)+1)`
-/

namespace A221874.P14964113979324796774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031150 (A047355 (n + 1) + 1).toNat

end

end A221874.P14964113979324796774

namespace A221874

/-- `A031150(A047355(n+1)+1)` -/
def P14964113979324796774.Spec : Prop :=
  ∀ n, P14964113979324796774.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P11661056228026491779

`A295334(A047235(n+1)-1)`
-/

namespace A221874.P11661056228026491779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A047235 (n + 1) - 1).toNat

end

end A221874.P11661056228026491779

namespace A221874

/-- `A295334(A047235(n+1)-1)` -/
def P11661056228026491779.Spec : Prop :=
  ∀ n, P11661056228026491779.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P2633933925123282640

`A295334(A052928(3*n)+1)`
-/

namespace A221874.P2633933925123282640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A052928 (3 * n) + 1).toNat

end

end A221874.P2633933925123282640

namespace A221874

/-- `A295334(A052928(3*n)+1)` -/
def P2633933925123282640.Spec : Prop :=
  ∀ n, P2633933925123282640.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P15338892389949607433

`A254332(n+1)+A129556(n+1)`
-/

namespace A221874.P15338892389949607433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254332 (n + 1) + A129556 (n + 1)

end

end A221874.P15338892389949607433

namespace A221874

/-- `A254332(n+1)+A129556(n+1)` -/
def P15338892389949607433.Spec : Prop :=
  ∀ n, P15338892389949607433.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P15859169970357562798

`A295334(A008585(n)+A000035(n+1))`
-/

namespace A221874.P15859169970357562798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A008585 n + A000035 (n + 1)).toNat

end

end A221874.P15859169970357562798

namespace A221874

/-- `A295334(A008585(n)+A000035(n+1))` -/
def P15859169970357562798.Spec : Prop :=
  ∀ n, P15859169970357562798.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P13794894897704641266

`A295334(1-(A000035(n)-A008585(n)))`
-/

namespace A221874.P13794894897704641266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (1 - (A000035 n - A008585 n)).toNat

end

end A221874.P13794894897704641266

namespace A221874

/-- `A295334(1-(A000035(n)-A008585(n)))` -/
def P13794894897704641266.Spec : Prop :=
  ∀ n, P13794894897704641266.a n = A221874 (n + 1)

end A221874

/-! ## A221874.P18276908192958736843

`A278400(A178334(n))+2*A254332(n+1)`
-/

namespace A221874.P18276908192958736843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (A178334 n).toNat + 2 * A254332 (n + 1)

end

end A221874.P18276908192958736843

namespace A221874

/-- `A278400(A178334(n))+2*A254332(n+1)` -/
def P18276908192958736843.Spec : Prop :=
  ∀ n, P18276908192958736843.a n = A221874 (n + 1)

end A221874

/-!
# A221875: Numbers m such that 10*m^2 - 6 is a square.

The programs for A221875, the canonical program `A221875.P5591685866184943505` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221875 has offset 1).

The definition of A221875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221875.P5591685866184943505

`2*A222390(n+1)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A221875

/-- `2*A222390(n+1)+1` -/
def P5591685866184943505.Spec : Prop :=
  ∀ n, P5591685866184943505.a n = A221875 (n + 1)

theorem P5591685866184943505.correct : P5591685866184943505.Spec := by
  intro n
  simp only [A221875, Nat.add_sub_cancel]

end A221875

/-! ## A221875.P796249191145012080

`A295334(A047233(n+1))`
-/

namespace A221875.P796249191145012080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A047233 (n + 1)).toNat

end

end A221875.P796249191145012080

namespace A221875

/-- `A295334(A047233(n+1))` -/
def P796249191145012080.Spec : Prop :=
  ∀ n, P796249191145012080.a n = A221875 (n + 1)

end A221875

/-! ## A221875.P18386176742712386675

`A295334(2*A007494(n))`
-/

namespace A221875.P18386176742712386675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (2 * A007494 n).toNat

end

end A221875.P18386176742712386675

namespace A221875

/-- `A295334(2*A007494(n))` -/
def P18386176742712386675.Spec : Prop :=
  ∀ n, P18386176742712386675.a n = A221875 (n + 1)

end A221875

/-! ## A221875.P6201381517774857240

`A295334(A014601(n)+n)`
-/

namespace A221875.P6201381517774857240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A014601 n + (n : ℤ)).toNat

end

end A221875.P6201381517774857240

namespace A221875

/-- `A295334(A014601(n)+n)` -/
def P6201381517774857240.Spec : Prop :=
  ∀ n, P6201381517774857240.a n = A221875 (n + 1)

end A221875

/-! ## A221875.P12518065935752739790

`A295334(A007310(n+1)-1)`
-/

namespace A221875.P12518065935752739790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A007310 (n + 1) - 1).toNat

end

end A221875.P12518065935752739790

namespace A221875

/-- `A295334(A007310(n+1)-1)` -/
def P12518065935752739790.Spec : Prop :=
  ∀ n, P12518065935752739790.a n = A221875 (n + 1)

end A221875

/-! ## A221875.P7201114761566088413

`A295334(2*n+A052928(n+1))`
-/

namespace A221875.P7201114761566088413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 ((2 * n : ℤ) + A052928 (n + 1)).toNat

end

end A221875.P7201114761566088413

namespace A221875

/-- `A295334(2*n+A052928(n+1))` -/
def P7201114761566088413.Spec : Prop :=
  ∀ n, P7201114761566088413.a n = A221875 (n + 1)

end A221875

/-! ## A221875.P1041154532627678648

`A295334(A004275(∑[A000034(n)]))`
-/

namespace A221875.P1041154532627678648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A221875.P1041154532627678648

namespace A221875

/-- `A295334(A004275(∑[A000034(n)]))` -/
def P1041154532627678648.Spec : Prop :=
  ∀ n, P1041154532627678648.a n = A221875 (n + 1)

end A221875

/-! ## A221875.P137396583422033792

`A295334(A052928(Δ[A000326(n)]))`
-/

namespace A221875.P137396583422033792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A052928 (f1 (n + 1) - f1 n).toNat).toNat

end

end A221875.P137396583422033792

namespace A221875

/-- `A295334(A052928(Δ[A000326(n)]))` -/
def P137396583422033792.Spec : Prop :=
  ∀ n, P137396583422033792.a n = A221875 (n + 1)

end A221875

/-! ## A221875.P723961509653671535

`A295334(A008585(n)+A000035(n))`
-/

namespace A221875.P723961509653671535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A008585 n + A000035 n).toNat

end

end A221875.P723961509653671535

namespace A221875

/-- `A295334(A008585(n)+A000035(n))` -/
def P723961509653671535.Spec : Prop :=
  ∀ n, P723961509653671535.a n = A221875 (n + 1)

end A221875

/-! ## A221875.P5882563193420636647

`A295334(2*(A005843(n)-A004526(n)))`
-/

namespace A221875.P5882563193420636647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (2 * (A005843 n - A004526 n)).toNat

end

end A221875.P5882563193420636647

namespace A221875

/-- `A295334(2*(A005843(n)-A004526(n)))` -/
def P5882563193420636647.Spec : Prop :=
  ∀ n, P5882563193420636647.a n = A221875 (n + 1)

end A221875

/-! ## A221875.P14293288043866435171

`A295334(A005843(A005843(n)-A004526(n)))`
-/

namespace A221875.P14293288043866435171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A005843 (A005843 n - A004526 n).toNat).toNat

end

end A221875.P14293288043866435171

namespace A221875

/-- `A295334(A005843(A005843(n)-A004526(n)))` -/
def P14293288043866435171.Spec : Prop :=
  ∀ n, P14293288043866435171.a n = A221875 (n + 1)

end A221875

/-!
# A221876: T(n,k) is the number of order-preserving full contraction mappings (of an n-chain) with exactly k fixed points.

The programs for A221876, the canonical program `A221876.P9289461571212111972` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221876 has offset 1).

The definition of A221876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221876.P2220772924499801129

`A045623(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A221876.P2220772924499801129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A221876.P2220772924499801129

namespace A221876

/-- `A045623(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P2220772924499801129.Spec : Prop :=
  ∀ n, P2220772924499801129.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P8929614332817449695

`A045623(C(comp[∑[n]]-n, 2)-1-n)`
-/

namespace A221876.P8929614332817449695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - 1 - (n : ℤ)).toNat

end

end A221876.P8929614332817449695

namespace A221876

/-- `A045623(C(comp[∑[n]]-n, 2)-1-n)` -/
def P8929614332817449695.Spec : Prop :=
  ∀ n, P8929614332817449695.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P9289461571212111972

`A045623(A025581(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A221876

/-- `A045623(A025581(n))` -/
def P9289461571212111972.Spec : Prop :=
  ∀ n, P9289461571212111972.a n = A221876 (n + 1)

theorem P9289461571212111972.correct : P9289461571212111972.Spec := by
  intro n
  simp only [A221876, Nat.add_sub_cancel]

end A221876

/-! ## A221876.P9921777497515899948

`A210489(2*(n+1-C(comp[∑[n]]-n, 2))²)`
-/

namespace A221876.P9921777497515899948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (2 * ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2).toNat

end

end A221876.P9921777497515899948

namespace A221876

/-- `A210489(2*(n+1-C(comp[∑[n]]-n, 2))²)` -/
def P9921777497515899948.Spec : Prop :=
  ∀ n, P9921777497515899948.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P5601352471694330764

`A210489(2*A025581(n)²)`
-/

namespace A221876.P5601352471694330764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (2 * A025581 n ^ 2).toNat

end

end A221876.P5601352471694330764

namespace A221876

/-- `A210489(2*A025581(n)²)` -/
def P5601352471694330764.Spec : Prop :=
  ∀ n, P5601352471694330764.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P1677093343480347678

`A048004(A292565(n+1))`
-/

namespace A221876.P1677093343480347678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (A292565 (n + 1)).toNat

end

end A221876.P1677093343480347678

namespace A221876

/-- `A048004(A292565(n+1))` -/
def P1677093343480347678.Spec : Prop :=
  ∀ n, P1677093343480347678.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P2808110628215216616

`A048004(2*A004736(n+1)²)`
-/

namespace A221876.P2808110628215216616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (2 * A004736 (n + 1) ^ 2).toNat

end

end A221876.P2808110628215216616

namespace A221876

/-- `A048004(2*A004736(n+1)²)` -/
def P2808110628215216616.Spec : Prop :=
  ∀ n, P2808110628215216616.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P15126218032146035067

`A305798(2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A221876.P15126218032146035067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305798 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A221876.P15126218032146035067

namespace A221876

/-- `A305798(2^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P15126218032146035067.Spec : Prop :=
  ∀ n, P15126218032146035067.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P121204015914929275

`A305808(2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A221876.P121204015914929275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305808 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A221876.P121204015914929275

namespace A221876

/-- `A305808(2^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P121204015914929275.Spec : Prop :=
  ∀ n, P121204015914929275.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P7411387836335272066

`A029935(2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A221876.P7411387836335272066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A221876.P7411387836335272066

namespace A221876

/-- `A029935(2^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P7411387836335272066.Spec : Prop :=
  ∀ n, P7411387836335272066.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P2675838801568651866

`A348976(2^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A221876.P2675838801568651866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348976 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A221876.P2675838801568651866

namespace A221876

/-- `A348976(2^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P2675838801568651866.Spec : Prop :=
  ∀ n, P2675838801568651866.a n = A221876 (n + 1)

end A221876

/-! ## A221876.P386580316130159365

`A029935(A130321(n))`
-/

namespace A221876.P386580316130159365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A130321 n).toNat

end

end A221876.P386580316130159365

namespace A221876

/-- `A029935(A130321(n))` -/
def P386580316130159365.Spec : Prop :=
  ∀ n, P386580316130159365.a n = A221876 (n + 1)

end A221876

/-!
# A221877: Triangle read by rows: T(n,k) = number of order-preserving or order-reversing full contraction mappings (of an n-chain) with height exactly k.

The programs for A221877, the canonical program `A221877.P9761697283966523475` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221877 has offset 1).

The definition of A221877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221877.P11306071217436308422

`abs((2-char[∑[n]])*A103283(n))`
-/

namespace A221877.P11306071217436308422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A103283 n|

end

end A221877.P11306071217436308422

namespace A221877

/-- `abs((2-char[∑[n]])*A103283(n))` -/
def P11306071217436308422.Spec : Prop :=
  ∀ n, P11306071217436308422.a n = A221877 (n + 1)

end A221877

/-! ## A221877.P10450866472307971714

`(2-char[∑[n]])*A093375(n+1)`
-/

namespace A221877.P10450866472307971714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A093375 (n + 1)

end

end A221877.P10450866472307971714

namespace A221877

/-- `(2-char[∑[n]])*A093375(n+1)` -/
def P10450866472307971714.Spec : Prop :=
  ∀ n, P10450866472307971714.a n = A221877 (n + 1)

end A221877

/-! ## A221877.P5628383959089966471

`(C(comp[∑[n]]-n, 2)-n)*A124927(n)`
-/

namespace A221877.P5628383959089966471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A124927 n

end

end A221877.P5628383959089966471

namespace A221877

/-- `(C(comp[∑[n]]-n, 2)-n)*A124927(n)` -/
def P5628383959089966471.Spec : Prop :=
  ∀ n, P5628383959089966471.a n = A221877 (n + 1)

end A221877

/-! ## A221877.P12342104806057876571

`(2-char[∑[n]])*(C(comp[∑[n]]-n, 2)-n)*A007318(n)`
-/

namespace A221877.P12342104806057876571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A007318 n

end

end A221877.P12342104806057876571

namespace A221877

/-- `(2-char[∑[n]])*(C(comp[∑[n]]-n, 2)-n)*A007318(n)` -/
def P12342104806057876571.Spec : Prop :=
  ∀ n, P12342104806057876571.a n = A221877 (n + 1)

end A221877

/-! ## A221877.P9761697283966523475

`A004736(n+1)*A124927(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A221877

/-- `A004736(n+1)*A124927(n)` -/
def P9761697283966523475.Spec : Prop :=
  ∀ n, P9761697283966523475.a n = A221877 (n + 1)

theorem P9761697283966523475.correct : P9761697283966523475.Spec := by
  intro n
  simp only [A221877, Nat.add_sub_cancel]

end A221877

/-! ## A221877.P6906984816307934505

`(A025581(n)+1)*A124927(n)`
-/

namespace A221877.P6906984816307934505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A124927 n

end

end A221877.P6906984816307934505

namespace A221877

/-- `(A025581(n)+1)*A124927(n)` -/
def P6906984816307934505.Spec : Prop :=
  ∀ n, P6906984816307934505.a n = A221877 (n + 1)

theorem P6906984816307934505.correct : P6906984816307934505.Spec := by
  intro n
  simp only [A221877, Nat.add_sub_cancel, A221877.P6906984816307934505.a, A221877.P9761697283966523475.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A124927, A124927.P15291283991733962265.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A080233, A080233.P15572603627752373411.a, A325191, A325191.P1948114789834443761.a, A010054, A010054.P18347828677204923252.a, A056943, A056943.P2657344456391598982.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A221877

/-! ## A221877.P10008434968070528782

`A007318(n)*A143595(n+1)`
-/

namespace A221877.P10008434968070528782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A143595 (n + 1)

end

end A221877.P10008434968070528782

namespace A221877

/-- `A007318(n)*A143595(n+1)` -/
def P10008434968070528782.Spec : Prop :=
  ∀ n, P10008434968070528782.a n = A221877 (n + 1)

end A221877

/-! ## A221877.P7832292358059561409

`A093375(n+1)*A238303(n)`
-/

namespace A221877.P7832292358059561409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) * A238303 n

end

end A221877.P7832292358059561409

namespace A221877

/-- `A093375(n+1)*A238303(n)` -/
def P7832292358059561409.Spec : Prop :=
  ∀ n, P7832292358059561409.a n = A221877 (n + 1)

end A221877

/-! ## A221877.P13132015404498564203

`A000005(A130321(n))*A124927(n)`
-/

namespace A221877.P13132015404498564203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A124927 n

end

end A221877.P13132015404498564203

namespace A221877

/-- `A000005(A130321(n))*A124927(n)` -/
def P13132015404498564203.Spec : Prop :=
  ∀ n, P13132015404498564203.a n = A221877 (n + 1)

end A221877

/-!
# A221879: Triangle T(n,k) read by rows: Number of order-reversing full contraction mappings (of an n-chain) with 1 fixed point and height exactly k.

The programs for A221879, there is no canonical definition to state claims against.
-/

/-! ## A221879.P5461370660112974152

`(C(comp[∑[n]]-n, 2)-n)*A059259(n)`
-/

namespace A221879.P5461370660112974152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A059259 n

end

end A221879.P5461370660112974152

/-! ## A221879.P1255237366494998143

`abs((C(comp[∑[n]]-n, 2)-n)*A220074(n))`
-/

namespace A221879.P1255237366494998143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A220074 n|

end

end A221879.P1255237366494998143

/-! ## A221879.P16601303469378333324

`A004736(n+1)*A059259(n)`
-/

namespace A221879.P16601303469378333324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A059259 n

end

end A221879.P16601303469378333324

/-! ## A221879.P14601829445012590925

`(A025581(n)+1)*A059259(n)`
-/

namespace A221879.P14601829445012590925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A059259 n

end

end A221879.P14601829445012590925

/-! ## A221879.P5272274244354619892

`A059259(n)*A373214(n+1)`
-/

namespace A221879.P5272274244354619892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 n * A373214 (n + 1)

end

end A221879.P5272274244354619892

/-! ## A221879.P9393184608491001604

`abs(A004736(n+1)*A220074(n))`
-/

namespace A221879.P9393184608491001604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (n + 1) * A220074 n|

end

end A221879.P9393184608491001604

/-! ## A221879.P2317828749689214663

`log2(A090988(n+1))*A059259(n)`
-/

namespace A221879.P2317828749689214663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ) * (A059259 n : ℝ)

end

end A221879.P2317828749689214663

/-! ## A221879.P7117916994441715916

`A005496(A025581(n))*A059259(n)`
-/

namespace A221879.P7117916994441715916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A025581 n).toNat * A059259 n

end

end A221879.P7117916994441715916

/-! ## A221879.P16167366694510455311

`A000005(A130321(n))*A059259(n)`
-/

namespace A221879.P16167366694510455311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A059259 n

end

end A221879.P16167366694510455311

/-! ## A221879.P2220505994372372152

`A000005(A140303(n))*A059259(n)`
-/

namespace A221879.P2220505994372372152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140303 n).toNat * A059259 n

end

end A221879.P2220505994372372152

/-!
# A221880: Number of order-preserving or order-reversing full contraction mappings (of an n-chain) with exactly 1 fixed point.

The programs for A221880, the canonical program `A221880.P8957834746733462325` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221880 has offset 1).

The definition of A221880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221880.P8957834746733462325

`A059570(n+1)+∑[A045891(n)-1]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A221880

/-- `A059570(n+1)+∑[A045891(n)-1]` -/
def P8957834746733462325.Spec : Prop :=
  ∀ n, P8957834746733462325.a n = A221880 (n + 1)

theorem P8957834746733462325.correct : P8957834746733462325.Spec := by
  intro n
  simp only [A221880, Nat.add_sub_cancel]

end A221880

/-! ## A221880.P6996582766958975498

`A059570(n+1)+A045623(n)-(n+1)`
-/

namespace A221880.P6996582766958975498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) + (A045623 n - (n + 1 : ℤ))

end

end A221880.P6996582766958975498

namespace A221880

/-- `A059570(n+1)+A045623(n)-(n+1)` -/
def P6996582766958975498.Spec : Prop :=
  ∀ n, P6996582766958975498.a n = A221880 (n + 1)

end A221880

/-! ## A221880.P3602273694208673953

`A045623(n)+∑[abs(A084219(n))]-(n+1)`
-/

namespace A221880.P3602273694208673953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084219 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A221880.P3602273694208673953

namespace A221880

/-- `A045623(n)+∑[abs(A084219(n))]-(n+1)` -/
def P3602273694208673953.Spec : Prop :=
  ∀ n, P3602273694208673953.a n = A221880 (n + 1)

end A221880

/-! ## A221880.P14909560395810864764

`A045623(n)+A140960(n)+2^n-(n+1)`
-/

namespace A221880.P14909560395810864764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (A140960 n + (2 ^ n : ℤ)) - (n + 1 : ℤ)

end

end A221880.P14909560395810864764

namespace A221880

/-- `A045623(n)+A140960(n)+2^n-(n+1)` -/
def P14909560395810864764.Spec : Prop :=
  ∀ n, P14909560395810864764.a n = A221880 (n + 1)

end A221880

/-! ## A221880.P8816464679311075054

`A001478(n+1)+A059570(n+1)+A045623(n)`
-/

namespace A221880.P8816464679311075054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A059570 (n + 1) + A045623 n)

end

end A221880.P8816464679311075054

namespace A221880

/-- `A001478(n+1)+A059570(n+1)+A045623(n)` -/
def P8816464679311075054.Spec : Prop :=
  ∀ n, P8816464679311075054.a n = A221880 (n + 1)

end A221880

/-! ## A221880.P11077192223403549485

`A045623(n)+A172481(n)+A140960(n)/2-(n+1)`
-/

namespace A221880.P11077192223403549485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045623 n : ℚ) + ((A172481 n : ℚ) + (A140960 n : ℚ) / 2) - (n + 1 : ℚ)

end

end A221880.P11077192223403549485

namespace A221880

/-- `A045623(n)+A172481(n)+A140960(n)/2-(n+1)` -/
def P11077192223403549485.Spec : Prop :=
  ∀ n, P11077192223403549485.a n = (A221880 (n + 1) : ℚ)

end A221880

/-! ## A221880.P11363667941141167976

`A045623(n)+A001045(n+1)+A140960(n)+A001045(n)-(n+1)`
-/

namespace A221880.P11363667941141167976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (A001045 (n + 1) + (A140960 n + A001045 n)) - (n + 1 : ℤ)

end

end A221880.P11363667941141167976

namespace A221880

/-- `A045623(n)+A001045(n+1)+A140960(n)+A001045(n)-(n+1)` -/
def P11363667941141167976.Spec : Prop :=
  ∀ n, P11363667941141167976.a n = A221880 (n + 1)

end A221880

/-!
# A221881: Number of order-preserving or order-reversing full contraction mappings (of an n-chain) with (right) waist exactly k.

The programs for A221881, the canonical program `A221881.P17320403403418010194` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221881 has offset 1).

The definition of A221881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221881.P17320403403418010194

`2*A008949(n)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A221881

/-- `2*A008949(n)-1` -/
def P17320403403418010194.Spec : Prop :=
  ∀ n, P17320403403418010194.a n = A221881 (n + 1)

theorem P17320403403418010194.correct : P17320403403418010194.Spec := by
  intro n
  simp only [A221881, Nat.add_sub_cancel]

end A221881

/-! ## A221881.P6924723749410057998

`A054143(n)+A014473(n)`
-/

namespace A221881.P6924723749410057998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + A014473 n

end

end A221881.P6924723749410057998

namespace A221881

/-- `A054143(n)+A014473(n)` -/
def P6924723749410057998.Spec : Prop :=
  ∀ n, P6924723749410057998.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P17522940292642102962

`A007318(n)+A054143(n)-1`
-/

namespace A221881.P17522940292642102962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A054143 n - 1)

end

end A221881.P17522940292642102962

namespace A221881

/-- `A007318(n)+A054143(n)-1` -/
def P17522940292642102962.Spec : Prop :=
  ∀ n, P17522940292642102962.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P12414904194008597872

`A054143(n)+abs(A117440(n))-1`
-/

namespace A221881.P12414904194008597872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + (|A117440 n| - 1)

end

end A221881.P12414904194008597872

namespace A221881

/-- `A054143(n)+abs(A117440(n))-1` -/
def P12414904194008597872.Spec : Prop :=
  ∀ n, P12414904194008597872.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P16967454544921966845

`A054143(n)+Δ[A102363(n)]-1`
-/

namespace A221881.P16967454544921966845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + (f1 (n + 1) - f1 n - 1)

end

end A221881.P16967454544921966845

namespace A221881

/-- `A054143(n)+Δ[A102363(n)]-1` -/
def P16967454544921966845.Spec : Prop :=
  ∀ n, P16967454544921966845.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P7179591505266531233

`A007318(n)+∑[A007318(n)]-A055248(n)`
-/

namespace A221881.P7179591505266531233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (∑ j ∈ Finset.range (n + 1), f1 j - A055248 n)

end

end A221881.P7179591505266531233

namespace A221881

/-- `A007318(n)+∑[A007318(n)]-A055248(n)` -/
def P7179591505266531233.Spec : Prop :=
  ∀ n, P7179591505266531233.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P8295941194616578655

`A163866(n+1)+A007318(n)-A055248(n)`
-/

namespace A221881.P8295941194616578655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163866 (n + 1) + (A007318 n - A055248 n)

end

end A221881.P8295941194616578655

namespace A221881

/-- `A163866(n+1)+A007318(n)-A055248(n)` -/
def P8295941194616578655.Spec : Prop :=
  ∀ n, P8295941194616578655.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P44215698415383122

`A163866(n+2)-(A259525(n)+A055248(n))`
-/

namespace A221881.P44215698415383122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163866 (n + 2) - (A259525 n + A055248 n)

end

end A221881.P44215698415383122

namespace A221881

/-- `A163866(n+2)-(A259525(n)+A055248(n))` -/
def P44215698415383122.Spec : Prop :=
  ∀ n, P44215698415383122.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P5141066502254607062

`2*A055248(A061579(n))-1`
-/

namespace A221881.P5141066502254607062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055248 (A061579 n).toNat - 1

end

end A221881.P5141066502254607062

namespace A221881

/-- `2*A055248(A061579(n))-1` -/
def P5141066502254607062.Spec : Prop :=
  ∀ n, P5141066502254607062.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P4738847155001418928

`2*A193820(A007401(n+1))-1`
-/

namespace A221881.P4738847155001418928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193820 (A007401 (n + 1)).toNat - 1

end

end A221881.P4738847155001418928

namespace A221881

/-- `2*A193820(A007401(n+1))-1` -/
def P4738847155001418928.Spec : Prop :=
  ∀ n, P4738847155001418928.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P4663281920580257062

`2*A193820(A181133(n+1))-1`
-/

namespace A221881.P4663281920580257062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193820 (A181133 (n + 1)).toNat - 1

end

end A221881.P4663281920580257062

namespace A221881

/-- `2*A193820(A181133(n+1))-1` -/
def P4663281920580257062.Spec : Prop :=
  ∀ n, P4663281920580257062.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P2607545679933021848

`2*A052509(A245300(n))-1`
-/

namespace A221881.P2607545679933021848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052509 (A245300 n).toNat - 1

end

end A221881.P2607545679933021848

namespace A221881

/-- `2*A052509(A245300(n))-1` -/
def P2607545679933021848.Spec : Prop :=
  ∀ n, P2607545679933021848.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P18097180554073914671

`A131247(A245300(n))`
-/

namespace A221881.P18097180554073914671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131247 (A245300 n).toNat

end

end A221881.P18097180554073914671

namespace A221881

/-- `A131247(A245300(n))` -/
def P18097180554073914671.Spec : Prop :=
  ∀ n, P18097180554073914671.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P3494258228935493417

`A000027(A008949(n)+A008949(n)-1)`
-/

namespace A221881.P3494258228935493417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008949 n + (A008949 n - 1)).toNat

end

end A221881.P3494258228935493417

namespace A221881

/-- `A000027(A008949(n)+A008949(n)-1)` -/
def P3494258228935493417.Spec : Prop :=
  ∀ n, P3494258228935493417.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P9053816000476916104

`A000027(A008949(n)-(1-A008949(n)))`
-/

namespace A221881.P9053816000476916104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008949 n - (1 - A008949 n)).toNat

end

end A221881.P9053816000476916104

namespace A221881

/-- `A000027(A008949(n)-(1-A008949(n)))` -/
def P9053816000476916104.Spec : Prop :=
  ∀ n, P9053816000476916104.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P6540966109245776997

`A006257(∑[A007318(n)])`
-/

namespace A221881.P6540966109245776997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221881.P6540966109245776997

namespace A221881

/-- `A006257(∑[A007318(n)])` -/
def P6540966109245776997.Spec : Prop :=
  ∀ n, P6540966109245776997.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P9188227081377544742

`A006257(A163866(n+1))`
-/

namespace A221881.P9188227081377544742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A163866 (n + 1)).toNat

end

end A221881.P9188227081377544742

namespace A221881

/-- `A006257(A163866(n+1))` -/
def P9188227081377544742.Spec : Prop :=
  ∀ n, P9188227081377544742.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P11128110488632262712

`A006257(∑[ceil(A134059(n)/3)])`
-/

namespace A221881.P11128110488632262712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221881.P11128110488632262712

namespace A221881

/-- `A006257(∑[ceil(A134059(n)/3)])` -/
def P11128110488632262712.Spec : Prop :=
  ∀ n, P11128110488632262712.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P10163057536404091540

`A006257(∑[ceil(A134060(n)/3)])`
-/

namespace A221881.P10163057536404091540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221881.P10163057536404091540

namespace A221881

/-- `A006257(∑[ceil(A134060(n)/3)])` -/
def P10163057536404091540.Spec : Prop :=
  ∀ n, P10163057536404091540.a n = A221881 (n + 1)

end A221881

/-! ## A221881.P3116580760182956905

`A006257(∑[ceil(A135087(n)/4)])`
-/

namespace A221881.P3116580760182956905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221881.P3116580760182956905

namespace A221881

/-- `A006257(∑[ceil(A135087(n)/4)])` -/
def P3116580760182956905.Spec : Prop :=
  ∀ n, P3116580760182956905.a n = A221881 (n + 1)

end A221881

/-!
# A221882: Number of order-preserving or order-reversing full contraction mappings of an n-chain.

The programs for A221882, the canonical program `A221882.P4495400180664998304` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221882 has offset 1).

The definition of A221882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221882.P4495400180664998304

`(n+2)*2^n-(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221882

/-- `(n+2)*2^n-(n+1)` -/
def P4495400180664998304.Spec : Prop :=
  ∀ n, P4495400180664998304.a n = A221882 (n + 1)

theorem P4495400180664998304.correct : P4495400180664998304.Spec := by
  intro n
  simp only [A221882, Nat.add_sub_cancel]

end A221882

/-! ## A221882.P2826232599231407763

`xor(n, ∑[ogf((1-2x^2)/(1-4x+4x^2))])`
-/

namespace A221882.P2826232599231407763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221882.P2826232599231407763

namespace A221882

/-- `xor(n, ∑[ogf((1-2x^2)/(1-4x+4x^2))])` -/
def P2826232599231407763.Spec : Prop :=
  ∀ n, P2826232599231407763.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P13832350305742058702

`∑[∑[ogf((1-2x+2x^2-2x^3)/(1-4x+4x^2))]]`
-/

namespace A221882.P13832350305742058702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -2] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221882.P13832350305742058702

namespace A221882

/-- `∑[∑[ogf((1-2x+2x^2-2x^3)/(1-4x+4x^2))]]` -/
def P13832350305742058702.Spec : Prop :=
  ∀ n, P13832350305742058702.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P1803063700158572268

`record[n*2^(n-2)-(n-1)]`
-/

namespace A221882.P1803063700158572268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221882.P1803063700158572268

namespace A221882

/-- `record[n*2^(n-2)-(n-1)]` -/
def P1803063700158572268.Spec : Prop :=
  ∀ n, P1803063700158572268.a n = (A221882 (n + 1) : ℚ)

end A221882

/-! ## A221882.P17863049670333225084

`∑[∑[A131352(n)]]`
-/

namespace A221882.P17863049670333225084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221882.P17863049670333225084

namespace A221882

/-- `∑[∑[A131352(n)]]` -/
def P17863049670333225084.Spec : Prop :=
  ∀ n, P17863049670333225084.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P6972665822927497591

`∑[A134311(n)+n]`
-/

namespace A221882.P6972665822927497591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134311 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221882.P6972665822927497591

namespace A221882

/-- `∑[A134311(n)+n]` -/
def P6972665822927497591.Spec : Prop :=
  ∀ n, P6972665822927497591.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P2932247477954411757

`xor(n, A099035(n+1))`
-/

namespace A221882.P2932247477954411757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A099035 (n + 1))

end

end A221882.P2932247477954411757

namespace A221882

/-- `xor(n, A099035(n+1))` -/
def P2932247477954411757.Spec : Prop :=
  ∀ n, P2932247477954411757.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P3726116162371126402

`∑[2*A045623(n)-1]`
-/

namespace A221882.P3726116162371126402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045623 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221882.P3726116162371126402

namespace A221882

/-- `∑[2*A045623(n)-1]` -/
def P3726116162371126402.Spec : Prop :=
  ∀ n, P3726116162371126402.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P9000953164568558929

`∑[A262258(2*(n+1))-1]`
-/

namespace A221882.P9000953164568558929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262258 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221882.P9000953164568558929

namespace A221882

/-- `∑[A262258(2*(n+1))-1]` -/
def P9000953164568558929.Spec : Prop :=
  ∀ n, P9000953164568558929.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P10290455470816856040

`∑[A360951(n+1)+n+1]`
-/

namespace A221882.P10290455470816856040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360951 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221882.P10290455470816856040

namespace A221882

/-- `∑[A360951(n+1)+n+1]` -/
def P10290455470816856040.Spec : Prop :=
  ∀ n, P10290455470816856040.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P12988859543786058042

`abs((n+2)*(A000079(n)-1)+1)`
-/

namespace A221882.P12988859543786058042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * (A000079 n - 1) + 1|

end

end A221882.P12988859543786058042

namespace A221882

/-- `abs((n+2)*(A000079(n)-1)+1)` -/
def P12988859543786058042.Spec : Prop :=
  ∀ n, P12988859543786058042.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P15609314204046344557

`abs((A000225(n)+1)*(n+2)-1-n)`
-/

namespace A221882.P15609314204046344557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000225 n + 1) * (n + 2 : ℤ) - 1 - (n : ℤ)|

end

end A221882.P15609314204046344557

namespace A221882

/-- `abs((A000225(n)+1)*(n+2)-1-n)` -/
def P15609314204046344557.Spec : Prop :=
  ∀ n, P15609314204046344557.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P4263159107443593086

`∑[A001792(n)+A011782(n)-1]`
-/

namespace A221882.P4263159107443593086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A011782 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221882.P4263159107443593086

namespace A221882

/-- `∑[A001792(n)+A011782(n)-1]` -/
def P4263159107443593086.Spec : Prop :=
  ∀ n, P4263159107443593086.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P12643517613177598478

`and(A001478(n+1), A099035(n+1))`
-/

namespace A221882.P12643517613177598478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001478 (n + 1)) (A099035 (n + 1))

end

end A221882.P12643517613177598478

namespace A221882

/-- `and(A001478(n+1), A099035(n+1))` -/
def P12643517613177598478.Spec : Prop :=
  ∀ n, P12643517613177598478.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P10632917906459163107

`∑[A000225(n)+(n+1)*A011782(n)]`
-/

namespace A221882.P10632917906459163107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (n + 1 : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221882.P10632917906459163107

namespace A221882

/-- `∑[A000225(n)+(n+1)*A011782(n)]` -/
def P10632917906459163107.Spec : Prop :=
  ∀ n, P10632917906459163107.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P15307459181631426098

`Δ[A036289(n)-∑[n]]`
-/

namespace A221882.P15307459181631426098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221882.P15307459181631426098

namespace A221882

/-- `Δ[A036289(n)-∑[n]]` -/
def P15307459181631426098.Spec : Prop :=
  ∀ n, P15307459181631426098.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P16979204604518216813

`round(A213569(n+1)/2)`
-/

namespace A221882.P16979204604518216813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A213569 (n + 1) : ℚ) / 2)

end

end A221882.P16979204604518216813

namespace A221882

/-- `round(A213569(n+1)/2)` -/
def P16979204604518216813.Spec : Prop :=
  ∀ n, P16979204604518216813.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P6177729486339039074

`(A058877(n+2)-n)/2`
-/

namespace A221882.P6177729486339039074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058877 (n + 2) - (n : ℤ) : ℚ) / 2

end

end A221882.P6177729486339039074

namespace A221882

/-- `(A058877(n+2)-n)/2` -/
def P6177729486339039074.Spec : Prop :=
  ∀ n, P6177729486339039074.a n = (A221882 (n + 1) : ℚ)

theorem P6177729486339039074.correct : P6177729486339039074.Spec := by
  intro n
  simp only [A221882, Nat.add_sub_cancel, A221882.P6177729486339039074.a, A221882.P4495400180664998304.a, A058877, A058877.P1227274421615768529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A221882

/-! ## A221882.P13416226215276200723

`Δ[2*A001787(n)-∑[n]]`
-/

namespace A221882.P13416226215276200723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001787 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221882.P13416226215276200723

namespace A221882

/-- `Δ[2*A001787(n)-∑[n]]` -/
def P13416226215276200723.Spec : Prop :=
  ∀ n, P13416226215276200723.a n = A221882 (n + 1)

end A221882

/-! ## A221882.P8467651617744675436

`(A048493(n+1)-(n+1))/2`
-/

namespace A221882.P8467651617744675436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048493 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A221882.P8467651617744675436

namespace A221882

/-- `(A048493(n+1)-(n+1))/2` -/
def P8467651617744675436.Spec : Prop :=
  ∀ n, P8467651617744675436.a n = (A221882 (n + 1) : ℚ)

theorem P8467651617744675436.correct : P8467651617744675436.Spec := by
  intro n
  simp only [A221882, Nat.add_sub_cancel, A221882.P8467651617744675436.a, A221882.P4495400180664998304.a, A048493, A048493.P18254336596332643479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A221882

/-!
# A221883: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221883, there is no canonical definition to state claims against.
-/

/-! ## A221883.P11530304350486352412

`A221886(2+∑[n+1])`
-/

namespace A221883.P11530304350486352412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221883.P11530304350486352412

/-! ## A221883.P2400495583490678084

`record[A010054(n)*A221886(n+2)]`
-/

namespace A221883.P2400495583490678084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221886 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221883.P2400495583490678084

/-! ## A221883.P16590419285453786797

`record[A221886(A117142(n+3))]`
-/

namespace A221883.P16590419285453786797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (A117142 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221883.P16590419285453786797

/-! ## A221883.P12288527590306781779

`record[A221886(lt[A221886(n+1), n²])]`
-/

namespace A221883.P12288527590306781779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221883.P12288527590306781779

/-!
# A221884: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221884, there is no canonical definition to state claims against.
-/

/-! ## A221884.P15041385409561038246

`A221886(∑[n+2]+4)`
-/

namespace A221884.P15041385409561038246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221884.P15041385409561038246

/-! ## A221884.P2179907572843629910

`and(-1, A221886(A167614(n+1)))`
-/

namespace A221884.P2179907572843629910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221886 (A167614 (n + 1)).toNat)

end

end A221884.P2179907572843629910

/-! ## A221884.P11777042386499641758

`A221886(A167614(n+1))+A025438(n)`
-/

namespace A221884.P11777042386499641758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (A167614 (n + 1)).toNat + A025438 n

end

end A221884.P11777042386499641758

/-! ## A221884.P14489209789402060882

`A221886(A167614(n+1))+A025439(n)`
-/

namespace A221884.P14489209789402060882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (A167614 (n + 1)).toNat + A025439 n

end

end A221884.P14489209789402060882

/-!
# A221885: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221885, there is no canonical definition to state claims against.
-/

/-! ## A221885.P749785883079820102

`A221886(A141214(n)+7)`
-/

namespace A221885.P749785883079820102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (A141214 n + 7).toNat

end

end A221885.P749785883079820102

/-! ## A221885.P1022856298441820151

`A221886(A052905(n)+9)`
-/

namespace A221885.P1022856298441820151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (A052905 n + 9).toNat

end

end A221885.P1022856298441820151

/-! ## A221885.P16691303783200675999

`A221886(A055999(n)+10)`
-/

namespace A221885.P16691303783200675999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (A055999 n + 10).toNat

end

end A221885.P16691303783200675999

/-!
# A221887: Number of nX3 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221887, there is no canonical definition to state claims against.
-/

/-! ## A221887.P15334975730807992947

`A221890(∑[n+3]+1)`
-/

namespace A221887.P15334975730807992947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221887.P15334975730807992947

/-!
# A221888: Number of nX4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221888, there is no canonical definition to state claims against.
-/

/-! ## A221888.P5474967656763426210

`A221890(A141214(n+1))`
-/

namespace A221888.P5474967656763426210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (A141214 (n + 1)).toNat

end

end A221888.P5474967656763426210

/-! ## A221888.P11270428168180072522

`A221890(A027379(n+2))`
-/

namespace A221888.P11270428168180072522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (A027379 (n + 2)).toNat

end

end A221888.P11270428168180072522

/-! ## A221888.P16922338613131779549

`A221890(A055998(n+2))`
-/

namespace A221888.P16922338613131779549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (A055998 (n + 2)).toNat

end

end A221888.P16922338613131779549

/-!
# A221889: Number of nX5 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221889, there is no canonical definition to state claims against.
-/

/-! ## A221889.P4745274269764824832

`A221890(Δ[A264443(n)])`
-/

namespace A221889.P4745274269764824832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (f1 (n + 1) - f1 n).toNat

end

end A221889.P4745274269764824832

/-! ## A221889.P3933785476735827133

`A221890(A046691(n+3))`
-/

namespace A221889.P3933785476735827133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (A046691 (n + 3)).toNat

end

end A221889.P3933785476735827133

/-!
# A221890: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221890, there is no canonical definition to state claims against.
-/

/-! ## A221890.P7045810310178666580

`A359887(A273702(n))`
-/

namespace A221890.P7045810310178666580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359887 (A273702 n).toNat

end

end A221890.P7045810310178666580

/-! ## A221890.P6418438635190349603

`A262869(A271423(n)!)`
-/

namespace A221890.P6418438635190349603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (Nat.factorial (A271423 n).toNat)

end

end A221890.P6418438635190349603

/-! ## A221890.P5580445982844889142

`A075102(A221062(n+1))`
-/

namespace A221890.P5580445982844889142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075102 (A221062 (n + 1)).toNat

end

end A221890.P5580445982844889142

/-! ## A221890.P12923587243412425343

`A075102(A221660(n+1))`
-/

namespace A221890.P12923587243412425343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075102 (A221660 (n + 1)).toNat

end

end A221890.P12923587243412425343

/-! ## A221890.P18303816013763649488

`A060411(A316623(n+1))`
-/

namespace A221890.P18303816013763649488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060411 (A316623 (n + 1)).toNat

end

end A221890.P18303816013763649488

/-!
# A221891: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221891, the canonical program `A221891.P18268150366138025223` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221891 has offset 1).

The definition of A221891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221891.P18268150366138025223

`5*a(n-1)-2*a(n-2)+5*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=37`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A221891

/-- `5*a(n-1)-2*a(n-2)+5*a(n-3)-3*a(n-4)` -/
def P18268150366138025223.Spec : Prop :=
  ∀ n, P18268150366138025223.a n = A221891 (n + 1)

theorem P18268150366138025223.correct : P18268150366138025223.Spec := by
  intro n
  simp only [A221891, Nat.add_sub_cancel]

end A221891

/-! ## A221891.P4458407447674853680

`A221890(∑[n+1]+2)`
-/

namespace A221891.P4458407447674853680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221891.P4458407447674853680

namespace A221891

/-- `A221890(∑[n+1]+2)` -/
def P4458407447674853680.Spec : Prop :=
  ∀ n, P4458407447674853680.a n = A221891 (n + 1)

end A221891

/-!
# A221892: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221892, there is no canonical definition to state claims against.
-/

/-! ## A221892.P18080972977243251392

`A221890(∑[n+2]+4)`
-/

namespace A221892.P18080972977243251392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221892.P18080972977243251392

/-! ## A221892.P11116862413167465645

`A221890(A167614(n+1))+char[9]`
-/

namespace A221892.P11116862413167465645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221892.P11116862413167465645

/-! ## A221892.P13550967467156901482

`A243835(n)+A221890(A167614(n+1))`
-/

namespace A221892.P13550967467156901482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243835 n + A221890 (A167614 (n + 1)).toNat

end

end A221892.P13550967467156901482

/-! ## A221892.P808761604736601181

`A221890(A167614(n+1))%A009973(n)`
-/

namespace A221892.P808761604736601181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221890 (A167614 (n + 1)).toNat) (A009973 n)

end

end A221892.P808761604736601181

/-! ## A221892.P12968955160060426218

`A294929(n+1)+A221890(A167614(n+1))`
-/

namespace A221892.P12968955160060426218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (n + 1) + A221890 (A167614 (n + 1)).toNat

end

end A221892.P12968955160060426218

/-!
# A221893: Number of 4Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221893, there is no canonical definition to state claims against.
-/

/-! ## A221893.P17451156959455757659

`A221890(A141214(n)+7)`
-/

namespace A221893.P17451156959455757659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (A141214 n + 7).toNat

end

end A221893.P17451156959455757659

/-! ## A221893.P11219371519016417813

`A221890(A052905(n)+9)`
-/

namespace A221893.P11219371519016417813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (A052905 n + 9).toNat

end

end A221893.P11219371519016417813

/-! ## A221893.P6401493509705591649

`A221890(A055999(n)+10)`
-/

namespace A221893.P6401493509705591649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (A055999 n + 10).toNat

end

end A221893.P6401493509705591649

/-! ## A221893.P7252792653637720430

`A221890(eq[5, A066657(n)])`
-/

namespace A221893.P7252792653637720430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221893.P7252792653637720430

/-!
# A221894: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221894, there is no canonical definition to state claims against.
-/

/-! ## A221894.P18372445355771823748

`A221898(∑[n+2])`
-/

namespace A221894.P18372445355771823748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221894.P18372445355771823748

/-! ## A221894.P3295910230966840103

`record[A221898(A117142(n+2))]`
-/

namespace A221894.P3295910230966840103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221894.P3295910230966840103

/-! ## A221894.P3443803486739770637

`record[A221898(lt[A221886(n+1), n²])]`
-/

namespace A221894.P3443803486739770637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221886 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221894.P3443803486739770637

/-! ## A221894.P14360780338937690686

`record[A221898(lt[A221898(n+1), n²])]`
-/

namespace A221894.P14360780338937690686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221894.P14360780338937690686

/-!
# A221895: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221895, there is no canonical definition to state claims against.
-/

/-! ## A221895.P8198256021235621714

`A221898(∑[n+3]+1)`
-/

namespace A221895.P8198256021235621714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221895.P8198256021235621714

/-! ## A221895.P12877939180672986964

`A033999(n)²*A221898(Δ[A008778(n)])`
-/

namespace A221895.P12877939180672986964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A221898 (f1 (n + 1) - f1 n).toNat

end

end A221895.P12877939180672986964

/-! ## A221895.P1874196742605568895

`A221898(A347633(3*n+4))-A221912(n)`
-/

namespace A221895.P1874196742605568895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (A347633 (3 * n + 4)).toNat - A221912 n

end

end A221895.P1874196742605568895

/-!
# A221896: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221896, there is no canonical definition to state claims against.
-/

/-! ## A221896.P17496380318408201858

`A221898(∑[n+4]+3)`
-/

namespace A221896.P17496380318408201858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221896.P17496380318408201858

/-!
# A221897: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221897, there is no canonical definition to state claims against.
-/

/-! ## A221897.P14797248286103321807

`A221898(Δ[A264443(n)])`
-/

namespace A221897.P14797248286103321807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (f1 (n + 1) - f1 n).toNat

end

end A221897.P14797248286103321807

/-!
# A221899: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221899, there is no canonical definition to state claims against.
-/

/-! ## A221899.P12969587833188180582

`A221898(∑[n+1]+2)`
-/

namespace A221899.P12969587833188180582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221898 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221899.P12969587833188180582

/-! ## A221899.P7352594646201361060

`record[A103452(n)*A221898(n+3)]`
-/

namespace A221899.P7352594646201361060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A221898 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221899.P7352594646201361060

/-! ## A221899.P16292879212878346428

`record[A221898(n+3)/A188403(n+1)]`
-/

namespace A221899.P16292879212878346428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221898 (n + 3) : ℚ) / (A188403 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221899.P16292879212878346428

