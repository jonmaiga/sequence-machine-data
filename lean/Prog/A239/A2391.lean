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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B008.C000
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

/-!
# A239100: Solution to the problem of finding the number of comparisons needed for optimal merging of 3 elements with n elements.

The programs for A239100, there is no canonical definition to state claims against.
-/

/-! ## A239100.P3393534651840072130

`∑[abs(Δ[A123946(n)])]`
-/

namespace A239100.P3393534651840072130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239100.P3393534651840072130

/-! ## A239100.P776795329188624032

`A123946(n+1)-1`
-/

namespace A239100.P776795329188624032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 (n + 1) - 1

end

end A239100.P776795329188624032

/-! ## A239100.P315215166244184958

`∑[Δ[A123946(n)]*A054977(n)]`
-/

namespace A239100.P315215166244184958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239100.P315215166244184958

/-! ## A239100.P15483469156381566438

`∑[Δ[A123946(n)]*A057427(n)]`
-/

namespace A239100.P15483469156381566438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239100.P15483469156381566438

/-! ## A239100.P7903828082715436523

`∑[Δ[A123946(n)]+A008683(4*(n+1))]`
-/

namespace A239100.P7903828082715436523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239100.P7903828082715436523

/-! ## A239100.P4194848764734601995

`∑[A014963(4*n+2)*Δ[A123946(n)]]`
-/

namespace A239100.P4194848764734601995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239100.P4194848764734601995

/-! ## A239100.P8295813752759492085

`∑[A000040(n+1)%2*Δ[A123946(n)]]`
-/

namespace A239100.P8295813752759492085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239100.P8295813752759492085

/-! ## A239100.P10112080206658294038

`∑[Δ[A123946(n)]%A000051(n)]`
-/

namespace A239100.P10112080206658294038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239100.P10112080206658294038

/-!
# A239101: Riordan array read by rows, corresponding to array in A180562.

The programs for A239101, there is no canonical definition to state claims against.
-/

/-! ## A239101.P10552044550073022384

`(char[∑[n+1]]+1)*A204851(n)`
-/

namespace A239101.P10552044550073022384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A204851 n

end

end A239101.P10552044550073022384

/-! ## A239101.P14079059060032540375

`A290740(A113340(n+1))+A182631(A081114(n))`
-/

namespace A239101.P14079059060032540375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290740 (A113340 (n + 1)).toNat + A182631 (A081114 n).toNat

end

end A239101.P14079059060032540375

/-! ## A239101.P3363311691262500527

`A239144(lt[A155585(n), A131618(n+1)])`
-/

namespace A239101.P3363311691262500527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239101.P3363311691262500527

/-! ## A239101.P11234293459442749772

`A239144(lt[A131618(n+1), A268904(n+1)])`
-/

namespace A239101.P11234293459442749772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239101.P11234293459442749772

/-!
# A239102: Riordan array read by rows, corresponding to g.f. (1+x*y^3)/((1-x-y)*(1+x*y^3)+x*y^4).

The programs for A239102, there is no canonical definition to state claims against.
-/

/-! ## A239102.P15846197583386355315

`A364368(A292565(n+1))`
-/

namespace A239102.P15846197583386355315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364368 (A292565 (n + 1)).toNat

end

end A239102.P15846197583386355315

/-! ## A239102.P6795520168341367096

`A092392(n)-A058348(A126075(n))`
-/

namespace A239102.P6795520168341367096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A058348 (A126075 n).toNat

end

end A239102.P6795520168341367096

/-! ## A239102.P9422016250317664491

`A246971(n)-A058348(A126075(n))`
-/

namespace A239102.P9422016250317664491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246971 n - A058348 (A126075 n).toNat

end

end A239102.P9422016250317664491

/-! ## A239102.P8900112985402619828

`A092392(n)-A285007(A110616(n))`
-/

namespace A239102.P8900112985402619828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n - A285007 (A110616 n).toNat

end

end A239102.P8900112985402619828

/-! ## A239102.P2352443044364836210

`A246971(n)-A285007(A110616(n))`
-/

namespace A239102.P2352443044364836210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246971 n - A285007 (A110616 n).toNat

end

end A239102.P2352443044364836210

/-!
# A239103: Triangular array read by rows, arising from enumeration of binary words containing n 0's and k 1's that avoid the pattern 1011101.

The programs for A239103, there is no canonical definition to state claims against.
-/

/-! ## A239103.P4519083795513981371

`A246971(A259481(∑[n]))`
-/

namespace A239103.P4519083795513981371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246971 (A259481 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A239103.P4519083795513981371

/-! ## A239103.P16218930499025123488

`A246971(n)%A001215(n+5)`
-/

namespace A239103.P16218930499025123488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246971 n) (A001215 (n + 5))

end

end A239103.P16218930499025123488

/-! ## A239103.P9045981447690612958

`A246971(n)+A025469(A006927(n))`
-/

namespace A239103.P9045981447690612958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246971 n + A025469 (A006927 n).toNat

end

end A239103.P9045981447690612958

/-! ## A239103.P16611112164184822975

`A246971(n)+A083928(A000695(n))`
-/

namespace A239103.P16611112164184822975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246971 n + A083928 (A000695 n).toNat

end

end A239103.P16611112164184822975

/-! ## A239103.P148422115947352502

`A285007(A038207(n))+A246971(n)`
-/

namespace A239103.P148422115947352502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A038207 n).toNat + A246971 n

end

end A239103.P148422115947352502

/-!
# A239104: Coefficients of generating function related to Riordan array in A168151.

The programs for A239104, there is no canonical definition to state claims against.
-/

/-! ## A239104.P4922535362055642672

`2-∑[∑[A265941(n+1)]]`
-/

namespace A239104.P4922535362055642672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265941 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239104.P4922535362055642672

/-!
# A239106: Ordered trees with branches of length at most 3.

The programs for A239106, there is no canonical definition to state claims against.
-/

/-! ## A239106.P16901584238514952939

`A247971(A052890(n))`
-/

namespace A239106.P16901584238514952939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A052890 n).toNat

end

end A239106.P16901584238514952939

/-! ## A239106.P2872485098971077137

`A173022(A323261(n))`
-/

namespace A239106.P2872485098971077137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173022 (A323261 n).toNat

end

end A239106.P2872485098971077137

/-! ## A239106.P1300899195823008762

`A141100(A124302(n))+A125094(n)`
-/

namespace A239106.P1300899195823008762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (A124302 n).toNat + A125094 n

end

end A239106.P1300899195823008762

/-!
# A239107: Number of hybrid 4-ary trees with n internal nodes.

The programs for A239107, there is no canonical definition to state claims against.
-/

/-! ## A239107.P10710399792817788242

`A245049(∑[n+3]+n+3)`
-/

namespace A239107.P10710399792817788242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A239107.P10710399792817788242

/-! ## A239107.P7164435400399748572

`record[A245049(abs(A046691(n)))]`
-/

namespace A239107.P7164435400399748572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239107.P7164435400399748572

/-! ## A239107.P15087304244479560320

`record[A245049(A027379(n)-1)]`
-/

namespace A239107.P15087304244479560320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239107.P15087304244479560320

/-! ## A239107.P13539894157896421766

`record[A245049(lt[A011274(n+4), 5])]`
-/

namespace A239107.P13539894157896421766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011274 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239107.P13539894157896421766

/-!
# A239108: Number of hybrid 5-ary trees with n internal nodes.

The programs for A239108, there is no canonical definition to state claims against.
-/

/-! ## A239108.P9640680673542315329

`A245049(A052905(n+2))`
-/

namespace A239108.P9640680673542315329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A052905 (n + 2)).toNat

end

end A239108.P9640680673542315329

/-! ## A239108.P10434151256390310858

`A245049(eq[4, A025581(n)])`
-/

namespace A239108.P10434151256390310858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239108.P10434151256390310858

/-! ## A239108.P10694767592605938044

`A245049(A155212(n+1)+3)`
-/

namespace A239108.P10694767592605938044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A155212 (n + 1) + 3).toNat

end

end A239108.P10694767592605938044

/-! ## A239108.P8351728251310210599

`A245049(A056000(n+1)+5)`
-/

namespace A239108.P8351728251310210599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A056000 (n + 1) + 5).toNat

end

end A239108.P8351728251310210599

/-! ## A239108.P17023342852961502141

`A245049(A020739(n)+Δ[A008778(n)])`
-/

namespace A239108.P17023342852961502141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A020739 n + (f1 (n + 1) - f1 n)).toNat

end

end A239108.P17023342852961502141

/-!
# A239109: Number of hybrid 6-ary trees with n internal nodes.

The programs for A239109, there is no canonical definition to state claims against.
-/

/-! ## A239109.P13038285584880241211

`A245049(A055999(n+3))`
-/

namespace A239109.P13038285584880241211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A055999 (n + 3)).toNat

end

end A239109.P13038285584880241211

/-! ## A239109.P5226833693360066099

`A245049(eq[5, A025581(n)])`
-/

namespace A239109.P5226833693360066099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239109.P5226833693360066099

/-! ## A239109.P13527879647634574601

`A245049(A155212(n+2)+2)`
-/

namespace A239109.P13527879647634574601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A155212 (n + 2) + 2).toNat

end

end A239109.P13527879647634574601

/-! ## A239109.P5907435897934329962

`A245049(A056000(n+2)+4)`
-/

namespace A239109.P5907435897934329962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A056000 (n + 2) + 4).toNat

end

end A239109.P5907435897934329962

/-! ## A239109.P2628169953189883861

`A245049(eq[6, A004736(n+1)])`
-/

namespace A239109.P2628169953189883861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239109.P2628169953189883861

/-!
# A239110: Generalized ternary Thue-Morse sequence arising from junction numbers problem in base 4.

The programs for A239110, there is no canonical definition to state claims against.
-/

/-! ## A239110.P17575787305050404308

`A062028(A105026(A006068(n)))%3`
-/

namespace A239110.P17575787305050404308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 (A105026 (A006068 n).toNat).toNat) 3

end

end A239110.P17575787305050404308

/-! ## A239110.P3562512914421163365

`and(A214058(A008612(4*n)), A317023(5*n+3))`
-/

namespace A239110.P3562512914421163365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214058 (A008612 (4 * n)).toNat) (A317023 (5 * n + 3))

end

end A239110.P3562512914421163365

/-! ## A239110.P4669670206977704256

`A271224(A035552(3*n+4)-A035548(2*n+3))`
-/

namespace A239110.P4669670206977704256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271224 (A035552 (3 * n + 4) - A035548 (2 * n + 3)).toNat

end

end A239110.P4669670206977704256

/-! ## A239110.P2366232122848696855

`A068346(A093058(n+1))%3`
-/

namespace A239110.P2366232122848696855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068346 (A093058 (n + 1)).toNat) 3

end

end A239110.P2366232122848696855

/-! ## A239110.P939562593772688252

`A010872(A314638(n)+A107401(n+3))`
-/

namespace A239110.P939562593772688252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A314638 n + A107401 (n + 3)).toNat

end

end A239110.P939562593772688252

/-!
# A239111: Smallest Pell number (see A000129) divisible by n-th prime.

The programs for A239111, there is no canonical definition to state claims against.
-/

/-! ## A239111.P16150543257607171116

`A000129(A120947(n+1))`
-/

namespace A239111.P16150543257607171116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A120947 (n + 1)).toNat

end

end A239111.P16150543257607171116

/-! ## A239111.P18212545301449320841

`A135153(2*A120947(n+1))`
-/

namespace A239111.P18212545301449320841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * A120947 (n + 1)).toNat

end

end A239111.P18212545301449320841

/-! ## A239111.P8096097743800562921

`A249576(3*A120947(n+1))`
-/

namespace A239111.P8096097743800562921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * A120947 (n + 1)).toNat

end

end A239111.P8096097743800562921

/-! ## A239111.P15164210064551789823

`A116560(6*A120947(n+1))`
-/

namespace A239111.P15164210064551789823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * A120947 (n + 1)).toNat

end

end A239111.P15164210064551789823

/-! ## A239111.P9913532212361665235

`∑{d}[A120947(n+1), A133726(#)]`
-/

namespace A239111.P9913532212361665235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133726 d

end

end A239111.P9913532212361665235

/-! ## A239111.P8641434346591248593

`A135153(A120947(n+1)+A120947(n+1)+1)`
-/

namespace A239111.P8641434346591248593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A120947 (n + 1) + (A120947 (n + 1) + 1)).toNat

end

end A239111.P8641434346591248593

/-!
# A239112: Nonzero coefficients of g.f. A(x) = 1 + 4*x^2 + 36*x^4 + 396*x^6 + ... satisfying (A-1)*(1+3/A)^3 = 256*x^2.

The programs for A239112, there is no canonical definition to state claims against.
-/

/-! ## A239112.P1495556817289750037

`A285699((2*(n+3)-1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A239112.P1495556817289750037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285699 (((2 * (n + 3) : ℤ) - 1) * a (n - 1) + 1).toNat

end

end A239112.P1495556817289750037

/-!
# A239114: Exponent of 2 in prime factorization (i.e., 2-adic valuation) of odd nonprimes A014076(n) + 1.

The programs for A239114, the canonical program `A239114.P10150466013173584691` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239114 has offset 1).

The definition of A239114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239114.P10150466013173584691

`A001511((A014076(n+1)+1)/2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A239114

/-- `A001511((A014076(n+1)+1)/2)` -/
def P10150466013173584691.Spec : Prop :=
  ∀ n, P10150466013173584691.a n = A239114 (n + 1)

theorem P10150466013173584691.correct : P10150466013173584691.Spec := by
  intro n
  simp only [A239114, Nat.add_sub_cancel]

end A239114

/-! ## A239114.P2088922880744114725

`val(A014076(n+1)+1, 2)`
-/

namespace A239114.P2088922880744114725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014076 (n + 1) + 1).toNat 2

end

end A239114.P2088922880744114725

namespace A239114

/-- `val(A014076(n+1)+1, 2)` -/
def P2088922880744114725.Spec : Prop :=
  ∀ n, (P2088922880744114725.a n : ℤ) = A239114 (n + 1)

end A239114

/-! ## A239114.P5399258721655319999

`val(A104275(n+1), 2)+1`
-/

namespace A239114.P5399258721655319999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A104275 (n + 1)).toNat 2 + 1

end

end A239114.P5399258721655319999

namespace A239114

/-- `val(A104275(n+1), 2)+1` -/
def P5399258721655319999.Spec : Prop :=
  ∀ n, (P5399258721655319999.a n : ℤ) = A239114 (n + 1)

end A239114

/-! ## A239114.P14181753599977558657

`val(A047845(n+1)+1, 2)+1`
-/

namespace A239114.P14181753599977558657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A047845 (n + 1) + 1).toNat 2 + 1

end

end A239114.P14181753599977558657

namespace A239114

/-- `val(A047845(n+1)+1, 2)+1` -/
def P14181753599977558657.Spec : Prop :=
  ∀ n, (P14181753599977558657.a n : ℤ) = A239114 (n + 1)

end A239114

/-! ## A239114.P1210507367295313152

`A001511(A104275(n+1))`
-/

namespace A239114.P1210507367295313152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A104275 (n + 1)).toNat

end

end A239114.P1210507367295313152

namespace A239114

/-- `A001511(A104275(n+1))` -/
def P1210507367295313152.Spec : Prop :=
  ∀ n, P1210507367295313152.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P13966569830827765644

