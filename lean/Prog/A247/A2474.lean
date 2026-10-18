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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C025

/-!
# A247400: Number of length n+4 0..4 arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247400, there is no canonical definition to state claims against.
-/

/-! ## A247400.P17499285471920430625

`A247404(A027379(n+2))`
-/

namespace A247400.P17499285471920430625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A027379 (n + 2)).toNat

end

end A247400.P17499285471920430625

/-! ## A247400.P1248517642612405390

`A247404(A055998(n+2))`
-/

namespace A247400.P1248517642612405390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A055998 (n + 2)).toNat

end

end A247400.P1248517642612405390

/-! ## A247400.P1452129596696601904

`A247404(A155212(n)+5)`
-/

namespace A247400.P1452129596696601904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A155212 n + 5).toNat

end

end A247400.P1452129596696601904

/-! ## A247400.P11137721416116642203

`A247404(Δ[A006503(n+1)])`
-/

namespace A247400.P11137721416116642203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n).toNat

end

end A247400.P11137721416116642203

/-! ## A247400.P17176794417014759516

`A247404(Δ[A006416(n+2)])`
-/

namespace A247400.P17176794417014759516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n).toNat

end

end A247400.P17176794417014759516

/-! ## A247400.P1478109515598568248

`A247404(A052905(n+1)+2)`
-/

namespace A247400.P1478109515598568248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A052905 (n + 1) + 2).toNat

end

end A247400.P1478109515598568248

/-! ## A247400.P12910285805331123617

`A247404(Δ[A008778(n+1)]-1)`
-/

namespace A247400.P12910285805331123617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n - 1).toNat

end

end A247400.P12910285805331123617

/-! ## A247400.P11552070714731356135

`A247404(A020715(A052905(n)+n))`
-/

namespace A247400.P11552070714731356135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A020715 (A052905 n + (n : ℤ)).toNat).toNat

end

end A247400.P11552070714731356135

/-! ## A247400.P2711904968668948590

`A247404(A167614(n+1)+A005408(n))`
-/

namespace A247400.P2711904968668948590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A167614 (n + 1) + A005408 n).toNat

end

end A247400.P2711904968668948590

/-!
# A247401: Number of length n+4 0..5 arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247401, there is no canonical definition to state claims against.
-/

/-! ## A247401.P3002039724961946542

`A247404(A046691(n+3))`
-/

namespace A247401.P3002039724961946542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A046691 (n + 3)).toNat

end

end A247401.P3002039724961946542

/-! ## A247401.P16184839351086878864

`A247404(Δ[A023545(n+1)])`
-/

namespace A247401.P16184839351086878864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n).toNat

end

end A247401.P16184839351086878864

/-! ## A247401.P14685931168139605382

`A247404(Δ[A006416(n+3)]-1)`
-/

namespace A247401.P14685931168139605382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n - 1).toNat

end

end A247401.P14685931168139605382

/-! ## A247401.P6854419795678380498

`A247404(A000217(n+4)+n+1)`
-/

namespace A247401.P6854419795678380498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A247401.P6854419795678380498

/-! ## A247401.P10283023539240650537

`A247404(Δ[Δ[A006504(n+1)]]-(n+5))`
-/

namespace A247401.P10283023539240650537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n - (n + 5 : ℤ)).toNat

end

end A247401.P10283023539240650537

/-! ## A247401.P7243917458127725810

`A247404(A000124(A020705(n))+n)`
-/

namespace A247401.P7243917458127725810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A000124 (A020705 n).toNat + (n : ℤ)).toNat

end

end A247401.P7243917458127725810

/-! ## A247401.P16829393886694855760

`A247404(A052905(n+1)+A020715(n))`
-/

namespace A247401.P16829393886694855760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A052905 (n + 1) + A020715 n).toNat

end

end A247401.P16829393886694855760

/-!
# A247402: Number of length n+4 0..6 arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247402, there is no canonical definition to state claims against.
-/

/-! ## A247402.P173476987526062694

`A247404(A052905(n+3))`
-/

namespace A247402.P173476987526062694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A052905 (n + 3)).toNat

end

end A247402.P173476987526062694

/-! ## A247402.P6395247014444426036

`A247404(A046691(n+4)-1)`
-/

namespace A247402.P6395247014444426036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A046691 (n + 4) - 1).toNat

end

end A247402.P6395247014444426036

/-! ## A247402.P11379757456086586737

`A247404(A000124(n+6)-6)`
-/

namespace A247402.P11379757456086586737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A000124 (n + 6) - 6).toNat

end

end A247402.P11379757456086586737

/-! ## A247402.P14810956841723161697

`A247404(A134869(n+6)-6)`
-/

namespace A247402.P14810956841723161697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A134869 (n + 6) - 6).toNat

end

end A247402.P14810956841723161697

/-! ## A247402.P16921383933579130115

`A247404(Δ[Δ[A006504(n+1)]])`
-/

namespace A247402.P16921383933579130115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n).toNat

end

end A247402.P16921383933579130115

/-! ## A247402.P17856047153487264061

`A247404(Δ[A023545(n+2)]-1)`
-/

namespace A247402.P17856047153487264061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n - 1).toNat

end

end A247402.P17856047153487264061

/-! ## A247402.P9354765938258249135

`A247404(A020744(3*n+4)+A000217(n))`
-/

namespace A247402.P9354765938258249135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A020744 (3 * n + 4) + A000217 n).toNat

end

end A247402.P9354765938258249135

/-!
# A247403: Number of length n+4 0..7 arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247403, there is no canonical definition to state claims against.
-/

/-! ## A247403.P4621020883643701928

`A247404(A055999(n+4))`
-/

namespace A247403.P4621020883643701928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A055999 (n + 4)).toNat

end

end A247403.P4621020883643701928

/-! ## A247403.P7372482424808854509

`A247404(A052905(n+4)-1)`
-/

namespace A247403.P7372482424808854509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A052905 (n + 4) - 1).toNat

end

end A247403.P7372482424808854509

/-! ## A247403.P8693327223627502490

`A247404(A046691(n+5)-2)`
-/

namespace A247403.P8693327223627502490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A046691 (n + 5) - 2).toNat

end

end A247403.P8693327223627502490

/-! ## A247403.P18261582722942016496

`A247404(A055998(n+5)-3)`
-/

namespace A247403.P18261582722942016496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A055998 (n + 5) - 3).toNat

end

end A247403.P18261582722942016496

/-! ## A247403.P14684384442140919157

`A247404(A000124(n+7)-7)`
-/

namespace A247403.P14684384442140919157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A000124 (n + 7) - 7).toNat

end

end A247403.P14684384442140919157

/-! ## A247403.P6913284266193660142

`A247404(A134869(n+7)-7)`
-/

namespace A247403.P6913284266193660142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A134869 (n + 7) - 7).toNat

end

end A247403.P6913284266193660142

/-!
# A247404: T(n,k)=Number of length n+4 0..k arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247404, there is no canonical definition to state claims against.
-/

/-! ## A247404.P3704167335861044192

`∑{p}[A035342(n+1), A107126(#)]`
-/

namespace A247404.P3704167335861044192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A107126 p

end

end A247404.P3704167335861044192

/-! ## A247404.P3284953391120892489

`A247405(A004736(n+1)%A352231(3*n+5))`
-/

namespace A247404.P3284953391120892489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247405 (Int.tmod (A004736 (n + 1)) (A352231 (3 * n + 5))).toNat

end

end A247404.P3284953391120892489

/-!
# A247405: Number of length 1+4 0..n arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247405, there is no canonical definition to state claims against.
-/

/-! ## A247405.P17366894832394202784

`(n+2)^5-A247928(n+1)`
-/

namespace A247405.P17366894832394202784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 5 : ℤ) - A247928 (n + 1)

end

end A247405.P17366894832394202784

/-! ## A247405.P13985557870784499942

`A247404(∑[n]+1)`
-/

namespace A247405.P13985557870784499942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247405.P13985557870784499942

/-! ## A247405.P15071998915066349949

`record[gcd(A213177(n), A247404(n+1))]`
-/

namespace A247405.P15071998915066349949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213177 n) (A247404 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247405.P15071998915066349949

/-! ## A247405.P17319480508013845573

`record[(2-A002260(n+1))*A247404(n+1)]`
-/

namespace A247405.P17319480508013845573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002260 (n + 1)) * A247404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247405.P17319480508013845573

/-! ## A247405.P9418297821958958746

`record[A247404(A152947(A002260(n+1)))]`
-/

namespace A247405.P9418297821958958746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A152947 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247405.P9418297821958958746

/-! ## A247405.P7523661395086693473

`record[A247404(A010060(n)+A008805(n))]`
-/

namespace A247405.P7523661395086693473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A010060 n + A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247405.P7523661395086693473

/-!
# A247406: Number of length 2+4 0..n arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247406, there is no canonical definition to state claims against.
-/

/-! ## A247406.P353956177321842554

`A247404(∑[n+1]+2)`
-/

namespace A247406.P353956177321842554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A247406.P353956177321842554

/-! ## A247406.P785687796338590673

`record[A247404(A022856(n+1))]`
-/

namespace A247406.P785687796338590673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247406.P785687796338590673

/-! ## A247406.P6496884778311258852

`lcm(2, A247404(A238531(n+2)))`
-/

namespace A247406.P6496884778311258852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247404 (A238531 (n + 2)).toNat)

end

end A247406.P6496884778311258852

/-! ## A247406.P8670640439977346927

`record[A247404(A238531(A057979(n)))]`
-/

namespace A247406.P8670640439977346927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A238531 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247406.P8670640439977346927

/-! ## A247406.P17847951865355568021

`char[A002260(n+1)]*A247404(A238531(n+2))`
-/

namespace A247406.P17847951865355568021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A247404 (A238531 (n + 2)).toNat

end

end A247406.P17847951865355568021

/-!
# A247407: Number of length 3+4 0..n arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247407, there is no canonical definition to state claims against.
-/

/-! ## A247407.P5514280245318485653

`A247404(∑[n+2]+4)`
-/

namespace A247407.P5514280245318485653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A247407.P5514280245318485653

/-! ## A247407.P8264198888504575431

`lcm(2, A247404(A167614(n+1)))`
-/

namespace A247407.P8264198888504575431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247404 (A167614 (n + 1)).toNat)

end

end A247407.P8264198888504575431

/-! ## A247407.P15314816003553249221

`A057427(n)*A247404(A167614(n+1))`
-/

namespace A247407.P15314816003553249221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A247404 (A167614 (n + 1)).toNat

end

end A247407.P15314816003553249221

/-! ## A247407.P435892749585716878

`A178334(n)*A247404(A167614(n+1))`
-/

namespace A247407.P435892749585716878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A247404 (A167614 (n + 1)).toNat

end

end A247407.P435892749585716878

/-! ## A247407.P11275903852749613973

`A247404(A167614(n+1))*A262681(n)`
-/

namespace A247407.P11275903852749613973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A167614 (n + 1)).toNat * A262681 n

end

end A247407.P11275903852749613973

/-! ## A247407.P15128137729641147674

`A247404(A167614(n+1))%A199689(n)`
-/

namespace A247407.P15128137729641147674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247404 (A167614 (n + 1)).toNat) (A199689 n)

end

end A247407.P15128137729641147674

/-! ## A247407.P16468221191933405486

`and(A057428(n), A247404(A167614(n+1)))`
-/

namespace A247407.P16468221191933405486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A247404 (A167614 (n + 1)).toNat)

end

end A247407.P16468221191933405486

/-!
# A247408: Number of length 4+4 0..n arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247408, there is no canonical definition to state claims against.
-/

/-! ## A247408.P4918706398929947

`A247404(A052905(n)+9)`
-/

namespace A247408.P4918706398929947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A052905 n + 9).toNat

end

end A247408.P4918706398929947

/-! ## A247408.P5106945555427860405

`A247404(A055999(n)+10)`
-/

namespace A247408.P5106945555427860405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A055999 n + 10).toNat

end

end A247408.P5106945555427860405

/-! ## A247408.P16580432314115543834

`A247404(A167614(n+2)+1)`
-/

namespace A247408.P16580432314115543834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A167614 (n + 2) + 1).toNat

end

end A247408.P16580432314115543834

/-! ## A247408.P14673063659579848285

`A247404(Δ[A023545(n+1)-n²])`
-/

namespace A247408.P14673063659579848285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (f1 (n + 1) - f1 n).toNat

end

end A247408.P14673063659579848285

/-! ## A247408.P18319433292335686921

`record[A247404(A038722(A027379(n)))]`
-/

namespace A247408.P18319433292335686921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A038722 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247408.P18319433292335686921

/-! ## A247408.P2302204797139667444

`A247404(A038722(Δ[A006416(n+2)]))`
-/

namespace A247408.P2302204797139667444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A247408.P2302204797139667444

/-!
# A247409: Number of length 5+4 0..n arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247409, there is no canonical definition to state claims against.
-/

/-! ## A247409.P2277043970637702417

`A247404(A167499(n+3))`
-/

namespace A247409.P2277043970637702417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A167499 (n + 3)).toNat

end

end A247409.P2277043970637702417

/-! ## A247409.P5031796099776169839

`A247404(A056000(n)+15)`
-/

namespace A247409.P5031796099776169839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A056000 n + 15).toNat

end

end A247409.P5031796099776169839

/-! ## A247409.P8923395840326997090

`A247404(A167614(n+3)+2)`
-/

namespace A247409.P8923395840326997090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A167614 (n + 3) + 2).toNat

end

end A247409.P8923395840326997090

/-! ## A247409.P3703124005384018475

`A247404(A000217(n+4)+5)`
-/

namespace A247409.P3703124005384018475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A000217 (n + 4) + 5).toNat

end

end A247409.P3703124005384018475

/-! ## A247409.P1549007637383259481

`A247404(A046691(n+2)+9)`
-/

namespace A247409.P1549007637383259481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A046691 (n + 2) + 9).toNat

end

end A247409.P1549007637383259481

/-! ## A247409.P11065195806027128307

`A247404(A002378(n+4)-A052905(n+1))`
-/

namespace A247409.P11065195806027128307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A002378 (n + 4) - A052905 (n + 1)).toNat

end

end A247409.P11065195806027128307

/-!
# A247410: Number of length 6+4 0..n arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247410, there is no canonical definition to state claims against.
-/

/-! ## A247410.P14738586707805493655

`A247404(A167499(n+4)+1)`
-/

namespace A247410.P14738586707805493655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A167499 (n + 4) + 1).toNat

end

end A247410.P14738586707805493655

/-! ## A247410.P10687467009137581387

`A247404(A167614(n+4)+3)`
-/

namespace A247410.P10687467009137581387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A167614 (n + 4) + 3).toNat

end

end A247410.P10687467009137581387

/-! ## A247410.P13618658836187630099

`A247404(A000124(n+5)+5)`
-/

namespace A247410.P13618658836187630099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A000124 (n + 5) + 5).toNat

end

end A247410.P13618658836187630099

/-! ## A247410.P2248292617771458783

`A247404(A000217(n+5)+6)`
-/

namespace A247410.P2248292617771458783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A000217 (n + 5) + 6).toNat

end

end A247410.P2248292617771458783

/-! ## A247410.P7106937317970729213

`A247404(A133263(n+6)-(n+2))`
-/

namespace A247410.P7106937317970729213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A247410.P7106937317970729213

/-!
# A247411: Number of length 7+4 0..n arrays with no disjoint pairs in any consecutive five terms having the same sum.

The programs for A247411, there is no canonical definition to state claims against.
-/

/-! ## A247411.P1361298784129371125

`A247404(A000217(n+6)+7)`
-/

namespace A247411.P1361298784129371125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A000217 (n + 6) + 7).toNat

end

end A247411.P1361298784129371125

/-! ## A247411.P1976384192364442136

`A247404(A133263(n+7)-(n+2))`
-/

namespace A247411.P1976384192364442136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A247411.P1976384192364442136

/-! ## A247411.P17796708678248051197

`A247404(A052905(n)+A008486(n+9))`
-/

namespace A247411.P17796708678248051197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A052905 n + A008486 (n + 9)).toNat

end

end A247411.P17796708678248051197

/-! ## A247411.P4934048972318225640

`A247404(A001489(n+1)+A000124(n+7))`
-/

namespace A247411.P4934048972318225640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A001489 (n + 1) + A000124 (n + 7)).toNat

end

end A247411.P4934048972318225640

/-! ## A247411.P17127239357585040645

`A247404(A027379(n+6)-A005408(n+2))`
-/

namespace A247411.P17127239357585040645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A027379 (n + 6) - A005408 (n + 2)).toNat

end

end A247411.P17127239357585040645

/-! ## A247411.P16330190435499794225

`A247404(A005408(n+8)+A000124(n+4))`
-/

namespace A247411.P16330190435499794225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247404 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A247411.P16330190435499794225

/-!
# A247414: First differences of A024431.

The programs for A247414, there is no canonical definition to state claims against.
-/

/-! ## A247414.P7857307664910280678

`Δ[A024431(n)]`
-/

namespace A247414.P7857307664910280678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247414.P7857307664910280678

/-! ## A247414.P4674461428488238587

`A024431(n+1)-A024431(n)`
-/

namespace A247414.P4674461428488238587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024431 (n + 1) - A024431 n

end

end A247414.P4674461428488238587

/-! ## A247414.P5240295069012920930

`A115409(∑[n+1])`
-/

namespace A247414.P5240295069012920930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247414.P5240295069012920930

/-! ## A247414.P9352537776629103100

`A115409(A000217(n+1))+A063524(2*n)`
-/

namespace A247414.P9352537776629103100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115409 (A000217 (n + 1)).toNat + A063524 (2 * n)

end

end A247414.P9352537776629103100

/-! ## A247414.P11597514510715793451

`or(A063524(n+1), A115409(A000217(n+1)))`
-/

namespace A247414.P11597514510715793451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 (n + 1)) (A115409 (A000217 (n + 1)).toNat)

end

end A247414.P11597514510715793451

/-!
# A247415: Number of friezes of type D_n.

The programs for A247415, there is no canonical definition to state claims against.
-/

/-! ## A247415.P14402059456539688839

`A287276(n+2)-A230632(A060300(n))`
-/

namespace A247415.P14402059456539688839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287276 (n + 2) - A230632 (A060300 n).toNat

end

end A247415.P14402059456539688839

/-! ## A247415.P4751494117344931900

`A287276(n+2)-A382877(A000213(n+2))`
-/

namespace A247415.P4751494117344931900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287276 (n + 2) - A382877 (A000213 (n + 2)).toNat

end

end A247415.P4751494117344931900

/-!
# A247416: Number of friezes of type B_n.

The programs for A247416, there is no canonical definition to state claims against.
-/

/-! ## A247416.P1454418749063117082

`A114280(n)+A001651(A051924(n+1))`
-/

namespace A247416.P1454418749063117082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114280 n + A001651 (A051924 (n + 1)).toNat

end

end A247416.P1454418749063117082

/-! ## A247416.P10301974538111179575

`A257143(A051924(n+1))+A002882(n)`
-/

namespace A247416.P10301974538111179575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (A051924 (n + 1)).toNat + A002882 n

end

end A247416.P10301974538111179575

/-! ## A247416.P14081769799367923546

`A303825(n)+A001651(A051924(n+1))`
-/

namespace A247416.P14081769799367923546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 n + A001651 (A051924 (n + 1)).toNat

end

end A247416.P14081769799367923546

/-! ## A247416.P11105790108076070090

`A350818(n)+A001651(A051924(n+1))`
-/

namespace A247416.P11105790108076070090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350818 n + A001651 (A051924 (n + 1)).toNat

end

end A247416.P11105790108076070090

/-!
# A247417: Number of nonisomorphic binary n X n matrices with two 1's per column under row and column permutations.

The programs for A247417, there is no canonical definition to state claims against.
-/

/-! ## A247417.P2549778061352887216

`record[A192517(A058331(n))]`
-/

namespace A247417.P2549778061352887216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A058331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247417.P2549778061352887216

/-! ## A247417.P6602586919724466497

`A192517(A058331(n+2))`
-/

namespace A247417.P6602586919724466497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A058331 (n + 2)).toNat

end

end A247417.P6602586919724466497

/-! ## A247417.P14357172187919584380

`record[A192517(A005408(n²))]`
-/

namespace A247417.P14357172187919584380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A005408 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247417.P14357172187919584380

/-! ## A247417.P12610725750035680167

`A192517(A005408((n+2)²))`
-/

namespace A247417.P12610725750035680167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A005408 ((n + 2) ^ 2)).toNat

end

end A247417.P12610725750035680167

/-! ## A247417.P12901910780900765577

`record[A192517(A001105(n)+1)]`
-/

namespace A247417.P12901910780900765577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192517 (A001105 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247417.P12901910780900765577

/-!
# A247418: a(n) = Sum_{i=1..n} mu(i)*(-1)^(i+1).

The programs for A247418, the canonical program `A247418.P2117262707560324076` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247418 has offset 1).

The definition of A247418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247418.P2117262707560324076

`∑[A067856(n+1)%2]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247418

/-- `∑[A067856(n+1)%2]` -/
def P2117262707560324076.Spec : Prop :=
  ∀ n, P2117262707560324076.a n = A247418 (n + 1)

theorem P2117262707560324076.correct : P2117262707560324076.Spec := by
  intro n
  simp only [A247418, Nat.add_sub_cancel]

end A247418

/-! ## A247418.P18340017475640673306

`∑[A085384(n+1)%2]`
-/

namespace A247418.P18340017475640673306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085384 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P18340017475640673306

namespace A247418

/-- `∑[A085384(n+1)%2]` -/
def P18340017475640673306.Spec : Prop :=
  ∀ n, P18340017475640673306.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P12339396665881726821

`∑[A086831(n+1)%2]`
-/

namespace A247418.P12339396665881726821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086831 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P12339396665881726821

namespace A247418

/-- `∑[A086831(n+1)%2]` -/
def P12339396665881726821.Spec : Prop :=
  ∀ n, P12339396665881726821.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P12020496016696157995

`∑[A361986(n+1)%2]`
-/

namespace A247418.P12020496016696157995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361986 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P12020496016696157995

namespace A247418

/-- `∑[A361986(n+1)%2]` -/
def P12020496016696157995.Spec : Prop :=
  ∀ n, P12020496016696157995.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P6640153459085171378

`∑[-A008683(lcm(2, n+1))]`
-/

namespace A247418.P6640153459085171378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (Nat.lcm 2 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P6640153459085171378

namespace A247418

/-- `∑[-A008683(lcm(2, n+1))]` -/
def P6640153459085171378.Spec : Prop :=
  ∀ n, P6640153459085171378.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P5095705824054526815

`∑[A008683(gcd(n+1, ∑[n]²))]`
-/

namespace A247418.P5095705824054526815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd (n + 1) ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P5095705824054526815

namespace A247418

/-- `∑[A008683(gcd(n+1, ∑[n]²))]` -/
def P5095705824054526815.Spec : Prop :=
  ∀ n, P5095705824054526815.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P11292801081676366101

`∑[(-1)^n*A008683(n+1)]`
-/

namespace A247418.P11292801081676366101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P11292801081676366101

namespace A247418

/-- `∑[(-1)^n*A008683(n+1)]` -/
def P11292801081676366101.Spec : Prop :=
  ∀ n, P11292801081676366101.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P1214626106270880904

`∑[-A008683((n+1)*gcd(2, n))]`
-/

namespace A247418.P1214626106270880904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 ((n + 1) * Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P1214626106270880904

namespace A247418

/-- `∑[-A008683((n+1)*gcd(2, n))]` -/
def P1214626106270880904.Spec : Prop :=
  ∀ n, P1214626106270880904.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P6354364795648332102

`∑[A008683(A094758(n+1))]`
-/

namespace A247418.P6354364795648332102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A094758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P6354364795648332102

namespace A247418

/-- `∑[A008683(A094758(n+1))]` -/
def P6354364795648332102.Spec : Prop :=
  ∀ n, P6354364795648332102.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P3204706663822405508

`∑[A008683(A214682(n+1))]`
-/

namespace A247418.P3204706663822405508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A214682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P3204706663822405508

namespace A247418

/-- `∑[A008683(A214682(n+1))]` -/
def P3204706663822405508.Spec : Prop :=
  ∀ n, P3204706663822405508.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P6002298961070980469

`∑[-A008683(A109043(n+1))]`
-/

namespace A247418.P6002298961070980469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (A109043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P6002298961070980469

namespace A247418

/-- `∑[-A008683(A109043(n+1))]` -/
def P6002298961070980469.Spec : Prop :=
  ∀ n, P6002298961070980469.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P4305835765717095654

`∑[A008683(A283971(n+1))]`
-/

namespace A247418.P4305835765717095654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A283971 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P4305835765717095654

namespace A247418

/-- `∑[A008683(A283971(n+1))]` -/
def P4305835765717095654.Spec : Prop :=
  ∀ n, P4305835765717095654.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P15748980136347783344

`∑[-A008683(A254503(2*(n+1)))]`
-/

namespace A247418.P15748980136347783344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (A254503 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P15748980136347783344

namespace A247418

/-- `∑[-A008683(A254503(2*(n+1)))]` -/
def P15748980136347783344.Spec : Prop :=
  ∀ n, P15748980136347783344.a n = A247418 (n + 1)

end A247418

/-! ## A247418.P11708938235954577079

`∑[A008683(A283980(n+1))]`
-/

namespace A247418.P11708938235954577079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A283980 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247418.P11708938235954577079

namespace A247418

/-- `∑[A008683(A283980(n+1))]` -/
def P11708938235954577079.Spec : Prop :=
  ∀ n, P11708938235954577079.a n = A247418 (n + 1)

end A247418

/-!
# A247419: a(2n) = A003256(n); a(2n-1) = A003256(n) - 1.

The programs for A247419, the canonical program `A247419.P14392471895866897531` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247419 has offset 1).

The definition of A247419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247419.P14392471895866897531

`A003256(∑[char[2*n]])-char[2*n]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A247419

/-- `A003256(∑[char[2*n]])-char[2*n]` -/
def P14392471895866897531.Spec : Prop :=
  ∀ n, P14392471895866897531.a n = A247419 (n + 1)

theorem P14392471895866897531.correct : P14392471895866897531.Spec := by
  intro n
  simp only [A247419, Nat.add_sub_cancel]

end A247419

/-! ## A247419.P15044065148066642295

`∪[A003256(n+1)-1, A003256(n+1)]`
-/

namespace A247419.P15044065148066642295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247419.P15044065148066642295

namespace A247419

/-- `∪[A003256(n+1)-1, A003256(n+1)]` -/
def P15044065148066642295.Spec : Prop :=
  ∀ n, (P15044065148066642295.a n : ℤ) = A247419 (n + 1)

end A247419

/-! ## A247419.P5516957495553223959

`A290885(7^∑[(-1)^n])+A003256(A008619(n))`
-/

namespace A247419.P5516957495553223959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290885 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat + A003256 (A008619 n).toNat

end

end A247419.P5516957495553223959

namespace A247419

/-- `A290885(7^∑[(-1)^n])+A003256(A008619(n))` -/
def P5516957495553223959.Spec : Prop :=
  ∀ n, P5516957495553223959.a n = A247419 (n + 1)

end A247419

/-! ## A247419.P6857569893062766469

`abs(A014577(2*n)-A003256(A008619(n)))`
-/

namespace A247419.P6857569893062766469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014577 (2 * n) - A003256 (A008619 n).toNat|

end

end A247419.P6857569893062766469

namespace A247419

/-- `abs(A014577(2*n)-A003256(A008619(n)))` -/
def P6857569893062766469.Spec : Prop :=
  ∀ n, P6857569893062766469.a n = A247419 (n + 1)

end A247419

/-! ## A247419.P1282036552053456876

`A110514(2*n+1)+A003256(A008619(n))`
-/

namespace A247419.P1282036552053456876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (2 * n + 1) + A003256 (A008619 n).toNat

end

end A247419.P1282036552053456876

namespace A247419

/-- `A110514(2*n+1)+A003256(A008619(n))` -/
def P1282036552053456876.Spec : Prop :=
  ∀ n, P1282036552053456876.a n = A247419 (n + 1)

end A247419

/-!
# A247420: Complement of A247419.

The programs for A247420, the canonical program `A247420.P9000325431005934409` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247420 has offset 1).

The definition of A247420 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242094, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247420.P9000325431005934409