`A001511(A047845(n+1)+1)`
-/

namespace A239114.P13966569830827765644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A047845 (n + 1) + 1).toNat

end

end A239114.P13966569830827765644

namespace A239114

/-- `A001511(A047845(n+1)+1)` -/
def P13966569830827765644.Spec : Prop :=
  ∀ n, P13966569830827765644.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P16375506346811694079

`A007814(A047845(n+1)+1)+1`
-/

namespace A239114.P16375506346811694079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A047845 (n + 1) + 1).toNat + 1

end

end A239114.P16375506346811694079

namespace A239114

/-- `A007814(A047845(n+1)+1)+1` -/
def P16375506346811694079.Spec : Prop :=
  ∀ n, P16375506346811694079.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P10060571290292001559

`A007814(comp[A005097(n+1)]+1)+1`
-/

namespace A239114.P10060571290292001559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A239114.P10060571290292001559

namespace A239114

/-- `A007814(comp[A005097(n+1)]+1)+1` -/
def P10060571290292001559.Spec : Prop :=
  ∀ n, P10060571290292001559.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P14442141150548222918

`A001511(eq[1, A005171(2*n+1)]+1)`
-/

namespace A239114.P14442141150548222918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239114.P14442141150548222918

namespace A239114

/-- `A001511(eq[1, A005171(2*n+1)]+1)` -/
def P14442141150548222918.Spec : Prop :=
  ∀ n, P14442141150548222918.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P17560960287958188673

`A050603(A014076(n+1)-1)`
-/

namespace A239114.P17560960287958188673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A014076 (n + 1) - 1).toNat

end

end A239114.P17560960287958188673

namespace A239114

/-- `A050603(A014076(n+1)-1)` -/
def P17560960287958188673.Spec : Prop :=
  ∀ n, P17560960287958188673.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P11730339343619341074

`A050603(A014076(n+1))`
-/

namespace A239114.P11730339343619341074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A014076 (n + 1)).toNat

end

end A239114.P11730339343619341074

namespace A239114

/-- `A050603(A014076(n+1))` -/
def P11730339343619341074.Spec : Prop :=
  ∀ n, P11730339343619341074.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P2613816895444403943

`A007814(A014076(n+1)+1)`
-/

namespace A239114.P2613816895444403943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014076 (n + 1) + 1).toNat

end

end A239114.P2613816895444403943

namespace A239114

/-- `A007814(A014076(n+1)+1)` -/
def P2613816895444403943.Spec : Prop :=
  ∀ n, P2613816895444403943.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P15159854160673451087

`A001511(A014076(n+1)+1)-1`
-/

namespace A239114.P15159854160673451087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A014076 (n + 1) + 1).toNat - 1

end

end A239114.P15159854160673451087

namespace A239114

/-- `A001511(A014076(n+1)+1)-1` -/
def P15159854160673451087.Spec : Prop :=
  ∀ n, P15159854160673451087.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P15022535942983038218

`A059129(A179899(n+1))`
-/

namespace A239114.P15022535942983038218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (A179899 (n + 1)).toNat

end

end A239114.P15022535942983038218

namespace A239114

/-- `A059129(A179899(n+1))` -/
def P15022535942983038218.Spec : Prop :=
  ∀ n, P15022535942983038218.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P5808820164004911527

`A059129(A172048(n+1)-2)`
-/

namespace A239114.P5808820164004911527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (A172048 (n + 1) - 2).toNat

end

end A239114.P5808820164004911527

namespace A239114

/-- `A059129(A172048(n+1)-2)` -/
def P5808820164004911527.Spec : Prop :=
  ∀ n, P5808820164004911527.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P16861132078398209050

`A059129(A172048(n+1))`
-/

namespace A239114.P16861132078398209050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (A172048 (n + 1)).toNat

end

end A239114.P16861132078398209050

namespace A239114

/-- `A059129(A172048(n+1))` -/
def P16861132078398209050.Spec : Prop :=
  ∀ n, P16861132078398209050.a n = A239114 (n + 1)

end A239114

/-! ## A239114.P2369960166836068052

`A091090(2*A172048(n+1)-A172048(n+1))`
-/

namespace A239114.P2369960166836068052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (2 * A172048 (n + 1) - A172048 (n + 1)).toNat

end

end A239114.P2369960166836068052

namespace A239114

/-- `A091090(2*A172048(n+1)-A172048(n+1))` -/
def P2369960166836068052.Spec : Prop :=
  ∀ n, P2369960166836068052.a n = A239114 (n + 1)

end A239114

/-!
# A239115: Numbers n such that (n-1)*n^2-1 and n^2-(n-1) are both prime.

The programs for A239115, there is no canonical definition to state claims against.
-/

/-! ## A239115.P18397766952890529850

`∩[A055494(n+1), A162293(n+1)]`
-/

namespace A239115.P18397766952890529850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239115.P18397766952890529850

/-! ## A239115.P7657338053216794826

`∩[A002384(n+1)+1, A162293(n+1)]`
-/

namespace A239115.P7657338053216794826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239115.P7657338053216794826

/-! ## A239115.P3391111474712431012

`∩[A089358(n+1)-1, A162293(n+1)]`
-/

namespace A239115.P3391111474712431012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239115.P3391111474712431012

/-! ## A239115.P10274140076482586060

`∩[record[A081256(n+1)-n²], A162293(n+1)]`
-/

namespace A239115.P10274140076482586060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1) - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A239115.P10274140076482586060

/-! ## A239115.P13665361192764027042

`∩[A020725(A002384(n+1)), A162293(n+1)]`
-/

namespace A239115.P13665361192764027042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002384 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239115.P13665361192764027042

/-! ## A239115.P1767836173800301666

`∩[A023443(A089358(n+1)), A162293(n+1)]`
-/

namespace A239115.P1767836173800301666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A089358 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239115.P1767836173800301666

/-! ## A239115.P14181516661130195380

`∩[eq[2, A278260(2*n+1)]+1, A162293(n+1)]`
-/

namespace A239115.P14181516661130195380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A239115.P14181516661130195380

/-!
# A239116: Number of ballot sequences of length n with exactly 5 fixed points.

The programs for A239116, there is no canonical definition to state claims against.
-/

/-! ## A239116.P17682569095386324096

`A238802(A077169(n)+n)`
-/

namespace A239116.P17682569095386324096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (A077169 n + (n : ℤ)).toNat

end

end A239116.P17682569095386324096

/-! ## A239116.P14289185835090383737

`A239117(n+1)+A162782(A133500(2*n+3))`
-/

namespace A239116.P14289185835090383737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239117 (n + 1) + A162782 (A133500 (2 * n + 3)).toNat

end

end A239116.P14289185835090383737

/-! ## A239116.P407609588394435334

`A239117(A043316(n+1))`
-/

namespace A239116.P407609588394435334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239117 (A043316 (n + 1)).toNat

end

end A239116.P407609588394435334

/-! ## A239116.P18182546617302850904

`A239117(A044913(n+1))`
-/

namespace A239116.P18182546617302850904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239117 (A044913 (n + 1)).toNat

end

end A239116.P18182546617302850904

/-! ## A239116.P2068098440561022172

`A239117(A061147(n+1))`
-/

namespace A239116.P2068098440561022172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239117 (A061147 (n + 1)).toNat

end

end A239116.P2068098440561022172

/-!
# A239117: Number of ballot sequences of length n with exactly 6 fixed points.

The programs for A239117, there is no canonical definition to state claims against.
-/

/-! ## A239117.P9843750910994866106

`A239118(A043318(n+1))`
-/

namespace A239117.P9843750910994866106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239118 (A043318 (n + 1)).toNat

end

end A239117.P9843750910994866106

/-! ## A239117.P1934836615919725253

`A239118(A044915(n+1))`
-/

namespace A239117.P1934836615919725253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239118 (A044915 (n + 1)).toNat

end

end A239117.P1934836615919725253

/-! ## A239117.P10591012507435423798

`A239119(A077168(n+1))`
-/

namespace A239117.P10591012507435423798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239119 (A077168 (n + 1)).toNat

end

end A239117.P10591012507435423798

/-! ## A239117.P8053958556817339684

`A239118(A161951(n+1))`
-/

namespace A239117.P8053958556817339684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239118 (A161951 (n + 1)).toNat

end

end A239117.P8053958556817339684

/-! ## A239117.P3072358481699406327

`A239119(A043319(n+2))`
-/

namespace A239117.P3072358481699406327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239119 (A043319 (n + 2)).toNat

end

end A239117.P3072358481699406327

/-!
# A239118: Number of ballot sequences of length n with exactly 7 fixed points.

The programs for A239118, there is no canonical definition to state claims against.
-/

/-! ## A239118.P16566977259085978965

`A239119(n+1)-A011742(A239119(n+1))`
-/

namespace A239118.P16566977259085978965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239119 (n + 1) - A011742 (A239119 (n + 1)).toNat

end

end A239118.P16566977259085978965

/-! ## A239118.P11386808398707608646

`A239119(A043320(n+1))`
-/

namespace A239118.P11386808398707608646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239119 (A043320 (n + 1)).toNat

end

end A239118.P11386808398707608646

/-! ## A239118.P6816015930295947024

`A239119(A044917(n+1))`
-/

namespace A239118.P6816015930295947024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239119 (A044917 (n + 1)).toNat

end

end A239118.P6816015930295947024

/-! ## A239118.P487131194375920060

`A239119(A161953(n+1))`
-/

namespace A239118.P487131194375920060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239119 (A161953 (n + 1)).toNat

end

end A239118.P487131194375920060

/-! ## A239118.P4963016402566087004

`A239119(A187829(n+1))`
-/

namespace A239118.P4963016402566087004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239119 (A187829 (n + 1)).toNat

end

end A239118.P4963016402566087004

/-!
# A239119: Number of ballot sequences of length n with exactly 8 fixed points.

The programs for A239119, there is no canonical definition to state claims against.
-/

/-! ## A239119.P8527736050471970338

`A238802(∑[A160755(n+1)])`
-/

namespace A239119.P8527736050471970338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239119.P8527736050471970338

/-! ## A239119.P17707023426111839647

`A239117(lcm(2-n, A046643(n+1)))`
-/

namespace A239119.P17707023426111839647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239117 (Int.lcm (2 - (n : ℤ)) (A046643 (n + 1)))

end

end A239119.P17707023426111839647

/-! ## A239119.P8648635990958762881

`A239117(A082111(n)%A187829(n+1))`
-/

namespace A239119.P8648635990958762881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239117 (Int.tmod (A082111 n) (A187829 (n + 1))).toNat

end

end A239119.P8648635990958762881

/-! ## A239119.P6310835984398189322

`A239118(log2(A252463(2^n)))`
-/

namespace A239119.P6310835984398189322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239118 (SequenceMachineLib.roundAway (Real.logb 2 (A252463 (2 ^ n) : ℝ))).toNat

end

end A239119.P6310835984398189322

/-!
# A239122: Partial sums of A061019.

The programs for A239122, the canonical program `A239122.P1802817852681079658` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239122 has offset 1).

The definition of A239122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239122.P12958412355501326429

`∑[(n+1)*(-1)^∑{e}[n+1, #]]`
-/

namespace A239122.P12958412355501326429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P12958412355501326429

namespace A239122

/-- `∑[(n+1)*(-1)^∑{e}[n+1, #]]` -/
def P12958412355501326429.Spec : Prop :=
  ∀ n, P12958412355501326429.a n = A239122 (n + 1)

end A239122

/-! ## A239122.P17318476604013057407

`∑[(n+1)/(-1)^∑{e}[n+1, #]]`
-/

namespace A239122.P17318476604013057407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P17318476604013057407

namespace A239122

/-- `∑[(n+1)/(-1)^∑{e}[n+1, #]]` -/
def P17318476604013057407.Spec : Prop :=
  ∀ n, P17318476604013057407.a n = (A239122 (n + 1) : ℚ)

end A239122

/-! ## A239122.P1802817852681079658