`2*A000201(A000201(A242094(n+1)))+n+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247420

/-- `2*A000201(A000201(A242094(n+1)))+n+1` -/
def P9000325431005934409.Spec : Prop :=
  ∀ n, P9000325431005934409.a n = A247420 (n + 1)

theorem P9000325431005934409.correct : P9000325431005934409.Spec := by
  intro n
  simp only [A247420, Nat.add_sub_cancel]

end A247420

/-! ## A247420.P16728551476557445126

`A075318(A242094(n+1))+n`
-/

namespace A247420.P16728551476557445126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (A242094 (n + 1)).toNat + (n : ℤ)

end

end A247420.P16728551476557445126

namespace A247420

/-- `A075318(A242094(n+1))+n` -/
def P16728551476557445126.Spec : Prop :=
  ∀ n, P16728551476557445126.a n = A247420 (n + 1)

end A247420

/-! ## A247420.P17314960825987551118

`A283234(A242094(n+1))+A023443(n)`
-/

namespace A247420.P17314960825987551118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (A242094 (n + 1)).toNat + A023443 n

end

end A247420.P17314960825987551118

namespace A247420

/-- `A283234(A242094(n+1))+A023443(n)` -/
def P17314960825987551118.Spec : Prop :=
  ∀ n, P17314960825987551118.a n = A247420 (n + 1)

end A247420

/-! ## A247420.P15865706251813186627

`A283234(A242094(n+1))-A024000(n)`
-/

namespace A247420.P15865706251813186627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (A242094 (n + 1)).toNat - A024000 n

end

end A247420.P15865706251813186627

namespace A247420

/-- `A283234(A242094(n+1))-A024000(n)` -/
def P15865706251813186627.Spec : Prop :=
  ∀ n, P15865706251813186627.a n = A247420 (n + 1)

end A247420

/-! ## A247420.P2374251807562306904

`record[A002251(A003233(n+1))+1+n]`
-/

namespace A247420.P2374251807562306904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A003233 (n + 1)).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247420.P2374251807562306904

namespace A247420

/-- `record[A002251(A003233(n+1))+1+n]` -/
def P2374251807562306904.Spec : Prop :=
  ∀ n, P2374251807562306904.a n = A247420 (n + 1)

end A247420

/-! ## A247420.P11615701152548957711

`∩[A003257(n+1)-1, A003257(n+1)]`
-/

namespace A247420.P11615701152548957711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003257 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247420.P11615701152548957711

namespace A247420

/-- `∩[A003257(n+1)-1, A003257(n+1)]` -/
def P11615701152548957711.Spec : Prop :=
  ∀ n, (P11615701152548957711.a n : ℤ) = A247420 (n + 1)

end A247420

/-! ## A247420.P15884994409901068605

`A003257(A001950(A242094(n+1))+n)`
-/

namespace A247420.P15884994409901068605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003257 (A001950 (A242094 (n + 1)).toNat + (n : ℤ)).toNat

end

end A247420.P15884994409901068605

namespace A247420

/-- `A003257(A001950(A242094(n+1))+n)` -/
def P15884994409901068605.Spec : Prop :=
  ∀ n, P15884994409901068605.a n = A247420 (n + 1)

end A247420

/-!
# A247421: The number m such that A242094(m) = A005206(A003234(n)).

The programs for A247421, there is no canonical definition to state claims against.
-/

/-! ## A247421.P9365438651245800782

`A247419(A247423(n+1))`
-/

namespace A247421.P9365438651245800782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247419 (A247423 (n + 1)).toNat

end

end A247421.P9365438651245800782

/-! ## A247421.P15164994800188569651

`A003234(n+1)+A003249(n+1)-A003247(A003249(n+1))`
-/

namespace A247421.P15164994800188569651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1) + (A003249 (n + 1) - A003247 (A003249 (n + 1)).toNat)

end

end A247421.P15164994800188569651

/-! ## A247421.P12319709814167881697

`∪[A003256(n+1), A247433(n+1)]%A152451(n+1)`
-/

namespace A247421.P12319709814167881697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247433 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A152451 (n + 1))

end

end A247421.P12319709814167881697

/-! ## A247421.P6473569766991249459

`A247433(n+1)-A001961(A003249(n+1))`
-/

namespace A247421.P6473569766991249459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247433 (n + 1) - A001961 (A003249 (n + 1)).toNat

end

end A247421.P6473569766991249459

/-! ## A247421.P9365828386510839571

`A247433(n+1)-A276854(A003234(n+1))`
-/

namespace A247421.P9365828386510839571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247433 (n + 1) - A276854 (A003234 (n + 1)).toNat

end

end A247421.P9365828386510839571

/-! ## A247421.P7854743585573699580

`A247433(n+1)-A276854(eq[1, A284749(5*n+1)])`
-/

namespace A247421.P7854743585573699580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247433 (n + 1) - A276854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247421.P7854743585573699580

/-! ## A247421.P16932640060593495285

`A247433(n+1)-A276854(comp[A003233(n+1)-2]+2)`
-/

namespace A247421.P16932640060593495285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247433 (n + 1) - A276854 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A247421.P16932640060593495285

/-! ## A247421.P8016553075867363373

`A247433(n+1)-A276854(eq[1, A309198(5*n+1)]+1)`
-/

namespace A247421.P8016553075867363373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309198 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247433 (n + 1) - A276854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A247421.P8016553075867363373

/-!
# A247422: Complement of A247421.

The programs for A247422, there is no canonical definition to state claims against.
-/

/-! ## A247422.P5486288398881265360

`comp[A247421(n+1)-1]+1`
-/

namespace A247422.P5486288398881265360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247422.P5486288398881265360

/-! ## A247422.P16941340842367978371

`eq[char[A247421(n+1)], A063667(n)]`
-/

namespace A247422.P16941340842367978371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A247422.P16941340842367978371

/-! ## A247422.P15807231735028897453

`comp[∪[A247405(n+1), A247421(n+1)]]`
-/

namespace A247422.P15807231735028897453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247405 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A247422.P15807231735028897453

/-! ## A247422.P1699638399257131146

`comp[∪[A247406(n+1), A247421(n+1)]]`
-/

namespace A247422.P1699638399257131146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247406 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A247422.P1699638399257131146

/-! ## A247422.P10638825718913585507

`comp[∪[A247407(n+1), A247421(n+1)]]`
-/

namespace A247422.P10638825718913585507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247407 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A247422.P10638825718913585507

/-! ## A247422.P15084429787895894976

`comp[∪[A247408(n+1), A247421(n+1)]]`
-/

namespace A247422.P15084429787895894976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247408 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A247422.P15084429787895894976

/-! ## A247422.P17096599802112388993

`A003233(A003255(n+1)+1)+n-A003255(n+1)`
-/

namespace A247422.P17096599802112388993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (A003255 (n + 1) + 1).toNat + ((n : ℤ) - A003255 (n + 1))

end

end A247422.P17096599802112388993

/-!
# A247423: Complement of A247424.

The programs for A247423, there is no canonical definition to state claims against.
-/

/-! ## A247423.P5919119793802260481

`comp[A247424(n+1)-1]+1`
-/

namespace A247423.P5919119793802260481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247423.P5919119793802260481

/-! ## A247423.P11452081216703493936

`comp[A004273(comp[A188030(n+1)])]`
-/

namespace A247423.P11452081216703493936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188030 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247423.P11452081216703493936

/-! ## A247423.P1386131826042882843

`comp[A247424(n-a(A000038(n)))]` with `a(0)=0`
-/

namespace A247423.P1386131826042882843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A247424 ((n : ℤ) - f1 (A000038 n).toNat).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247423.P1386131826042882843

/-! ## A247423.P8977437692100841525

`∪[2*(n+1), A276854(A003234(n+1))]`
-/

namespace A247423.P8977437692100841525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (A003234 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247423.P8977437692100841525

/-! ## A247423.P11044956291011334874

`∪[A004277(n+1), A001961(A190891(n+1))]`
-/

namespace A247423.P11044956291011334874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A190891 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247423.P11044956291011334874

/-! ## A247423.P14388508666440313257

`lt[A000010(A001950(3*(n+1))), A065679(3*n)]`
-/

namespace A247423.P14388508666440313257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001950 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247423.P14388508666440313257

/-!
# A247424: Odd numbers not of the form 2*A005206(A003249(m)) - 1.

The programs for A247424, there is no canonical definition to state claims against.
-/

/-! ## A247424.P11469861521487902222

`2*lt[A024569(n+1), 6]+1`
-/

namespace A247424.P11469861521487902222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A247424.P11469861521487902222

/-! ## A247424.P4087359472908079752

`xor(1, 2*lt[A024569(-xor(n, -1)), 6])`
-/

namespace A247424.P4087359472908079752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (-Int.xor (n : ℤ) (-1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A247424.P4087359472908079752

/-! ## A247424.P7046065567571044165

`A005408(lt[A024569(n+1), 6])`
-/

namespace A247424.P7046065567571044165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A247424.P7046065567571044165

/-! ## A247424.P262382904771237572

`record[(2*n+1)/A014675(A003259(n+1))]`
-/

namespace A247424.P262382904771237572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A014675 (A003259 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247424.P262382904771237572

/-! ## A247424.P18109021830414194918

`record[(2*n+1)/A003842(A000201(n+1)+38)]`
-/

namespace A247424.P18109021830414194918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A003842 (A000201 (n + 1) + 38).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247424.P18109021830414194918

/-! ## A247424.P2329861743280610421

`record[(2*n+1)/A001468(A001950(n+1)+63)]`
-/

namespace A247424.P2329861743280610421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A001468 (A001950 (n + 1) + 63).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247424.P2329861743280610421

/-! ## A247424.P5504308875958901789

`record[(2*n+1)/A014675(A003622(n+1)+63)]`
-/

namespace A247424.P5504308875958901789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A014675 (A003622 (n + 1) + 63).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247424.P5504308875958901789

/-! ## A247424.P15561557024219156503

`record[(2*n+1)/A001468(A003622(n+1)+64)]`
-/

namespace A247424.P15561557024219156503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A001468 (A003622 (n + 1) + 64).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247424.P15561557024219156503

/-! ## A247424.P17032513230131541250

`record[A348853(A003259(n+1))-A005206(n)]`
-/

namespace A247424.P17032513230131541250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348853 (A003259 (n + 1)).toNat - A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247424.P17032513230131541250

/-!
# A247425: A005206(A003259(n)).

The programs for A247425, the canonical program `A247425.P17381508495483219201` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247425 has offset 1).

The definition of A247425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003259, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247425.P17381508495483219201

`A005206(A003259(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A247425

/-- `A005206(A003259(n+1))` -/
def P17381508495483219201.Spec : Prop :=
  ∀ n, P17381508495483219201.a n = A247425 (n + 1)

theorem P17381508495483219201.correct : P17381508495483219201.Spec := by
  intro n
  simp only [A247425, Nat.add_sub_cancel]

end A247425

/-! ## A247425.P15703581564416385970

`floor(((n+1)²-2)/a(n-1)+n)` with `a(0)=1`
-/

namespace A247425.P15703581564416385970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((n + 1) ^ 2 : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ) + (n : ℚ)⌋

end

end A247425.P15703581564416385970

namespace A247425

/-- `floor(((n+1)²-2)/a(n-1)+n)` -/
def P15703581564416385970.Spec : Prop :=
  ∀ n, P15703581564416385970.a n = A247425 (n + 1)

end A247425

/-! ## A247425.P10892919329071749799

`floor((n+1)*(n/(a(n-1)+1)+1))` with `a(0)=1`
-/

namespace A247425.P10892919329071749799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) * ((n : ℚ) / (a (n - 1) + 1 : ℚ) + 1)⌋

end

end A247425.P10892919329071749799

namespace A247425

/-- `floor((n+1)*(n/(a(n-1)+1)+1))` -/
def P10892919329071749799.Spec : Prop :=
  ∀ n, P10892919329071749799.a n = A247425 (n + 1)

end A247425

/-! ## A247425.P9276785669773636371

`A003259(n+1)+A001489(n)`
-/

namespace A247425.P9276785669773636371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003259 (n + 1) + A001489 n

end

end A247425.P9276785669773636371

namespace A247425

/-- `A003259(n+1)+A001489(n)` -/
def P9276785669773636371.Spec : Prop :=
  ∀ n, P9276785669773636371.a n = A247425 (n + 1)

end A247425

/-! ## A247425.P7566798933704575164

`A242094(A001950(n+1)-A003247(n+1))`
-/

namespace A247425.P7566798933704575164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (A001950 (n + 1) - A003247 (n + 1)).toNat

end

end A247425.P7566798933704575164

namespace A247425

/-- `A242094(A001950(n+1)-A003247(n+1))` -/
def P7566798933704575164.Spec : Prop :=
  ∀ n, P7566798933704575164.a n = A247425 (n + 1)

end A247425

/-! ## A247425.P15060202950212683358

`A123070(A003259(2*n+1-n))`
-/

namespace A247425.P15060202950212683358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A003259 (2 * n + 1 - n)).toNat

end

end A247425.P15060202950212683358

namespace A247425

/-- `A123070(A003259(2*n+1-n))` -/
def P15060202950212683358.Spec : Prop :=
  ∀ n, P15060202950212683358.a n = A247425 (n + 1)

end A247425

/-! ## A247425.P10555876899475137376

`A123070(A123070(A003259(n+1))+n)`
-/

namespace A247425.P10555876899475137376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A123070 (A003259 (n + 1)).toNat + (n : ℤ)).toNat

end

end A247425.P10555876899475137376

namespace A247425

/-- `A123070(A123070(A003259(n+1))+n)` -/
def P10555876899475137376.Spec : Prop :=
  ∀ n, P10555876899475137376.a n = A247425 (n + 1)

end A247425

/-! ## A247425.P8960961666309566511

`A003259(n+1)+A078489(n+1)-A003258(n+1)`
-/

namespace A247425.P8960961666309566511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003259 (n + 1) + (A078489 (n + 1) - A003258 (n + 1))

end

end A247425.P8960961666309566511

namespace A247425

/-- `A003259(n+1)+A078489(n+1)-A003258(n+1)` -/
def P8960961666309566511.Spec : Prop :=
  ∀ n, P8960961666309566511.a n = A247425 (n + 1)

end A247425

/-! ## A247425.P1500751104666486496

`ceil(∑[ϕ-ϕ/(n+2)!])`
-/

namespace A247425.P1500751104666486496
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - Real.goldenRatio / (Nat.factorial (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A247425.P1500751104666486496

namespace A247425

/-- `ceil(∑[ϕ-ϕ/(n+2)!])` -/
def P1500751104666486496.Spec : Prop :=
  ∀ n, P1500751104666486496.a n = A247425 (n + 1)

end A247425

/-!
# A247426: Complement of A247425.

The programs for A247426, the canonical program `A247426.P7295270182602039639` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247426 has offset 1).

The definition of A247426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247426.P7295270182602039639

`round(sqrt((n+1)*(a(n-1)+2)))+n+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247426

/-- `round(sqrt((n+1)*(a(n-1)+2)))+n+1` -/
def P7295270182602039639.Spec : Prop :=
  ∀ n, P7295270182602039639.a n = A247426 (n + 1)

theorem P7295270182602039639.correct : P7295270182602039639.Spec := by
  intro n
  simp only [A247426, Nat.add_sub_cancel]

end A247426

/-! ## A247426.P15075865588073116157

`A279054(n+1)+1`
-/

namespace A247426.P15075865588073116157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279054 (n + 1) + 1

end

end A247426.P15075865588073116157

namespace A247426

/-- `A279054(n+1)+1` -/
def P15075865588073116157.Spec : Prop :=
  ∀ n, P15075865588073116157.a n = A247426 (n + 1)

end A247426

/-! ## A247426.P17166403656266088423

`A003256(n+1)+A001950(n+2)-A003256(n+2)`
-/

namespace A247426.P17166403656266088423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (n + 1) + (A001950 (n + 2) - A003256 (n + 2))

end

end A247426.P17166403656266088423

namespace A247426

/-- `A003256(n+1)+A001950(n+2)-A003256(n+2)` -/
def P17166403656266088423.Spec : Prop :=
  ∀ n, P17166403656266088423.a n = A247426 (n + 1)

end A247426

/-! ## A247426.P1254914328418517321

`A020725(A279054(n+1))`
-/

namespace A247426.P1254914328418517321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A279054 (n + 1)).toNat

end

end A247426.P1254914328418517321

namespace A247426

/-- `A020725(A279054(n+1))` -/
def P1254914328418517321.Spec : Prop :=
  ∀ n, P1254914328418517321.a n = A247426 (n + 1)

end A247426

/-! ## A247426.P463235054937779782

`A005206(A003258(A001950(n+1)))`
-/

namespace A247426.P463235054937779782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003258 (A001950 (n + 1)).toNat).toNat

end

end A247426.P463235054937779782

namespace A247426

/-- `A005206(A003258(A001950(n+1)))` -/
def P463235054937779782.Spec : Prop :=
  ∀ n, P463235054937779782.a n = A247426 (n + 1)

end A247426

/-! ## A247426.P18192819428404913837

`A005206(A003258(A000201(n+1)+n+1))`
-/

namespace A247426.P18192819428404913837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003258 (A000201 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A247426.P18192819428404913837

namespace A247426

/-- `A005206(A003258(A000201(n+1)+n+1))` -/
def P18192819428404913837.Spec : Prop :=
  ∀ n, P18192819428404913837.a n = A247426 (n + 1)

end A247426

/-! ## A247426.P2688874438863674119

`A005206(A003258(A003231(n+1)-(n+1)))`
-/

namespace A247426.P2688874438863674119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003258 (A003231 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A247426.P2688874438863674119

namespace A247426

/-- `A005206(A003258(A003231(n+1)-(n+1)))` -/
def P2688874438863674119.Spec : Prop :=
  ∀ n, P2688874438863674119.a n = A247426 (n + 1)

end A247426

/-! ## A247426.P7052375816606382701

`A005206(A003258(A003258(A000201(n+1))))`
-/

namespace A247426.P7052375816606382701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003258 (A003258 (A000201 (n + 1)).toNat).toNat).toNat

end

end A247426.P7052375816606382701

namespace A247426

/-- `A005206(A003258(A003258(A000201(n+1))))` -/
def P7052375816606382701.Spec : Prop :=
  ∀ n, P7052375816606382701.a n = A247426 (n + 1)

end A247426

/-! ## A247426.P16338745634303188429

`A123070(A003258(A003258(n+1)+n))`
-/

namespace A247426.P16338745634303188429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A003258 (A003258 (n + 1) + (n : ℤ)).toNat).toNat

end

end A247426.P16338745634303188429

namespace A247426

/-- `A123070(A003258(A003258(n+1)+n))` -/
def P16338745634303188429.Spec : Prop :=
  ∀ n, P16338745634303188429.a n = A247426 (n + 1)

end A247426

/-! ## A247426.P5375161574702473631

`A078489(A003258(A247425(n+1)))+n`
-/

namespace A247426.P5375161574702473631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078489 (A003258 (A247425 (n + 1)).toNat).toNat + (n : ℤ)

end

end A247426.P5375161574702473631

namespace A247426

/-- `A078489(A003258(A247425(n+1)))+n` -/
def P5375161574702473631.Spec : Prop :=
  ∀ n, P5375161574702473631.a n = A247426 (n + 1)

end A247426

/-! ## A247426.P17656591964257110305

`round(log2(A015541(n+2)))`
-/

namespace A247426.P17656591964257110305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A015541 (n + 2) : ℝ))

end

end A247426.P17656591964257110305

namespace A247426

/-- `round(log2(A015541(n+2)))` -/
def P17656591964257110305.Spec : Prop :=
  ∀ n, P17656591964257110305.a n = A247426 (n + 1)

end A247426

/-!
# A247427: 2n - m, where m is the largest integer such that A003249(m) <= n.

The programs for A247427, there is no canonical definition to state claims against.
-/

/-! ## A247427.P7954715161530296502

`A003254(A003247(n+1))`
-/

namespace A247427.P7954715161530296502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003254 (A003247 (n + 1)).toNat

end

end A247427.P7954715161530296502

/-! ## A247427.P15907030505460428798

`A003252(n+1)-(n+1)`
-/

namespace A247427.P15907030505460428798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003252 (n + 1) - (n + 1 : ℤ)

end

end A247427.P15907030505460428798

/-! ## A247427.P16907651535232810191

`comp[A247428(n+1)-1]+1`
-/

namespace A247427.P16907651535232810191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247428 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247427.P16907651535232810191

/-! ## A247427.P3277755732560422218

`comp[A247430(n+1)-2]+1`
-/

namespace A247427.P3277755732560422218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247430 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247427.P3277755732560422218

/-! ## A247427.P4171400158517012940

`comp[A003253(n+1)-1]-n`
-/

namespace A247427.P4171400158517012940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003253 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A247427.P4171400158517012940

/-! ## A247427.P8514263314908284069

`∑[2-char[A003249(n+1)-1]]`
-/

namespace A247427.P8514263314908284069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247427.P8514263314908284069

/-! ## A247427.P5781754752024872853

`comp[A242094(n+1)+n-1]+1`
-/

namespace A247427.P5781754752024872853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247427.P5781754752024872853

/-! ## A247427.P18304587902189851916

`∑[A245920(A007066(n+2))]`
-/

namespace A247427.P18304587902189851916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A007066 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247427.P18304587902189851916

/-! ## A247427.P5078094182207189464

`A023443(A003252(n+1)-n)`
-/

namespace A247427.P5078094182207189464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003252 (n + 1) - (n : ℤ)).toNat

end

end A247427.P5078094182207189464

/-! ## A247427.P13241265417133533489

`A233583(A003252(n+1)-n)`
-/

namespace A247427.P13241265417133533489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A003252 (n + 1) - (n : ℤ)).toNat

end

end A247427.P13241265417133533489

/-!
# A247428: Complement of A247427.

The programs for A247428, there is no canonical definition to state claims against.
-/

/-! ## A247428.P13651432893973387565

`A247430(n+1)-1`
-/

namespace A247428.P13651432893973387565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247430 (n + 1) - 1

end

end A247428.P13651432893973387565

/-! ## A247428.P7358131899563411312

`A242094(n+1)+n`
-/

namespace A247428.P7358131899563411312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1) + (n : ℤ)

end

end A247428.P7358131899563411312

/-! ## A247428.P2089269970823970739

`lt[A005752(n), 2*n]+n`
-/

namespace A247428.P2089269970823970739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + n

end

end A247428.P2089269970823970739

/-! ## A247428.P1423273261567981100

`comp[A003249(n+1)-1]+1+n`
-/

namespace A247428.P1423273261567981100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A247428.P1423273261567981100

/-! ## A247428.P11385113746078497515

`A023443(A247430(n+1))`
-/

namespace A247428.P11385113746078497515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A247430 (n + 1)).toNat

end

end A247428.P11385113746078497515

/-! ## A247428.P2922128058463670710

`A023444(A247430(n+1)+1)`
-/

namespace A247428.P2922128058463670710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A247430 (n + 1) + 1).toNat

end

end A247428.P2922128058463670710

/-! ## A247428.P4118537094967154435

`A289207(A247430(n+1)+1)`
-/

namespace A247428.P4118537094967154435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A247430 (n + 1) + 1).toNat

end

end A247428.P4118537094967154435

/-! ## A247428.P7165210048352448506

`A140106(2*A247430(n+1))`
-/

namespace A247428.P7165210048352448506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A247430 (n + 1)).toNat

end

end A247428.P7165210048352448506

/-! ## A247428.P9328634659303277082

`A260196(n+2)+A247430(n+1)`
-/

namespace A247428.P9328634659303277082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A247430 (n + 1)

end

end A247428.P9328634659303277082

/-! ## A247428.P14161918641617241432

`∪[A188437(n+1), A008086(n)]+n`
-/

namespace A247428.P14161918641617241432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + n

end

end A247428.P14161918641617241432

/-!
# A247429: A247427(n) for n in A003249; A247427(n) - 1 for other n.

The programs for A247429, there is no canonical definition to state claims against.
-/

/-! ## A247429.P2427975469504297272

`comp[A247428(n+1)]+1`
-/

namespace A247429.P2427975469504297272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247429.P2427975469504297272

/-! ## A247429.P6954677132807926341

`∑[char[A242094(n+1)]+1]`
-/

namespace A247429.P6954677132807926341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247429.P6954677132807926341

/-! ## A247429.P12190763216273471074

`comp[comp[A003249(n+1)]+n]`
-/

namespace A247429.P12190763216273471074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A247429.P12190763216273471074

/-! ## A247429.P928999161231796206

`comp[A247430(n+1)-1]+1`
-/

namespace A247429.P928999161231796206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247430 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247429.P928999161231796206

/-! ## A247429.P14759994629428927654

`comp[A003253(n+1)]+1-n`
-/

namespace A247429.P14759994629428927654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003253 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A247429.P14759994629428927654

/-! ## A247429.P1413004497366351705

`∑[A245920(A007066(n+1))]`
-/

namespace A247429.P1413004497366351705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A007066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247429.P1413004497366351705

/-! ## A247429.P11989224856016405346

`comp[A242094(n+1)+n]+A007318(C(2, n))`
-/

namespace A247429.P11989224856016405346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A007318 (Nat.choose 2 n)

end

end A247429.P11989224856016405346

/-! ## A247429.P2673827473191952251

`comp[A242094(n+1)+n]-or(-1, A000041(n))`
-/

namespace A247429.P2673827473191952251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - Int.lor (-1) (A000041 n)

end

end A247429.P2673827473191952251

/-! ## A247429.P6010082940060915993

`comp[A242094(n+1)+n]+ceil(1/A007318(n))`
-/

namespace A247429.P6010082940060915993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌈1 / (A007318 n : ℚ)⌉

end

end A247429.P6010082940060915993

/-! ## A247429.P13772707501222634008

`comp[A242094(n+1)+n]+A000041(C(2, n+2))`
-/

namespace A247429.P13772707501222634008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000041 (Nat.choose 2 (n + 2))

end

end A247429.P13772707501222634008

/-!
# A247430: Complement of A247429.

The programs for A247430, there is no canonical definition to state claims against.
-/

/-! ## A247430.P7633699384810193716

`A247428(n+1)+1`
-/

namespace A247430.P7633699384810193716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247428 (n + 1) + 1

end

end A247430.P7633699384810193716

/-! ## A247430.P18055278283023963771

`A242094(n+1)+1+n`
-/

namespace A247430.P18055278283023963771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1) + 1 + (n : ℤ)

end

end A247430.P18055278283023963771

/-! ## A247430.P17203603046414410586

`lt[A005752(n), 2*n]+1+n`
-/

namespace A247430.P17203603046414410586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 + n

end

end A247430.P17203603046414410586

/-! ## A247430.P8297767951212467579

`comp[A003249(n+1)-1]+2+n`
-/

namespace A247430.P8297767951212467579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A247430.P8297767951212467579

/-! ## A247430.P2817058373905366227

`A020725(A247428(n+1))`
-/

namespace A247430.P2817058373905366227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A247428 (n + 1)).toNat

end

end A247430.P2817058373905366227

/-! ## A247430.P9190285901356765973

`A020725(A242094(n+1)+n)`
-/

namespace A247430.P9190285901356765973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A242094 (n + 1) + (n : ℤ)).toNat

end

end A247430.P9190285901356765973

/-! ## A247430.P3854276298349426192

`eq[2, A245920(A001950(n+1)+2)]+n+2`
-/

namespace A247430.P3854276298349426192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A001950 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 2)

end

end A247430.P3854276298349426192

/-! ## A247430.P6733582675625685426

`record[A242094(A008620(n))+A008611(n)]`
-/

namespace A247430.P6733582675625685426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (A008620 n).toNat + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247430.P6733582675625685426

/-! ## A247430.P4461347242382538280

`record[A242094(A008619(n))+A028242(n)]`
-/

namespace A247430.P4461347242382538280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (A008619 n).toNat + A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247430.P4461347242382538280

/-! ## A247430.P14170454640420775889

`record[A242094(A008619(n))+A110514(n)]`
-/

namespace A247430.P14170454640420775889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (A008619 n).toNat + A110514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247430.P14170454640420775889

/-!
# A247431: The largest integer m such that A001950(m) < A003231(n).

The programs for A247431, there is no canonical definition to state claims against.
-/

/-! ## A247431.P6988391914619423940

`round((n+ϕ)/ϕ²+n)`
-/

namespace A247431.P6988391914619423940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) + Real.goldenRatio) / Real.goldenRatio ^ 2 + (n : ℝ))

end

end A247431.P6988391914619423940

/-! ## A247431.P13239511901392226148

`lt[5-15/a(n-1), 5]` with `a(0)=15`
-/

namespace A247431.P13239511901392226148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [15] fun n f1 =>
  5 - 15 / f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A247431.P13239511901392226148

/-! ## A247431.P13765263473357119511

`round((1-n)/ϕ)%45+n+n`
-/

namespace A247431.P13765263473357119511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((1 - (n : ℤ) : ℝ) / Real.goldenRatio)) 45 + (n : ℤ) + (n : ℤ)

end

end A247431.P13765263473357119511

/-! ## A247431.P7175240697317253587

`abs(round((n-1)/ϕ)%45-n-n)`
-/

namespace A247431.P7175240697317253587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) / Real.goldenRatio)) 45 - (n : ℤ) - (n : ℤ)|

end

end A247431.P7175240697317253587

/-! ## A247431.P10353326503342592974

`comp[ceil(or(1, 2*n)+ϕ*(n+1))-21]`
-/

namespace A247431.P10353326503342592974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉ - 21

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247431.P10353326503342592974

/-! ## A247431.P3880020501821099937

`comp[ceil(xor(1, 2*n)+ϕ*(n+1))-21]`
-/

namespace A247431.P3880020501821099937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉ - 21

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247431.P3880020501821099937

/-! ## A247431.P12216097901525430513

`comp[floor(∑[n+3+ϕ])-C(n+2, 2)-21]`
-/

namespace A247431.P12216097901525430513
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) + Real.goldenRatio

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ - (Nat.choose (n + 2) 2 : ℤ) - 21

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247431.P12216097901525430513

/-! ## A247431.P3176593099257609925

`comp[ceil(ϕ*C(n+1, n)+2*n+1)-21]`
-/

namespace A247431.P3176593099257609925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ) + (2 * n + 1 : ℝ)⌉ - 21

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247431.P3176593099257609925

/-! ## A247431.P12909048431587643360

`comp[ceil(gcd(n, 2*n)+ϕ*(n+1))+n-20]`
-/

namespace A247431.P12909048431587643360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.gcd n (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉ + ((n : ℤ) - 20)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247431.P12909048431587643360

/-!
# A247432: Complement of A247431.

The programs for A247432, there is no canonical definition to state claims against.
-/

/-! ## A247432.P10273033473794738741

`floor((5*n+6)/(3-ϕ))`
-/

namespace A247432.P10273033473794738741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n + 6 : ℝ) / (3 - Real.goldenRatio)⌋

end

end A247432.P10273033473794738741

/-! ## A247432.P586259012754291381

`ceil(Δ[n²]+ϕ*(atan(8)+n))`
-/

namespace A247432.P586259012754291381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + Real.goldenRatio * (Real.arctan (8 : ℝ) + (n : ℝ))⌉

end

end A247432.P586259012754291381

/-! ## A247432.P12502839359259674795

`ceil(Δ[n²]+ϕ*(acot(acot(8))+n))`
-/

namespace A247432.P12502839359259674795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + Real.goldenRatio * (SequenceMachineLib.acot (SequenceMachineLib.acot (8 : ℝ)) + (n : ℝ))⌉

end

end A247432.P12502839359259674795

/-! ## A247432.P2431397622920767934

`ceil(ϕ*(atan(8)+n)+2*n+1)`
-/

namespace A247432.P2431397622920767934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Real.arctan (8 : ℝ) + (n : ℝ)) + (2 * n + 1 : ℝ)⌉

end

end A247432.P2431397622920767934

/-! ## A247432.P895378403258667214

`ceil(ϕ*(acot(acot(8))+n)+2*n+1)`
-/

namespace A247432.P895378403258667214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (SequenceMachineLib.acot (SequenceMachineLib.acot (8 : ℝ)) + (n : ℝ)) + (2 * n + 1 : ℝ)⌉

end

end A247432.P895378403258667214

/-! ## A247432.P4823024364967629827

`∑[A276867(n+41)]`
-/

namespace A247432.P4823024364967629827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276867 (n + 41)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247432.P4823024364967629827

/-! ## A247432.P4806141898120263969

`A003258(n+1)+2*(n+1)`
-/

namespace A247432.P4806141898120263969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (n + 1) + (2 * (n + 1) : ℤ)

end

end A247432.P4806141898120263969

/-! ## A247432.P5524764241712631378

`A078489(n+1)+A016789(n)`
-/

namespace A247432.P5524764241712631378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078489 (n + 1) + A016789 n

end

end A247432.P5524764241712631378

/-! ## A247432.P14126250245777974721

`A003233(A247429(n+2))+n`
-/

namespace A247432.P14126250245777974721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (A247429 (n + 2)).toNat + (n : ℤ)

end

end A247432.P14126250245777974721

/-! ## A247432.P11089206267764436072

`A003251(A003252(n+1)+1)-1`
-/

namespace A247432.P11089206267764436072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003251 (A003252 (n + 1) + 1).toNat - 1

end

end A247432.P11089206267764436072

/-!
# A247433: a(n) = A247421(A003248(n)).

The programs for A247433, there is no canonical definition to state claims against.
-/

/-! ## A247433.P17555550724446324433

`A247421(A003248(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247433.P17555550724446324433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (A003248 (n + 1)).toNat

end

end A247433.P17555550724446324433

/-! ## A247433.P2342358447947474460

`A247420(A247421(n+1))+1`
-/

namespace A247433.P2342358447947474460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247420 (A247421 (n + 1)).toNat + 1

end

end A247433.P2342358447947474460

/-! ## A247433.P17208848186092819377

`A247421(n+1)+A001961(A003249(n+1))`
-/

namespace A247433.P17208848186092819377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (n + 1) + A001961 (A003249 (n + 1)).toNat

end

end A247433.P17208848186092819377

/-! ## A247433.P6314199800955793743

`A276854(A003234(n+1))+A247421(n+1)`
-/

namespace A247433.P6314199800955793743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (A003234 (n + 1)).toNat + A247421 (n + 1)

end

end A247433.P6314199800955793743

/-! ## A247433.P824943246505073664

`A247421(n+1)+A000201(2*A003234(n+1))`
-/

namespace A247433.P824943246505073664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (n + 1) + A000201 (2 * A003234 (n + 1)).toNat

end

end A247433.P824943246505073664

/-! ## A247433.P3776367547548918367

`A276854(eq[1, A284749(5*n+1)])+A247421(n+1)`
-/

namespace A247433.P3776367547548918367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A247421 (n + 1)

end

end A247433.P3776367547548918367

/-! ## A247433.P386491177302761686

`A276854(comp[A003233(n+1)-2]+2)+A247421(n+1)`
-/

namespace A247433.P386491177302761686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) + A247421 (n + 1)

end

end A247433.P386491177302761686

/-! ## A247433.P15558446995275248101

`A276854(eq[1, A309198(5*n+1)]+1)+A247421(n+1)`
-/

namespace A247433.P15558446995275248101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309198 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + A247421 (n + 1)

end

end A247433.P15558446995275248101

/-!
# A247434: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123.....12)*.

The programs for A247434, there is no canonical definition to state claims against.
-/

/-! ## A247434.P14302041300266715299

`A306640(eq[10, A193592(n)])`
-/

namespace A247434.P14302041300266715299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247434.P14302041300266715299

/-! ## A247434.P530664933245523876

`A306640(eq[10, A219347(n)])`
-/

namespace A247434.P530664933245523876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247434.P530664933245523876

/-! ## A247434.P16074471922579770975

`A306640(A000124(n+11)-11)`
-/

namespace A247434.P16074471922579770975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000124 (n + 11) - 11).toNat

end

end A247434.P16074471922579770975

/-! ## A247434.P15545306799301290110

`A306640(A000217(n+10)+n+1)`
-/

namespace A247434.P15545306799301290110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A247434.P15545306799301290110

/-! ## A247434.P12046517451090607562

`A306640(n+6+A052905(n+7))`
-/

namespace A247434.P12046517451090607562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 ((n + 6 : ℤ) + A052905 (n + 7)).toNat

end

end A247434.P12046517451090607562

/-!
# A247435: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123....13)*.

The programs for A247435, there is no canonical definition to state claims against.
-/

/-! ## A247435.P17517671310217577880

`A306640(eq[12, A219347(n)])`
-/

namespace A247435.P17517671310217577880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247435.P17517671310217577880

/-!
# A247436: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...14)*.

The programs for A247436, there is no canonical definition to state claims against.
-/

/-! ## A247436.P13519165462859634397

`A306640(eq[12, A193592(n)])`
-/

namespace A247436.P13519165462859634397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247436.P13519165462859634397

/-!
# A247437: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...15)*.

The programs for A247437, there is no canonical definition to state claims against.
-/

/-! ## A247437.P9135578642647118251

`A306640(eq[13, A193592(n)])`
-/

namespace A247437.P9135578642647118251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247437.P9135578642647118251

/-! ## A247437.P16128949439396803321

`A306640(A017281(n+8)+A000124(n+4))`
-/

namespace A247437.P16128949439396803321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A017281 (n + 8) + A000124 (n + 4)).toNat