`∑[A061019(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A239122

/-- `∑[A061019(n+1)]` -/
def P1802817852681079658.Spec : Prop :=
  ∀ n, P1802817852681079658.a n = A239122 (n + 1)

theorem P1802817852681079658.correct : P1802817852681079658.Spec := by
  intro n
  simp only [A239122, Nat.add_sub_cancel]

end A239122

/-! ## A239122.P4066889437371281174

`∑[(n+1)*A008836(n+1)]`
-/

namespace A239122.P4066889437371281174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P4066889437371281174

namespace A239122

/-- `∑[(n+1)*A008836(n+1)]` -/
def P4066889437371281174.Spec : Prop :=
  ∀ n, P4066889437371281174.a n = A239122 (n + 1)

end A239122

/-! ## A239122.P18273218463392723136

`∑[(n+1)*(-1)^A350387(n+1)]`
-/

namespace A239122.P18273218463392723136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A350387 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P18273218463392723136

namespace A239122

/-- `∑[(n+1)*(-1)^A350387(n+1)]` -/
def P18273218463392723136.Spec : Prop :=
  ∀ n, P18273218463392723136.a n = (A239122 (n + 1) : ℚ)

end A239122

/-! ## A239122.P4732438582381099728

`∑[(n+1)*(-1)^A001222(n+1)]`
-/

namespace A239122.P4732438582381099728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P4732438582381099728

namespace A239122

/-- `∑[(n+1)*(-1)^A001222(n+1)]` -/
def P4732438582381099728.Spec : Prop :=
  ∀ n, P4732438582381099728.a n = (A239122 (n + 1) : ℚ)

end A239122

/-! ## A239122.P625753769025455401

`∑[(n+1)*A020985(or(10, ∑{e}[n+1, #]))]`
-/

namespace A239122.P625753769025455401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020985 (Nat.lor 10 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P625753769025455401

namespace A239122

/-- `∑[(n+1)*A020985(or(10, ∑{e}[n+1, #]))]` -/
def P625753769025455401.Spec : Prop :=
  ∀ n, P625753769025455401.a n = A239122 (n + 1)

end A239122

/-! ## A239122.P6637705944029058256

`∑[(n+1)*A008683(A007913(n+1))]`
-/

namespace A239122.P6637705944029058256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P6637705944029058256

namespace A239122

/-- `∑[(n+1)*A008683(A007913(n+1))]` -/
def P6637705944029058256.Spec : Prop :=
  ∀ n, P6637705944029058256.a n = A239122 (n + 1)

end A239122

/-! ## A239122.P13740719912842428457

`∑[A000027(n+1)/A008836(n+1)]`
-/

namespace A239122.P13740719912842428457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A008836 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P13740719912842428457

namespace A239122

/-- `∑[A000027(n+1)/A008836(n+1)]` -/
def P13740719912842428457.Spec : Prop :=
  ∀ n, P13740719912842428457.a n = (A239122 (n + 1) : ℚ)

end A239122

/-! ## A239122.P4319142331249494362

`∑[A038040(n+1)/A329484(n+1)]`
-/

namespace A239122.P4319142331249494362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A329484 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P4319142331249494362

namespace A239122

/-- `∑[A038040(n+1)/A329484(n+1)]` -/
def P4319142331249494362.Spec : Prop :=
  ∀ n, P4319142331249494362.a n = (A239122 (n + 1) : ℚ)

end A239122

/-! ## A239122.P14956875414762105033

`∑[(n+1)*A319117(2*A001222(n+1))]`
-/

namespace A239122.P14956875414762105033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319117 (2 * A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P14956875414762105033

namespace A239122

/-- `∑[(n+1)*A319117(2*A001222(n+1))]` -/
def P14956875414762105033.Spec : Prop :=
  ∀ n, P14956875414762105033.a n = A239122 (n + 1)

end A239122

/-! ## A239122.P14220737450626651911

`∑[(n+1)*A309873(A001222(n+1)²+1)]`
-/

namespace A239122.P14220737450626651911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A309873 (A001222 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P14220737450626651911

namespace A239122

/-- `∑[(n+1)*A309873(A001222(n+1)²+1)]` -/
def P14220737450626651911.Spec : Prop :=
  ∀ n, P14220737450626651911.a n = A239122 (n + 1)

end A239122

/-! ## A239122.P9350486086982162091

`∑[(n+1)*A355684((n+1)²)]`
-/

namespace A239122.P9350486086982162091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A355684 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P9350486086982162091

namespace A239122

/-- `∑[(n+1)*A355684((n+1)²)]` -/
def P9350486086982162091.Spec : Prop :=
  ∀ n, P9350486086982162091.a n = A239122 (n + 1)

end A239122

/-! ## A239122.P18274206254623349527

`∑[(n+1)*A319117(A001222((n+1)²))]`
-/

namespace A239122.P18274206254623349527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319117 (A001222 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239122.P18274206254623349527

namespace A239122

/-- `∑[(n+1)*A319117(A001222((n+1)²))]` -/
def P18274206254623349527.Spec : Prop :=
  ∀ n, P18274206254623349527.a n = A239122 (n + 1)

end A239122

/-!
# A239123: a(n) = 128*n - 107 for n >= 1. Third column of triangle A238475.

The programs for A239123, the canonical program `A239123.P2101161350989688702` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239123 has offset 1).

The definition of A239123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `128*(n+1)-107` (program `A239123.P2101161350989688702`, by `A239123.P2101161350989688702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239123.P2101161350989688702

`128*(n+1)-107`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239123

/-- `128*(n+1)-107` -/
def P2101161350989688702.Spec : Prop :=
  ∀ n, P2101161350989688702.a n = A239123 (n + 1)

theorem P2101161350989688702.correct : P2101161350989688702.Spec := by
  intro n
  simp only [A239123, Nat.add_sub_cancel]

end A239123

/-!
# A239124: a(n) = 64*n - 11 for n >= 1. Third column of triangle A238476.

The programs for A239124, the canonical program `A239124.P4325518051822604121` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239124 has offset 1).

The definition of A239124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)-11` (program `A239124.P4325518051822604121`, by `A239124.P4325518051822604121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239124.P4325518051822604121

`64*(n+1)-11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239124

/-- `64*(n+1)-11` -/
def P4325518051822604121.Spec : Prop :=
  ∀ n, P4325518051822604121.a n = A239124 (n + 1)

theorem P4325518051822604121.correct : P4325518051822604121.Spec := by
  intro n
  simp only [A239124, Nat.add_sub_cancel]

end A239124

/-!
# A239125: Smallest positive integer solution x of (3^3)*x - 2^n*y = 1 for n >= 0.

The programs for A239125, the canonical program `A239125.P2832990049603019229` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239125 has offset 0).

The definition of A239125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239125.P2832990049603019229

`(3*(3*a(n-1))²)%(2^n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239125

/-- `(3*(3*a(n-1))²)%(2^n)` -/
def P2832990049603019229.Spec : Prop :=
  ∀ n, (P2832990049603019229.a n : ℤ) = A239125 n

theorem P2832990049603019229.correct : P2832990049603019229.Spec := by
  intro n
  simp only [A239125]

end A239125

/-! ## A239125.P7959616908433904164

`and(A127984(n+1)*A152046(n), A255047(n))`
-/

namespace A239125.P7959616908433904164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127984 (n + 1) * A152046 n) (A255047 n)

end

end A239125.P7959616908433904164

namespace A239125

/-- `and(A127984(n+1)*A152046(n), A255047(n))` -/
def P7959616908433904164.Spec : Prop :=
  ∀ n, P7959616908433904164.a n = A239125 n

end A239125

/-! ## A239125.P3797242965651752316

`and(∑[A002698(n+2)], A255047(n))`
-/

namespace A239125.P3797242965651752316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002698 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A255047 n)

end

end A239125.P3797242965651752316

namespace A239125

/-- `and(∑[A002698(n+2)], A255047(n))` -/
def P3797242965651752316.Spec : Prop :=
  ∀ n, P3797242965651752316.a n = A239125 n

end A239125

/-! ## A239125.P15340854576948274812

`and(A077925(n)^3, A255047(n))`
-/

namespace A239125.P15340854576948274812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077925 n ^ 3) (A255047 n)

end

end A239125.P15340854576948274812

namespace A239125

/-- `and(A077925(n)^3, A255047(n))` -/
def P15340854576948274812.Spec : Prop :=
  ∀ n, P15340854576948274812.a n = A239125 n

end A239125

/-! ## A239125.P17870149540294571257

`(A016225(n)-1)%(2^n)+1`
-/

namespace A239125.P17870149540294571257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016225 n - 1) (2 ^ n : ℤ) + 1

end

end A239125.P17870149540294571257

namespace A239125

/-- `(A016225(n)-1)%(2^n)+1` -/
def P17870149540294571257.Spec : Prop :=
  ∀ n, P17870149540294571257.a n = A239125 n

end A239125

/-! ## A239125.P14805695537501825725

`and(A016225(n), A255047(n))`
-/

namespace A239125.P14805695537501825725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016225 n) (A255047 n)

end

end A239125.P14805695537501825725

namespace A239125

/-- `and(A016225(n), A255047(n))` -/
def P14805695537501825725.Spec : Prop :=
  ∀ n, P14805695537501825725.a n = A239125 n

end A239125

/-!
# A239126: Rectangular array showing the starting values M(n, k), k >= 1, for the Collatz operation (ud)^n, n >= 1, ending in an odd number, read by antidiagonals.

The programs for A239126, the canonical program `A239126.P14009463231019251637` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239126 has offset 1).

The definition of A239126 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, A130328, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239126.P14009463231019251637

`4*A087808(A130328(n))-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A239126

/-- `4*A087808(A130328(n))-1` -/
def P14009463231019251637.Spec : Prop :=
  ∀ n, P14009463231019251637.a n = A239126 (n + 1)

theorem P14009463231019251637.correct : P14009463231019251637.Spec := by
  intro n
  simp only [A239126, Nat.add_sub_cancel]

end A239126

/-! ## A239126.P9837591074216269866

`4*A130128(n+1)-1`
-/

namespace A239126.P9837591074216269866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A130128 (n + 1) - 1

end

end A239126.P9837591074216269866

namespace A239126

/-- `4*A130128(n+1)-1` -/
def P9837591074216269866.Spec : Prop :=
  ∀ n, P9837591074216269866.a n = A239126 (n + 1)

end A239126

/-! ## A239126.P10919939748549560209

`abs(1-4*A130128(-xor(n, -1)))`
-/

namespace A239126.P10919939748549560209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 4 * A130128 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A239126.P10919939748549560209

namespace A239126

/-- `abs(1-4*A130128(-xor(n, -1)))` -/
def P10919939748549560209.Spec : Prop :=
  ∀ n, P10919939748549560209.a n = A239126 (n + 1)

end A239126

/-! ## A239126.P4601661197843284066

`abs(1-4*A130128(Δ[n²]-n))`
-/

namespace A239126.P4601661197843284066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 4 * A130128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A239126.P4601661197843284066

namespace A239126

/-- `abs(1-4*A130128(Δ[n²]-n))` -/
def P4601661197843284066.Spec : Prop :=
  ∀ n, P4601661197843284066.a n = A239126 (n + 1)

end A239126

/-! ## A239126.P16927120524539599157

`A130824(A130128(n+1))+1`
-/

namespace A239126.P16927120524539599157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A130128 (n + 1)).toNat + 1

end

end A239126.P16927120524539599157

namespace A239126

/-- `A130824(A130128(n+1))+1` -/
def P16927120524539599157.Spec : Prop :=
  ∀ n, P16927120524539599157.a n = A239126 (n + 1)

end A239126

/-! ## A239126.P18266019212438738683

`A131098(A130128(n+1)+1)`
-/

namespace A239126.P18266019212438738683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A130128 (n + 1) + 1).toNat

end

end A239126.P18266019212438738683

namespace A239126

/-- `A131098(A130128(n+1)+1)` -/
def P18266019212438738683.Spec : Prop :=
  ∀ n, P18266019212438738683.a n = A239126 (n + 1)

end A239126

/-! ## A239126.P7951039030809438772

`A004767(A130128(n+1)-1)`
-/

namespace A239126.P7951039030809438772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A130128 (n + 1) - 1).toNat

end

end A239126.P7951039030809438772

namespace A239126

/-- `A004767(A130128(n+1)-1)` -/
def P7951039030809438772.Spec : Prop :=
  ∀ n, P7951039030809438772.a n = A239126 (n + 1)

end A239126

/-! ## A239126.P13874104199084479197

`A004273(2*A130128(n+1))`
-/

namespace A239126.P13874104199084479197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A130128 (n + 1)).toNat

end

end A239126.P13874104199084479197

namespace A239126

/-- `A004273(2*A130128(n+1))` -/
def P13874104199084479197.Spec : Prop :=
  ∀ n, P13874104199084479197.a n = A239126 (n + 1)

end A239126

/-! ## A239126.P17645406713220367095

`A042964(2*A130128(n+1))`
-/

namespace A239126.P17645406713220367095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (2 * A130128 (n + 1)).toNat

end

end A239126.P17645406713220367095

namespace A239126

/-- `A042964(2*A130128(n+1))` -/
def P17645406713220367095.Spec : Prop :=
  ∀ n, P17645406713220367095.a n = A239126 (n + 1)

end A239126

/-! ## A239126.P8898153212660027019

`A086799(2*A135764(n+1))`
-/

namespace A239126.P8898153212660027019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (2 * A135764 (n + 1)).toNat

end

end A239126.P8898153212660027019

namespace A239126

/-- `A086799(2*A135764(n+1))` -/
def P8898153212660027019.Spec : Prop :=
  ∀ n, P8898153212660027019.a n = A239126 (n + 1)

end A239126

/-!
# A239127: Rectangular companion array to M(n,k), given in A239126, showing the end numbers N(n, k), k >= 1, for the Collatz operation (ud)^n, n >= 1, ending in an odd number, read by antidiagonals.

The programs for A239127, there is no canonical definition to state claims against.
-/

/-! ## A239127.P10286171130379235601

`A135765(comp[∑[n]])+A135765(n+1)-1`
-/

namespace A239127.P10286171130379235601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135765 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (A135765 (n + 1) - 1)

end

end A239127.P10286171130379235601

/-! ## A239127.P11367046786275814431

`A135765(A014132(n+1))+A004442(A135765(n+1))`
-/

namespace A239127.P11367046786275814431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135765 (A014132 (n + 1)).toNat + A004442 (A135765 (n + 1)).toNat

end

end A239127.P11367046786275814431

/-!
# A239128: a(n) = 32*n - 1, n >= 1. Fourth column of triangle A239126, related to the Collatz problem.

The programs for A239128, the canonical program `A239128.P2502981903512126287` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239128 has offset 1).

The definition of A239128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(n+1)-1` (program `A239128.P2502981903512126287`, by `A239128.P2502981903512126287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239128.P2502981903512126287

`32*(n+1)-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239128

/-- `32*(n+1)-1` -/
def P2502981903512126287.Spec : Prop :=
  ∀ n, P2502981903512126287.a n = A239128 (n + 1)

theorem P2502981903512126287.correct : P2502981903512126287.Spec := by
  intro n
  simp only [A239128, Nat.add_sub_cancel]

end A239128

/-!
# A239129: a(n) = 18*n - 1, n >= 1, the second column of triangle A239127 related to the Collatz problem.

The programs for A239129, the canonical program `A239129.P3711433288767926292` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239129 has offset 1).

The definition of A239129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*(n+1)-1` (program `A239129.P3711433288767926292`, by `A239129.P3711433288767926292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239129.P3711433288767926292

`18*(n+1)-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239129

/-- `18*(n+1)-1` -/
def P3711433288767926292.Spec : Prop :=
  ∀ n, P3711433288767926292.a n = A239129 (n + 1)

theorem P3711433288767926292.correct : P3711433288767926292.Spec := by
  intro n
  simp only [A239129, Nat.add_sub_cancel]

end A239129

/-!
# A239130: Smallest positive integer solution x = a(n) of (3^4)*x - 2^n*y = 1 for n >= 0.

The programs for A239130, the canonical program `A239130.P601049119662181370` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239130 has offset 0).

The definition of A239130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239130.P601049119662181370

`(9*a(n-1))²%(2^n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239130

/-- `(9*a(n-1))²%(2^n)` -/
def P601049119662181370.Spec : Prop :=
  ∀ n, (P601049119662181370.a n : ℤ) = A239130 n

theorem P601049119662181370.correct : P601049119662181370.Spec := by
  intro n
  simp only [A239130]

end A239130

/-! ## A239130.P12649418492543263781

`∑[and(A172481(n)², A011782(n))]`
-/

namespace A239130.P12649418492543263781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172481 n ^ 2) (A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239130.P12649418492543263781

namespace A239130

/-- `∑[and(A172481(n)², A011782(n))]` -/
def P12649418492543263781.Spec : Prop :=
  ∀ n, P12649418492543263781.a n = A239130 n

end A239130

/-! ## A239130.P12177941402553261721

`and(A127984(n+1)², A255047(n))`
-/

namespace A239130.P12177941402553261721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127984 (n + 1) ^ 2) (A255047 n)

end

end A239130.P12177941402553261721

namespace A239130

/-- `and(A127984(n+1)², A255047(n))` -/
def P12177941402553261721.Spec : Prop :=
  ∀ n, P12177941402553261721.a n = A239130 n

end A239130

/-! ## A239130.P9730231401255421304

`and(A127984(n+1)², A000225(A028310(n)))`
-/

namespace A239130.P9730231401255421304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127984 (n + 1) ^ 2) (A000225 (A028310 n).toNat)

end

end A239130.P9730231401255421304

namespace A239130

/-- `and(A127984(n+1)², A000225(A028310(n)))` -/
def P9730231401255421304.Spec : Prop :=
  ∀ n, P9730231401255421304.a n = A239130 n

end A239130

/-! ## A239130.P1280237784547335527

`and(A152046(n)²², A255047(n))`
-/

namespace A239130.P1280237784547335527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A152046 n ^ 2) ^ 2) (A255047 n)

end

end A239130.P1280237784547335527

namespace A239130

/-- `and(A152046(n)²², A255047(n))` -/
def P1280237784547335527.Spec : Prop :=
  ∀ n, P1280237784547335527.a n = A239130 n

end A239130

/-! ## A239130.P12104313632821658709

`and(A077925(n)²², A255047(n))`
-/

namespace A239130.P12104313632821658709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A077925 n ^ 2) ^ 2) (A255047 n)

end

end A239130.P12104313632821658709

namespace A239130

/-- `and(A077925(n)²², A255047(n))` -/
def P12104313632821658709.Spec : Prop :=
  ∀ n, P12104313632821658709.a n = A239130 n

end A239130

/-! ## A239130.P8230596566590526863

`and(A169969(2*n+1)²², A288663(2*n))`
-/

namespace A239130.P8230596566590526863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A169969 (2 * n + 1) ^ 2) ^ 2) (A288663 (2 * n))

end

end A239130.P8230596566590526863

namespace A239130

/-- `and(A169969(2*n+1)²², A288663(2*n))` -/
def P8230596566590526863.Spec : Prop :=
  ∀ n, P8230596566590526863.a n = A239130 n

end A239130

/-! ## A239130.P18260715504236692503

`A059482(n)²%A171559(n)`
-/

namespace A239130.P18260715504236692503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059482 n ^ 2) (A171559 n)

end

end A239130.P18260715504236692503

namespace A239130

/-- `A059482(n)²%A171559(n)` -/
def P18260715504236692503.Spec : Prop :=
  ∀ n, P18260715504236692503.a n = A239130 n

end A239130

/-! ## A239130.P5969957146681549769

`and(A059482(n)², A255047(n))`
-/

namespace A239130.P5969957146681549769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059482 n ^ 2) (A255047 n)

end

end A239130.P5969957146681549769

namespace A239130

/-- `and(A059482(n)², A255047(n))` -/
def P5969957146681549769.Spec : Prop :=
  ∀ n, P5969957146681549769.a n = A239130 n

end A239130

/-! ## A239130.P8715905128969387507

`and(A290072(n)², A255047(n))`
-/

namespace A239130.P8715905128969387507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290072 n ^ 2) (A255047 n)

end

end A239130.P8715905128969387507

namespace A239130

/-- `and(A290072(n)², A255047(n))` -/
def P8715905128969387507.Spec : Prop :=
  ∀ n, P8715905128969387507.a n = A239130 n

end A239130

/-!
# A239135: Numbers k such that (k-1)*k^2 + 1 and k^2 + (k-1) are both prime.

The programs for A239135, there is no canonical definition to state claims against.
-/

/-! ## A239135.P15084360195710263365

`∩[A045546(n+1), A111501(n+1)]`
-/

namespace A239135.P15084360195710263365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P15084360195710263365

/-! ## A239135.P9457176329349008025

`∩[A045546(n+1), A154686(n+1)+1]`
-/

namespace A239135.P9457176329349008025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P9457176329349008025

/-! ## A239135.P13538535588070267961

`∩[A094210(n+1)+1, A111501(n+1)]`
-/

namespace A239135.P13538535588070267961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P13538535588070267961

/-! ## A239135.P7121575677934803252

`∩[A094210(n+1), A154686(n+1)]+1`
-/

namespace A239135.P7121575677934803252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A239135.P7121575677934803252

/-! ## A239135.P3544062478393873843

`∩[A002328(n+1)-1, A111501(n+1)]`
-/

namespace A239135.P3544062478393873843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P3544062478393873843

/-! ## A239135.P7269890579408514894

`∩[A076597(n+1)-2, A111501(n+1)]`
-/

namespace A239135.P7269890579408514894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P7269890579408514894

/-! ## A239135.P6709712767495761928

`∩[A089362(n+1)-3, A111501(n+1)]`
-/

namespace A239135.P6709712767495761928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P6709712767495761928

/-! ## A239135.P5278120781963759026

`∩[A076597(n+1)-2, A154686(n+1)+1]`
-/

namespace A239135.P5278120781963759026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P5278120781963759026

/-! ## A239135.P17367551917708414377

`∩[A089362(n+1)-3, A154686(n+1)+1]`
-/

namespace A239135.P17367551917708414377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P17367551917708414377

/-! ## A239135.P15082101572784936351

`∩[A023445(A076597(n+1)+1), A111501(n+1)]`
-/

namespace A239135.P15082101572784936351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A076597 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P15082101572784936351

/-! ## A239135.P5974771429783394199

`∩[A023446(A089362(n+1)+1), A111501(n+1)]`
-/

namespace A239135.P5974771429783394199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A089362 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P5974771429783394199

/-! ## A239135.P8815519959544068788

`∩[A023445(A076597(n+1)), A154686(n+1)]+1`
-/

namespace A239135.P8815519959544068788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A076597 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A239135.P8815519959544068788

/-! ## A239135.P12446951122946127113

`∩[A023446(A089362(n+1)), A154686(n+1)]+1`
-/

namespace A239135.P12446951122946127113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A089362 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A239135.P12446951122946127113

/-! ## A239135.P2916098911053157692

`∩[A023445(A002328(n+1)+2), A111501(n+1)]`
-/

namespace A239135.P2916098911053157692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A002328 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P2916098911053157692

/-! ## A239135.P6047694528837028826

`∩[A023445(A002328(n+1)+2), A154686(n+1)+1]`
-/

namespace A239135.P6047694528837028826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A002328 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154686 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239135.P6047694528837028826

/-!
# A239136: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive digits then we do not have d <= e < f, and S is always extended with the smallest integer not yet present in S.

The programs for A239136, there is no canonical definition to state claims against.
-/

/-! ## A239136.P3354974672098990069

`A338827(a(n-1)²+1)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=3`
-/

namespace A239136.P3354974672098990069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10, 3] fun n a =>
  A338827 (a (n - 1) ^ 2 + 1).toNat

end

end A239136.P3354974672098990069

/-! ## A239136.P12862190061568860869

`A239218(or(A020062(n), A239083(n+1)))`
-/

namespace A239136.P12862190061568860869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239218 (Int.lor (A020062 n) (A239083 (n + 1))).toNat

end

end A239136.P12862190061568860869

/-!
# A239138: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive digits then we do not have d <= e > f, and S is always extended with the smallest integer not yet present in S.

The programs for A239138, there is no canonical definition to state claims against.
-/

/-! ## A239138.P169773117546254571

`∩[A061219(n+1), A010785(n)]`
-/

namespace A239138.P169773117546254571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239138.P169773117546254571

/-! ## A239138.P13872192571812500050

`∩[A061219(n+1), A051885(n)]`
-/

namespace A239138.P13872192571812500050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239138.P13872192571812500050

/-! ## A239138.P348820284569528511

`∩[A160818(n+1), A051885(n)]`
-/

namespace A239138.P348820284569528511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239138.P348820284569528511

/-! ## A239138.P711379326949107582

`∩[A193460(n+1), A051885(n)]`
-/

namespace A239138.P711379326949107582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239138.P711379326949107582

/-! ## A239138.P13992781561142035014

`A010785(∑[(3^A161111(n+1))²])`
-/

namespace A239138.P13992781561142035014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (A161111 (n + 1) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A239138.P13992781561142035014

/-!
# A239139: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive decimal digits then we do not have d <= e = f, and S is always extended with the smallest integer not yet present in S.

The programs for A239139, there is no canonical definition to state claims against.
-/

/-! ## A239139.P16788158728322676638

`A130572(A130573(n+1)+1)-1`
-/

namespace A239139.P16788158728322676638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130572 (A130573 (n + 1) + 1).toNat - 1

end

end A239139.P16788158728322676638

/-! ## A239139.P4035190889449512277

`A280193(2*n+1)+A130572(A130573(n+1)+1)`
-/

namespace A239139.P4035190889449512277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A130572 (A130573 (n + 1) + 1).toNat

end

end A239139.P4035190889449512277

/-! ## A239139.P2086994771420514748

`abs(A130572(A130573(n+1)+1)+-A162292(n+1)%2)`
-/

namespace A239139.P2086994771420514748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130572 (A130573 (n + 1) + 1).toNat + Int.tmod (-A162292 (n + 1)) 2|

end

end A239139.P2086994771420514748

/-! ## A239139.P14354677894043742054

`A130571(A353888(A353888(A130573(n+1))))`
-/

namespace A239139.P14354677894043742054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (A353888 (A353888 (A130573 (n + 1)).toNat).toNat).toNat

end

end A239139.P14354677894043742054

/-! ## A239139.P2478250669225175169

`A134824(A003331(n+1))+A130572(A130573(n+1)+1)`
-/

namespace A239139.P2478250669225175169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A003331 (n + 1)).toNat + A130572 (A130573 (n + 1) + 1).toNat

end

end A239139.P2478250669225175169

/-! ## A239139.P184468187658307475

`A158052(A000040(n+1))+A130572(A130573(n+1)+1)`
-/

namespace A239139.P184468187658307475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A000040 (n + 1)).toNat + A130572 (A130573 (n + 1) + 1).toNat

end

end A239139.P184468187658307475

/-! ## A239139.P15247476319732550165

`A328310(A033216(n+1))+A130572(A130573(n+1)+1)`
-/

namespace A239139.P15247476319732550165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A033216 (n + 1)).toNat + A130572 (A130573 (n + 1) + 1).toNat

end

end A239139.P15247476319732550165

/-! ## A239139.P15911592804756972878

`A130571(A353888(A353888(A130571(A130571(n+1)))))`
-/

namespace A239139.P15911592804756972878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (A353888 (A353888 (A130571 (A130571 (n + 1)).toNat).toNat).toNat).toNat

end

end A239139.P15911592804756972878

/-! ## A239139.P8330914498383418226

`A130571(A353888(A239086(A130571(n+1))))`
-/

namespace A239139.P8330914498383418226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (A353888 (A239086 (A130571 (n + 1)).toNat).toNat).toNat

end

end A239139.P8330914498383418226

/-! ## A239139.P17979907021612961070

`A239217(A239086(A130572(A239086(A239217(n+1)))))`
-/

namespace A239139.P17979907021612961070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (A239086 (A130572 (A239086 (A239217 (n + 1)).toNat).toNat).toNat).toNat

end

end A239139.P17979907021612961070

/-!
# A239140: Number of strict partitions of n having standard deviation σ < 1.

The programs for A239140, there is no canonical definition to state claims against.
-/

/-! ## A239140.P1918498698879200256

`A040001(n)+char[3*n+5]`
-/

namespace A239140.P1918498698879200256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A239140.P1918498698879200256

/-!
# A239141: Number of strict partitions of n having standard deviation <= 1.

The programs for A239141, the canonical program `A239141.P4034433659940548801` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239141 has offset 1).

The definition of A239141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239141.P4034433659940548801

`a(n%3)+1` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239141

/-- `a(n%3)+1` -/
def P4034433659940548801.Spec : Prop :=
  ∀ n, (P4034433659940548801.a n : ℤ) = A239141 (n + 1)

theorem P4034433659940548801.correct : P4034433659940548801.Spec := by
  intro n
  simp only [A239141, Nat.add_sub_cancel]

end A239141

/-!
# A239142: Number of strict partitions of n having standard deviation sigma > 1.

The programs for A239142, there is no canonical definition to state claims against.
-/

/-! ## A239142.P3814489884552389955

`A239143(n+1)-char[2*n+3]`
-/

namespace A239142.P3814489884552389955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239143 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A239142.P3814489884552389955

/-! ## A239142.P3138477354364500294

`Δ[A036469(n)]-A239141(n+1)`
-/

namespace A239142.P3138477354364500294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A239141 (n + 1)

end

end A239142.P3138477354364500294

/-! ## A239142.P10980112393507223782

`A000009(n+1)-A239141(n+1)`
-/

namespace A239142.P10980112393507223782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A239141 (n + 1)

end

end A239142.P10980112393507223782

/-! ## A239142.P18133690449843017508

`abs(A081360(n+1))-A239141(n+1)`
-/

namespace A239142.P18133690449843017508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (n + 1)| - A239141 (n + 1)

end

end A239142.P18133690449843017508

/-! ## A239142.P4335502975850075970

`A239143(n+1)-n%2-A159075(n)`
-/

namespace A239142.P4335502975850075970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239143 (n + 1) - ((n % 2 : ℕ) : ℤ) - A159075 n

end

end A239142.P4335502975850075970

/-! ## A239142.P4979740133377918824

`A079126(A027379(n)-Δ[A002264(n)])`
-/

namespace A239142.P4979740133377918824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (A027379 n - (f1 (n + 1) - f1 n)).toNat

end

end A239142.P4979740133377918824

/-! ## A239142.P9653743950842637108

`A079126(A027379(n)-char[A016789(n)])`
-/

namespace A239142.P9653743950842637108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (A027379 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A239142.P9653743950842637108

/-! ## A239142.P13570178109397618055

`A091602(A000124(n))-A239141(n+1)`
-/

namespace A239142.P13570178109397618055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A000124 n).toNat - A239141 (n + 1)

end

end A239142.P13570178109397618055

/-! ## A239142.P8606597034859313239

`A239140(n+1)+A239143(n+1)-A239141(n+1)`
-/

namespace A239142.P8606597034859313239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (n + 1) + (A239143 (n + 1) - A239141 (n + 1))

end

end A239142.P8606597034859313239

/-!
# A239143: Number of strict partitions of n having standard deviation σ >= 1.

The programs for A239143, there is no canonical definition to state claims against.
-/

/-! ## A239143.P1981149504971741697

`A239142(n+1)+char[2*n+3]`
-/

namespace A239143.P1981149504971741697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239142 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A239143.P1981149504971741697

/-! ## A239143.P10184387130034104316

`Δ[A036469(n)]-A239140(n+1)`
-/

namespace A239143.P10184387130034104316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A239140 (n + 1)

end

end A239143.P10184387130034104316

/-! ## A239143.P17768327069427842905

`A267043(n+1)+A239142(n+1)`
-/

namespace A239143.P17768327069427842905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 (n + 1) + A239142 (n + 1)

end

end A239143.P17768327069427842905

/-! ## A239143.P8169062347131639134

`A000009(n+1)-A239140(n+1)`
-/

namespace A239143.P8169062347131639134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A239140 (n + 1)

end

end A239143.P8169062347131639134

/-! ## A239143.P3827516545416969793

`abs(A081360(n+1))-A239140(n+1)`
-/

namespace A239143.P3827516545416969793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (n + 1)| - A239140 (n + 1)

end

end A239143.P3827516545416969793

/-! ## A239143.P12350992870212887207

`A079126(∑[n+2]-A239140(n+1))`
-/

namespace A239143.P12350992870212887207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A239140 (n + 1)).toNat

end

end A239143.P12350992870212887207

/-! ## A239143.P5061707081691702540

`A091602(A000124(n))-A239140(n+1)`
-/

namespace A239143.P5061707081691702540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A000124 n).toNat - A239140 (n + 1)

end

end A239143.P5061707081691702540

/-! ## A239143.P13840425305707129507

`A239141(n+1)+A239142(n+1)-A239140(n+1)`
-/

namespace A239143.P13840425305707129507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239141 (n + 1) + (A239142 (n + 1) - A239140 (n + 1))

end

end A239143.P13840425305707129507

/-!
# A239144: Number T(n,k) of self-inverse permutations p on [n] such that all transposition distances (if any) are larger than k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A239144, there is no canonical definition to state claims against.
-/

/-! ## A239144.P4918724861447288704

`A108947(lt[A354522(3*n), A135313(n)])`
-/

namespace A239144.P4918724861447288704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354522 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239144.P4918724861447288704

/-! ## A239144.P10799124561864859294

`A108947(lt[A354522(3*n), A269939(n)])`
-/

namespace A239144.P10799124561864859294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354522 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239144.P10799124561864859294

/-! ## A239144.P16814883847998460398

`A111449(A114423(n))`
-/

namespace A239144.P16814883847998460398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111449 (A114423 n).toNat

end

end A239144.P16814883847998460398

/-! ## A239144.P257749387444242583

`A094838(A158793(n))`
-/

namespace A239144.P257749387444242583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094838 (A158793 n).toNat

end

end A239144.P257749387444242583

/-! ## A239144.P9864604289932052645

`A227581(A121412(n))`
-/

namespace A239144.P9864604289932052645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227581 (A121412 n).toNat

end

end A239144.P9864604289932052645

/-!
# A239145: Number T(n,k) of self-inverse permutations p on [n] where the minimal transposition distance equals k (k=0 for the identity permutation); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A239145, there is no canonical definition to state claims against.
-/

/-! ## A239145.P5262799212298315049

`A163352((A106234(n+1)+Δ[A238303(n)])²)`
-/

namespace A239145.P5262799212298315049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ((A106234 (n + 1) + (f1 (n + 1) - f1 n)) ^ 2).toNat

end

end A239145.P5262799212298315049

/-! ## A239145.P6086873247888639474

`A028310(A238802(n))%A001411(A327805(n))`
-/

namespace A239145.P6086873247888639474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A238802 n).toNat) (A001411 (A327805 n).toNat)

end

end A239145.P6086873247888639474

/-! ## A239145.P11742369242597572046

`A370461(2^A055277(n+1))`
-/

namespace A239145.P11742369242597572046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370461 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A055277 (n + 1) : ℤ))).toNat

end

end A239145.P11742369242597572046

/-! ## A239145.P17982120727409635778

`A285189(A004248(n+1)^A076620(n+1))`
-/

namespace A239145.P17982120727409635778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (SequenceMachineLib.roundAway ((A004248 (n + 1) : ℚ) ^ (A076620 (n + 1) : ℤ))).toNat

end

end A239145.P17982120727409635778

/-! ## A239145.P13597734252144882433

`A061196(A331278(n+1))`
-/

namespace A239145.P13597734252144882433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061196 (A331278 (n + 1)).toNat

end

end A239145.P13597734252144882433

/-!
# A239146: Smallest k>0 such that n +/ - k and n^2 +/ - k are all prime. a(n) = 0 if no such number exists.

The programs for A239146, there is no canonical definition to state claims against.
-/

/-! ## A239146.P11817442021091974271

`A102762(n)%A053737(A027423(n))`
-/

namespace A239146.P11817442021091974271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102762 n) (A053737 (A027423 n).toNat)

end

end A239146.P11817442021091974271

/-! ## A239146.P6235079065414096841

`A073311(A057977(n))%A032742(n+1)`
-/

namespace A239146.P6235079065414096841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073311 (A057977 n).toNat) (A032742 (n + 1))

end

end A239146.P6235079065414096841

/-! ## A239146.P8893927094081269782

`A254114(A263337(n+1))*A300817(n+1)`
-/

namespace A239146.P8893927094081269782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254114 (A263337 (n + 1)).toNat * A300817 (n + 1)

end

end A239146.P8893927094081269782

/-! ## A239146.P14538587798815537176

`A260443(n+1)%A054030(A157402(n+1))`
-/

namespace A239146.P14538587798815537176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260443 (n + 1)) (A054030 (A157402 (n + 1)).toNat)

end

end A239146.P14538587798815537176

/-! ## A239146.P2381127406155124422

`A083647(A165129(n+1)^A286744(n))`
-/

namespace A239146.P2381127406155124422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083647 (SequenceMachineLib.roundAway ((A165129 (n + 1) : ℚ) ^ (A286744 n : ℤ))).toNat

end

end A239146.P2381127406155124422

/-!
# A239149: Number of (n+1)X(n+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239149, there is no canonical definition to state claims against.
-/

/-! ## A239149.P15211964413222691009

`A239155((n+1)²+n²)`
-/

namespace A239149.P15211964413222691009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 ((n + 1) ^ 2 + n ^ 2)

end

end A239149.P15211964413222691009

/-!
# A239150: Number of (n+1) X (1+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239150, the canonical program `A239150.P3424977769017741868` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239150 has offset 1).

The definition of A239150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239150.P3424977769017741868

`4*a(n-1)+7*a(n-2)-26*a(n-3)+5*a(n-4)+14*a(n-5)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=17, a(4)=96`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239150

/-- `4*a(n-1)+7*a(n-2)-26*a(n-3)+5*a(n-4)+14*a(n-5)` -/
def P3424977769017741868.Spec : Prop :=
  ∀ n, P3424977769017741868.a n = A239150 (n + 1)

theorem P3424977769017741868.correct : P3424977769017741868.Spec := by
  intro n
  simp only [A239150, Nat.add_sub_cancel]

end A239150

/-! ## A239150.P16127840391929161786

`A239155(∑[n+1])`
-/

namespace A239150.P16127840391929161786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239150.P16127840391929161786

namespace A239150

/-- `A239155(∑[n+1])` -/
def P16127840391929161786.Spec : Prop :=
  ∀ n, P16127840391929161786.a n = A239150 (n + 1)

end A239150

/-! ## A239150.P17617770707287336669

`lcm(A121241(n), A239155(A000217(n+1)))`
-/

namespace A239150.P17617770707287336669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121241 n) (A239155 (A000217 (n + 1)).toNat)

end

end A239150.P17617770707287336669

namespace A239150

/-- `lcm(A121241(n), A239155(A000217(n+1)))` -/
def P17617770707287336669.Spec : Prop :=
  ∀ n, (P17617770707287336669.a n : ℤ) = A239150 (n + 1)

end A239150

/-! ## A239150.P9236283464437227522

`A239155(A000217(n+1))%A172109(n+2)`
-/

namespace A239150.P9236283464437227522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239155 (A000217 (n + 1)).toNat) (A172109 (n + 2))

end

end A239150.P9236283464437227522

namespace A239150

/-- `A239155(A000217(n+1))%A172109(n+2)` -/
def P9236283464437227522.Spec : Prop :=
  ∀ n, P9236283464437227522.a n = A239150 (n + 1)

end A239150

/-! ## A239150.P13487244161521299469

`A062157(2*n+1)*A239155(A000217(n+1))`
-/

namespace A239150.P13487244161521299469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n + 1) * A239155 (A000217 (n + 1)).toNat

end

end A239150.P13487244161521299469

namespace A239150

/-- `A062157(2*n+1)*A239155(A000217(n+1))` -/
def P13487244161521299469.Spec : Prop :=
  ∀ n, P13487244161521299469.a n = A239150 (n + 1)

end A239150

/-!
# A239151: Number of (n+1)X(2+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239151, there is no canonical definition to state claims against.
-/

/-! ## A239151.P7759901167914128256

`A239155(∑[n+2])`
-/

namespace A239151.P7759901167914128256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239151.P7759901167914128256

/-! ## A239151.P1885306063731347549

`A239155(A000096(n+1))%A239172(n+1)`
-/

namespace A239151.P1885306063731347549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239155 (A000096 (n + 1)).toNat) (A239172 (n + 1))

end

end A239151.P1885306063731347549

/-!
# A239152: Number of (n+1)X(3+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239152, there is no canonical definition to state claims against.
-/

/-! ## A239152.P14234814435933425285

`A239155(∑[n+3]+1)`
-/

namespace A239152.P14234814435933425285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239152.P14234814435933425285

/-! ## A239152.P898918865699984372

`A043565(n)*A239155(A034856(n+2))`
-/

namespace A239152.P898918865699984372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 n * A239155 (A034856 (n + 2)).toNat

end

end A239152.P898918865699984372

/-! ## A239152.P16963587577786127644

`A239155(A034856(n+2))+A159075(n+2)`
-/

namespace A239152.P16963587577786127644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A034856 (n + 2)).toNat + A159075 (n + 2)

end

end A239152.P16963587577786127644

/-! ## A239152.P1504231053268283162

`A033999(2*n)*A239155(A052905(n)+3)`
-/

namespace A239152.P1504231053268283162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A239155 (A052905 n + 3).toNat

end

end A239152.P1504231053268283162

/-! ## A239152.P10373577304714705910

`A239155(A347633(3*n+4))*A303929(n)`
-/

namespace A239152.P10373577304714705910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A347633 (3 * n + 4)).toNat * A303929 n

end

end A239152.P10373577304714705910

/-!
# A239153: Number of (n+1)X(4+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239153, there is no canonical definition to state claims against.
-/

/-! ## A239153.P2782529583026020182

`A239155(A141214(n+1))`
-/

namespace A239153.P2782529583026020182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A141214 (n + 1)).toNat

end

end A239153.P2782529583026020182

/-! ## A239153.P14907768531383670629

`A239155(A155212(n)+5)`
-/

namespace A239153.P14907768531383670629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A155212 n + 5).toNat

end

end A239153.P14907768531383670629

/-! ## A239153.P12065961055263699779

`A239155(A056000(n)+7)`
-/

namespace A239153.P12065961055263699779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A056000 n + 7).toNat

end

end A239153.P12065961055263699779

/-! ## A239153.P17340457268564768277

`A239155(eq[3, A193592(n)])`
-/

namespace A239153.P17340457268564768277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239153.P17340457268564768277

/-! ## A239153.P15115064968850022203

`A239155(Δ[A006416(n+2)])`
-/

namespace A239153.P15115064968850022203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (f1 (n + 1) - f1 n).toNat

end

end A239153.P15115064968850022203

/-!
# A239154: Number of (n+1)X(5+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239154, there is no canonical definition to state claims against.
-/

/-! ## A239154.P15929421225598057671

`A239155(record[(n-11)*n/2]+11)`
-/

namespace A239154.P15929421225598057671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 11 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 11)).toNat

end

end A239154.P15929421225598057671

/-! ## A239154.P2691266368605737597

`A239155(((n+1)/2+5)*n+11)`
-/

namespace A239154.P2691266368605737597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / 2 + 5) * (n : ℚ) + 11)).toNat

end

end A239154.P2691266368605737597

/-! ## A239154.P14143706282317717427

`A239155(Δ[A023545(n+1)])*A303929(n)`
-/

namespace A239154.P14143706282317717427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (f1 (n + 1) - f1 n).toNat * A303929 n

end

end A239154.P14143706282317717427

/-!
# A239156: Number of (3+1)X(n+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239156, there is no canonical definition to state claims against.
-/

/-! ## A239156.P4399048215842991626

`A239155(∑[n+2]+4)`
-/

namespace A239156.P4399048215842991626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239156.P4399048215842991626

/-! ## A239156.P11441720402438059722

`A239155(A167614(n+1))+A025469(n)`
-/

namespace A239156.P11441720402438059722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A167614 (n + 1)).toNat + A025469 n

end

end A239156.P11441720402438059722

/-! ## A239156.P12718114403705561987

`A239155(A167614(n+1))+A185284(n)`
-/

namespace A239156.P12718114403705561987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A167614 (n + 1)).toNat + A185284 n

end

end A239156.P12718114403705561987

/-! ## A239156.P16239188705475713107

`lcm(A033999(n), A239155(A167614(n+1)))`
-/

namespace A239156.P16239188705475713107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A239155 (A167614 (n + 1)).toNat)

end

end A239156.P16239188705475713107

/-! ## A239156.P1202138545860011151

`or(A000007(n), A239155(A167614(n+1)))`
-/

namespace A239156.P1202138545860011151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A239155 (A167614 (n + 1)).toNat)

end

end A239156.P1202138545860011151

/-!
# A239157: Number of (4+1)X(n+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239157, there is no canonical definition to state claims against.
-/

/-! ## A239157.P12829136352044346379

`A239155(A141214(n)+7)`
-/

namespace A239157.P12829136352044346379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A141214 n + 7).toNat

end

end A239157.P12829136352044346379

/-! ## A239157.P13647745045249875278

`A239155(A052905(n)+9)`
-/

namespace A239157.P13647745045249875278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A052905 n + 9).toNat

end

end A239157.P13647745045249875278

/-! ## A239157.P13152783012873072702

`A239155(A055999(n)+10)`
-/

namespace A239157.P13152783012873072702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A055999 n + 10).toNat

end

end A239157.P13152783012873072702

/-! ## A239157.P7166967439007060799

`A239155(eq[5, A066657(n)])`
-/

namespace A239157.P7166967439007060799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239157.P7166967439007060799

/-! ## A239157.P3071533318579134377

`A239155(A167614(n+2)+1)`
-/

namespace A239157.P3071533318579134377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A167614 (n + 2) + 1).toNat

end

end A239157.P3071533318579134377

/-!
# A239158: Number of (5+1)X(n+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239158, there is no canonical definition to state claims against.
-/

/-! ## A239158.P1542023036121741046

`A239155(A155212(n)+13)`
-/

namespace A239158.P1542023036121741046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A155212 n + 13).toNat

end

end A239158.P1542023036121741046

/-! ## A239158.P18181221655729268229

`A239155(A056000(n)+15)`
-/

namespace A239158.P18181221655729268229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A056000 n + 15).toNat

end

end A239158.P18181221655729268229

/-! ## A239158.P525911013806478307

`A239155(eq[7, A066657(n)])`
-/

namespace A239158.P525911013806478307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239158.P525911013806478307

/-! ## A239158.P9786318227957226654

`A239155(A166136(n+3)-1)`
-/

namespace A239158.P9786318227957226654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A166136 (n + 3) - 1).toNat

end

end A239158.P9786318227957226654

/-! ## A239158.P10922384236096852987

`A239155(A000124(n+4)+4)`
-/

namespace A239158.P10922384236096852987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A000124 (n + 4) + 4).toNat

end

end A239158.P10922384236096852987

/-!
# A239159: Number of (6+1)X(n+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239159, there is no canonical definition to state claims against.
-/

/-! ## A239159.P3842837078081981800

`A239155(A167499(n+4)+1)`
-/

namespace A239159.P3842837078081981800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A167499 (n + 4) + 1).toNat

end

end A239159.P3842837078081981800

/-! ## A239159.P14879307546125451105

`A239155(A167614(n+4)+3)`
-/

namespace A239159.P14879307546125451105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A167614 (n + 4) + 3).toNat

end

end A239159.P14879307546125451105

/-! ## A239159.P14942429530360545429

`A239155(A133263(n+5)+4)`
-/

namespace A239159.P14942429530360545429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A133263 (n + 5) + 4).toNat

end

end A239159.P14942429530360545429

/-! ## A239159.P12115018233030997044

`A239155(A000124(n+5)+5)`
-/

namespace A239159.P12115018233030997044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (A000124 (n + 5) + 5).toNat

end

end A239159.P12115018233030997044

/-! ## A239159.P14209996512198693331

`A239155(eq[7, A131818(n+1)])`
-/

namespace A239159.P14209996512198693331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239159.P14209996512198693331

/-!
# A239160: Number of (7+1)X(n+1) 0..3 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A239160, there is no canonical definition to state claims against.
-/

/-! ## A239160.P1558640374387782998

`A239155(eq[11, A066657(n)])`
-/

namespace A239160.P1558640374387782998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239160.P1558640374387782998

/-!
# A239161: Numbers k such that the ratio (sum of divisors of k) /(sum of divisors d of k with d <= sqrt(k)) is an integer.

The programs for A239161, there is no canonical definition to state claims against.
-/

/-! ## A239161.P1025411482172685392

`lt[A000203(n+1)%A066839(n+1), 1]+1`
-/

namespace A239161.P1025411482172685392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A066839 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A239161.P1025411482172685392

/-! ## A239161.P5045737941792280167

`eq[A056926(n), A103583(A034781(n+2))]`
-/

namespace A239161.P5045737941792280167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103583 (A034781 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239161.P5045737941792280167

/-! ## A239161.P7329701192964582548

`eq[A008835(A284640(n+1)), A056926(n)]`
-/

namespace A239161.P7329701192964582548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A284640 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239161.P7329701192964582548

/-! ## A239161.P10611241426047440716

`record[A126387(A048728(n))+A008619(n)]`
-/

namespace A239161.P10611241426047440716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (A048728 n).toNat + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239161.P10611241426047440716

/-! ## A239161.P1992609879360881376

`∑[A000034(A007067(n)*A035338(n))]`
-/

namespace A239161.P1992609879360881376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A007067 n * A035338 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239161.P1992609879360881376

/-!
# A239162: Number of partitions of 3^n into parts that are at most n with at least one part of each size.

The programs for A239162, there is no canonical definition to state claims against.
-/

/-! ## A239162.P222524818552557665

`A238012(∑[n+3]+n+3)`
-/

namespace A239162.P222524818552557665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A239162.P222524818552557665

/-! ## A239162.P14877289589547041790

`record[A238012(A060577(n))]`
-/

namespace A239162.P14877289589547041790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239162.P14877289589547041790

/-! ## A239162.P3679736913046112397

`record[A238012(∑[A152271(n+3)])]`
-/

namespace A239162.P3679736913046112397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239162.P3679736913046112397

/-! ## A239162.P12451231018230435701

`ceil(acot(n))*A238012(A060577(n+3))`
-/

namespace A239162.P12451231018230435701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A238012 (A060577 (n + 3)).toNat

end

end A239162.P12451231018230435701

/-!
# A239163: Number of partitions of 4^n into parts that are at most n with at least one part of each size.

The programs for A239163, there is no canonical definition to state claims against.
-/

/-! ## A239163.P7797146827028083664

`A238012(eq[4, A025581(n)])`
-/

namespace A239163.P7797146827028083664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239163.P7797146827028083664

/-! ## A239163.P11353645000482092967

`A238012(eq[5, A193739(n)])`
-/

namespace A239163.P11353645000482092967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239163.P11353645000482092967

/-! ## A239163.P7513705870168007983

`A238012(eq[16, A130321(n)])`
-/

namespace A239163.P7513705870168007983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239163.P7513705870168007983

/-! ## A239163.P13809049619879036397

`A238012(A246172(n+1)+9)`
-/

namespace A239163.P13809049619879036397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (A246172 (n + 1) + 9).toNat

end

end A239163.P13809049619879036397

/-! ## A239163.P11481227477106863241

`A238012(eq[5, A004736(n+1)])`
-/

namespace A239163.P11481227477106863241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239163.P11481227477106863241

/-!
# A239164: Number of partitions of 5^n into parts that are at most n with at least one part of each size.

The programs for A239164, there is no canonical definition to state claims against.
-/

/-! ## A239164.P10357160426733087231

`record[A238012(A055999(n))]`
-/

namespace A239164.P10357160426733087231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239164.P10357160426733087231

/-! ## A239164.P1714484182272685929

`record[A238012(A055998(n)+n)]`
-/

namespace A239164.P1714484182272685929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239164.P1714484182272685929

/-!
# A239165: Number of partitions of 6^n into parts that are at most n with at least one part of each size.

The programs for A239165, there is no canonical definition to state claims against.
-/

/-! ## A239165.P15605892711502759663

`A238012(eq[6, A025581(n)])`
-/

namespace A239165.P15605892711502759663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239165.P15605892711502759663

/-!
# A239166: Number of partitions of 7^n into parts that are at most n with at least one part of each size.

The programs for A239166, there is no canonical definition to state claims against.
-/

/-! ## A239166.P13990821890727231949

`record[A238012(A155212(n))]`
-/

namespace A239166.P13990821890727231949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239166.P13990821890727231949

/-! ## A239166.P11320763805909607560

`A238012(eq[7, A025581(n)])`
-/

namespace A239166.P11320763805909607560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239166.P11320763805909607560

/-! ## A239166.P257584961958116463

`record[A238012(A055999(n+1)-2)]`
-/

namespace A239166.P257584961958116463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (A055999 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239166.P257584961958116463

/-!
# A239169: Number of partitions of 10^n into parts that are at most n with at least one part of each size.

The programs for A239169, there is no canonical definition to state claims against.
-/

/-! ## A239169.P14461900381094769060

`A238012(A161680(n+12)-11)`
-/

namespace A239169.P14461900381094769060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (A161680 (n + 12) - 11).toNat

end

end A239169.P14461900381094769060

/-!
# A239170: Number of (n+1) X (n+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239170, there is no canonical definition to state claims against.
-/

/-! ## A239170.P17392829494867737868

`A239178((n+1)²+n²)`
-/

namespace A239170.P17392829494867737868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 ((n + 1) ^ 2 + n ^ 2)

end

end A239170.P17392829494867737868

/-!
# A239171: Number of (n+1) X (1+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239171, the canonical program `A239171.P5942598577120448476` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239171 has offset 1).

The definition of A239171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239171.P5942598577120448476

`2*(a(n-1)+a(n-2))` with `a(0)=6, a(1)=12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A239171

/-- `2*(a(n-1)+a(n-2))` -/
def P5942598577120448476.Spec : Prop :=
  ∀ n, (P5942598577120448476.a n : ℤ) = A239171 (n + 1)

theorem P5942598577120448476.correct : P5942598577120448476.Spec := by
  intro n
  simp only [A239171, Nat.add_sub_cancel]

end A239171

/-! ## A239171.P5955557722688865353

`(3+sqrt(3))*(1+sqrt(3))^n+(3-sqrt(3))*(1-sqrt(3))^n`
-/

namespace A239171.P5955557722688865353
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 + Real.sqrt (3 : ℝ)) * (1 + Real.sqrt (3 : ℝ)) ^ n + (3 - Real.sqrt (3 : ℝ)) * (1 - Real.sqrt (3 : ℝ)) ^ n

end

end A239171.P5955557722688865353

namespace A239171

/-- `(3+sqrt(3))*(1+sqrt(3))^n+(3-sqrt(3))*(1-sqrt(3))^n` -/
def P5955557722688865353.Spec : Prop :=
  ∀ n, P5955557722688865353.a n = (A239171 (n + 1) : ℝ)

end A239171

/-! ## A239171.P12742196749073051648

`A398309(n+4)`
-/

namespace A239171.P12742196749073051648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398309 (n + 4)

end

end A239171.P12742196749073051648

namespace A239171

/-- `A398309(n+4)` -/
def P12742196749073051648.Spec : Prop :=
  ∀ n, P12742196749073051648.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P8249608705702900210

`Δ[A080040(n+1)]`
-/

namespace A239171.P8249608705702900210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239171.P8249608705702900210

namespace A239171

/-- `Δ[A080040(n+1)]` -/
def P8249608705702900210.Spec : Prop :=
  ∀ n, P8249608705702900210.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P13084586935715073305

`∑[3*A080040(n)]`
-/

namespace A239171.P13084586935715073305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A080040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239171.P13084586935715073305

namespace A239171

/-- `∑[3*A080040(n)]` -/
def P13084586935715073305.Spec : Prop :=
  ∀ n, P13084586935715073305.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P8978713962265086363

`∑[6*A026150(n)]`
-/

namespace A239171.P8978713962265086363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239171.P8978713962265086363

namespace A239171

/-- `∑[6*A026150(n)]` -/
def P8978713962265086363.Spec : Prop :=
  ∀ n, P8978713962265086363.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P7830068898986116438

`2*A083337(n+1)`
-/

namespace A239171.P7830068898986116438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083337 (n + 1)

end

end A239171.P7830068898986116438

namespace A239171

/-- `2*A083337(n+1)` -/
def P7830068898986116438.Spec : Prop :=
  ∀ n, P7830068898986116438.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P3682844120679319468

`3*A152035(n+1)`
-/

namespace A239171.P3682844120679319468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A152035 (n + 1)

end

end A239171.P3682844120679319468

namespace A239171

/-- `3*A152035(n+1)` -/
def P3682844120679319468.Spec : Prop :=
  ∀ n, P3682844120679319468.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P951416739370291503

`3*A293007(n+2)`
-/

namespace A239171.P951416739370291503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A293007 (n + 2)

end

end A239171.P951416739370291503

namespace A239171

/-- `3*A293007(n+2)` -/
def P951416739370291503.Spec : Prop :=
  ∀ n, P951416739370291503.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P882222297227538283

`3*A028860(n+3)`
-/

namespace A239171.P882222297227538283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028860 (n + 3)

end

end A239171.P882222297227538283

namespace A239171

/-- `3*A028860(n+3)` -/
def P882222297227538283.Spec : Prop :=
  ∀ n, P882222297227538283.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P7174446254840653250

`6*A002605(n+1)`
-/

namespace A239171.P7174446254840653250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002605 (n + 1)

end

end A239171.P7174446254840653250

namespace A239171

/-- `6*A002605(n+1)` -/
def P7174446254840653250.Spec : Prop :=
  ∀ n, P7174446254840653250.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P421496923537390038

`6*(A005665(n)+1)`
-/

namespace A239171.P421496923537390038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A005665 n + 1)

end

end A239171.P421496923537390038

namespace A239171

/-- `6*(A005665(n)+1)` -/
def P421496923537390038.Spec : Prop :=
  ∀ n, P421496923537390038.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P1003113448257798987

`Δ[2*A026150(n+1)]`
-/

namespace A239171.P1003113448257798987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239171.P1003113448257798987

namespace A239171

/-- `Δ[2*A026150(n+1)]` -/
def P1003113448257798987.Spec : Prop :=
  ∀ n, P1003113448257798987.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P1059937026160682875

`Δ[3*A052948(n+1)]`
-/

namespace A239171.P1059937026160682875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239171.P1059937026160682875

namespace A239171

/-- `Δ[3*A052948(n+1)]` -/
def P1059937026160682875.Spec : Prop :=
  ∀ n, P1059937026160682875.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P2789728489841223814

`3*(A108898(n+1)+1)`
-/

namespace A239171.P2789728489841223814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A108898 (n + 1) + 1)