end

end A247437.P16128949439396803321

/-! ## A247437.P10231140971550169902

`A306640(A004274(n+9)+A000096(n+11))`
-/

namespace A247437.P10231140971550169902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A004274 (n + 9) + A000096 (n + 11)).toNat

end

end A247437.P10231140971550169902

/-!
# A247438: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...16)*.

The programs for A247438, there is no canonical definition to state claims against.
-/

/-! ## A247438.P2657574297019539392

`A306640(A052905(n+12)-9)`
-/

namespace A247438.P2657574297019539392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A052905 (n + 12) - 9).toNat

end

end A247438.P2657574297019539392

/-! ## A247438.P17674092620581878236

`A306640(A161680(n+15)+n+1)`
-/

namespace A247438.P17674092620581878236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A161680 (n + 15) + (n : ℤ) + 1).toNat

end

end A247438.P17674092620581878236

/-!
# A247439: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...17)*.

The programs for A247439, there is no canonical definition to state claims against.
-/

/-! ## A247439.P18260773028206258491

`A306640(eq[15, A193592(n)])`
-/

namespace A247439.P18260773028206258491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247439.P18260773028206258491

/-! ## A247439.P11688991299266980370

`A306640(eq[27, A219347(n)])`
-/

namespace A247439.P11688991299266980370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247439.P11688991299266980370

/-! ## A247439.P3545906089101648554

`A306640(A004274(n+10)+A000096(n+13))`
-/

namespace A247439.P3545906089101648554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A004274 (n + 10) + A000096 (n + 13)).toNat

end

end A247439.P3545906089101648554

/-!
# A247440: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...18)*.

The programs for A247440, there is no canonical definition to state claims against.
-/

/-! ## A247440.P11237173473568188865

`A306640(eq[16, A193592(n)])`
-/

namespace A247440.P11237173473568188865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247440.P11237173473568188865

/-! ## A247440.P6833107527784731852

`A306640(eq[32, A219347(n)])`
-/

namespace A247440.P6833107527784731852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247440.P6833107527784731852

/-! ## A247440.P6885209974975125388

`A306640(eq[30, A185782(n+1)])`
-/

namespace A247440.P6885209974975125388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247440.P6885209974975125388

/-!
# A247441: Base-n state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...19)*.

The programs for A247441, there is no canonical definition to state claims against.
-/

/-! ## A247441.P10491460022116790254

`A306640(eq[17, A193592(n)])`
-/

namespace A247441.P10491460022116790254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247441.P10491460022116790254

/-! ## A247441.P16687876665851483381

`A306640(eq[32, A185782(n+1)])`
-/

namespace A247441.P16687876665851483381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247441.P16687876665851483381

/-! ## A247441.P7365106267212122132

`A306640(A004274(n+11)+A000096(n+15))`
-/

namespace A247441.P7365106267212122132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A004274 (n + 11) + A000096 (n + 15)).toNat

end

end A247441.P7365106267212122132

/-!
# A247451: Largest primorial factor of n-th least product of primorial numbers, cf. A025487.

The programs for A247451, there is no canonical definition to state claims against.
-/

/-! ## A247451.P18200796856699133430

`A002110(A061394(n+1))`
-/

namespace A247451.P18200796856699133430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A061394 (n + 1)).toNat

end

end A247451.P18200796856699133430

/-! ## A247451.P7172461807055419715

`A007947(A025487(n+1))`
-/

namespace A247451.P7172461807055419715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A025487 (n + 1)).toNat

end

end A247451.P7172461807055419715

/-! ## A247451.P3169610506114669537

`A002110(∑{e}[A181820(n+1), #])`
-/

namespace A247451.P3169610506114669537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A247451.P3169610506114669537

/-! ## A247451.P3538798713426248266

`A025487(n+1)/A307107(n+1)`
-/

namespace A247451.P3538798713426248266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A307107 (n + 1) : ℚ)

end

end A247451.P3538798713426248266

/-! ## A247451.P7487777490820639848

`∪[A099992(n+1), A099993(n+1)]/A307107(n+1)`
-/

namespace A247451.P7487777490820639848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099993 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A307107 (n + 1) : ℚ)

end

end A247451.P7487777490820639848

/-! ## A247451.P12726808225728777716

`(∑[A178799(n+1)]+1-A178799(n+1))/A307107(n+1)`
-/

namespace A247451.P12726808225728777716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178799 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (1 - A178799 (n + 1)) : ℤ) : ℚ) / (A307107 (n + 1) : ℚ)

end

end A247451.P12726808225728777716

/-! ## A247451.P3960056889940477808

`record[A329899(n+1)]/A307107(n+1)`
-/

namespace A247451.P3960056889940477808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A307107 (n + 1) : ℚ)

end

end A247451.P3960056889940477808

/-! ## A247451.P17993634162979878120

`A086568(A181820(n+1))`
-/

namespace A247451.P17993634162979878120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (A181820 (n + 1)).toNat

end

end A247451.P17993634162979878120

/-! ## A247451.P14085620922904254470

`gcd(A002110(A307327(n)), A025487(n+1))`
-/

namespace A247451.P14085620922904254470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A307327 n).toNat) (A025487 (n + 1))

end

end A247451.P14085620922904254470

/-! ## A247451.P14304719550076686844

`∏{p}[record[A051466(n+2)], #]`
-/

namespace A247451.P14304719550076686844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A247451.P14304719550076686844

/-! ## A247451.P2641369686312926995

`A002110(∑{p}[A025487(n+1), A001221(#)])`
-/

namespace A247451.P2641369686312926995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p).toNat

end

end A247451.P2641369686312926995

/-! ## A247451.P14889985294207976750

`A006862(∑{p}[A025487(n+1), A001221(#)])-1`
-/

namespace A247451.P14889985294207976750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p).toNat - 1

end

end A247451.P14889985294207976750

/-! ## A247451.P800917027357401950

`A108951(A006530(A181815(n+1)))`
-/

namespace A247451.P800917027357401950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A006530 (A181815 (n + 1)).toNat).toNat

end

end A247451.P800917027357401950

/-! ## A247451.P13415253515840374638

`gcd(A025487(n+1)²²², A117213(n+1))`
-/

namespace A247451.P13415253515840374638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((A025487 (n + 1) ^ 2) ^ 2) ^ 2) (A117213 (n + 1))

end

end A247451.P13415253515840374638

/-!
# A247452: a(n) = 3^n*Bell(n).

The programs for A247452, there is no canonical definition to state claims against.
-/

/-! ## A247452.P6733325691272987983

`3^n*A000110(n)`
-/

namespace A247452.P6733325691272987983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000110 n

end

end A247452.P6733325691272987983

/-! ## A247452.P2839650680864580509

`abs(3^n*A292935(n))`
-/

namespace A247452.P2839650680864580509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) * A292935 n|

end

end A247452.P2839650680864580509

/-! ## A247452.P8426124309819216147

`3^n*A011971(∑[n])`
-/

namespace A247452.P8426124309819216147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247452.P8426124309819216147

/-! ## A247452.P12963419304898123078

`3^n*A033306(∑[n])`
-/

namespace A247452.P12963419304898123078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A033306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247452.P12963419304898123078

/-! ## A247452.P5963355031222220804

`3^n*A108087(∑[n])`
-/

namespace A247452.P5963355031222220804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247452.P5963355031222220804

/-! ## A247452.P11684882860273369743

`3^n*A186020(∑[n])`
-/

namespace A247452.P11684882860273369743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247452.P11684882860273369743

/-! ## A247452.P6663818525264519902

`3^n*A346426(∑[n])`
-/

namespace A247452.P6663818525264519902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A346426 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247452.P6663818525264519902

/-! ## A247452.P3040781741548227799

`A000110(n)*A000244(n)`
-/

namespace A247452.P3040781741548227799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A000244 n

end

end A247452.P3040781741548227799

/-! ## A247452.P13321520798435861228

`Δ[A005001(n)]*A000244(n)`
-/

namespace A247452.P13321520798435861228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000244 n

end

end A247452.P13321520798435861228

/-! ## A247452.P1264050901580050921

`A000110(n)*A133494(n+1)`
-/

namespace A247452.P1264050901580050921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A133494 (n + 1)

end

end A247452.P1264050901580050921

/-!
# A247453: T(n,k) = binomial(n,k)*A000111(n-k)*(-1)^(n-k), 0 <= k <= n.

The programs for A247453, there is no canonical definition to state claims against.
-/

/-! ## A247453.P14423949632889641414

`A097807(n)*A109449(n)`
-/

namespace A247453.P14423949632889641414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A109449 n

end

end A247453.P14423949632889641414

/-! ## A247453.P5048021961659285810

`A000111(A025581(n))*A130595(n)`
-/

namespace A247453.P5048021961659285810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A025581 n).toNat * A130595 n

end

end A247453.P5048021961659285810

/-! ## A247453.P16816711996876741250

`A033999(A025581(n))*A109449(n)`
-/

namespace A247453.P16816711996876741250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A109449 n

end

end A247453.P16816711996876741250

/-! ## A247453.P12810841087541944958

`A033999(A051162(n))*A109449(n)`
-/

namespace A247453.P12810841087541944958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A109449 n

end

end A247453.P12810841087541944958

/-! ## A247453.P9185957011084504079

`A033999(A051933(n))*A109449(n)`
-/

namespace A247453.P9185957011084504079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051933 n).toNat * A109449 n

end

end A247453.P9185957011084504079

/-! ## A247453.P3102106733113859995

`A009531(A099375(n))*A109449(n)`
-/

namespace A247453.P3102106733113859995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A109449 n

end

end A247453.P3102106733113859995

/-! ## A247453.P11935927481043282214

`A056594(2*A025581(n))*A109449(n)`
-/

namespace A247453.P11935927481043282214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A025581 n).toNat * A109449 n

end

end A247453.P11935927481043282214

/-! ## A247453.P8903273429456490960

`A056594(2*A051933(n))*A109449(n)`
-/

namespace A247453.P8903273429456490960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A051933 n).toNat * A109449 n

end

end A247453.P8903273429456490960

/-! ## A247453.P11919868313194505125

`A007318(n)/A130595(n)*A109449(n)`
-/

namespace A247453.P11919868313194505125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A130595 n : ℚ) * (A109449 n : ℚ)

end

end A247453.P11919868313194505125

/-! ## A247453.P15523138816701652734

`A056594(2*A083487(n+1))*A109449(n)`
-/

namespace A247453.P15523138816701652734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A083487 (n + 1)).toNat * A109449 n

end

end A247453.P15523138816701652734

/-!
# A247454: Numbers k such that d(r,k) = d(s,k), where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(3)}, and { } = fractional part.

The programs for A247454, there is no canonical definition to state claims against.
-/

/-! ## A247454.P15473443323493190957

`comp[A247324(n+1)-1]+1`
-/

namespace A247454.P15473443323493190957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247324 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247454.P15473443323493190957

/-! ## A247454.P2404940289122829206

`∪[A246356(n+1), A247356(n+1)]`
-/

namespace A247454.P2404940289122829206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247454.P2404940289122829206

/-! ## A247454.P14814649951642237840

`A065475(comp[A247324(n+1)-1])`
-/

namespace A247454.P14814649951642237840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247324 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A247454.P14814649951642237840

/-! ## A247454.P2917009629897337079

`eq[A004539(n+2), A004547(n+2)]+1`
-/

namespace A247454.P2917009629897337079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A247454.P2917009629897337079

/-! ## A247454.P1618207121329189525

`eq[A004539(A028310(n)+1), A004547(n+1)]`
-/

namespace A247454.P1618207121329189525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A028310 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247454.P1618207121329189525

/-!
# A247455: Numbers k such that d(r,k) = 0 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {3*sqrt(2)}, and { } = fractional part.

The programs for A247455, there is no canonical definition to state claims against.
-/

/-! ## A247455.P17022521500554401770

`∩[A247459(n+1), A320985(n+1)]`
-/

namespace A247455.P17022521500554401770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247455.P17022521500554401770

/-! ## A247455.P7180681205255370514

`∩[comp[A092855(n+1)], A247459(n+1)]`
-/

namespace A247455.P7180681205255370514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247455.P7180681205255370514

/-! ## A247455.P1071151147703991576

`∩[comp[A247458(n+1)], A247459(n+1)]`
-/

namespace A247455.P1071151147703991576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247458 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247455.P1071151147703991576

/-! ## A247455.P17428344816516540595

`lt[A004539(n+1), char[A247459(n+1)]]`
-/

namespace A247455.P17428344816516540595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A247455.P17428344816516540595