end

end A239171.P2789728489841223814

namespace A239171

/-- `3*(A108898(n+1)+1)` -/
def P2789728489841223814.Spec : Prop :=
  ∀ n, P2789728489841223814.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P4934690368296382668

`3/2*A116556(n+1)`
-/

namespace A239171.P4934690368296382668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A116556 (n + 1) : ℚ)

end

end A239171.P4934690368296382668

namespace A239171

/-- `3/2*A116556(n+1)` -/
def P4934690368296382668.Spec : Prop :=
  ∀ n, P4934690368296382668.a n = (A239171 (n + 1) : ℚ)

end A239171

/-! ## A239171.P13931779624664218437

`2/3*A232921(n+1)`
-/

namespace A239171.P13931779624664218437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A232921 (n + 1) : ℚ)

end

end A239171.P13931779624664218437

namespace A239171

/-- `2/3*A232921(n+1)` -/
def P13931779624664218437.Spec : Prop :=
  ∀ n, P13931779624664218437.a n = (A239171 (n + 1) : ℚ)

end A239171

/-! ## A239171.P9490651297482920116

`∑[3*Δ[2*A002605(n)]]`
-/

namespace A239171.P9490651297482920116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239171.P9490651297482920116

namespace A239171

/-- `∑[3*Δ[2*A002605(n)]]` -/
def P9490651297482920116.Spec : Prop :=
  ∀ n, P9490651297482920116.a n = A239171 (n + 1)

end A239171

/-! ## A239171.P11840658696542042484

`Δ[record[2*A160572(n+1)]]`
-/

namespace A239171.P11840658696542042484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160572 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239171.P11840658696542042484

namespace A239171

/-- `Δ[record[2*A160572(n+1)]]` -/
def P11840658696542042484.Spec : Prop :=
  ∀ n, P11840658696542042484.a n = A239171 (n + 1)

end A239171

/-!
# A239172: Number of (n+1)X(2+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239172, there is no canonical definition to state claims against.
-/

/-! ## A239172.P2362701676364456153

`A239178(∑[n+2])`
-/

namespace A239172.P2362701676364456153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239172.P2362701676364456153

/-! ## A239172.P5990516218294910683

`record[A239178(Δ[A003453(n+5)])]`
-/

namespace A239172.P5990516218294910683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239172.P5990516218294910683

/-! ## A239172.P7877878947312364644

`record[gcd(A113678(n+1), A239178(n+2))]`
-/

namespace A239172.P7877878947312364644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113678 (n + 1)) (A239178 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239172.P7877878947312364644

/-! ## A239172.P1355151952511001567

`A239178(A005408(n)+A000124(n))*A340365(n+1)`
-/

namespace A239172.P1355151952511001567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A005408 n + A000124 n).toNat * A340365 (n + 1)