/-!
# A247456: Numbers k such that d(r,k) = 0 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {3*sqrt(2)}, and { } = fractional part.

The programs for A247456, there is no canonical definition to state claims against.
-/

/-! ## A247456.P16406611944453611452

`∩[A247460(n+1), A320985(n+1)]`
-/

namespace A247456.P16406611944453611452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247456.P16406611944453611452

/-! ## A247456.P14302933425010550256

`∩[comp[A247455(n+1)], A320985(n+1)]`
-/

namespace A247456.P14302933425010550256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247455 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247456.P14302933425010550256

/-! ## A247456.P11961101381884273109

`∩[comp[A247457(n+1)], A247460(n+1)]`
-/

namespace A247456.P11961101381884273109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247457 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247456.P11961101381884273109

/-! ## A247456.P14896563286227540161

`eq[char[A247455(n+1)], A004539(n+1)]`
-/

namespace A247456.P14896563286227540161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247455 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A247456.P14896563286227540161

/-!
# A247457: Numbers k such that d(r,k) = 1 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {3*sqrt(2)}, and { } = fractional part.

The programs for A247457, there is no canonical definition to state claims against.
-/

/-! ## A247457.P7690476253839598733

`∩[A092855(n+1), A247460(n+1)]`
-/

namespace A247457.P7690476253839598733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247457.P7690476253839598733

/-! ## A247457.P16610200923488061384

`∩[A247460(n+1), comp[A320985(n+1)]]`
-/

namespace A247457.P16610200923488061384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247460 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247457.P16610200923488061384

/-!
# A247458: Numbers k such that d(r,k) = 1 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {3*sqrt(2)}, and { } = fractional part.

The programs for A247458, there is no canonical definition to state claims against.
-/

/-! ## A247458.P8921419908918539880

`∩[A092855(n+1), A247459(n+1)]`
-/

namespace A247458.P8921419908918539880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247458.P8921419908918539880

/-! ## A247458.P15649497425817856392

`∩[A247459(n+1), comp[A320985(n+1)]]`
-/

namespace A247458.P15649497425817856392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247458.P15649497425817856392

/-! ## A247458.P8721502003198374190

`∩[comp[A247455(n+1)], A247459(n+1)]`
-/

namespace A247458.P8721502003198374190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247455 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247458.P8721502003198374190

/-! ## A247458.P6518654454870285136

`lt[1, A004539(n+1)+char[A247459(n+1)]]`
-/

namespace A247458.P6518654454870285136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A247458.P6518654454870285136

/-! ## A247458.P3320764995786125428

`∩[eq[1, A004539(n+2)]+1, A247459(n+1)]`
-/

namespace A247458.P3320764995786125428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A247458.P3320764995786125428

/-!
# A247459: Numbers k such that d(r,k) = d(s,k), where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {3*sqrt(2)}, and { } = fractional part.

The programs for A247459, there is no canonical definition to state claims against.
-/

/-! ## A247459.P10814790276481205723

`comp[A247460(n+1)-1]+1`
-/

namespace A247459.P10814790276481205723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247460 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247459.P10814790276481205723

/-! ## A247459.P3288011660668241767

`∪[A247455(n+1), A247458(n+1)]`
-/

namespace A247459.P3288011660668241767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247459.P3288011660668241767

/-! ## A247459.P9283652594094790785

`eq[char[A247460(n+1)], A151622(n)]`
-/

namespace A247459.P9283652594094790785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247460 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A247459.P9283652594094790785

/-! ## A247459.P8952671850537198983

`lt[A162555(n+1), A342001(A212959(3*n))]`
-/

namespace A247459.P8952671850537198983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A212959 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247459.P8952671850537198983

/-! ## A247459.P10272756758683471596

`lt[A225405(n), A008443(A165886(n))]`
-/

namespace A247459.P10272756758683471596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (A165886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247459.P10272756758683471596

/-!
# A247460: Numbers k such that d(r,k) != d(s,k), where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {3*sqrt(2)}, and { } = fractional part.

The programs for A247460, there is no canonical definition to state claims against.
-/

/-! ## A247460.P13812029302196735935

`∪[A247456(n+1), A247457(n+1)]`
-/

namespace A247460.P13812029302196735935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247460.P13812029302196735935

/-! ## A247460.P9318369115864070633

`record[Δ[(A247459(n+1)/2)²]]`
-/

namespace A247460.P9318369115864070633
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A247459 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247460.P9318369115864070633

/-! ## A247460.P7385498992408464652

`record[Δ[A181385(A247459(n+1))]]`
-/

namespace A247460.P7385498992408464652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A247459 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247460.P7385498992408464652

/-! ## A247460.P1998666766062674460

`eq[n, A233583(n+1)+char[A247459(n+1)]]`
-/

namespace A247460.P1998666766062674460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247460.P1998666766062674460

/-! ## A247460.P12983683356260393638

`(comp[A247459(n+1)-1]+1)*A001222(A054815(n))`
-/

namespace A247460.P12983683356260393638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247459 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) * A001222 (A054815 n).toNat

end

end A247460.P12983683356260393638

/-!
# A247461: Subsequence obtained from A026242 by applying an Eratosthenes-type sieve: strike out every second number after the first "2", then if m is the next number not yet struck out, strike out every m-th number following this one, etc.

The programs for A247461, there is no canonical definition to state claims against.
-/

/-! ## A247461.P2088093328789138582

`A156262(A325679(n)+A006355(n))`
-/

namespace A247461.P2088093328789138582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A325679 n + A006355 n).toNat

end

end A247461.P2088093328789138582

/-! ## A247461.P17102953403925881414

`A115949(A015750(n)*A015754(n+1))`
-/

namespace A247461.P17102953403925881414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115949 (A015750 n * A015754 (n + 1)).toNat

end

end A247461.P17102953403925881414

/-! ## A247461.P3301896506836649693

`A304382(A008864(n+1)+A002202(n+1))`
-/

namespace A247461.P3301896506836649693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (A008864 (n + 1) + A002202 (n + 1)).toNat

end

end A247461.P3301896506836649693

/-! ## A247461.P14762575462368995508

`A304382(A305103(n+1)+A000040(n+1))`
-/

namespace A247461.P14762575462368995508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (A305103 (n + 1) + A000040 (n + 1)).toNat

end

end A247461.P14762575462368995508

/-! ## A247461.P12315670109511302508

`A304382(A324846(n+1)+A000040(n+1))`
-/

namespace A247461.P12315670109511302508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (A324846 (n + 1) + A000040 (n + 1)).toNat

end

end A247461.P12315670109511302508

/-!
# A247462: Number of iterations needed in A058977 to reach a result.

The programs for A247462, the canonical program `A247462.P12776908162959564945` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247462 has offset 1).

The definition of A247462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247462.P10052350076509909893

`A211272(A323172(n+2)^A114567(n))+1`
-/

namespace A247462.P10052350076509909893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A114567 n : ℤ))).toNat + 1

end

end A247462.P10052350076509909893

namespace A247462

/-- `A211272(A323172(n+2)^A114567(n))+1` -/
def P10052350076509909893.Spec : Prop :=
  ∀ n, P10052350076509909893.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P12281416564557369999

`A126759(∑{e}[A323172(n+2)^A114567(n), #])`
-/

namespace A247462.P12281416564557369999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323172 (n + 2) : ℚ) ^ (A114567 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A247462.P12281416564557369999

namespace A247462

/-- `A126759(∑{e}[A323172(n+2)^A114567(n), #])` -/
def P12281416564557369999.Spec : Prop :=
  ∀ n, P12281416564557369999.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P14474922076458242073

`∏{e}[A323172(n+2)^A114567(n), A126759(#)]`
-/

namespace A247462.P14474922076458242073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323172 (n + 2) : ℚ) ^ (A114567 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A126759 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A247462.P14474922076458242073

namespace A247462

/-- `∏{e}[A323172(n+2)^A114567(n), A126759(#)]` -/
def P14474922076458242073.Spec : Prop :=
  ∀ n, P14474922076458242073.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P4307201607287444601

`∑{digits}[A048764(A323172(n+2)^A114567(n)), #]`
-/

namespace A247462.P4307201607287444601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048764 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A114567 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A247462.P4307201607287444601

namespace A247462

/-- `∑{digits}[A048764(A323172(n+2)^A114567(n)), #]` -/
def P4307201607287444601.Spec : Prop :=
  ∀ n, (P4307201607287444601.a n : ℤ) = A247462 (n + 1)

end A247462

/-! ## A247462.P1498897830214967879

`gcd(n+2, A096865(A323172(n+2)^A114567(n)))`
-/

namespace A247462.P1498897830214967879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A096865 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A114567 n : ℤ))).toNat)

end

end A247462.P1498897830214967879

namespace A247462

/-- `gcd(n+2, A096865(A323172(n+2)^A114567(n)))` -/
def P1498897830214967879.Spec : Prop :=
  ∀ n, (P1498897830214967879.a n : ℤ) = A247462 (n + 1)

end A247462

/-! ## A247462.P12776908162959564945

`A000005(A323172(n+2)^A019425(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A247462

/-- `A000005(A323172(n+2)^A019425(n))` -/
def P12776908162959564945.Spec : Prop :=
  ∀ n, P12776908162959564945.a n = A247462 (n + 1)

theorem P12776908162959564945.correct : P12776908162959564945.Spec := by
  intro n
  simp only [A247462, Nat.add_sub_cancel]

end A247462

/-! ## A247462.P18292676032662643555

`A000005(A323172(n+2)^A019426(n))`
-/

namespace A247462.P18292676032662643555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A019426 n : ℤ))).toNat

end

end A247462.P18292676032662643555

namespace A247462

/-- `A000005(A323172(n+2)^A019426(n))` -/
def P18292676032662643555.Spec : Prop :=
  ∀ n, P18292676032662643555.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P16969062876964665632

`A000005(A323172(n+2)^A019427(n))`
-/

namespace A247462.P16969062876964665632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A019427 n : ℤ))).toNat

end

end A247462.P16969062876964665632

namespace A247462

/-- `A000005(A323172(n+2)^A019427(n))` -/
def P16969062876964665632.Spec : Prop :=
  ∀ n, P16969062876964665632.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P16773825505091822815

`A000005(A323172(n+2)^A019428(n))`
-/

namespace A247462.P16773825505091822815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A019428 n : ℤ))).toNat

end

end A247462.P16773825505091822815

namespace A247462

/-- `A000005(A323172(n+2)^A019428(n))` -/
def P16773825505091822815.Spec : Prop :=
  ∀ n, P16773825505091822815.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P15961482044959060443

`A001462(A323172(n+2)^A019425(n))`
-/

namespace A247462.P15961482044959060443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A019425 n : ℤ))).toNat

end

end A247462.P15961482044959060443

namespace A247462

/-- `A001462(A323172(n+2)^A019425(n))` -/
def P15961482044959060443.Spec : Prop :=
  ∀ n, P15961482044959060443.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P4594992753067152694

`A003990(A323172(n+2)^A019428(n))`
-/

namespace A247462.P4594992753067152694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A019428 n : ℤ))).toNat

end

end A247462.P4594992753067152694

namespace A247462

/-- `A003990(A323172(n+2)^A019428(n))` -/
def P4594992753067152694.Spec : Prop :=
  ∀ n, P4594992753067152694.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P1900369355867052922

`A008619(A323172(n+2)^A019428(n))`
-/

namespace A247462.P1900369355867052922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A019428 n : ℤ))).toNat

end

end A247462.P1900369355867052922

namespace A247462

/-- `A008619(A323172(n+2)^A019428(n))` -/
def P1900369355867052922.Spec : Prop :=
  ∀ n, P1900369355867052922.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P18293845702848425729

`A000005(A323172(n+2)^A056753(n))`
-/

namespace A247462.P18293845702848425729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A056753 n : ℤ))).toNat

end

end A247462.P18293845702848425729

namespace A247462

/-- `A000005(A323172(n+2)^A056753(n))` -/
def P18293845702848425729.Spec : Prop :=
  ∀ n, P18293845702848425729.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P15960251044897608591

`A000002(A323172(n+2)^A057979(n))`
-/

namespace A247462.P15960251044897608591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A057979 n : ℤ))).toNat

end

end A247462.P15960251044897608591

namespace A247462

/-- `A000002(A323172(n+2)^A057979(n))` -/
def P15960251044897608591.Spec : Prop :=
  ∀ n, P15960251044897608591.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P10660407620798187065

`A000005(A323172(n+2)^A057979(n))`
-/

namespace A247462.P10660407620798187065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A057979 n : ℤ))).toNat

end

end A247462.P10660407620798187065

namespace A247462

/-- `A000005(A323172(n+2)^A057979(n))` -/
def P10660407620798187065.Spec : Prop :=
  ∀ n, P10660407620798187065.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P6918700303206622214

`A008619(A323172(n+2)^A057979(n))`
-/

namespace A247462.P6918700303206622214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A057979 n : ℤ))).toNat

end

end A247462.P6918700303206622214

namespace A247462

/-- `A008619(A323172(n+2)^A057979(n))` -/
def P6918700303206622214.Spec : Prop :=
  ∀ n, P6918700303206622214.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P1916876898601989278

`A008619(A323172(n+2)^A075180(n))`
-/

namespace A247462.P1916876898601989278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A075180 n : ℤ))).toNat

end

end A247462.P1916876898601989278

namespace A247462

/-- `A008619(A323172(n+2)^A075180(n))` -/
def P1916876898601989278.Spec : Prop :=
  ∀ n, P1916876898601989278.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P6308242112064600690

`A000005(A323172(n+2)^A093178(n))`
-/

namespace A247462.P6308242112064600690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A093178 n : ℤ))).toNat

end

end A247462.P6308242112064600690

namespace A247462

/-- `A000005(A323172(n+2)^A093178(n))` -/
def P6308242112064600690.Spec : Prop :=
  ∀ n, P6308242112064600690.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P2430608673542122164

`A000005(A323172(n+2)^A122458(n))`
-/

namespace A247462.P2430608673542122164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A122458 n : ℤ))).toNat

end

end A247462.P2430608673542122164

namespace A247462

/-- `A000005(A323172(n+2)^A122458(n))` -/
def P2430608673542122164.Spec : Prop :=
  ∀ n, P2430608673542122164.a n = A247462 (n + 1)

end A247462

/-! ## A247462.P5225938717657686268

`A000005(A323172(n+2)^A124625(n))`
-/

namespace A247462.P5225938717657686268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A323172 (n + 2) : ℚ) ^ (A124625 n : ℤ))).toNat

end

end A247462.P5225938717657686268

namespace A247462

/-- `A000005(A323172(n+2)^A124625(n))` -/
def P5225938717657686268.Spec : Prop :=
  ∀ n, P5225938717657686268.a n = A247462 (n + 1)

end A247462

/-!
# A247464: Numbers n such that n!!! - 3^4 is prime.

The programs for A247464, there is no canonical definition to state claims against.
-/

/-! ## A247464.P5361296815350367600

`lt[A350562(2*n+5), A350571(A350562(n+1))]`
-/

namespace A247464.P5361296815350367600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350562 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350571 (A350562 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247464.P5361296815350367600

/-!
# A247467: Numbers n such that n!3 + 3^6 is prime.

The programs for A247467, there is no canonical definition to state claims against.
-/

/-! ## A247467.P8522914106670096538

`eq[A133265(A039708(n)), A235125(n+2)]`
-/

namespace A247467.P8522914106670096538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A039708 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235125 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247467.P8522914106670096538

/-! ## A247467.P11151943224186097392

`A174681(A341161(n+2))`
-/

namespace A247467.P11151943224186097392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174681 (A341161 (n + 2)).toNat

end

end A247467.P11151943224186097392

/-! ## A247467.P12291157574851419679

`A000194(A112131(n+1)+A018918(n))`
-/

namespace A247467.P12291157574851419679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A112131 (n + 1) + A018918 n).toNat

end

end A247467.P12291157574851419679

/-! ## A247467.P12026709035631536551

`A182835(n+1)+A133299(A023359(n))`
-/

namespace A247467.P12026709035631536551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182835 (n + 1) + A133299 (A023359 n).toNat

end

end A247467.P12026709035631536551

/-!
# A247469: Triangle read by rows: T(n,k) is the number of weighted lattice paths B(n) having k weak peaks.

The programs for A247469, there is no canonical definition to state claims against.
-/

/-! ## A247469.P9430954349485140439

`A246177(n)+A185237(A097860(n))`
-/

namespace A247469.P9430954349485140439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246177 n + A185237 (A097860 n).toNat

end

end A247469.P9430954349485140439

/-! ## A247469.P3530821105318879594

`A246177(n)+A178798(A246186(n))`
-/

namespace A247469.P3530821105318879594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246177 n + A178798 (A246186 n).toNat

end

end A247469.P3530821105318879594

/-! ## A247469.P8310565315093562555

`A246177(n)+A178798(A247497(n))`
-/

namespace A247469.P8310565315093562555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246177 n + A178798 (A247497 n).toNat

end

end A247469.P8310565315093562555

/-! ## A247469.P15221367803190813915

`or(A086080(A173018(3*n+2)), A246177(n))`
-/

namespace A247469.P15221367803190813915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086080 (A173018 (3 * n + 2)).toNat) (A246177 n)

end

end A247469.P15221367803190813915

/-!
# A247470: Number of weak peaks in all weighted lattice paths in B(n).

The programs for A247470, there is no canonical definition to state claims against.
-/

/-! ## A247470.P17822525838698765027

`A054846(A072844(n+1))`
-/

namespace A247470.P17822525838698765027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A072844 (n + 1)).toNat

end

end A247470.P17822525838698765027

/-! ## A247470.P3466112830525153221

`A054846(A037954(Δ[n²]))`
-/

namespace A247470.P3466112830525153221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A037954 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A247470.P3466112830525153221

/-! ## A247470.P13382228286412885529

`A100196(C(Δ[n²], A020705(n)))`
-/

namespace A247470.P13382228286412885529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (A020705 n).toNat)

end

end A247470.P13382228286412885529

/-! ## A247470.P13893047797480343550

`A100196(A072844(n+1)%(n^n))`
-/

namespace A247470.P13893047797480343550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.tmod (A072844 (n + 1)) (n ^ n : ℤ)).toNat

end

end A247470.P13893047797480343550

/-! ## A247470.P1965028517123321556

`A054846(C(A005408(n), A020705(n)))`
-/

namespace A247470.P1965028517123321556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Nat.choose (A005408 n).toNat (A020705 n).toNat)

end

end A247470.P1965028517123321556

/-!
# A247471: Number of paths in B(n) that start with a u step and end with a d step.

The programs for A247471, there is no canonical definition to state claims against.
-/

/-! ## A247471.P9543163126998287512

`A033183(A067687(n+1))`
-/

namespace A247471.P9543163126998287512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A067687 (n + 1)).toNat

end

end A247471.P9543163126998287512

/-! ## A247471.P6622174504947355692

`A033183(∑[A137682(n+1)])`
-/

namespace A247471.P6622174504947355692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247471.P6622174504947355692

/-! ## A247471.P5369331092318916953

`A033183(Δ[A280000(n+4)])`
-/

namespace A247471.P5369331092318916953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280000 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (f1 (n + 1) - f1 n).toNat

end

end A247471.P5369331092318916953

/-! ## A247471.P15075176335141602271

`A185712(A090827(n)-A089882(n+1))`
-/

namespace A247471.P15075176335141602271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A090827 n - A089882 (n + 1)).toNat

end

end A247471.P15075176335141602271

/-! ## A247471.P6166732362663083664

`A029905(a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A247471.P6166732362663083664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 2] fun n a =>
  A029905 (a (n - 1)).toNat