end

end A239172.P1355151952511001567

/-! ## A239172.P16727207379739114864

`A239178(A005408(n)+A000124(n))%A239173(n+1)`
-/

namespace A239172.P16727207379739114864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239178 (A005408 n + A000124 n).toNat) (A239173 (n + 1))

end

end A239172.P16727207379739114864

/-!
# A239173: Number of (n+1)X(3+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239173, there is no canonical definition to state claims against.
-/

/-! ## A239173.P14861504693313303847

`A239178(∑[n+3]+1)`
-/

namespace A239173.P14861504693313303847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239173.P14861504693313303847

/-! ## A239173.P7934682178590815650

`A239178(A034856(n+2))*A304327(2*n+1)`
-/

namespace A239173.P7934682178590815650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A034856 (n + 2)).toNat * A304327 (2 * n + 1)

end

end A239173.P7934682178590815650

/-!
# A239174: Number of (n+1)X(4+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239174, there is no canonical definition to state claims against.
-/

/-! ## A239174.P17053236038836883890

`A239178(A141214(n+1))`
-/

namespace A239174.P17053236038836883890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A141214 (n + 1)).toNat

end

end A239174.P17053236038836883890

/-! ## A239174.P1100012585678246614

`A239178(A155212(n)+5)`
-/

namespace A239174.P1100012585678246614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A155212 n + 5).toNat

end

end A239174.P1100012585678246614

/-! ## A239174.P12864299960384960851

`A239178(A056000(n)+7)`
-/

namespace A239174.P12864299960384960851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A056000 n + 7).toNat

end

end A239174.P12864299960384960851

/-! ## A239174.P11196640003280993444

`A239178(eq[2, A054123(n)])`
-/

namespace A239174.P11196640003280993444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239174.P11196640003280993444

/-! ## A239174.P12323417377795280415

`A239178(eq[4, A140996(n)])`
-/

namespace A239174.P12323417377795280415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239174.P12323417377795280415

/-!
# A239175: Number of (n+1)X(5+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239175, there is no canonical definition to state claims against.
-/

/-! ## A239175.P1794346938739206208

`A239178(Δ[A264443(n)])`
-/

namespace A239175.P1794346938739206208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (f1 (n + 1) - f1 n).toNat

end

end A239175.P1794346938739206208

/-! ## A239175.P3704643976452497146

`A239178(A056115(n)+11)`
-/

namespace A239175.P3704643976452497146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A056115 n + 11).toNat

end

end A239175.P3704643976452497146

/-! ## A239175.P11937864860365895201

`A239178(eq[4, A193592(n)])`
-/

namespace A239175.P11937864860365895201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239175.P11937864860365895201

/-! ## A239175.P18206126458683768213

`A239178(Δ[A023545(n+1)])`
-/

namespace A239175.P18206126458683768213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (f1 (n + 1) - f1 n).toNat

end

end A239175.P18206126458683768213

/-! ## A239175.P17673259682093452294

`A239178(eq[5, A200370(n+1)])`
-/

namespace A239175.P17673259682093452294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239175.P17673259682093452294

/-!
# A239176: Number of (n+1)X(6+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239176, there is no canonical definition to state claims against.
-/

/-! ## A239176.P2597580617616156137

`A239178(eq[3, A219347(n)])`
-/

namespace A239176.P2597580617616156137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239176.P2597580617616156137

/-! ## A239176.P10762175163061062687

`A239178(A000124(n+6)-6)`
-/

namespace A239176.P10762175163061062687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A000124 (n + 6) - 6).toNat

end

end A239176.P10762175163061062687

/-!
# A239177: Number of (n+1)X(7+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239177, there is no canonical definition to state claims against.
-/

/-! ## A239177.P2736410126698609761

`A239178(A055999(n+4))`
-/

namespace A239177.P2736410126698609761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A055999 (n + 4)).toNat

end

end A239177.P2736410126698609761

/-! ## A239177.P17367173366475090173

`A239178(eq[4, A219347(n)])`
-/

namespace A239177.P17367173366475090173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239177.P17367173366475090173

/-!
# A239179: Number of (1+1) X (n+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239179, there is no canonical definition to state claims against.
-/

/-! ## A239179.P15941797974590787874

`sqrt(A239181(n+1))`
-/

namespace A239179.P15941797974590787874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239181 (n + 1) : ℝ)

end

end A239179.P15941797974590787874

/-! ## A239179.P12265084174265909450

`A239178(∑[n]+1)`
-/

namespace A239179.P12265084174265909450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239179.P12265084174265909450

/-! ## A239179.P13688936628968850074

`record[A239178(∑[A057979(n)])]`
-/

namespace A239179.P13688936628968850074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239179.P13688936628968850074

/-! ## A239179.P10367412910811113632

`record[A239178(n+1)/A285066(n)]`
-/

namespace A239179.P10367412910811113632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239178 (n + 1) : ℚ) / (A285066 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239179.P10367412910811113632

/-! ## A239179.P13141154160006489136

`record[root(A239178(n+1), A008288(n))]`
-/

namespace A239179.P13141154160006489136
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239178 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239179.P13141154160006489136

/-!
# A239180: Number of (2+1)X(n+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239180, there is no canonical definition to state claims against.
-/

/-! ## A239180.P1682382007276526277

`A239178(∑[n+1]+2)`
-/

namespace A239180.P1682382007276526277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239180.P1682382007276526277

/-! ## A239180.P2948348441417464971

`record[gcd(A073200(n), A239178(n+3))]`
-/

namespace A239180.P2948348441417464971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073200 n) (A239178 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239180.P2948348441417464971

/-! ## A239180.P5413280189289586845

`lcm(2, A239178(A000217(n+1)+2))`
-/

namespace A239180.P5413280189289586845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A239178 (A000217 (n + 1) + 2).toNat)

end

end A239180.P5413280189289586845

/-!
# A239181: Number of (3+1)X(n+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239181, there is no canonical definition to state claims against.
-/

/-! ## A239181.P4281234110719480101

`A239179(n+1)²`
-/

namespace A239181.P4281234110719480101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239179 (n + 1) ^ 2

end

end A239181.P4281234110719480101

/-! ## A239181.P17271162527521063967

`(A239179(n+2)-Δ[A239179(n+1)])^2`
-/

namespace A239181.P17271162527521063967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A239179 (n + 2) - (f1 (n + 1) - f1 n)) ^ 2

end

end A239181.P17271162527521063967

/-! ## A239181.P14752161028456777325

`A239179(n+1)^A000032(floor(n/(n+1)))`
-/

namespace A239181.P14752161028456777325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239179 (n + 1) : ℚ) ^ (A000032 ⌊(n : ℚ) / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A239181.P14752161028456777325

/-! ## A239181.P9493523184874374883

`A239179(n+1)^A001316(A001316(n))`
-/

namespace A239181.P9493523184874374883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239179 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A239181.P9493523184874374883

/-! ## A239181.P9954512013773553590

`A239179(n+1)^A239140(A239129(n+1))`
-/

namespace A239181.P9954512013773553590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239179 (n + 1) : ℚ) ^ (A239140 (A239129 (n + 1)).toNat : ℤ)

end

end A239181.P9954512013773553590

/-! ## A239181.P2793422191587992819

`A239179(n+1)^A325564(A243844(n+1))`
-/

namespace A239181.P2793422191587992819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239179 (n + 1) : ℚ) ^ (A325564 (A243844 (n + 1)).toNat : ℤ)

end

end A239181.P2793422191587992819

/-! ## A239181.P11586454371818711267

`A239179(n+1)^A000430(val(A239129(n+1), 2)+1)`
-/

namespace A239181.P11586454371818711267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239179 (n + 1) : ℚ) ^ (A000430 (SequenceMachineLib.valuation (A239129 (n + 1)).toNat 2 + 1) : ℤ)

end

end A239181.P11586454371818711267

/-!
# A239182: Number of (4+1)X(n+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239182, there is no canonical definition to state claims against.
-/

/-! ## A239182.P5760655505273576254

`A239178(A141214(n)+7)`
-/

namespace A239182.P5760655505273576254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A141214 n + 7).toNat

end

end A239182.P5760655505273576254

/-! ## A239182.P2056494395095126381

`A239178(A052905(n)+9)`
-/

namespace A239182.P2056494395095126381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A052905 n + 9).toNat

end

end A239182.P2056494395095126381

/-! ## A239182.P3772529654103648954

`A239178(A055999(n)+10)`
-/

namespace A239182.P3772529654103648954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A055999 n + 10).toNat

end

end A239182.P3772529654103648954

/-! ## A239182.P998793068352926513

`A239178(A167614(n+2)+1)`
-/

namespace A239182.P998793068352926513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A167614 (n + 2) + 1).toNat

end

end A239182.P998793068352926513

/-! ## A239182.P8024481451578748557

`A239178(A166136(n+2)-2)`
-/

namespace A239182.P8024481451578748557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A166136 (n + 2) - 2).toNat

end

end A239182.P8024481451578748557

/-!
# A239183: Number of (5+1)X(n+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239183, there is no canonical definition to state claims against.
-/

/-! ## A239183.P11784712956268706147

`A239178(A155212(n)+13)`
-/

namespace A239183.P11784712956268706147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A155212 n + 13).toNat

end

end A239183.P11784712956268706147

/-! ## A239183.P18426508897907316131

`A239178(A056000(n)+15)`
-/

namespace A239183.P18426508897907316131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A056000 n + 15).toNat

end

end A239183.P18426508897907316131

/-! ## A239183.P9728678006264240377

`A239178(eq[7, A066657(n)])`
-/

namespace A239183.P9728678006264240377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239183.P9728678006264240377

/-! ## A239183.P13810664160274931607

`A239178(eq[6, A131818(n+1)])`
-/

namespace A239183.P13810664160274931607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239183.P13810664160274931607

/-! ## A239183.P3626387549128052149

`A239178(A052905(n+3)-(2*n+1))`
-/

namespace A239183.P3626387549128052149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A239183.P3626387549128052149

/-!
# A239184: Number of (6+1)X(n+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239184, there is no canonical definition to state claims against.
-/

/-! ## A239184.P8913683564162189702

`A239178(eq[7, A131818(n+1)])`
-/

namespace A239184.P8913683564162189702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239184.P8913683564162189702

/-!
# A239185: Number of (7+1)X(n+1) 0..2 arrays with no element greater than all horizontal neighbors or equal to all vertical neighbors.

The programs for A239185, there is no canonical definition to state claims against.
-/

/-! ## A239185.P10313016089056532408

`A239178(eq[11, A066657(n)])`
-/

namespace A239185.P10313016089056532408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239185.P10313016089056532408

/-! ## A239185.P5738921330629375754

`A239178(A000217(n+6)+7)`
-/

namespace A239185.P5738921330629375754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (A000217 (n + 6) + 7).toNat

end

end A239185.P5738921330629375754

/-! ## A239185.P14532155817830301844

`A239178(eq[8, A131818(n+1)])`
-/

namespace A239185.P14532155817830301844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239185.P14532155817830301844

/-!
# A239186: Sum of the largest two parts in the partitions of 4n into 4 parts with smallest part equal to 1.

The programs for A239186, the canonical program `A239186.P14905263038245322427` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239186 has offset 1).

The definition of A239186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239186.P6444281044156630646

`A240711(n+1)+A240707(n+1)`
-/

namespace A239186.P6444281044156630646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240711 (n + 1) + A240707 (n + 1)

end

end A239186.P6444281044156630646

namespace A239186

/-- `A240711(n+1)+A240707(n+1)` -/
def P6444281044156630646.Spec : Prop :=
  ∀ n, P6444281044156630646.a n = A239186 (n + 1)

end A239186

/-! ## A239186.P14905263038245322427