end

end A247471.P6166732362663083664

/-!
# A247472: Number of permutations of length n avoiding the patterns 14253 and 13524.

The programs for A247472, there is no canonical definition to state claims against.
-/

/-! ## A247472.P3457395357793634027

`A224295(A004891(n+1))-char[7]`
-/

namespace A247472.P3457395357793634027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224295 (A004891 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247472.P3457395357793634027

/-! ## A247472.P10820620609141056680

`A224295(n)-(A264669(n+1)%5)%2`
-/

namespace A247472.P10820620609141056680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224295 n - Int.tmod (Int.tmod (A264669 (n + 1)) 5) 2

end

end A247472.P10820620609141056680

/-! ## A247472.P6834109434900910757

`A224295(n)+A178798(A001911(n))`
-/

namespace A247472.P6834109434900910757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224295 n + A178798 (A001911 n).toNat

end

end A247472.P6834109434900910757

/-! ## A247472.P2345082180246292053

`A028310(A224295(n)-A014082(n))`
-/

namespace A247472.P2345082180246292053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A224295 n - A014082 n).toNat

end

end A247472.P2345082180246292053

/-!
# A247473: Numbers of the form 2^k (k>=0) that are a sum of divisors of m for some m.

The programs for A247473, there is no canonical definition to state claims against.
-/

/-! ## A247473.P5853816927441481739

`record[2^n*A180162(n)%2]`
-/

namespace A247473.P5853816927441481739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.tmod (A180162 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247473.P5853816927441481739

/-! ## A247473.P4897017386290305363

`record[(char[A048947(n+1)]+1)^n]`
-/

namespace A247473.P4897017386290305363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048947 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247473.P4897017386290305363

/-! ## A247473.P12902514179150703641

`record[A094502(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A247473.P12902514179150703641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094502 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247473.P12902514179150703641

/-! ## A247473.P11138248187664643350

`record[2^(n+1)-A180169(n)]`
-/

namespace A247473.P11138248187664643350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A180169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247473.P11138248187664643350

/-! ## A247473.P2085375965962520882

`A000079(lt[A216165(n+1), A264172(3*(n+1))])`
-/

namespace A247473.P2085375965962520882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247473.P2085375965962520882

/-!
# A247477: Largest m such that n/m + n divides (n/m)^(n/m) + n, (n/m)^n + n/m and n^(n/m) + n/m, or 0 if no such m exists.

The programs for A247477, there is no canonical definition to state claims against.
-/

/-! ## A247477.P17008357364139540044

`and(n+1, gcd(xor(n, n+1), A097448(n)))`
-/

namespace A247477.P17008357364139540044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (Int.gcd (Nat.xor n (n + 1) : ℤ) (A097448 n))

end

end A247477.P17008357364139540044

/-! ## A247477.P12858155370643573372

`and(A006519(n+1), A324198(A097448(n)))`
-/

namespace A247477.P12858155370643573372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006519 (n + 1)) (A324198 (A097448 n).toNat)

end

end A247477.P12858155370643573372

/-! ## A247477.P15975956791675720836

`and(A324198(A097448(n)), A327405(n+1))`
-/

namespace A247477.P15975956791675720836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324198 (A097448 n).toNat) (A327405 (n + 1))

end

end A247477.P15975956791675720836

/-! ## A247477.P9126128800319984954

`and(A000930(A107286(n)), A096894(n+1))`
-/

namespace A247477.P9126128800319984954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000930 (A107286 n).toNat) (A096894 (n + 1))

end

end A247477.P9126128800319984954

/-! ## A247477.P8280869749839807966

`and(A324198(n), A358522(n+1))`
-/

namespace A247477.P8280869749839807966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324198 n) (A358522 (n + 1))

end

end A247477.P8280869749839807966

/-!
# A247478: Primes p such that (p^4 + 5)/6 is prime.

The programs for A247478, there is no canonical definition to state claims against.
-/

/-! ## A247478.P11454809732480515443

`A088081(A322959(n+1))`
-/

namespace A247478.P11454809732480515443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088081 (A322959 (n + 1)).toNat

end

end A247478.P11454809732480515443

/-! ## A247478.P8632519276307657567

`A088083(A276642(n+2))`
-/

namespace A247478.P8632519276307657567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088083 (A276642 (n + 2)).toNat

end

end A247478.P8632519276307657567

/-! ## A247478.P11893750659160111650

`A088081(A033476(n))`
-/

namespace A247478.P11893750659160111650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088081 (A033476 n).toNat

end

end A247478.P11893750659160111650

/-!
# A247480: G.f. A(x) satisfies: x = Sum_{n>=1} 1/A(x)^(5*n) * Product_{k=1..n} (1 - 1/A(x)^(2*k-1)).

The programs for A247480, there is no canonical definition to state claims against.
-/

/-! ## A247480.P8520688511555783238

`A239295(n)-A002264(A211210(n))`
-/

namespace A247480.P8520688511555783238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239295 n - A002264 (A211210 n).toNat

end

end A247480.P8520688511555783238

/-!
# A247485: Integer part of 2*sqrt(prime(n)) + 1.

The programs for A247485, the canonical program `A247485.P2928913063424222719` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247485 has offset 1).

The definition of A247485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247485.P2928913063424222719

`ceil(sqrt(4*p?[round(8*n/7)]))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247485

/-- `ceil(sqrt(4*p?[round(8*n/7)]))` -/
def P2928913063424222719.Spec : Prop :=
  ∀ n, P2928913063424222719.a n = A247485 (n + 1)

theorem P2928913063424222719.correct : P2928913063424222719.Spec := by
  intro n
  simp only [A247485, Nat.add_sub_cancel]

end A247485

/-! ## A247485.P15549621209949603052

`ceil(sqrt(A001749(n+1)))`
-/

namespace A247485.P15549621209949603052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001749 (n + 1) : ℝ)⌉

end

end A247485.P15549621209949603052

namespace A247485

/-- `ceil(sqrt(A001749(n+1)))` -/
def P15549621209949603052.Spec : Prop :=
  ∀ n, P15549621209949603052.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P8061322325123814228

`(A362570(n+1)+1)/2`
-/

namespace A247485.P8061322325123814228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362570 (n + 1) + 1 : ℚ) / 2

end

end A247485.P8061322325123814228

namespace A247485

/-- `(A362570(n+1)+1)/2` -/
def P8061322325123814228.Spec : Prop :=
  ∀ n, P8061322325123814228.a n = (A247485 (n + 1) : ℚ)

end A247485

/-! ## A247485.P18070853453650868136

`ceil(2*sqrt(A000040(n+1)))`
-/

namespace A247485.P18070853453650868136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A000040 (n + 1) : ℝ)⌉

end

end A247485.P18070853453650868136

namespace A247485

/-- `ceil(2*sqrt(A000040(n+1)))` -/
def P18070853453650868136.Spec : Prop :=
  ∀ n, P18070853453650868136.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P9136189960424575433

`A000463(A362570(n+1))`
-/

namespace A247485.P9136189960424575433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A362570 (n + 1)).toNat

end

end A247485.P9136189960424575433

namespace A247485

/-- `A000463(A362570(n+1))` -/
def P9136189960424575433.Spec : Prop :=
  ∀ n, P9136189960424575433.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P5857694386983310160

`A248170(n+1)+A104103(n+1)`
-/

namespace A247485.P5857694386983310160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (n + 1) + A104103 (n + 1)

end

end A247485.P5857694386983310160

namespace A247485

/-- `A248170(n+1)+A104103(n+1)` -/
def P5857694386983310160.Spec : Prop :=
  ∀ n, P5857694386983310160.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P4860380896882814584

`A307136(A112045(n+1))`
-/

namespace A247485.P4860380896882814584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307136 (A112045 (n + 1)).toNat

end

end A247485.P4860380896882814584

namespace A247485

/-- `A307136(A112045(n+1))` -/
def P4860380896882814584.Spec : Prop :=
  ∀ n, P4860380896882814584.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P15369894481773733672

`A027434(A000040(n+1))`
-/

namespace A247485.P15369894481773733672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A000040 (n + 1)).toNat

end

end A247485.P15369894481773733672

namespace A247485

/-- `A027434(A000040(n+1))` -/
def P15369894481773733672.Spec : Prop :=
  ∀ n, P15369894481773733672.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P13593137353684453747

`A027434(A008578(n+2))`
-/

namespace A247485.P13593137353684453747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A008578 (n + 2)).toNat

end

end A247485.P13593137353684453747

namespace A247485

/-- `A027434(A008578(n+2))` -/
def P13593137353684453747.Spec : Prop :=
  ∀ n, P13593137353684453747.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P623809601378923486

`A000267(record[A110560(n)])+1`
-/

namespace A247485.P623809601378923486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A247485.P623809601378923486

namespace A247485

/-- `A000267(record[A110560(n)])+1` -/
def P623809601378923486.Spec : Prop :=
  ∀ n, P623809601378923486.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P9633645861569017208

`A117767(n+1)+A023969(A000040(n+1))`
-/

namespace A247485.P9633645861569017208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1) + A023969 (A000040 (n + 1)).toNat

end

end A247485.P9633645861569017208

namespace A247485

/-- `A117767(n+1)+A023969(A000040(n+1))` -/
def P9633645861569017208.Spec : Prop :=
  ∀ n, P9633645861569017208.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P15613098216552355149

`A102515(A037168(n+1))`
-/

namespace A247485.P15613098216552355149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102515 (A037168 (n + 1)).toNat

end

end A247485.P15613098216552355149

namespace A247485

/-- `A102515(A037168(n+1))` -/
def P15613098216552355149.Spec : Prop :=
  ∀ n, P15613098216552355149.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P6736631727276924671

`A101776(A100484(n+1))`
-/

namespace A247485.P6736631727276924671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A100484 (n + 1)).toNat

end

end A247485.P6736631727276924671

namespace A247485

/-- `A101776(A100484(n+1))` -/
def P6736631727276924671.Spec : Prop :=
  ∀ n, P6736631727276924671.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P16779827095897895979

`A101776(A076274(n+2))`
-/

namespace A247485.P16779827095897895979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A076274 (n + 2)).toNat

end

end A247485.P16779827095897895979

namespace A247485

/-- `A101776(A076274(n+2))` -/
def P16779827095897895979.Spec : Prop :=
  ∀ n, P16779827095897895979.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P9354157961894520843

`A002024(A229067(n+1))`
-/

namespace A247485.P9354157961894520843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A229067 (n + 1)).toNat

end

end A247485.P9354157961894520843

namespace A247485

/-- `A002024(A229067(n+1))` -/
def P9354157961894520843.Spec : Prop :=
  ∀ n, P9354157961894520843.a n = A247485 (n + 1)

end A247485

/-! ## A247485.P4037602646984916997

`A003059(A001749(n+1))`
-/

namespace A247485.P4037602646984916997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A001749 (n + 1)).toNat

end

end A247485.P4037602646984916997

namespace A247485

/-- `A003059(A001749(n+1))` -/
def P4037602646984916997.Spec : Prop :=
  ∀ n, P4037602646984916997.a n = A247485 (n + 1)

end A247485

/-!
# A247487: Expansion of (2 + x + x^2 + x^3 - x^4 - 2*x^5 - 4*x^6 - 8*x^7) / (1 - x^4 + 16*x^8) in powers of x.

The programs for A247487, the canonical program `A247487.P13124545003033750447` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247487 has offset 0).

The definition of A247487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247487.P13124545003033750447

`a(n-4)-16*a(n-8)` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=-1, a(6)=-3, a(7)=-7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247487

/-- `a(n-4)-16*a(n-8)` -/
def P13124545003033750447.Spec : Prop :=
  ∀ n, P13124545003033750447.a n = A247487 n

theorem P13124545003033750447.correct : P13124545003033750447.Spec := by
  intro n
  simp only [A247487]

end A247487

/-! ## A247487.P14595034468637371808