`A239056(n+1)-A239059(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A239186

/-- `A239056(n+1)-A239059(n+1)` -/
def P14905263038245322427.Spec : Prop :=
  ∀ n, P14905263038245322427.a n = A239186 (n + 1)

theorem P14905263038245322427.correct : P14905263038245322427.Spec := by
  intro n
  simp only [A239186, Nat.add_sub_cancel]

end A239186

/-! ## A239186.P10249871132100321322

`A239057(n+1)-A239195(n+1)`
-/

namespace A239186.P10249871132100321322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239057 (n + 1) - A239195 (n + 1)

end

end A239186.P10249871132100321322

namespace A239186

/-- `A239057(n+1)-A239195(n+1)` -/
def P10249871132100321322.Spec : Prop :=
  ∀ n, P10249871132100321322.a n = A239186 (n + 1)

end A239186

/-! ## A239186.P12125033643444173079

`A238705(n+1)+A239057(n+1)-A239059(n+1)`
-/

namespace A239186.P12125033643444173079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1) + (A239057 (n + 1) - A239059 (n + 1))

end

end A239186.P12125033643444173079

namespace A239186

/-- `A238705(n+1)+A239057(n+1)-A239059(n+1)` -/
def P12125033643444173079.Spec : Prop :=
  ∀ n, P12125033643444173079.a n = A239186 (n + 1)

end A239186

/-! ## A239186.P6569519575516836199

`A239056(n+1)-(A239195(n+1)+A238705(n+1))`
-/

namespace A239186.P6569519575516836199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - (A239195 (n + 1) + A238705 (n + 1))

end

end A239186.P6569519575516836199

namespace A239186

/-- `A239056(n+1)-(A239195(n+1)+A238705(n+1))` -/
def P6569519575516836199.Spec : Prop :=
  ∀ n, P6569519575516836199.a n = A239186 (n + 1)

end A239186

/-! ## A239186.P15746420695439599641

`A239195(2*n+1)+∑[A005408(2*n)]`
-/

namespace A239186.P15746420695439599641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239186.P15746420695439599641

namespace A239186

/-- `A239195(2*n+1)+∑[A005408(2*n)]` -/
def P15746420695439599641.Spec : Prop :=
  ∀ n, P15746420695439599641.a n = A239186 (n + 1)

end A239186

/-! ## A239186.P13620223785096286923

`A239195(2*n+1)+A000217(2*n+1)`
-/

namespace A239186.P13620223785096286923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (2 * n + 1) + A000217 (2 * n + 1)

end

end A239186.P13620223785096286923

namespace A239186

/-- `A239195(2*n+1)+A000217(2*n+1)` -/
def P13620223785096286923.Spec : Prop :=
  ∀ n, P13620223785096286923.a n = A239186 (n + 1)

end A239186

/-! ## A239186.P18297511536376978936

`A000124(2*n+1)+A239195(2*n+1)-1`
-/

namespace A239186.P18297511536376978936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * n + 1) + (A239195 (2 * n + 1) - 1)

end

end A239186.P18297511536376978936

namespace A239186

/-- `A000124(2*n+1)+A239195(2*n+1)-1` -/
def P18297511536376978936.Spec : Prop :=
  ∀ n, P18297511536376978936.a n = A239186 (n + 1)

end A239186

/-! ## A239186.P14150439868423996659

`A307966(A017137(n))`
-/

namespace A239186.P14150439868423996659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307966 (A017137 n).toNat

end

end A239186.P14150439868423996659

namespace A239186

/-- `A307966(A017137(n))` -/
def P14150439868423996659.Spec : Prop :=
  ∀ n, P14150439868423996659.a n = A239186 (n + 1)

end A239186

/-! ## A239186.P8737135575057423562

`A307872(8*n+3)+A000217(2*n+1)`
-/

namespace A239186.P8737135575057423562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (8 * n + 3) + A000217 (2 * n + 1)

end

end A239186.P8737135575057423562

namespace A239186

/-- `A307872(8*n+3)+A000217(2*n+1)` -/
def P8737135575057423562.Spec : Prop :=
  ∀ n, P8737135575057423562.a n = A239186 (n + 1)

end A239186

/-!
# A239187: Number of n X n 0..4 arrays with no element equal to the sum of elements to its left or the sum of the elements above it, modulo 5.

The programs for A239187, there is no canonical definition to state claims against.
-/

/-! ## A239187.P5369117792443477870

`A239194((n+1)²+n²)`
-/

namespace A239187.P5369117792443477870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 ((n + 1) ^ 2 + n ^ 2)

end

end A239187.P5369117792443477870

/-!
# A239188: Number of n X 2 0..4 arrays with no element equal to the sum of elements to its left or the sum of elements above it, modulo 5.

The programs for A239188, there is no canonical definition to state claims against.
-/

/-! ## A239188.P12451318552899148483

`A239194(∑[n+1]+2)`
-/

namespace A239188.P12451318552899148483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239188.P12451318552899148483

/-!
# A239189: Number of nX3 0..4 arrays with no element equal to the sum of elements to its left or the sum of elements above it, modulo 5.

The programs for A239189, there is no canonical definition to state claims against.
-/

/-! ## A239189.P1703718040398029820

`A239194(∑[n+2]+4)`
-/

namespace A239189.P1703718040398029820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239189.P1703718040398029820

/-! ## A239189.P14908327805905248525

`lcm(2, A239194(A167614(n+1)))`
-/

namespace A239189.P14908327805905248525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A239194 (A167614 (n + 1)).toNat)

end

end A239189.P14908327805905248525

/-! ## A239189.P3908302283187695949

`A239194(A167614(n+1))+A065718(n)`
-/

namespace A239189.P3908302283187695949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A167614 (n + 1)).toNat + A065718 n

end

end A239189.P3908302283187695949

/-! ## A239189.P7157843094777279208

`A239194(A167614(n+1))*A351086(n)`
-/

namespace A239189.P7157843094777279208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A167614 (n + 1)).toNat * A351086 n

end

end A239189.P7157843094777279208

/-! ## A239189.P6665053992133535927

`A151838(n)!*A239194(A167614(n+1))`
-/

namespace A239189.P6665053992133535927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151838 n).toNat : ℤ) * A239194 (A167614 (n + 1)).toNat

end

end A239189.P6665053992133535927

/-!
# A239190: Number of nX4 0..4 arrays with no element equal to the sum of elements to its left or the sum of elements above it, modulo 5.

The programs for A239190, there is no canonical definition to state claims against.
-/

/-! ## A239190.P12203246616182065384

`A239194(A374004(n+1))`
-/

namespace A239190.P12203246616182065384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A374004 (n + 1)).toNat

end

end A239190.P12203246616182065384

/-! ## A239190.P10280095349880568272

`A239194(A141214(n)+7)`
-/

namespace A239190.P10280095349880568272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A141214 n + 7).toNat

end

end A239190.P10280095349880568272

/-! ## A239190.P17886224960057770172

`A239194(A052905(n)+9)`
-/

namespace A239190.P17886224960057770172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A052905 n + 9).toNat

end

end A239190.P17886224960057770172

/-! ## A239190.P5161445410922691524

`A239194(A055999(n)+10)`
-/

namespace A239190.P5161445410922691524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A055999 n + 10).toNat

end

end A239190.P5161445410922691524

/-! ## A239190.P16313312070197017190

`A239194(A167614(n+2)+1)`
-/

namespace A239190.P16313312070197017190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A167614 (n + 2) + 1).toNat

end

end A239190.P16313312070197017190

/-!
# A239191: Number of n X 5 0..4 arrays with no element equal to the sum of elements to its left or the sum of elements above it, modulo 5.

The programs for A239191, there is no canonical definition to state claims against.
-/

/-! ## A239191.P11612283669255763823

`A239194(A374005(n+1))`
-/

namespace A239191.P11612283669255763823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A374005 (n + 1)).toNat

end

end A239191.P11612283669255763823

/-! ## A239191.P11074055803513737491

`A239194(eq[4, A193592(n)])`
-/

namespace A239191.P11074055803513737491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239191.P11074055803513737491

/-! ## A239191.P5305533270676635034

`A239194(eq[8, A057728(n+1)])`
-/

namespace A239191.P5305533270676635034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239191.P5305533270676635034

/-!
# A239192: Number of nX6 0..4 arrays with no element equal to the sum of elements to its left or the sum of elements above it, modulo 5.

The programs for A239192, there is no canonical definition to state claims against.
-/

/-! ## A239192.P16131502871526815306

`A239194(A374007(n+1))`
-/

namespace A239192.P16131502871526815306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A374007 (n + 1)).toNat

end

end A239192.P16131502871526815306

/-! ## A239192.P18289764760902069030

`A239194(eq[5, A002262(n)]+1)`
-/

namespace A239192.P18289764760902069030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239192.P18289764760902069030

/-! ## A239192.P12661178010446899359

`A239194(eq[7, A131818(n+1)])`
-/

namespace A239192.P12661178010446899359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239192.P12661178010446899359

/-! ## A239192.P9985247236746535957

`A239194(eq[5, A193592(n)])`
-/

namespace A239192.P9985247236746535957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239192.P9985247236746535957

/-! ## A239192.P8978682908547443263

`A239194(eq[8, A258709(n)])`
-/

namespace A239192.P8978682908547443263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239192.P8978682908547443263

/-!
# A239193: 

The programs for A239193, there is no canonical definition to state claims against.
-/

/-! ## A239193.P17055260565345672857

`A239194(A055999(n+4))`
-/

namespace A239193.P17055260565345672857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (A055999 (n + 4)).toNat

end

end A239193.P17055260565345672857

/-!
# A239194: T(n,k)=Number of nXk 0..4 arrays with no element equal to the sum of elements to its left or the sum of the elements above it, modulo 5.

The programs for A239194, there is no canonical definition to state claims against.
-/

/-! ## A239194.P1073640251453466664

`A325795(or(A184137(n+1), A325795(n+1)))`
-/

namespace A239194.P1073640251453466664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325795 (Int.lor (A184137 (n + 1)) (A325795 (n + 1))).toNat

end

end A239194.P1073640251453466664

/-!
# A239195: Sum of the next to smallest parts in the partitions of 4n into 4 parts with smallest part = 1.

The programs for A239195, the canonical program `A239195.P10978294607467254277` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239195 has offset 1).

The definition of A239195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239195.P17869808028969850825

`A239059(n+1)-ceil((n+1)*(4*n+2)/3)`
-/

namespace A239195.P17869808028969850825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239059 (n + 1) - ⌈((n + 1) * (4 * n + 2) : ℚ) / 3⌉

end

end A239195.P17869808028969850825

namespace A239195

/-- `A239059(n+1)-ceil((n+1)*(4*n+2)/3)` -/
def P17869808028969850825.Spec : Prop :=
  ∀ n, P17869808028969850825.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P4014551268730987745

`A239057(n+1)-A239186(n+1)`
-/

namespace A239195.P4014551268730987745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239057 (n + 1) - A239186 (n + 1)

end

end A239195.P4014551268730987745

namespace A239195

/-- `A239057(n+1)-A239186(n+1)` -/
def P4014551268730987745.Spec : Prop :=
  ∀ n, P4014551268730987745.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P10249690122747235851

`abs(A238705(n+1)-A239059(n+1))`
-/

namespace A239195.P10249690122747235851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238705 (n + 1) - A239059 (n + 1)|

end

end A239195.P10249690122747235851

namespace A239195

/-- `abs(A238705(n+1)-A239059(n+1))` -/
def P10249690122747235851.Spec : Prop :=
  ∀ n, P10249690122747235851.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P10978294607467254277

`∑[A004773(n+1)*(A004773(n)+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239195

/-- `∑[A004773(n+1)*(A004773(n)+1)]` -/
def P10978294607467254277.Spec : Prop :=
  ∀ n, P10978294607467254277.a n = A239195 (n + 1)

theorem P10978294607467254277.correct : P10978294607467254277.Spec := by
  intro n
  simp only [A239195, Nat.add_sub_cancel]

end A239195

/-! ## A239195.P15680521887709838889

`∑[(A042965(n+1)+1)*A042968(n+1)]`
-/

namespace A239195.P15680521887709838889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042965 (n + 1) + 1) * A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239195.P15680521887709838889

namespace A239195

/-- `∑[(A042965(n+1)+1)*A042968(n+1)]` -/
def P15680521887709838889.Spec : Prop :=
  ∀ n, P15680521887709838889.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P10751455929991464106

`abs(A239059(n+1)-∑[A047539(n+1)-1])`
-/

namespace A239195.P10751455929991464106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047539 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239059 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A239195.P10751455929991464106

namespace A239195

/-- `abs(A239059(n+1)-∑[A047539(n+1)-1])` -/
def P10751455929991464106.Spec : Prop :=
  ∀ n, P10751455929991464106.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P12469296558720765436

`abs(A239059(n+1)-(A256320(n)+1+n+n))`
-/

namespace A239195.P12469296558720765436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239059 (n + 1) - (A256320 n + 1 + (n : ℤ) + (n : ℤ))|

end

end A239195.P12469296558720765436

namespace A239195

/-- `abs(A239059(n+1)-(A256320(n)+1+n+n))` -/
def P12469296558720765436.Spec : Prop :=
  ∀ n, P12469296558720765436.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P15375492214825425805

`A238706(n+1)+A239059(n+1)-A238702(n+1)`
-/

namespace A239195.P15375492214825425805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238706 (n + 1) + (A239059 (n + 1) - A238702 (n + 1))

end

end A239195.P15375492214825425805

namespace A239195

/-- `A238706(n+1)+A239059(n+1)-A238702(n+1)` -/
def P15375492214825425805.Spec : Prop :=
  ∀ n, P15375492214825425805.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P13071163814242825074

`A239056(n+1)-(A239186(n+1)+A238705(n+1))`
-/

namespace A239195.P13071163814242825074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - (A239186 (n + 1) + A238705 (n + 1))

end

end A239195.P13071163814242825074

namespace A239195

/-- `A239056(n+1)-(A239186(n+1)+A238705(n+1))` -/
def P13071163814242825074.Spec : Prop :=
  ∀ n, P13071163814242825074.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P13625129985045746845

`A239057(n+1)+A239059(n+1)-A239056(n+1)`
-/

namespace A239195.P13625129985045746845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239057 (n + 1) + (A239059 (n + 1) - A239056 (n + 1))

end

end A239195.P13625129985045746845

namespace A239195

/-- `A239057(n+1)+A239059(n+1)-A239056(n+1)` -/
def P13625129985045746845.Spec : Prop :=
  ∀ n, P13625129985045746845.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P7075173569559836973

`A239057(n+1)-(A240711(n+1)+A240707(n+1))`
-/

namespace A239195.P7075173569559836973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239057 (n + 1) - (A240711 (n + 1) + A240707 (n + 1))

end

end A239195.P7075173569559836973

namespace A239195

/-- `A239057(n+1)-(A240711(n+1)+A240707(n+1))` -/
def P7075173569559836973.Spec : Prop :=
  ∀ n, P7075173569559836973.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P8120692417481705739

`abs(A239059(n+1)-∑[A047480(n+2)-4])`
-/

namespace A239195.P8120692417481705739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239059 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A239195.P8120692417481705739

namespace A239195

/-- `abs(A239059(n+1)-∑[A047480(n+2)-4])` -/
def P8120692417481705739.Spec : Prop :=
  ∀ n, P8120692417481705739.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P1197060643741070203

`A038390(2*n)`
-/

namespace A239195.P1197060643741070203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038390 (2 * n)

end

end A239195.P1197060643741070203

namespace A239195

/-- `A038390(2*n)` -/
def P1197060643741070203.Spec : Prop :=
  ∀ n, P1197060643741070203.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P444780357721659119

`∑[A000212(2*n+1)+A004396(n+1)²]`
-/

namespace A239195.P444780357721659119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (2 * n + 1) + A004396 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239195.P444780357721659119

namespace A239195

/-- `∑[A000212(2*n+1)+A004396(n+1)²]` -/
def P444780357721659119.Spec : Prop :=
  ∀ n, P444780357721659119.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P10939153524463881702

`∑[A000212(2*n+1)+A008620(2*n)²]`
-/

namespace A239195.P10939153524463881702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (2 * n + 1) + A008620 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239195.P10939153524463881702

namespace A239195

/-- `∑[A000212(2*n+1)+A008620(2*n)²]` -/
def P10939153524463881702.Spec : Prop :=
  ∀ n, P10939153524463881702.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P16786622671752773451

`∑[∑[A100063(n+1)]*A004396(2*n+1)]`
-/

namespace A239195.P16786622671752773451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A004396 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239195.P16786622671752773451

namespace A239195

/-- `∑[∑[A100063(n+1)]*A004396(2*n+1)]` -/
def P16786622671752773451.Spec : Prop :=
  ∀ n, P16786622671752773451.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P15251539981896582635

`abs(A239059(n+1)-∑[A047498(2*n+1)+1])`
-/

namespace A239195.P15251539981896582635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239059 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A239195.P15251539981896582635

namespace A239195

/-- `abs(A239059(n+1)-∑[A047498(2*n+1)+1])` -/
def P15251539981896582635.Spec : Prop :=
  ∀ n, P15251539981896582635.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P14809220865463025483

`A092353(2*n+1)+A092353(2*n)-A211004(2*(n+1))`
-/

namespace A239195.P14809220865463025483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092353 (2 * n + 1) + (A092353 (2 * n) - A211004 (2 * (n + 1)))

end

end A239195.P14809220865463025483

namespace A239195

/-- `A092353(2*n+1)+A092353(2*n)-A211004(2*(n+1))` -/
def P14809220865463025483.Spec : Prop :=
  ∀ n, P14809220865463025483.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P8175701463123664280

`abs(A239059(n+1)-∑[A002264(2*(n+1)+1)+2*n])`
-/

namespace A239195.P8175701463123664280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * (n + 1) + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239059 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A239195.P8175701463123664280

namespace A239195

/-- `abs(A239059(n+1)-∑[A002264(2*(n+1)+1)+2*n])` -/
def P8175701463123664280.Spec : Prop :=
  ∀ n, P8175701463123664280.a n = A239195 (n + 1)

end A239195

/-! ## A239195.P12859427917511747617

`∑[A002620(A004773(2*n)+2)]`
-/

namespace A239195.P12859427917511747617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004773 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239195.P12859427917511747617

namespace A239195

/-- `∑[A002620(A004773(2*n)+2)]` -/
def P12859427917511747617.Spec : Prop :=
  ∀ n, P12859427917511747617.a n = A239195 (n + 1)

end A239195

/-!
# A239197: The record values A075053 associated to the records (indices) listed in A239196.

The programs for A239197, there is no canonical definition to state claims against.
-/

/-! ## A239197.P13081187646708022002

`A075053(A239196(n+1))`
-/

namespace A239197.P13081187646708022002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A239196 (n + 1)).toNat

end

end A239197.P13081187646708022002

/-! ## A239197.P8115343936269883080

`record[A075053(A179239(n))]`
-/

namespace A239197.P8115343936269883080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A179239 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239197.P8115343936269883080

/-! ## A239197.P17279606692147927701

`record[A075053(A320628(n+1))]`
-/

namespace A239197.P17279606692147927701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A320628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239197.P17279606692147927701

/-! ## A239197.P10153413546891888767

`record[A075053(A097338(n+1)+2)]`
-/

namespace A239197.P10153413546891888767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A097338 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239197.P10153413546891888767

/-! ## A239197.P1560881373025299281

`record[A075053(A047486(2*n+1))]`
-/

namespace A239197.P1560881373025299281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A047486 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239197.P1560881373025299281

/-!
# A239198: Expansion of -(3*x^5+sqrt(-7*x^2-6*x+1)*(3*x^4+5*x^3-11*x^2-7*x+2)-24*x^4-34*x^3+10*x^2+15*x-2) / (7*x^5+sqrt(-7*x^2-6*x+1)*(3*x^4+6*x^3-2*x^2+6*x-5)-15*x^4-12*x^3-12*x^2-19*x+3).

The programs for A239198, there is no canonical definition to state claims against.
-/

/-! ## A239198.P7229539904872873007

`A007614(A114174(n))+A001047(n)`
-/

namespace A239198.P7229539904872873007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A114174 n).toNat + A001047 n

end

end A239198.P7229539904872873007

/-! ## A239198.P8658763701653464393

`A004525(A084085(n)+A045721(n))`
-/

namespace A239198.P8658763701653464393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A084085 n + A045721 n).toNat

end

end A239198.P8658763701653464393

/-!
# A239199: Expansion of Pi in the irrational base b=sqrt(3).

The programs for A239199, there is no canonical definition to state claims against.
-/

/-! ## A239199.P8951188115101204904

`A118174(∑{d}[n, #])*A118174(A000330(n))`
-/

namespace A239199.P8951188115101204904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118174 (∑ d ∈ Nat.divisors (f1 n), d) * A118174 (A000330 n).toNat

end

end A239199.P8951188115101204904

/-! ## A239199.P6762674588782757946

`A121262(A327083(n+4)+∑[A004125(3*n+4)])`
-/

namespace A239199.P6762674588782757946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A327083 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239199.P6762674588782757946

/-! ## A239199.P12717320730004608297

`A003849(or(A002236(n+1), A002262(n)))`
-/

namespace A239199.P12717320730004608297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (Int.lor (A002236 (n + 1)) (A002262 n)).toNat

end

end A239199.P12717320730004608297

/-! ## A239199.P8564084623139842469

`A003849(or(A002236(n+1), A056172(n+1)))`
-/

namespace A239199.P8564084623139842469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (Int.lor (A002236 (n + 1)) (A056172 (n + 1))).toNat

end

end A239199.P8564084623139842469

/-! ## A239199.P405171725056687002

`A003849(or(A002236(n+1), A192002(n+1)))`
-/

namespace A239199.P405171725056687002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (Int.lor (A002236 (n + 1)) (A192002 (n + 1))).toNat

end

end A239199.P405171725056687002