`A247564(n)/Δ[A047269(n+1)]`
-/

namespace A247487.P14595034468637371808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047269 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247564 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A247487.P14595034468637371808

namespace A247487

/-- `A247564(n)/Δ[A047269(n+1)]` -/
def P14595034468637371808.Spec : Prop :=
  ∀ n, P14595034468637371808.a n = (A247487 n : ℚ)

end A247487

/-! ## A247487.P4300275117855524163

`A247564(n)/gcd(3, A002249(n))`
-/

namespace A247487.P4300275117855524163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247564 n : ℚ) / (Int.gcd 3 (A002249 n) : ℚ)

end

end A247487.P4300275117855524163

namespace A247487

/-- `A247564(n)/gcd(3, A002249(n))` -/
def P4300275117855524163.Spec : Prop :=
  ∀ n, P4300275117855524163.a n = (A247487 n : ℚ)

end A247487

/-! ## A247487.P5074012531464904454

`A134744(n+1)-A004198(A047063(n+1))`
-/

namespace A247487.P5074012531464904454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (n + 1) - A004198 (A047063 (n + 1)).toNat

end

end A247487.P5074012531464904454

namespace A247487

/-- `A134744(n+1)-A004198(A047063(n+1))` -/
def P5074012531464904454.Spec : Prop :=
  ∀ n, P5074012531464904454.a n = A247487 n

end A247487

/-!
# A247489: Square array read by antidiagonals: A(k, n) = hypergeometric(P, Q, -k^k/(k-1)^(k-1)) rounded to the nearest integer, P = [(j-n)/k, j=0..k-1] and Q = [(j-n)/(k-1), j=0..k-2], k>=1, n>=0.

The programs for A247489, there is no canonical definition to state claims against.
-/

/-! ## A247489.P14656966008636906198

`A099238(n)-A000007(A111106(n))`
-/

namespace A247489.P14656966008636906198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 n - A000007 (A111106 n).toNat

end

end A247489.P14656966008636906198

/-! ## A247489.P1023467097101180782

`A099238(n)-A000007(A337506(n))`
-/

namespace A247489.P1023467097101180782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 n - A000007 (A337506 n).toNat

end

end A247489.P1023467097101180782

/-! ## A247489.P15654203360012029400

`A099238(n)*A266591(A038220(n))`
-/

namespace A247489.P15654203360012029400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 n * A266591 (A038220 n).toNat

end

end A247489.P15654203360012029400

/-! ## A247489.P6346213154111935445

`A099238(n)%A229853(A232006(n))`
-/

namespace A247489.P6346213154111935445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099238 n) (A229853 (A232006 n).toNat)

end

end A247489.P6346213154111935445

/-! ## A247489.P17247850678569632723

`A099238(n)-A000007(A137433(n+1))`
-/

namespace A247489.P17247850678569632723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 n - A000007 (A137433 (n + 1)).toNat

end

end A247489.P17247850678569632723

/-!
# A247490: Square array read by antidiagonals: A(k, n) = (-1)^(n+1)* hypergeom([k, -n+1], [], 1) for n>0 and A(k,0) = 0 (n>=0, k>=1).

The programs for A247490, there is no canonical definition to state claims against.
-/

/-! ## A247490.P9215174159137687519

`A060475(2*n+1-A080036(n))-char[∑[n]]`
-/

namespace A247490.P9215174159137687519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 ((2 * n + 1 : ℤ) - A080036 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247490.P9215174159137687519

/-! ## A247490.P1700525936865470315

`A086764(A056943(n))%A113025(n)`
-/

namespace A247490.P1700525936865470315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086764 (A056943 n).toNat) (A113025 n)

end

end A247490.P1700525936865470315

/-! ## A247490.P10613802767475460010

`A059905(A081165(n+1)%A116925(n))`
-/

namespace A247490.P10613802767475460010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (Int.tmod (A081165 (n + 1)) (A116925 n)).toNat

end

end A247490.P10613802767475460010

/-! ## A247490.P12331626747710242946

`A023416(A008277(n+1)*A266886(n+1))`
-/

namespace A247490.P12331626747710242946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A008277 (n + 1) * A266886 (n + 1)).toNat

end

end A247490.P12331626747710242946

/-! ## A247490.P11750564452174783248

`A196563(A098825(n)^A070939(n))`
-/

namespace A247490.P11750564452174783248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (SequenceMachineLib.roundAway ((A098825 n : ℚ) ^ (A070939 n : ℤ))).toNat

end

end A247490.P11750564452174783248

/-!
# A247491: Number of crossing partitions of {1,2,...,n} that contain no singletons.

The programs for A247491, there is no canonical definition to state claims against.
-/

/-! ## A247491.P5670175357708063769

`A000296(n)-A005043(n)`
-/

namespace A247491.P5670175357708063769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n - A005043 n

end

end A247491.P5670175357708063769

/-! ## A247491.P11747510667646209336

`A016098(n)-A247494(n)`
-/

namespace A247491.P11747510667646209336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016098 n - A247494 n

end

end A247491.P11747510667646209336

/-! ## A247491.P18004158191371751387

`A000296(n)-A059346(∑[n])`
-/

namespace A247491.P18004158191371751387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n - A059346 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247491.P18004158191371751387

/-! ## A247491.P3031973065194468899

`A124323(A000217(n))-A005043(n)`
-/

namespace A247491.P3031973065194468899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (A000217 n).toNat - A005043 n

end

end A247491.P3031973065194468899

/-! ## A247491.P7743430201155609164

`A000296(n)-A091867(A161680(n+1))`
-/

namespace A247491.P7743430201155609164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n - A091867 (A161680 (n + 1)).toNat

end

end A247491.P7743430201155609164

/-! ## A247491.P15346296723615926391

`A000296(n)-(A309303(n+1)+A309303(n))`
-/

namespace A247491.P15346296723615926391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n - (A309303 (n + 1) + A309303 n)

end

end A247491.P15346296723615926391

/-!
# A247492: Triangle read by rows: T(n, k) = binomial(k-1, n-k)*(n+1)/(n+1-k), 0 <= k <= n.

The programs for A247492, the canonical program `A247492.P9749959557379015816` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247492 has offset 0).

The definition of A247492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247492.P17726957187214582489

`A098599(comp[∑[n-1]])`
-/

namespace A247492.P17726957187214582489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098599 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A247492.P17726957187214582489

namespace A247492

/-- `A098599(comp[∑[n-1]])` -/
def P17726957187214582489.Spec : Prop :=
  ∀ n, P17726957187214582489.a n = A247492 n

end A247492

/-! ## A247492.P9749959557379015816

`and(-1, A098599(A007401(n+1)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A247492

/-- `and(-1, A098599(A007401(n+1)))` -/
def P9749959557379015816.Spec : Prop :=
  ∀ n, P9749959557379015816.a n = A247492 n

theorem P9749959557379015816.correct : P9749959557379015816.Spec := by
  intro n
  simp only [A247492]

end A247492

/-! ## A247492.P908448644871476553

`A098599(A007401(n+1))+A000007(n+1)`
-/

namespace A247492.P908448644871476553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098599 (A007401 (n + 1)).toNat + A000007 (n + 1)

end

end A247492.P908448644871476553

namespace A247492

/-- `A098599(A007401(n+1))+A000007(n+1)` -/
def P908448644871476553.Spec : Prop :=
  ∀ n, P908448644871476553.a n = A247492 n

end A247492

/-! ## A247492.P2229691433497852860

`A098599(A007401(n+1))/A000040(n+2)%2`
-/

namespace A247492.P2229691433497852860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098599 (A007401 (n + 1)).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A247492.P2229691433497852860

namespace A247492

/-- `A098599(A007401(n+1))/A000040(n+2)%2` -/
def P2229691433497852860.Spec : Prop :=
  ∀ n, P2229691433497852860.a n = (A247492 n : ℚ)

end A247492

/-! ## A247492.P1070653843720581300

`A098599(A007401(n+1))+A001222(gcd(n, n+1))`
-/

namespace A247492.P1070653843720581300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098599 (A007401 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A247492.P1070653843720581300

namespace A247492

/-- `A098599(A007401(n+1))+A001222(gcd(n, n+1))` -/
def P1070653843720581300.Spec : Prop :=
  ∀ n, P1070653843720581300.a n = A247492 n

end A247492

/-! ## A247492.P2517247446154355814

`A098599(A007401(n+1))^∑{e}[A006530(n+1), 2-#]`
-/

namespace A247492.P2517247446154355814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098599 (A007401 (n + 1)).toNat : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ)) : ℤ)

end

end A247492.P2517247446154355814

namespace A247492

/-- `A098599(A007401(n+1))^∑{e}[A006530(n+1), 2-#]` -/
def P2517247446154355814.Spec : Prop :=
  ∀ n, P2517247446154355814.a n = (A247492 n : ℚ)

end A247492

/-! ## A247492.P1820213010895700139

`A001222(A007918(n))*A098599(A007401(n+1))`
-/

namespace A247492.P1820213010895700139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A098599 (A007401 (n + 1)).toNat

end

end A247492.P1820213010895700139

namespace A247492

/-- `A001222(A007918(n))*A098599(A007401(n+1))` -/
def P1820213010895700139.Spec : Prop :=
  ∀ n, P1820213010895700139.a n = A247492 n

end A247492

/-!
# A247493: Triangle read by rows: T(n, k) = C(n, k)*C(2*k, k)/(k+1) - sum(j = 0..k, (-1)^j*(1-j)^n*C(k, j)/k!), 0<=k<=n.

The programs for A247493, there is no canonical definition to state claims against.
-/

/-! ## A247493.P3335406725594368029

`A247507(n)-A247504(A229243(n))`
-/

namespace A247493.P3335406725594368029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247507 n - A247504 (A229243 n).toNat

end

end A247493.P3335406725594368029

/-! ## A247493.P11594843455456456645

`A247507(n)-A247504(A269945(n))`
-/

namespace A247493.P11594843455456456645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247507 n - A247504 (A269945 n).toNat

end

end A247493.P11594843455456456645

/-! ## A247493.P14699215118546805204

`A247507(n)-A190230(A171559(n))`
-/

namespace A247493.P14699215118546805204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247507 n - A190230 (A171559 n).toNat

end

end A247493.P14699215118546805204

/-! ## A247493.P11626397259928697790

`A247507(n)-A320955(A292712(3*n))`
-/

namespace A247493.P11626397259928697790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247507 n - A320955 (A292712 (3 * n)).toNat

end

end A247493.P11626397259928697790

/-! ## A247493.P7266906515070335662

`A057354(A127673(n)%A197549(n+1))`
-/

namespace A247493.P7266906515070335662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (Int.tmod (A127673 n) (A197549 (n + 1))).toNat

end

end A247493.P7266906515070335662

/-!
# A247494: Number of crossing partitions of {1,2,...,n} that contain singletons.

The programs for A247494, there is no canonical definition to state claims against.
-/

/-! ## A247494.P1483494344126608208

`A016098(n)-A247491(n)`
-/

namespace A247494.P1483494344126608208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016098 n - A247491 n

end

end A247494.P1483494344126608208

/-! ## A247494.P6035557077742654142

`A011971(∑[n])-A000108(n)-A247491(n)`
-/

namespace A247494.P6035557077742654142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n - A247491 n

end

end A247494.P6035557077742654142

/-! ## A247494.P13618647057124112394

`A095149(∑[n])-A000108(n)-A247491(n)`
-/

namespace A247494.P13618647057124112394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n - A247491 n

end

end A247494.P13618647057124112394

/-! ## A247494.P1176874417652186345

`A108087(∑[n])-A000108(n)-A247491(n)`
-/

namespace A247494.P1176874417652186345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n - A247491 n

end

end A247494.P1176874417652186345

/-! ## A247494.P6556643595600773126

`A123081(∑[n])-A000108(n)-A247491(n)`
-/

namespace A247494.P6556643595600773126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n - A247491 n

end

end A247494.P6556643595600773126

/-! ## A247494.P12774382400309383951

`A186020(∑[n])-A000108(n)-A247491(n)`
-/

namespace A247494.P12774382400309383951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n - A247491 n

end

end A247494.P12774382400309383951

/-! ## A247494.P16851185828777179191

`A327884(∑[n])-A000108(n)-A247491(n)`
-/

namespace A247494.P16851185828777179191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n - A247491 n

end

end A247494.P16851185828777179191

/-! ## A247494.P5421797160325289000

`A346426(∑[n])-A000108(n)-A247491(n)`
-/

namespace A247494.P5421797160325289000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n - A247491 n

end

end A247494.P5421797160325289000

/-! ## A247494.P12543287668260268079

`A346500(∑[n])-A000108(n)-A247491(n)`
-/

namespace A247494.P12543287668260268079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n - A247491 n

end

end A247494.P12543287668260268079

/-! ## A247494.P6839978551072762818

`A000296(n+1)+A005043(n)-A000108(n)`
-/

namespace A247494.P6839978551072762818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 1) + (A005043 n - A000108 n)

end

end A247494.P6839978551072762818

/-!
# A247495: Generalized Motzkin numbers: Square array read by descending antidiagonals, T(n, k) = k!*[x^k](exp(n*x)* BesselI_{1}(2*x)/x), n>=0, k>=0.

The programs for A247495, there is no canonical definition to state claims against.
-/

/-! ## A247495.P2724524488542504508

`A335460(n+1)+A335460(A154921(n))+A059260(n)`
-/

namespace A247495.P2724524488542504508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (n + 1) + (A335460 (A154921 n).toNat + A059260 n)

end

end A247495.P2724524488542504508

/-!
# A247496: a(n) = n!*[x^n](exp(n*x)*BesselI_{1}(2*x)/x), n>=0, main diagonal of A247495.

The programs for A247496, there is no canonical definition to state claims against.
-/

/-! ## A247496.P7745878509974378303

`A247495(∑[4*n])`
-/

namespace A247496.P7745878509974378303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247496.P7745878509974378303

/-! ## A247496.P16988610972319959164

`gcd(A000038(n), A247495(A046092(n)))`
-/

namespace A247496.P16988610972319959164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A247495 (A046092 n).toNat)

end

end A247496.P16988610972319959164

/-! ## A247496.P3099665248094318030

`lcm(A020985(n), A247495(A046092(n)))`
-/

namespace A247496.P3099665248094318030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A247495 (A046092 n).toNat)

end

end A247496.P3099665248094318030

/-! ## A247496.P13041493868446249735

`A247495(A046092(n))%A302286(n+1)`
-/

namespace A247496.P13041493868446249735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247495 (A046092 n).toNat) (A302286 (n + 1))

end

end A247496.P13041493868446249735

/-! ## A247496.P1055427399568149945

`A247495(A106232(n+1))%A302286(n+1)`
-/

namespace A247496.P1055427399568149945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247495 (A106232 (n + 1)).toNat) (A302286 (n + 1))

end

end A247496.P1055427399568149945

/-!
# A247499: a(n) = hypergeom([1, -n, -n-1], [2], 1).

The programs for A247499, there is no canonical definition to state claims against.
-/

/-! ## A247499.P14090602153711203270

`A350267(n+1)/(n+1)`
-/

namespace A247499.P14090602153711203270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350267 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A247499.P14090602153711203270

/-! ## A247499.P1564256449248347474

`floor(A000262(n+2)/A002378(n+1))`
-/

namespace A247499.P1564256449248347474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000262 (n + 2) : ℚ) / (A002378 (n + 1) : ℚ)⌋

end

end A247499.P1564256449248347474

/-! ## A247499.P10508305351343084194

`floor(A000262(n+2)/A002620(2*n+3))`
-/

namespace A247499.P10508305351343084194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000262 (n + 2) : ℚ) / (A002620 (2 * n + 3) : ℚ)⌋

end

end A247499.P10508305351343084194

