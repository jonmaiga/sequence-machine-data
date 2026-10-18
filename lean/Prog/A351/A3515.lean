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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A351500: Highly composite numbers (A002182) ordered by the number of 2's in their prime factorizations.

The programs for A351500, there is no canonical definition to state claims against.
-/

/-! ## A351500.P2509186978490886846

`A278159(A277374(n)-A178225(n))`
-/

namespace A351500.P2509186978490886846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278159 (A277374 n - A178225 n).toNat

end

end A351500.P2509186978490886846

/-! ## A351500.P16084466258779859152

`A002322(A001037(n)*A004669(n))`
-/

namespace A351500.P16084466258779859152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A001037 n * A004669 n).toNat

end

end A351500.P16084466258779859152

/-! ## A351500.P6624643861357908769

`A329886(eq[A053501(n), A155494(n)])`
-/

namespace A351500.P6624643861357908769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329886 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351500.P6624643861357908769

/-!
# A351501: a(n) = binomial(n^2 + n - 1, n) / (n^2 + n - 1).

The programs for A351501, there is no canonical definition to state claims against.
-/

/-! ## A351501.P16669604872914108685

`(n+1)*A182316(n)`
-/

namespace A351501.P16669604872914108685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A182316 n

end

end A351501.P16669604872914108685

/-! ## A351501.P215181821496394757

`A214400(n)/(n+1)`
-/

namespace A351501.P215181821496394757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214400 n : ℚ) / (n + 1 : ℚ)

end

end A351501.P215181821496394757

/-! ## A351501.P3152093994656561940

`floor(A214400(n)/A008619(2*n))`
-/

namespace A351501.P3152093994656561940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214400 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A351501.P3152093994656561940

/-! ## A351501.P2728815677642840230

`C(n*(n+3), n)/(n+1)`
-/

namespace A351501.P2728815677642840230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (n + 3)) n : ℚ) / (n + 1 : ℚ)

end

end A351501.P2728815677642840230

/-! ## A351501.P3213107478102609754

`floor(C((n+1)²+n-1, n)/(n+1))`
-/

namespace A351501.P3213107478102609754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (((n + 1) ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat n : ℚ) / (n + 1 : ℚ)⌋

end

end A351501.P3213107478102609754

/-!
# A351502: Expansion of e.g.f. 1/(1 + log(1 - x)*exp(-x)).

The programs for A351502, there is no canonical definition to state claims against.
-/

/-! ## A351502.P15605031847844164711

`A195174(A125279(n))`
-/

namespace A351502.P15605031847844164711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A125279 n).toNat

end

end A351502.P15605031847844164711

/-! ## A351502.P8870622861569910736

`A165190(A144613(n!))`
-/

namespace A351502.P8870622861569910736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A144613 (Nat.factorial n)).toNat

end

end A351502.P8870622861569910736

/-! ## A351502.P4688238439988673228

`A320536(A050002(n!))`
-/

namespace A351502.P4688238439988673228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A050002 (Nat.factorial n)).toNat

end

end A351502.P4688238439988673228

/-!
# A351503: Expansion of e.g.f. 1/(1 + x^2 * log(1 - x)).

The programs for A351503, there is no canonical definition to state claims against.
-/

/-! ## A351503.P17027700030030293223

`A355665(∑[n+3])`
-/

namespace A351503.P17027700030030293223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355665 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351503.P17027700030030293223

/-! ## A351503.P16547567158281627486

`A014682(A355287(n)+A353228(n))`
-/

namespace A351503.P16547567158281627486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A355287 n + A353228 n).toNat

end

end A351503.P16547567158281627486

/-! ## A351503.P17797612328228579619

`A375686(n)-A002264(A375686(n))`
-/

namespace A351503.P17797612328228579619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375686 n - A002264 (A375686 n).toNat

end

end A351503.P17797612328228579619

/-!
# A351504: Expansion of e.g.f. 1/(1 + x^3 * log(1 - x)).

The programs for A351504, there is no canonical definition to state claims against.
-/

/-! ## A351504.P13059699683179041608

`A355665(A000217(n+3)+n)`
-/

namespace A351504.P13059699683179041608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355665 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A351504.P13059699683179041608

/-! ## A351504.P15315373105069036683

`A355665(A046691(n+1)+n+4)`
-/

namespace A351504.P15315373105069036683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355665 (A046691 (n + 1) + (n + 4 : ℤ)).toNat

end

end A351504.P15315373105069036683

/-! ## A351504.P12676307554036788771

`A355665(lt[A001945(n+3), A355665(n+3)])`
-/

namespace A351504.P12676307554036788771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355665 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355665 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A351504.P12676307554036788771

/-! ## A351504.P6395305371647471132

`A028397(A356099(n))`
-/

namespace A351504.P6395305371647471132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028397 (A356099 n).toNat

end

end A351504.P6395305371647471132

/-!
# A351505: Expansion of e.g.f. 1/(1 + x^2/2 * log(1 - x)).

The programs for A351505, there is no canonical definition to state claims against.
-/

/-! ## A351505.P1919667099465998151

`A355652(∑[n+3])`
-/

namespace A351505.P1919667099465998151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351505.P1919667099465998151

/-! ## A351505.P2351025107675016031

`or(A000007(n), A355652(A055998(n+1)))`
-/

namespace A351505.P2351025107675016031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A355652 (A055998 (n + 1)).toNat)

end

end A351505.P2351025107675016031

/-! ## A351505.P5902963225248798244

`A355652(A055998(n+1))%A356012(n+4)`
-/

namespace A351505.P5902963225248798244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355652 (A055998 (n + 1)).toNat) (A356012 (n + 4))

end

end A351505.P5902963225248798244

/-! ## A351505.P1272532191871570505

`A355652(A055998(n+1))+A000007(3*n+2)`
-/

namespace A351505.P1272532191871570505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (A055998 (n + 1)).toNat + A000007 (3 * n + 2)

end

end A351505.P1272532191871570505

/-! ## A351505.P848909227904433951

`A355652(A055998(n+1))+1-A173441(or(1, n))`
-/

namespace A351505.P848909227904433951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (A055998 (n + 1)).toNat + 1 - A173441 (Nat.lor 1 n)

end

end A351505.P848909227904433951

/-! ## A351505.P1956361813098010181

`A355652(A055998(n+1))+1-A040001(or(1, n)²)`
-/

namespace A351505.P1956361813098010181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (A055998 (n + 1)).toNat + 1 - A040001 (Nat.lor 1 n ^ 2)

end

end A351505.P1956361813098010181

/-! ## A351505.P90150138013102143

`A355652(A055998(n+1))+A308989(A173441(n+1))`
-/

namespace A351505.P90150138013102143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (A055998 (n + 1)).toNat + A308989 (A173441 (n + 1)).toNat

end

end A351505.P90150138013102143

/-!
# A351506: Expansion of e.g.f. 1/(1 + x^3/6 * log(1 - x)).

The programs for A351506, there is no canonical definition to state claims against.
-/

/-! ## A351506.P15074638646135788739

`A355652(A155212(n)+4)`
-/

namespace A351506.P15074638646135788739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (A155212 n + 4).toNat

end

end A351506.P15074638646135788739

/-! ## A351506.P6861764727983801545

`A355652(eq[3, A025581(n)])`
-/

namespace A351506.P6861764727983801545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351506.P6861764727983801545

/-! ## A351506.P3307334756827296993

`A355652(A052905(n+1)+1)`
-/

namespace A351506.P3307334756827296993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (A052905 (n + 1) + 1).toNat

end

end A351506.P3307334756827296993

/-! ## A351506.P8418288724349343352

`A355652(A000096(n+3)-3)`
-/

namespace A351506.P8418288724349343352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 (A000096 (n + 3) - 3).toNat

end

end A351506.P8418288724349343352

/-! ## A351506.P5533170587828510785

`A355652(n+1+A000096(n+2))`
-/

namespace A351506.P5533170587828510785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355652 ((n + 1 : ℤ) + A000096 (n + 2)).toNat

end

end A351506.P5533170587828510785

/-!
# A351509: G.f. A(x) = lim_{n->infinity} (P(n) - 1)/(2*x)^n, where P(1,x) = 1/sqrt(1-4*x), and P(n+1,x) = 1/sqrt(1 - 4*x + 4*x/P(n,x)) for n >= 1.

The programs for A351509, there is no canonical definition to state claims against.
-/

/-! ## A351509.P4464059048671089686

`A352093(∑[n]+n)`
-/

namespace A351509.P4464059048671089686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352093 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A351509.P4464059048671089686

/-! ## A351509.P16992459267295606006

`A352093(A000096(n))+char[9]`
-/

namespace A351509.P16992459267295606006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352093 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A351509.P16992459267295606006

/-! ## A351509.P10183103740116818271

`A175740(n)*A352093(A000096(n))`
-/

namespace A351509.P10183103740116818271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175740 n * A352093 (A000096 n).toNat

end

end A351509.P10183103740116818271

/-! ## A351509.P8073775293998725595

`A352093(A000096(n))%A028329(n)`
-/

namespace A351509.P8073775293998725595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352093 (A000096 n).toNat) (A028329 n)

end

end A351509.P8073775293998725595

/-! ## A351509.P14252752194155936788

`∑{d}[A352093(A000096(n)), A000010(#)]`
-/

namespace A351509.P14252752194155936788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352093 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A351509.P14252752194155936788

/-!
# A351510: G.f. A(x) = lim_{n->infinity} (1 - P(n,x))/(-2*x)^n, where P(1,x) = 1/sqrt(1 - 4*x), and P(n+1,x) = 1/sqrt(1 - 4*x + 4*x*P(n,x)) for n >= 1.

The programs for A351510, there is no canonical definition to state claims against.
-/

/-! ## A351510.P10046639073820257304

`A077070(n^n+n+1)`
-/

namespace A351510.P10046639073820257304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (n ^ n + (n + 1))

end

end A351510.P10046639073820257304

/-! ## A351510.P14914307665011510865

`A178210(A259845(n))`
-/

namespace A351510.P14914307665011510865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A259845 n).toNat

end

end A351510.P14914307665011510865

/-!
# A351511: G.f. A(x) = Product_{n>=1} P(n,x), where P(1,x) = 1/sqrt(1-4*x), and P(n+1,x) = 1/sqrt(1 - 4*x + 4*x/P(n,x)) for n >= 1.

The programs for A351511, there is no canonical definition to state claims against.
-/

/-! ## A351511.P11809241725700517223

`A352093(∑[n+1])`
-/

namespace A351511.P11809241725700517223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352093 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351511.P11809241725700517223

/-! ## A351511.P8650668295496835016

`record[char[∑[n]]*A352093(n)]`
-/

namespace A351511.P8650668295496835016
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A352093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351511.P8650668295496835016

/-! ## A351511.P9489134181761055023

`record[A352093(∑[n-2*floor(n/10)])]`
-/

namespace A351511.P9489134181761055023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352093 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351511.P9489134181761055023

/-! ## A351511.P9527403417166978391

`record[A352093(n)/A013609(n)]`
-/

namespace A351511.P9527403417166978391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352093 n : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351511.P9527403417166978391

/-! ## A351511.P14119470345650668985

`record[A352093(n)/A013610(n)]`
-/

namespace A351511.P14119470345650668985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352093 n : ℚ) / (A013610 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351511.P14119470345650668985

/-!
# A351512: G.f. A(x) = Product_{n>=1} P(n,x), where P(1,x) = 1/sqrt(1 - 4*x), and P(n+1,x) = 1/sqrt(1 - 4*x + 4*x*P(n,x)) for n >= 1.

The programs for A351512, there is no canonical definition to state claims against.
-/

/-! ## A351512.P17915429417598876191

`A329321(A118456(n+1))+A033725(n)`
-/

namespace A351512.P17915429417598876191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329321 (A118456 (n + 1)).toNat + A033725 n

end

end A351512.P17915429417598876191

/-! ## A351512.P5704303510746406949

`A329321(A118456(n+1))+A033731(n)`
-/

namespace A351512.P5704303510746406949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329321 (A118456 (n + 1)).toNat + A033731 n

end

end A351512.P5704303510746406949

/-!
# A351513: Expansion of e.g.f. (exp(exp(exp(x)-1)-1)-1)^2 / 2.

The programs for A351513, there is no canonical definition to state claims against.
-/

/-! ## A351513.P8893634658691786087

`A039811(∑[n+1]+2)`
-/

namespace A351513.P8893634658691786087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039811 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351513.P8893634658691786087

/-! ## A351513.P5074000591992869442

`record[A039811(n+3)/A051141(n+1)]`
-/

namespace A351513.P5074000591992869442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039811 (n + 3) : ℚ) / (A051141 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351513.P5074000591992869442

/-! ## A351513.P3221320179587104030

`gcd(A000038(n), A039811(A133263(n+1)))`
-/

namespace A351513.P3221320179587104030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A039811 (A133263 (n + 1)).toNat)

end

end A351513.P3221320179587104030

/-! ## A351513.P6761730753419051045

`record[A039811(n+3)/A054654(A099375(n)+n)]`
-/

namespace A351513.P6761730753419051045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039811 (n + 3) : ℚ) / (A054654 (A099375 n + (n : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351513.P6761730753419051045

/-! ## A351513.P1434756450822912218

`A000041(A151935(n))*A039811(A133263(n+1))`
-/

namespace A351513.P1434756450822912218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A151935 n).toNat * A039811 (A133263 (n + 1)).toNat

end

end A351513.P1434756450822912218

/-!
# A351514: Expansion of e.g.f. (exp(exp(exp(exp(x)-1)-1)-1)-1)^2 / 2.

The programs for A351514, there is no canonical definition to state claims against.
-/

/-! ## A351514.P14646897818953437274

`A039812(∑[n+1]+2)`
-/

namespace A351514.P14646897818953437274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039812 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351514.P14646897818953437274

/-! ## A351514.P17607754100585670085

`record[A039812(n+3)/A039814(n+1)]`
-/

namespace A351514.P17607754100585670085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039812 (n + 3) : ℚ) / (A039814 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351514.P17607754100585670085

/-! ## A351514.P14821863712935585223

`record[A039812(n+3)/A039815(n+1)]`
-/

namespace A351514.P14821863712935585223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039812 (n + 3) : ℚ) / (A039815 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351514.P14821863712935585223

/-! ## A351514.P10517467761274308866

`record[A039812(n+3)/A039816(n+1)]`
-/

namespace A351514.P10517467761274308866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039812 (n + 3) : ℚ) / (A039816 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351514.P10517467761274308866

/-! ## A351514.P3459152963107463636

`record[A039812(n+3)/A039817(n+1)]`
-/

namespace A351514.P3459152963107463636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039812 (n + 3) : ℚ) / (A039817 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351514.P3459152963107463636

/-!
# A351515: Expansion of e.g.f. (exp(exp(exp(exp(exp(x)-1)-1)-1)-1)-1)^2 / 2.

The programs for A351515, there is no canonical definition to state claims against.
-/

/-! ## A351515.P10877849611316724775

`A039813(∑[n+1]+2)`
-/

namespace A351515.P10877849611316724775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039813 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351515.P10877849611316724775

/-! ## A351515.P16493511573898148320

`record[gcd(A039813(n+2), A084938(n))]`
-/

namespace A351515.P16493511573898148320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039813 (n + 2)) (A084938 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351515.P16493511573898148320

/-! ## A351515.P7053381480093149364

`record[A039813(n+3)/A039814(n+1)]`
-/

namespace A351515.P7053381480093149364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039813 (n + 3) : ℚ) / (A039814 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351515.P7053381480093149364

/-! ## A351515.P16691457357441140391

`record[A039813(n+3)/A039815(n+1)]`
-/

namespace A351515.P16691457357441140391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039813 (n + 3) : ℚ) / (A039815 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351515.P16691457357441140391

/-! ## A351515.P15831031705349563959

`record[A039813(n+3)/A039816(n+1)]`
-/

namespace A351515.P15831031705349563959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039813 (n + 3) : ℚ) / (A039816 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351515.P15831031705349563959

/-!
# A351516: a(n) is the maximum number of 3-letter words that can be contained in an n X n crossword puzzle.

The programs for A351516, there is no canonical definition to state claims against.
-/

/-! ## A351516.P1080675288857475129

`A064877(A007400(3*n)+A000217(n))`
-/

namespace A351516.P1080675288857475129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064877 (A007400 (3 * n) + A000217 n).toNat

end

end A351516.P1080675288857475129

/-!
# A351517: a(n) = Product_{p|n, p prime} p^(pi(p) mod 2).

The programs for A351517, the canonical program `A351517.P17553045902605292487` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351517 has offset 1).

The definition of A351517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351517.P15430999875662040483

`A007947(n+1)/A351518(n+1)`
-/

namespace A351517.P15430999875662040483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A351518 (n + 1) : ℚ)

end

end A351517.P15430999875662040483

namespace A351517

/-- `A007947(n+1)/A351518(n+1)` -/
def P15430999875662040483.Spec : Prop :=
  ∀ n, P15430999875662040483.a n = (A351517 (n + 1) : ℚ)

end A351517

/-! ## A351517.P2672199018032053088

`A247503(∏{p}[n+1, #])`
-/

namespace A351517.P2672199018032053088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351517.P2672199018032053088

namespace A351517

/-- `A247503(∏{p}[n+1, #])` -/
def P2672199018032053088.Spec : Prop :=
  ∀ n, P2672199018032053088.a n = A351517 (n + 1)

end A351517

/-! ## A351517.P17553045902605292487

`∏{p}[n+1, A345278(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A351517

/-- `∏{p}[n+1, A345278(#)]` -/
def P17553045902605292487.Spec : Prop :=
  ∀ n, P17553045902605292487.a n = A351517 (n + 1)

theorem P17553045902605292487.correct : P17553045902605292487.Spec := by
  intro n
  simp only [A351517, Nat.add_sub_cancel]

end A351517

/-! ## A351517.P1580257480818459563

`∏{p}[xor(n, -1), A247503(#)]`
-/

namespace A351517.P1580257480818459563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A247503 p

end

end A351517.P1580257480818459563

namespace A351517

/-- `∏{p}[xor(n, -1), A247503(#)]` -/
def P1580257480818459563.Spec : Prop :=
  ∀ n, P1580257480818459563.a n = A351517 (n + 1)

end A351517

/-! ## A351517.P14746660472409014227

`∏{p}[n+1, #/A248101(#)]`
-/

namespace A351517.P14746660472409014227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (A248101 p : ℚ)

end

end A351517.P14746660472409014227

namespace A351517

/-- `∏{p}[n+1, #/A248101(#)]` -/
def P14746660472409014227.Spec : Prop :=
  ∀ n, P14746660472409014227.a n = (A351517 (n + 1) : ℚ)

end A351517

/-! ## A351517.P2516645570867566461

`∏{p}[n+1, #^A257991(#)]`
-/

namespace A351517.P2516645570867566461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A257991 p : ℤ)

end

end A351517.P2516645570867566461

namespace A351517

/-- `∏{p}[n+1, #^A257991(#)]` -/
def P2516645570867566461.Spec : Prop :=
  ∀ n, P2516645570867566461.a n = (A351517 (n + 1) : ℚ)

end A351517

/-! ## A351517.P11148170503819710524

`A247503(A007947(n+1))`
-/

namespace A351517.P11148170503819710524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A007947 (n + 1)).toNat

end

end A351517.P11148170503819710524

namespace A351517

/-- `A247503(A007947(n+1))` -/
def P11148170503819710524.Spec : Prop :=
  ∀ n, P11148170503819710524.a n = A351517 (n + 1)

end A351517

/-! ## A351517.P9722373079837992022

`A247503(A216913(n+1))`
-/

namespace A351517.P9722373079837992022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A216913 (n + 1)).toNat

end

end A351517.P9722373079837992022

namespace A351517

/-- `A247503(A216913(n+1))` -/
def P9722373079837992022.Spec : Prop :=
  ∀ n, P9722373079837992022.a n = A351517 (n + 1)

end A351517

/-! ## A351517.P6215930009244559694

`gcd(A144845(n), A247503(n+1))`
-/

namespace A351517.P6215930009244559694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A247503 (n + 1))

end

end A351517.P6215930009244559694

namespace A351517

/-- `gcd(A144845(n), A247503(n+1))` -/
def P6215930009244559694.Spec : Prop :=
  ∀ n, (P6215930009244559694.a n : ℤ) = A351517 (n + 1)

end A351517

/-! ## A351517.P13137816807497012251

`A088835(A247503((n+1)²))`
-/

namespace A351517.P13137816807497012251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088835 (A247503 ((n + 1) ^ 2)).toNat

end

end A351517.P13137816807497012251

namespace A351517

/-- `A088835(A247503((n+1)²))` -/
def P13137816807497012251.Spec : Prop :=
  ∀ n, P13137816807497012251.a n = A351517 (n + 1)

end A351517

/-!
# A351518: a(n) = Product_{p|n, p prime} p^((pi(p)+1) mod 2).

The programs for A351518, the canonical program `A351518.P3848727873794154647` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351518 has offset 1).

The definition of A351518 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A351517, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351518.P3848727873794154647

`A007947(n+1)/A351517(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A351518

/-- `A007947(n+1)/A351517(n+1)` -/
def P3848727873794154647.Spec : Prop :=
  ∀ n, P3848727873794154647.a n = (A351518 (n + 1) : ℚ)

end A351518

/-! ## A351518.P6386262890756560592

`A248101(∏{p}[n+1, #])`
-/

namespace A351518.P6386262890756560592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351518.P6386262890756560592

namespace A351518

/-- `A248101(∏{p}[n+1, #])` -/
def P6386262890756560592.Spec : Prop :=
  ∀ n, P6386262890756560592.a n = A351518 (n + 1)

end A351518

/-! ## A351518.P2487658156095711347

`∏{p}[n+1, A345279(#)]`
-/

namespace A351518.P2487658156095711347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A345279 p

end

end A351518.P2487658156095711347

namespace A351518

/-- `∏{p}[n+1, A345279(#)]` -/
def P2487658156095711347.Spec : Prop :=
  ∀ n, P2487658156095711347.a n = A351518 (n + 1)

end A351518

/-! ## A351518.P5972338221943113719

`∏{p}[n+1, #/A247503(#)]`
-/

namespace A351518.P5972338221943113719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (A247503 p : ℚ)

end

end A351518.P5972338221943113719

namespace A351518

/-- `∏{p}[n+1, #/A247503(#)]` -/
def P5972338221943113719.Spec : Prop :=
  ∀ n, P5972338221943113719.a n = (A351518 (n + 1) : ℚ)

end A351518

/-! ## A351518.P8125441407327122084

`A248101(A007947(n+1))`
-/

namespace A351518.P8125441407327122084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A007947 (n + 1)).toNat

end

end A351518.P8125441407327122084

namespace A351518

/-- `A248101(A007947(n+1))` -/
def P8125441407327122084.Spec : Prop :=
  ∀ n, P8125441407327122084.a n = A351518 (n + 1)

end A351518

/-! ## A351518.P13116994590789183179

`A248101(A204455(n+1))`
-/

namespace A351518.P13116994590789183179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A204455 (n + 1)).toNat

end

end A351518.P13116994590789183179

namespace A351518

/-- `A248101(A204455(n+1))` -/
def P13116994590789183179.Spec : Prop :=
  ∀ n, P13116994590789183179.a n = A351518 (n + 1)

end A351518

/-! ## A351518.P9730748862127480035

`A302138(A248101(n+1))`
-/

namespace A351518.P9730748862127480035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302138 (A248101 (n + 1)).toNat

end

end A351518.P9730748862127480035

namespace A351518

/-- `A302138(A248101(n+1))` -/
def P9730748862127480035.Spec : Prop :=
  ∀ n, P9730748862127480035.a n = A351518 (n + 1)

end A351518

/-! ## A351518.P11133551401244408096

`gcd(A144845(n), A248101(n+1))`
-/

namespace A351518.P11133551401244408096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A248101 (n + 1))

end

end A351518.P11133551401244408096

namespace A351518

/-- `gcd(A144845(n), A248101(n+1))` -/
def P11133551401244408096.Spec : Prop :=
  ∀ n, (P11133551401244408096.a n : ℤ) = A351518 (n + 1)

end A351518

/-! ## A351518.P11948480025220645499

`A248101(A099985(n+1))`
-/

namespace A351518.P11948480025220645499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A099985 (n + 1)).toNat

end

end A351518.P11948480025220645499

namespace A351518

/-- `A248101(A099985(n+1))` -/
def P11948480025220645499.Spec : Prop :=
  ∀ n, P11948480025220645499.a n = A351518 (n + 1)

end A351518

/-! ## A351518.P1284491303887430758

`A248101(A234001(n+1))`
-/

namespace A351518.P1284491303887430758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A234001 (n + 1)).toNat

end

end A351518.P1284491303887430758

namespace A351518

/-- `A248101(A234001(n+1))` -/
def P1284491303887430758.Spec : Prop :=
  ∀ n, P1284491303887430758.a n = A351518 (n + 1)

end A351518

/-!
# A351519: a(n) = tau(n) + pi(n) - omega(n).

The programs for A351519, the canonical program `A351519.P5058596728449047522` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351519 has offset 1).

The definition of A351519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351519.P5058596728449047522

`A000005(n+1)+A000720(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A351519

/-- `A000005(n+1)+A000720(n+1)-A001221(n+1)` -/
def P5058596728449047522.Spec : Prop :=
  ∀ n, P5058596728449047522.a n = A351519 (n + 1)

theorem P5058596728449047522.correct : P5058596728449047522.Spec := by
  intro n
  simp only [A351519, Nat.add_sub_cancel]

end A351519

/-! ## A351519.P5601161502843416152

`1-A279436(n+1)+n`
-/

namespace A351519.P5601161502843416152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A279436 (n + 1) + (n : ℤ)

end

end A351519.P5601161502843416152

namespace A351519

/-- `1-A279436(n+1)+n` -/
def P5601161502843416152.Spec : Prop :=
  ∀ n, P5601161502843416152.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P2447454844928267381

`1-(A279436(n-or(n, -1))-n)`
-/

namespace A351519.P2447454844928267381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A279436 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat - (n : ℤ))

end

end A351519.P2447454844928267381

namespace A351519

/-- `1-(A279436(n-or(n, -1))-n)` -/
def P2447454844928267381.Spec : Prop :=
  ∀ n, P2447454844928267381.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P18194570402675021681

`A048865(n+1)+∏{e}[n+1, #+1]`
-/

namespace A351519.P18194570402675021681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A351519.P18194570402675021681

namespace A351519

/-- `A048865(n+1)+∏{e}[n+1, #+1]` -/
def P18194570402675021681.Spec : Prop :=
  ∀ n, P18194570402675021681.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P4680756360029712024

`A033273(n+1)+∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A351519.P4680756360029712024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351519.P4680756360029712024

namespace A351519

/-- `A033273(n+1)+∑[∑{p}[n+1, val(#, n+1)]]` -/
def P4680756360029712024.Spec : Prop :=
  ∀ n, P4680756360029712024.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P2645502751203251517

`A082514(n+1)-∑{p}[n+1, n²%#]%(n+1)`
-/

namespace A351519.P2645502751203251517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1) - (((∑ p ∈ Nat.primeFactors (f1 n), n ^ 2 % p) % (n + 1) : ℕ) : ℤ)

end

end A351519.P2645502751203251517

namespace A351519

/-- `A082514(n+1)-∑{p}[n+1, n²%#]%(n+1)` -/
def P2645502751203251517.Spec : Prop :=
  ∀ n, P2645502751203251517.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P16722438253575168339

`A048865(n+1)+Δ[A006218(n)]`
-/

namespace A351519.P16722438253575168339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (f1 (n + 1) - f1 n)

end

end A351519.P16722438253575168339

namespace A351519

/-- `A048865(n+1)+Δ[A006218(n)]` -/
def P16722438253575168339.Spec : Prop :=
  ∀ n, P16722438253575168339.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P9358907572304867364

`A033273(n+1)+A000720(n+1)`
-/

namespace A351519.P9358907572304867364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A000720 (n + 1)

end

end A351519.P9358907572304867364

namespace A351519

/-- `A033273(n+1)+A000720(n+1)` -/
def P9358907572304867364.Spec : Prop :=
  ∀ n, P9358907572304867364.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P10653291658631912821

`A048865(n+1)+A000005(n+1)`
-/

namespace A351519.P10653291658631912821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A000005 (n + 1)

end

end A351519.P10653291658631912821

namespace A351519

/-- `A048865(n+1)+A000005(n+1)` -/
def P10653291658631912821.Spec : Prop :=
  ∀ n, P10653291658631912821.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P1361632409393100461

`A055212(n+1)+A036234(n+1)`
-/

namespace A351519.P1361632409393100461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) + A036234 (n + 1)

end

end A351519.P1361632409393100461

namespace A351519

/-- `A055212(n+1)+A036234(n+1)` -/
def P1361632409393100461.Spec : Prop :=
  ∀ n, P1361632409393100461.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P9567265131268036046

`A186971(n+1)+A070824(n+1)`
-/

namespace A351519.P9567265131268036046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186971 (n + 1) + A070824 (n + 1)

end

end A351519.P9567265131268036046

namespace A351519

/-- `A186971(n+1)+A070824(n+1)` -/
def P9567265131268036046.Spec : Prop :=
  ∀ n, P9567265131268036046.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P1793632191380391537

`A082514(n+1)-A001221(n+1)`
-/

namespace A351519.P1793632191380391537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1) - A001221 (n + 1)

end

end A351519.P1793632191380391537

namespace A351519

/-- `A082514(n+1)-A001221(n+1)` -/
def P1793632191380391537.Spec : Prop :=
  ∀ n, P1793632191380391537.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P8014171114368142908

`A061468(n+1)-A048864(n+1)`
-/

namespace A351519.P8014171114368142908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A048864 (n + 1)

end

end A351519.P8014171114368142908

namespace A351519

/-- `A061468(n+1)-A048864(n+1)` -/
def P8014171114368142908.Spec : Prop :=
  ∀ n, P8014171114368142908.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P2699420851421566788

`A073757(n+1)-A036997(n+1)`
-/

namespace A351519.P2699420851421566788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A036997 (n + 1)

end

end A351519.P2699420851421566788

namespace A351519

/-- `A073757(n+1)-A036997(n+1)` -/
def P2699420851421566788.Spec : Prop :=
  ∀ n, P2699420851421566788.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P8731749392162259827

`A000720(n+1)+A055212(n+1)+1`
-/

namespace A351519.P8731749392162259827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A055212 (n + 1) + 1)

end

end A351519.P8731749392162259827

namespace A351519

/-- `A000720(n+1)+A055212(n+1)+1` -/
def P8731749392162259827.Spec : Prop :=
  ∀ n, P8731749392162259827.a n = A351519 (n + 1)

end A351519

/-! ## A351519.P3139707749067135275

`A001221(n+1)+A048865(n+1)+A033273(n+1)`
-/

namespace A351519.P3139707749067135275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A048865 (n + 1) + A033273 (n + 1))

end

end A351519.P3139707749067135275

namespace A351519

/-- `A001221(n+1)+A048865(n+1)+A033273(n+1)` -/
def P3139707749067135275.Spec : Prop :=
  ∀ n, P3139707749067135275.a n = A351519 (n + 1)

end A351519

/-!
# A351520: Number of numbers <= n that are either squarefree, a divisor of n, or both.

The programs for A351520, the canonical program `A351520.P14176785441679004629` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351520 has offset 1).

The definition of A351520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A013928, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351520.P14176785441679004629

`A000005(n+1)+A013928(n+2)-A034444(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A351520

/-- `A000005(n+1)+A013928(n+2)-A034444(n+1)` -/
def P14176785441679004629.Spec : Prop :=
  ∀ n, P14176785441679004629.a n = A351520 (n + 1)

theorem P14176785441679004629.correct : P14176785441679004629.Spec := by
  intro n
  simp only [A351520, Nat.add_sub_cancel]

end A351520

/-! ## A351520.P4248250601690485602

`A048105(n+1)+∑[char[∏{p}[n, #]-1]]`
-/

namespace A351520.P4248250601690485602
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351520.P4248250601690485602

namespace A351520

/-- `A048105(n+1)+∑[char[∏{p}[n, #]-1]]` -/
def P4248250601690485602.Spec : Prop :=
  ∀ n, P4248250601690485602.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P11863513358473647195

`A368673(n+1)+A000005(n+1)`
-/

namespace A351520.P11863513358473647195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368673 (n + 1) + A000005 (n + 1)

end

end A351520.P11863513358473647195

namespace A351520

/-- `A368673(n+1)+A000005(n+1)` -/
def P11863513358473647195.Spec : Prop :=
  ∀ n, P11863513358473647195.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P5842368357939950020

`A048105(n+1)+A013928(n+2)`
-/

namespace A351520.P5842368357939950020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A013928 (n + 2)

end

end A351520.P5842368357939950020

namespace A351520

/-- `A048105(n+1)+A013928(n+2)` -/
def P5842368357939950020.Spec : Prop :=
  ∀ n, P5842368357939950020.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P18052856604784717880

`A048105(n+1)+∑[A008966(n+1)]`
-/

namespace A351520.P18052856604784717880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351520.P18052856604784717880

namespace A351520

/-- `A048105(n+1)+∑[A008966(n+1)]` -/
def P18052856604784717880.Spec : Prop :=
  ∀ n, P18052856604784717880.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P8713079191762233594

`A048105(n+1)+∑[abs(A008683(n+1))]`
-/

namespace A351520.P8713079191762233594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351520.P8713079191762233594

namespace A351520

/-- `A048105(n+1)+∑[abs(A008683(n+1))]` -/
def P8713079191762233594.Spec : Prop :=
  ∀ n, P8713079191762233594.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P2090966730758777031

`A048105(n+1)+∑[abs(A080323(n+1))]`
-/

namespace A351520.P2090966730758777031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080323 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351520.P2090966730758777031

namespace A351520

/-- `A048105(n+1)+∑[abs(A080323(n+1))]` -/
def P2090966730758777031.Spec : Prop :=
  ∀ n, P2090966730758777031.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P7908301927993136752

`A048105(n+1)+∑[A069158(n+1)²]`
-/

namespace A351520.P7908301927993136752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351520.P7908301927993136752

namespace A351520

/-- `A048105(n+1)+∑[A069158(n+1)²]` -/
def P7908301927993136752.Spec : Prop :=
  ∀ n, P7908301927993136752.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P674370881988947322

`A048105(n+1)+∑[A008683(lcm(2, n+1))²]`
-/

namespace A351520.P674370881988947322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.lcm 2 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351520.P674370881988947322

namespace A351520

/-- `A048105(n+1)+∑[A008683(lcm(2, n+1))²]` -/
def P674370881988947322.Spec : Prop :=
  ∀ n, P674370881988947322.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P12952717107391813119

`A048105(n+1)+∑[char[A005117(n+1)-1]]`
-/

namespace A351520.P12952717107391813119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351520.P12952717107391813119

namespace A351520

/-- `A048105(n+1)+∑[char[A005117(n+1)-1]]` -/
def P12952717107391813119.Spec : Prop :=
  ∀ n, P12952717107391813119.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P3724802435198354315

`A048105(n+1)+∑[A008683(A008833(n+1))]`
-/

namespace A351520.P3724802435198354315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351520.P3724802435198354315

namespace A351520

/-- `A048105(n+1)+∑[A008683(A008833(n+1))]` -/
def P3724802435198354315.Spec : Prop :=
  ∀ n, P3724802435198354315.a n = A351520 (n + 1)

end A351520

/-! ## A351520.P12319517842659769646

`∑[A008966(n+1)]+A001222(A294895(n+1))`
-/

namespace A351520.P12319517842659769646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A001222 (A294895 (n + 1)).toNat

end

end A351520.P12319517842659769646

namespace A351520

/-- `∑[A008966(n+1)]+A001222(A294895(n+1))` -/
def P12319517842659769646.Spec : Prop :=
  ∀ n, P12319517842659769646.a n = A351520 (n + 1)

end A351520

/-!
# A351521: Dirichlet g.f.: Product_{p prime} (1 + 4*p^(-s)).

The programs for A351521, the canonical program `A351521.P4143436504143602524` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351521 has offset 1).

The definition of A351521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351521.P4143436504143602524

`A008966(n+1)*A035116(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351521

/-- `A008966(n+1)*A035116(n+1)` -/
def P4143436504143602524.Spec : Prop :=
  ∀ n, P4143436504143602524.a n = A351521 (n + 1)

theorem P4143436504143602524.correct : P4143436504143602524.Spec := by
  intro n
  simp only [A351521, Nat.add_sub_cancel]

end A351521

/-! ## A351521.P3473365527239497080

`∏{e}[n+1, C(4, 3*#)]`
-/

namespace A351521.P3473365527239497080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 4 (3 * Nat.factorization (f1 n) p)

end

end A351521.P3473365527239497080

namespace A351521

/-- `∏{e}[n+1, C(4, 3*#)]` -/
def P3473365527239497080.Spec : Prop :=
  ∀ n, (P3473365527239497080.a n : ℤ) = A351521 (n + 1)

end A351521

/-! ## A351521.P16019026268941811310

`∏{e}[n+1, (4^#)%8]`
-/

namespace A351521.P16019026268941811310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 ^ Nat.factorization (f1 n) p % 8

end

end A351521.P16019026268941811310

namespace A351521

/-- `∏{e}[n+1, (4^#)%8]` -/
def P16019026268941811310.Spec : Prop :=
  ∀ n, (P16019026268941811310.a n : ℤ) = A351521 (n + 1)

end A351521

/-! ## A351521.P15409120887264310333

`∏{e}[n+1, C(2, #²)²]`
-/

namespace A351521.P15409120887264310333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 (Nat.factorization (f1 n) p ^ 2) ^ 2

end

end A351521.P15409120887264310333

namespace A351521

/-- `∏{e}[n+1, C(2, #²)²]` -/
def P15409120887264310333.Spec : Prop :=
  ∀ n, (P15409120887264310333.a n : ℤ) = A351521 (n + 1)

end A351521

/-! ## A351521.P7988541385340085070

`∏{e}[n+1, 4*floor(1/#)]`
-/

namespace A351521.P7988541385340085070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 * ⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋

end

end A351521.P7988541385340085070

namespace A351521

/-- `∏{e}[n+1, 4*floor(1/#)]` -/
def P7988541385340085070.Spec : Prop :=
  ∀ n, P7988541385340085070.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P11923033797236725628

`∏{e}[n+1, and(2, 2^#)]²`
-/

namespace A351521.P11923033797236725628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.land 2 (2 ^ Nat.factorization (f1 n) p)) ^ 2

end

end A351521.P11923033797236725628

namespace A351521

/-- `∏{e}[n+1, and(2, 2^#)]²` -/
def P11923033797236725628.Spec : Prop :=
  ∀ n, (P11923033797236725628.a n : ℤ) = A351521 (n + 1)

end A351521

/-! ## A351521.P12674350221215409653

`∏{e}[n+1, floor(2/#²)]²`
-/

namespace A351521.P12674350221215409653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ⌊2 / (Nat.factorization (f1 n) p ^ 2 : ℚ)⌋) ^ 2

end

end A351521.P12674350221215409653

namespace A351521

/-- `∏{e}[n+1, floor(2/#²)]²` -/
def P12674350221215409653.Spec : Prop :=
  ∀ n, P12674350221215409653.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P2430775721081419341

`∏{e}[n+1, #+1]²*char[∏{p}[n, #]-1]`
-/

namespace A351521.P2430775721081419341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A351521.P2430775721081419341

namespace A351521

/-- `∏{e}[n+1, #+1]²*char[∏{p}[n, #]-1]` -/
def P2430775721081419341.Spec : Prop :=
  ∀ n, (P2430775721081419341.a n : ℤ) = A351521 (n + 1)

end A351521

/-! ## A351521.P10415511117243189548

`A074823(n+1)²`
-/

namespace A351521.P10415511117243189548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (n + 1) ^ 2

end

end A351521.P10415511117243189548

namespace A351521

/-- `A074823(n+1)²` -/
def P10415511117243189548.Spec : Prop :=
  ∀ n, P10415511117243189548.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P14651791389302739996

`A226177(n+1)²`
-/

namespace A351521.P14651791389302739996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (n + 1) ^ 2

end

end A351521.P14651791389302739996

namespace A351521

/-- `A226177(n+1)²` -/
def P14651791389302739996.Spec : Prop :=
  ∀ n, P14651791389302739996.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P4854118101747723263

`A114811(4*(n+1))²`
-/

namespace A351521.P4854118101747723263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114811 (4 * (n + 1)) ^ 2

end

end A351521.P4854118101747723263

namespace A351521

/-- `A114811(4*(n+1))²` -/
def P4854118101747723263.Spec : Prop :=
  ∀ n, P4854118101747723263.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P13269087930259408673

`A048298(A007426(n+1))`
-/

namespace A351521.P13269087930259408673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A007426 (n + 1)).toNat

end

end A351521.P13269087930259408673

namespace A351521

/-- `A048298(A007426(n+1))` -/
def P13269087930259408673.Spec : Prop :=
  ∀ n, P13269087930259408673.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P2949715402820624247

`A048298(A286779(n+1))`
-/

namespace A351521.P2949715402820624247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A286779 (n + 1)).toNat

end

end A351521.P2949715402820624247

namespace A351521

/-- `A048298(A286779(n+1))` -/
def P2949715402820624247.Spec : Prop :=
  ∀ n, P2949715402820624247.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P6791944369077861233

`A006288(A347149(n+1))`
-/

namespace A351521.P6791944369077861233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A347149 (n + 1)).toNat

end

end A351521.P6791944369077861233

namespace A351521

/-- `A006288(A347149(n+1))` -/
def P6791944369077861233.Spec : Prop :=
  ∀ n, P6791944369077861233.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P6190694439338309501

`A391249(A328705(n+1))`
-/

namespace A351521.P6190694439338309501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391249 (A328705 (n + 1)).toNat

end

end A351521.P6190694439338309501

namespace A351521

/-- `A391249(A328705(n+1))` -/
def P6190694439338309501.Spec : Prop :=
  ∀ n, P6190694439338309501.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P9586434936389814804

`A048298(A073184(n+1)²)`
-/

namespace A351521.P9586434936389814804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A073184 (n + 1) ^ 2).toNat

end

end A351521.P9586434936389814804

namespace A351521

/-- `A048298(A073184(n+1)²)` -/
def P9586434936389814804.Spec : Prop :=
  ∀ n, P9586434936389814804.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P4460859359618899591

`A162397(A073184(n+1)²)`
-/

namespace A351521.P4460859359618899591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162397 (A073184 (n + 1) ^ 2).toNat

end

end A351521.P4460859359618899591

namespace A351521

/-- `A162397(A073184(n+1)²)` -/
def P4460859359618899591.Spec : Prop :=
  ∀ n, P4460859359618899591.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P13150076327135403880

`A355837(A007948(n+1))²`
-/

namespace A351521.P13150076327135403880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355837 (A007948 (n + 1)).toNat ^ 2

end

end A351521.P13150076327135403880

namespace A351521

/-- `A355837(A007948(n+1))²` -/
def P13150076327135403880.Spec : Prop :=
  ∀ n, P13150076327135403880.a n = A351521 (n + 1)

end A351521

/-! ## A351521.P16625593977613175236

`lcm(A306653(n+1)², A285193(n))`
-/

namespace A351521.P16625593977613175236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A306653 (n + 1) ^ 2) (A285193 n)

end

end A351521.P16625593977613175236

namespace A351521

/-- `lcm(A306653(n+1)², A285193(n))` -/
def P16625593977613175236.Spec : Prop :=
  ∀ n, (P16625593977613175236.a n : ℤ) = A351521 (n + 1)

end A351521

/-! ## A351521.P18422378866314171479

`and(A029882(n), A046644(n+1))²`
-/

namespace A351521.P18422378866314171479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029882 n) (A046644 (n + 1)) ^ 2

end

end A351521.P18422378866314171479

namespace A351521

/-- `and(A029882(n), A046644(n+1))²` -/
def P18422378866314171479.Spec : Prop :=
  ∀ n, P18422378866314171479.a n = A351521 (n + 1)

end A351521

/-!
# A351522: Square array T(n, k) read by antidiagonals, n, k >= 0; T(n, k) is the number of distinct values in the set { T(i, j) with 0 <= i <= n and 0 <= j <= k and gcd(n-i, k-j) = 1 }.

The programs for A351522, there is no canonical definition to state claims against.
-/

/-! ## A351522.P12238272353987765631

`A001221(lcm(A134066(n), A300342(n+1)))`
-/

namespace A351522.P12238272353987765631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A134066 n) (A300342 (n + 1)))

end

end A351522.P12238272353987765631

/-! ## A351522.P9111998454524878933

`A001221(A001263(n+1)*A318024(n+1))`
-/

namespace A351522.P9111998454524878933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001263 (n + 1) * A318024 (n + 1)).toNat

end

end A351522.P9111998454524878933

/-! ## A351522.P1127499376360954851

`A001221(A299682(n+1)*A305642(n+1))`
-/

namespace A351522.P1127499376360954851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A299682 (n + 1) * A305642 (n + 1)).toNat

end

end A351522.P1127499376360954851

/-! ## A351522.P15235652486725696654

`A001221(A299879(n+1)*A305642(n+1))`
-/

namespace A351522.P15235652486725696654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A299879 (n + 1) * A305642 (n + 1)).toNat

end

end A351522.P15235652486725696654

/-! ## A351522.P14984982969365865466

`A003984(A115281(n)%A003022(n+2))`
-/

namespace A351522.P14984982969365865466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (Int.tmod (A115281 n) (A003022 (n + 2))).toNat

end

end A351522.P14984982969365865466

/-!
# A351523: a(1)=4. For n > 1, a(n) = A129902(a(n-1))/2.

The programs for A351523, there is no canonical definition to state claims against.
-/

/-! ## A351523.P13986820485450618503

`A129902(a(n-1))/2` with `a(0)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351523.P13986820485450618503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (A129902 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A351523.P13986820485450618503

/-! ## A351523.P8285488650221625615

`A273943(A129902(a(n-1)))` with `a(0)=4`
-/

namespace A351523.P8285488650221625615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A273943 (A129902 (a (n - 1)).toNat).toNat

end

end A351523.P8285488650221625615

/-! ## A351523.P12975734444286651466

`A004277(A004490(n+1))/A137688(n)`
-/

namespace A351523.P12975734444286651466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A004490 (n + 1)).toNat : ℚ) / (A137688 n : ℚ)

end

end A351523.P12975734444286651466

/-! ## A351523.P17207463210798983407

`A005843(A263572(n+2))/A137688(n)`
-/

namespace A351523.P17207463210798983407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A263572 (n + 2)).toNat : ℚ) / (A137688 n : ℚ)

end

end A351523.P17207463210798983407

/-!
# A351524: Number of powers of 11 modulo n.

The programs for A351524, there is no canonical definition to state claims against.
-/

/-! ## A351524.P6150853738223077702

`gcd(A033762(A266333(n)), A070680(n+1))`
-/

namespace A351524.P6150853738223077702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033762 (A266333 n).toNat) (A070680 (n + 1))

end

end A351524.P6150853738223077702

/-! ## A351524.P8610162188637720152

`gcd(A000010(n+1), A356453(A127921(n+2)))`
-/

namespace A351524.P8610162188637720152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A356453 (A127921 (n + 2)).toNat)

end

end A351524.P8610162188637720152

/-! ## A351524.P14467956523053019026

`gcd(A002322(n+1), A141214(A028290(n)))`
-/

namespace A351524.P14467956523053019026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002322 (n + 1)) (A141214 (A028290 n).toNat)

end

end A351524.P14467956523053019026

/-!
# A351525: Expansion of e.g.f. (log(1 + log(1 + log(1+ x))))^2 / 2.

The programs for A351525, there is no canonical definition to state claims against.
-/

/-! ## A351525.P9778528011549130881

`A039815(∑[n+1]+2)`
-/

namespace A351525.P9778528011549130881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039815 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351525.P9778528011549130881

/-!
# A351526: Expansion of e.g.f. (log(1 + log(1 + log(1 + log(1+ x)))))^2 / 2.

The programs for A351526, there is no canonical definition to state claims against.
-/

/-! ## A351526.P11832247947341711441

`A039816(∑[n+1]+2)`
-/

namespace A351526.P11832247947341711441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039816 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351526.P11832247947341711441

/-!
# A351527: Expansion of e.g.f. (log(1 + log(1 + log(1 + log(1 + log(1+ x))))))^2 / 2.

The programs for A351527, there is no canonical definition to state claims against.
-/

/-! ## A351527.P10111071443912096249

`A039817(∑[n+1]+2)`
-/

namespace A351527.P10111071443912096249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039817 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351527.P10111071443912096249

/-!
# A351528: Prime numbers ordered by their binary reversal.

The programs for A351528, the canonical program `A351528.P8807216159401882128` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351528 has offset 1).

The definition of A351528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351528.P16654815624660480035

`p?[A057889(n)]`
-/

namespace A351528.P16654815624660480035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P16654815624660480035

namespace A351528

/-- `p?[A057889(n)]` -/
def P16654815624660480035.Spec : Prop :=
  ∀ n, P16654815624660480035.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P12458484347357003910

`p?[A081241(n+1)+1]`
-/

namespace A351528.P12458484347357003910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P12458484347357003910

namespace A351528

/-- `p?[A081241(n+1)+1]` -/
def P12458484347357003910.Spec : Prop :=
  ∀ n, P12458484347357003910.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P8807216159401882128

`p?[ceil(A145341(n+1)/2)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351528

/-- `p?[ceil(A145341(n+1)/2)]` -/
def P8807216159401882128.Spec : Prop :=
  ∀ n, P8807216159401882128.a n = A351528 (n + 1)

theorem P8807216159401882128.correct : P8807216159401882128.Spec := by
  intro n
  simp only [A351528, Nat.add_sub_cancel]

end A351528

/-! ## A351528.P12320035865915929035

`p?[A185969(n+1)+1]`
-/

namespace A351528.P12320035865915929035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185969 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P12320035865915929035

namespace A351528

/-- `p?[A185969(n+1)+1]` -/
def P12320035865915929035.Spec : Prop :=
  ∀ n, P12320035865915929035.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P8719085884098260093

`p?[A145342(n+1)]`
-/

namespace A351528.P8719085884098260093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P8719085884098260093

namespace A351528

/-- `p?[A145342(n+1)]` -/
def P8719085884098260093.Spec : Prop :=
  ∀ n, P8719085884098260093.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P10121063849818684093

`filter[A145342(n+1), A010051(#)]`
-/

namespace A351528.P10121063849818684093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A351528.P10121063849818684093

namespace A351528

/-- `filter[A145342(n+1), A010051(#)]` -/
def P10121063849818684093.Spec : Prop :=
  ∀ n, P10121063849818684093.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P5400231349128910719

`p?[A056539(n)]`
-/

namespace A351528.P5400231349128910719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P5400231349128910719

namespace A351528

/-- `p?[A056539(n)]` -/
def P5400231349128910719.Spec : Prop :=
  ∀ n, P5400231349128910719.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P16919195679249238643

`p?[A163807(n+1)]`
-/

namespace A351528.P16919195679249238643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P16919195679249238643

namespace A351528

/-- `p?[A163807(n+1)]` -/
def P16919195679249238643.Spec : Prop :=
  ∀ n, P16919195679249238643.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P1961184770443241131

`filter[A056539(n+1), A010051(#)]`
-/

namespace A351528.P1961184770443241131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A351528.P1961184770443241131

namespace A351528

/-- `filter[A056539(n+1), A010051(#)]` -/
def P1961184770443241131.Spec : Prop :=
  ∀ n, P1961184770443241131.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P5779500666437539451

`filter[A057889(n+1), A010051(#)]`
-/

namespace A351528.P5779500666437539451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A351528.P5779500666437539451

namespace A351528

/-- `filter[A057889(n+1), A010051(#)]` -/
def P5779500666437539451.Spec : Prop :=
  ∀ n, P5779500666437539451.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P741848737718887063

`filter[A163807(n+1), A010051(#)]`
-/

namespace A351528.P741848737718887063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A351528.P741848737718887063

namespace A351528

/-- `filter[A163807(n+1), A010051(#)]` -/
def P741848737718887063.Spec : Prop :=
  ∀ n, P741848737718887063.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P16465916760464486511

`p?[A292438(A030101(2*n+1))+A030101(2*n+1)]`
-/

namespace A351528.P16465916760464486511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A030101 (2 * n + 1)).toNat + A030101 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P16465916760464486511

namespace A351528

/-- `p?[A292438(A030101(2*n+1))+A030101(2*n+1)]` -/
def P16465916760464486511.Spec : Prop :=
  ∀ n, P16465916760464486511.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P8205012610853725050

`p?[A059893(n+1)]`
-/

namespace A351528.P8205012610853725050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P8205012610853725050

namespace A351528

/-- `p?[A059893(n+1)]` -/
def P8205012610853725050.Spec : Prop :=
  ∀ n, P8205012610853725050.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P1359412714357084569

`filter[A059893(n+1), A010051(#)]`
-/

namespace A351528.P1359412714357084569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A351528.P1359412714357084569

namespace A351528

/-- `filter[A059893(n+1), A010051(#)]` -/
def P1359412714357084569.Spec : Prop :=
  ∀ n, P1359412714357084569.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P5601057750565304261

`filter[A056539(n+2), A080339(#)]`
-/

namespace A351528.P5601057750565304261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A351528.P5601057750565304261

namespace A351528

/-- `filter[A056539(n+2), A080339(#)]` -/
def P5601057750565304261.Spec : Prop :=
  ∀ n, P5601057750565304261.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P15012534547031457559

`filter[A057889(n+2), A080339(#)]`
-/

namespace A351528.P15012534547031457559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A351528.P15012534547031457559

namespace A351528

/-- `filter[A057889(n+2), A080339(#)]` -/
def P15012534547031457559.Spec : Prop :=
  ∀ n, P15012534547031457559.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P482063113901124605

`filter[A059893(n+2), A080339(#)]`
-/

namespace A351528.P482063113901124605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A351528.P482063113901124605

namespace A351528

/-- `filter[A059893(n+2), A080339(#)]` -/
def P482063113901124605.Spec : Prop :=
  ∀ n, P482063113901124605.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P1187411462004591045

`filter[A145342(n+2), A080339(#)]`
-/

namespace A351528.P1187411462004591045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A351528.P1187411462004591045

namespace A351528

/-- `filter[A145342(n+2), A080339(#)]` -/
def P1187411462004591045.Spec : Prop :=
  ∀ n, P1187411462004591045.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P5686005722597539768

`filter[A163807(n+2), A080339(#)]`
-/

namespace A351528.P5686005722597539768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A351528.P5686005722597539768

namespace A351528

/-- `filter[A163807(n+2), A080339(#)]` -/
def P5686005722597539768.Spec : Prop :=
  ∀ n, P5686005722597539768.a n = A351528 (n + 1)

end A351528

/-! ## A351528.P17681424658947567406

`p?[A049773(2*n+1)]`
-/

namespace A351528.P17681424658947567406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P17681424658947567406

namespace A351528

/-- `p?[A049773(2*n+1)]` -/
def P17681424658947567406.Spec : Prop :=
  ∀ n, P17681424658947567406.a n = A351528 (n + 1)

end A351528

/-!
# A351529: The number of quaternary strings of length n containing 00.

The programs for A351529, the canonical program `A351529.P4768600791599762228` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351529 has offset 0).

The definition of A351529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351529.P4768600791599762228

`4^n-A125145(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351529

/-- `4^n-A125145(n)` -/
def P4768600791599762228.Spec : Prop :=
  ∀ n, P4768600791599762228.a n = A351529 n

theorem P4768600791599762228.correct : P4768600791599762228.Spec := by
  intro n
  simp only [A351529]

end A351529

/-! ## A351529.P5962217201290141826

`4^n-Δ[A103820(n)/3]`
-/

namespace A351529.P5962217201290141826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103820 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - (f1 (n + 1) - f1 n)

end

end A351529.P5962217201290141826

namespace A351529

/-- `4^n-Δ[A103820(n)/3]` -/
def P5962217201290141826.Spec : Prop :=
  ∀ n, P5962217201290141826.a n = (A351529 n : ℚ)

end A351529

/-! ## A351529.P11556336623091404593

`4^n-A123620(n+1)/4`
-/

namespace A351529.P11556336623091404593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - (A123620 (n + 1) : ℚ) / 4

end

end A351529.P11556336623091404593

namespace A351529

/-- `4^n-A123620(n+1)/4` -/
def P11556336623091404593.Spec : Prop :=
  ∀ n, P11556336623091404593.a n = (A351529 n : ℚ)

end A351529

/-! ## A351529.P13106376430894714469

`abs(A000302(n)-A125145(n))`
-/

namespace A351529.P13106376430894714469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A125145 n|

end

end A351529.P13106376430894714469

namespace A351529

/-- `abs(A000302(n)-A125145(n))` -/
def P13106376430894714469.Spec : Prop :=
  ∀ n, P13106376430894714469.a n = A351529 n

end A351529

/-! ## A351529.P17421869992891919956

`and(-A125145(n), A024036(n))`
-/

namespace A351529.P17421869992891919956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A125145 n) (A024036 n)

end

end A351529.P17421869992891919956

namespace A351529

/-- `and(-A125145(n), A024036(n))` -/
def P17421869992891919956.Spec : Prop :=
  ∀ n, P17421869992891919956.a n = A351529 n

end A351529

/-! ## A351529.P7791801261999983958

`A000079(n)²-A155116(n+1)/2`
-/

namespace A351529.P7791801261999983958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) - (A155116 (n + 1) : ℚ) / 2

end

end A351529.P7791801261999983958

namespace A351529

/-- `A000079(n)²-A155116(n+1)/2` -/
def P7791801261999983958.Spec : Prop :=
  ∀ n, P7791801261999983958.a n = (A351529 n : ℚ)

end A351529

/-! ## A351529.P2039811109594052964

`A000079(2*n)-A155116(n+1)/2`
-/

namespace A351529.P2039811109594052964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) : ℚ) - (A155116 (n + 1) : ℚ) / 2

end

end A351529.P2039811109594052964

namespace A351529

/-- `A000079(2*n)-A155116(n+1)/2` -/
def P2039811109594052964.Spec : Prop :=
  ∀ n, P2039811109594052964.a n = (A351529 n : ℚ)

end A351529

/-!
# A351530: The number of quinary strings of length n containing 00.

The programs for A351530, the canonical program `A351530.P1775743918637981263` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351530 has offset 0).

The definition of A351530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351530.P1775743918637981263

`5^n-A086347(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351530

/-- `5^n-A086347(n)` -/
def P1775743918637981263.Spec : Prop :=
  ∀ n, P1775743918637981263.a n = A351530 n

theorem P1775743918637981263.correct : P1775743918637981263.Spec := by
  intro n
  simp only [A351530]

end A351530

/-! ## A351530.P107255920877346493

`9*a(n-1)-16*a(n-2)-20*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A351530.P107255920877346493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  9 * a (n - 1) - 16 * a (n - 2) - 20 * a (n - 3)

end

end A351530.P107255920877346493

namespace A351530

/-- `9*a(n-1)-16*a(n-2)-20*a(n-3)` -/
def P107255920877346493.Spec : Prop :=
  ∀ n, P107255920877346493.a n = A351530 n

end A351530

/-! ## A351530.P8935379418332850227

`A000720(A155639(n))-A000078(2*(n+1))`
-/

namespace A351530.P8935379418332850227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A155639 n).toNat - A000078 (2 * (n + 1))

end

end A351530.P8935379418332850227

namespace A351530

/-- `A000720(A155639(n))-A000078(2*(n+1))` -/
def P8935379418332850227.Spec : Prop :=
  ∀ n, P8935379418332850227.a n = A351530 n

end A351530

/-!
# A351531: a(0)=1; a(1)=1; for n>1, a(n) = a(n-1) + 3*n*a(n-2).

The programs for A351531, the canonical program `A351531.P17390602531340384964` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351531 has offset 0).

The definition of A351531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*n*a(n-2)` (program `A351531.P17390602531340384964`, by `A351531.P17390602531340384964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A351531.P17390602531340384964

`a(n-1)+3*n*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A351531

/-- `a(n-1)+3*n*a(n-2)` -/
def P17390602531340384964.Spec : Prop :=
  ∀ n, (P17390602531340384964.a n : ℤ) = A351531 n

theorem P17390602531340384964.correct : P17390602531340384964.Spec := by
  intro n
  simp only [A351531]

end A351531

/-! ## A351531.P4159738362978432166

`a(n-1)-(n-4*n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A351531.P4159738362978432166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - ((n : ℤ) - (4 * n : ℤ)) * a (n - 2)

end

end A351531.P4159738362978432166

namespace A351531

/-- `a(n-1)-(n-4*n)*a(n-2)` -/
def P4159738362978432166.Spec : Prop :=
  ∀ n, P4159738362978432166.a n = A351531 n

end A351531

/-! ## A351531.P11181954251387339527

`a(n-1)+a(n-2)*A008486(n)` with `a(0)=1, a(1)=1`
-/

namespace A351531.P11181954251387339527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * A008486 n

end

end A351531.P11181954251387339527

namespace A351531

/-- `a(n-1)+a(n-2)*A008486(n)` -/
def P11181954251387339527.Spec : Prop :=
  ∀ n, P11181954251387339527.a n = A351531 n

end A351531

/-! ## A351531.P10809585263102174340

`a(n-1)+a(n-2)*A008585(n)` with `a(0)=1, a(1)=1`
-/

namespace A351531.P10809585263102174340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * A008585 n

end

end A351531.P10809585263102174340

namespace A351531

/-- `a(n-1)+a(n-2)*A008585(n)` -/
def P10809585263102174340.Spec : Prop :=
  ∀ n, P10809585263102174340.a n = A351531 n

end A351531

/-!
# A351532: Number of integer pairs (i, j), 0 < i, j < n, such that i/(n - i) + j/(n - j) = 1.

The programs for A351532, there is no canonical definition to state claims against.
-/

/-! ## A351532.P15776724160194293528

`and(A061680(n+1), A383346(n))`
-/

namespace A351532.P15776724160194293528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061680 (n + 1)) (A383346 n)

end

end A351532.P15776724160194293528

/-! ## A351532.P5897376037249687257

`and(A372466(n+1), A383346(n))`
-/

namespace A351532.P5897376037249687257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A372466 (n + 1)) (A383346 n)

end

end A351532.P5897376037249687257

/-! ## A351532.P998819324704743531

`A291770(n+1)%A100374(A206433(n+1))`
-/

namespace A351532.P998819324704743531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291770 (n + 1)) (A100374 (A206433 (n + 1)).toNat)

end

end A351532.P998819324704743531

/-! ## A351532.P5769647332442838300

`and(A006327(n+4), A219272(A219237(3*(n+1))))`
-/

namespace A351532.P5769647332442838300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006327 (n + 4)) (A219272 (A219237 (3 * (n + 1))).toNat)

end

end A351532.P5769647332442838300

/-! ## A351532.P4241965117299625557

`and(A092221(2*(n+2)), A124010(A000607(3*n+4)))`
-/

namespace A351532.P4241965117299625557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092221 (2 * (n + 2))) (A124010 (A000607 (3 * n + 4)).toNat)

end

end A351532.P4241965117299625557

/-!
# A351533: Odd numbers k that are multiples of 3 and for which sigma(k) is congruent to 2 modulo 4.

The programs for A351533, the canonical program `A351533.P2463827929453727071` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351533 has offset 1).

The definition of A351533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351533.P2463827929453727071

`9*A191218(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A351533

/-- `9*A191218(n+1)` -/
def P2463827929453727071.Spec : Prop :=
  ∀ n, P2463827929453727071.a n = A351533 (n + 1)

theorem P2463827929453727071.correct : P2463827929453727071.Spec := by
  intro n
  simp only [A351533, Nat.add_sub_cancel]

end A351533

/-! ## A351533.P12937995392893084609

`∩[A228058(n+1), A139609(n)]`
-/

namespace A351533.P12937995392893084609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P12937995392893084609

namespace A351533

/-- `∩[A228058(n+1), A139609(n)]` -/
def P12937995392893084609.Spec : Prop :=
  ∀ n, (P12937995392893084609.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P17035580021888561613

`∩[A389459(n+1), A139609(n)]`
-/

namespace A351533.P17035580021888561613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P17035580021888561613

namespace A351533

/-- `∩[A389459(n+1), A139609(n)]` -/
def P17035580021888561613.Spec : Prop :=
  ∀ n, (P17035580021888561613.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P14203099172819632477

`∩[A389458(n+1), A139609(n)]`
-/

namespace A351533.P14203099172819632477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P14203099172819632477

namespace A351533

/-- `∩[A389458(n+1), A139609(n)]` -/
def P14203099172819632477.Spec : Prop :=
  ∀ n, (P14203099172819632477.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P7383203444480482855

`∩[A191218(n+1), A139609(n)]`
-/

namespace A351533.P7383203444480482855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P7383203444480482855

namespace A351533

/-- `∩[A191218(n+1), A139609(n)]` -/
def P7383203444480482855.Spec : Prop :=
  ∀ n, (P7383203444480482855.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P9415719753027148683

`∩[A191218(n+1), A017629(n)]`
-/

namespace A351533.P9415719753027148683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P9415719753027148683

namespace A351533

/-- `∩[A191218(n+1), A017629(n)]` -/
def P9415719753027148683.Spec : Prop :=
  ∀ n, (P9415719753027148683.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P3971839227041407090

`∩[A228058(n+1), A017629(n)]`
-/

namespace A351533.P3971839227041407090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P3971839227041407090

namespace A351533

/-- `∩[A228058(n+1), A017629(n)]` -/
def P3971839227041407090.Spec : Prop :=
  ∀ n, (P3971839227041407090.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P15714372725839773264

`∩[A389458(n+1), A017629(n)]`
-/

namespace A351533.P15714372725839773264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P15714372725839773264

namespace A351533

/-- `∩[A389458(n+1), A017629(n)]` -/
def P15714372725839773264.Spec : Prop :=
  ∀ n, (P15714372725839773264.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P2282350892183613535

`∩[A389459(n+1), A017629(n)]`
-/

namespace A351533.P2282350892183613535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P2282350892183613535

namespace A351533

/-- `∩[A389459(n+1), A017629(n)]` -/
def P2282350892183613535.Spec : Prop :=
  ∀ n, (P2282350892183613535.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P3765974885069269155

`∩[A190037(n+1), A191218(n+1)]`
-/

namespace A351533.P3765974885069269155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P3765974885069269155

namespace A351533

/-- `∩[A190037(n+1), A191218(n+1)]` -/
def P3765974885069269155.Spec : Prop :=
  ∀ n, (P3765974885069269155.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P8834865646061757446

`∩[A190037(n+1), A228058(n+1)]`
-/

namespace A351533.P8834865646061757446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P8834865646061757446

namespace A351533

/-- `∩[A190037(n+1), A228058(n+1)]` -/
def P8834865646061757446.Spec : Prop :=
  ∀ n, (P8834865646061757446.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P5516858352059967836

`∩[A190037(n+1), A389459(n+1)]`
-/

namespace A351533.P5516858352059967836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351533.P5516858352059967836

namespace A351533

/-- `∩[A190037(n+1), A389459(n+1)]` -/
def P5516858352059967836.Spec : Prop :=
  ∀ n, (P5516858352059967836.a n : ℤ) = A351533 (n + 1)

end A351533

/-! ## A351533.P10940628272386691595

`filter[A017629(n), A353812(#)]`
-/

namespace A351533.P10940628272386691595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A351533.P10940628272386691595

namespace A351533

/-- `filter[A017629(n), A353812(#)]` -/
def P10940628272386691595.Spec : Prop :=
  ∀ n, P10940628272386691595.a n = A351533 (n + 1)

end A351533

/-! ## A351533.P18081838491413608122

`filter[A017629(n), A358678(#)]`
-/

namespace A351533.P18081838491413608122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351533.P18081838491413608122

namespace A351533

/-- `filter[A017629(n), A358678(#)]` -/
def P18081838491413608122.Spec : Prop :=
  ∀ n, P18081838491413608122.a n = A351533 (n + 1)

end A351533

/-! ## A351533.P11208960846201597764

`filter[A139609(n), A353812(#)]`
-/

namespace A351533.P11208960846201597764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A351533.P11208960846201597764

namespace A351533

/-- `filter[A139609(n), A353812(#)]` -/
def P11208960846201597764.Spec : Prop :=
  ∀ n, P11208960846201597764.a n = A351533 (n + 1)

end A351533

/-! ## A351533.P1676805482534960895

`filter[A139609(n), A358678(#)]`
-/

namespace A351533.P1676805482534960895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351533.P1676805482534960895

namespace A351533

/-- `filter[A139609(n), A358678(#)]` -/
def P1676805482534960895.Spec : Prop :=
  ∀ n, P1676805482534960895.a n = A351533 (n + 1)

end A351533

/-! ## A351533.P14212698915414131989

`filter[A190037(n+1), A353812(#)]`
-/

namespace A351533.P14212698915414131989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A351533.P14212698915414131989

namespace A351533

/-- `filter[A190037(n+1), A353812(#)]` -/
def P14212698915414131989.Spec : Prop :=
  ∀ n, P14212698915414131989.a n = A351533 (n + 1)

end A351533

/-! ## A351533.P10696693457307609063

`filter[A190037(n+1), A358678(#)]`
-/

namespace A351533.P10696693457307609063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351533.P10696693457307609063

namespace A351533

/-- `filter[A190037(n+1), A358678(#)]` -/
def P10696693457307609063.Spec : Prop :=
  ∀ n, P10696693457307609063.a n = A351533 (n + 1)

end A351533

/-! ## A351533.P16569838565621091986

`A008591(A191218(n+1))`
-/

namespace A351533.P16569838565621091986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A191218 (n + 1)).toNat

end

end A351533.P16569838565621091986

namespace A351533

/-- `A008591(A191218(n+1))` -/
def P16569838565621091986.Spec : Prop :=
  ∀ n, P16569838565621091986.a n = A351533 (n + 1)

end A351533

/-! ## A351533.P6197978597843924093

`filter[A168103(n), A358678(#)]`
-/

namespace A351533.P6197978597843924093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351533.P6197978597843924093

namespace A351533

/-- `filter[A168103(n), A358678(#)]` -/
def P6197978597843924093.Spec : Prop :=
  ∀ n, P6197978597843924093.a n = A351533 (n + 1)

end A351533

/-!
# A351534: Odd numbers for which sigma(k) is congruent to 2 modulo 4 and the 3-adic valuation of k is one larger than the 3-adic valuation of sigma(k).

The programs for A351534, there is no canonical definition to state claims against.
-/

/-! ## A351534.P15606191675370588032

`A340154(n+1)*A340222(A340135(n))`
-/

namespace A351534.P15606191675370588032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340154 (n + 1) * A340222 (A340135 n).toNat

end

end A351534.P15606191675370588032

/-!
# A351535: Odd numbers k that are not multiples of 3 and for which sigma(k) is congruent to 2 modulo 4.

The programs for A351535, the canonical program `A351535.P6252918987055399966` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351535 has offset 1).

The definition of A351535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351535.P6252918987055399966

`filter[A191218(n+1), A187074(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A351535

/-- `filter[A191218(n+1), A187074(#)]` -/
def P6252918987055399966.Spec : Prop :=
  ∀ n, P6252918987055399966.a n = A351535 (n + 1)

theorem P6252918987055399966.correct : P6252918987055399966.Spec := by
  intro n
  simp only [A351535, Nat.add_sub_cancel]

end A351535

/-! ## A351535.P11043785727750059597

`filter[A191218(n+1), A359172(#)]`
-/

namespace A351535.P11043785727750059597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A351535.P11043785727750059597

namespace A351535

/-- `filter[A191218(n+1), A359172(#)]` -/
def P11043785727750059597.Spec : Prop :=
  ∀ n, P11043785727750059597.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P9126969240952653640

`filter[A191218(n+1), A359374(#)]`
-/

namespace A351535.P9126969240952653640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A351535.P9126969240952653640

namespace A351535

/-- `filter[A191218(n+1), A359374(#)]` -/
def P9126969240952653640.Spec : Prop :=
  ∀ n, P9126969240952653640.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P16845299200416731466

`filter[A191218(n+1), A373155(#)]`
-/

namespace A351535.P16845299200416731466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A351535.P16845299200416731466

namespace A351535

/-- `filter[A191218(n+1), A373155(#)]` -/
def P16845299200416731466.Spec : Prop :=
  ∀ n, P16845299200416731466.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P18261451229604393135

`filter[A191218(n+1), A373156(#)]`
-/

namespace A351535.P18261451229604393135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A351535.P18261451229604393135

namespace A351535

/-- `filter[A191218(n+1), A373156(#)]` -/
def P18261451229604393135.Spec : Prop :=
  ∀ n, P18261451229604393135.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P9761432880939720294

`filter[A191218(n+1), A374043(#)]`
-/

namespace A351535.P9761432880939720294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A351535.P9761432880939720294

namespace A351535

/-- `filter[A191218(n+1), A374043(#)]` -/
def P9761432880939720294.Spec : Prop :=
  ∀ n, P9761432880939720294.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P11389868495940068714

`filter[A191218(n+1), A320106(#)]`
-/

namespace A351535.P11389868495940068714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A351535.P11389868495940068714

namespace A351535

/-- `filter[A191218(n+1), A320106(#)]` -/
def P11389868495940068714.Spec : Prop :=
  ∀ n, P11389868495940068714.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P9314920745363823360

`filter[A191218(n+1), A354354(#)]`
-/

namespace A351535.P9314920745363823360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A351535.P9314920745363823360

namespace A351535

/-- `filter[A191218(n+1), A354354(#)]` -/
def P9314920745363823360.Spec : Prop :=
  ∀ n, P9314920745363823360.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P3953022785507063163

`filter[A087445(n+1), A353812(#)]`
-/

namespace A351535.P3953022785507063163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A351535.P3953022785507063163

namespace A351535

/-- `filter[A087445(n+1), A353812(#)]` -/
def P3953022785507063163.Spec : Prop :=
  ∀ n, P3953022785507063163.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P3954073397627794905

`filter[A087445(n+1), A358678(#)]`
-/

namespace A351535.P3954073397627794905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351535.P3954073397627794905

namespace A351535

/-- `filter[A087445(n+1), A358678(#)]` -/
def P3954073397627794905.Spec : Prop :=
  ∀ n, P3954073397627794905.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P14554918913378541852

`filter[A087445(n+2), A354032(#)]`
-/

namespace A351535.P14554918913378541852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A351535.P14554918913378541852

namespace A351535

/-- `filter[A087445(n+2), A354032(#)]` -/
def P14554918913378541852.Spec : Prop :=
  ∀ n, P14554918913378541852.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P13018572627504328981

`∩[A087445(n+1), A191217(n+1)]`
-/

namespace A351535.P13018572627504328981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351535.P13018572627504328981

namespace A351535

/-- `∩[A087445(n+1), A191217(n+1)]` -/
def P13018572627504328981.Spec : Prop :=
  ∀ n, (P13018572627504328981.a n : ℤ) = A351535 (n + 1)

end A351535

/-! ## A351535.P17104404804508078168

`∩[A087445(n+1), A191218(n+1)]`
-/

namespace A351535.P17104404804508078168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351535.P17104404804508078168

namespace A351535

/-- `∩[A087445(n+1), A191218(n+1)]` -/
def P17104404804508078168.Spec : Prop :=
  ∀ n, (P17104404804508078168.a n : ℤ) = A351535 (n + 1)

end A351535

/-! ## A351535.P4725635119300639605

`∩[A087445(n+1), A182358(n+1)]`
-/

namespace A351535.P4725635119300639605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351535.P4725635119300639605

namespace A351535

/-- `∩[A087445(n+1), A182358(n+1)]` -/
def P4725635119300639605.Spec : Prop :=
  ∀ n, (P4725635119300639605.a n : ℤ) = A351535 (n + 1)

end A351535

/-! ## A351535.P18238591966894516159

`∩[A103215(n+1), A191218(n+1)]`
-/

namespace A351535.P18238591966894516159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351535.P18238591966894516159

namespace A351535

/-- `∩[A103215(n+1), A191218(n+1)]` -/
def P18238591966894516159.Spec : Prop :=
  ∀ n, (P18238591966894516159.a n : ℤ) = A351535 (n + 1)

end A351535

/-! ## A351535.P5986347910622610930

`filter[A080455(2*(n+1)), A353812(#)]`
-/

namespace A351535.P5986347910622610930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080455 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A351535.P5986347910622610930

namespace A351535

/-- `filter[A080455(2*(n+1)), A353812(#)]` -/
def P5986347910622610930.Spec : Prop :=
  ∀ n, P5986347910622610930.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P1162004961220796716

`filter[A080455(2*(n+1)), A354032(#)]`
-/

namespace A351535.P1162004961220796716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080455 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A351535.P1162004961220796716

namespace A351535

/-- `filter[A080455(2*(n+1)), A354032(#)]` -/
def P1162004961220796716.Spec : Prop :=
  ∀ n, P1162004961220796716.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P18383755246329562611

`filter[A080455(2*(n+1)), A358678(#)]`
-/

namespace A351535.P18383755246329562611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080455 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351535.P18383755246329562611

namespace A351535

/-- `filter[A080455(2*(n+1)), A358678(#)]` -/
def P18383755246329562611.Spec : Prop :=
  ∀ n, P18383755246329562611.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P7384709314569578224

`filter[A174398(2*n+1), A353812(#)]`
-/

namespace A351535.P7384709314569578224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A351535.P7384709314569578224

namespace A351535

/-- `filter[A174398(2*n+1), A353812(#)]` -/
def P7384709314569578224.Spec : Prop :=
  ∀ n, P7384709314569578224.a n = A351535 (n + 1)

end A351535

/-! ## A351535.P17043866812179014493

`filter[A174398(2*n+1), A358678(#)]`
-/

namespace A351535.P17043866812179014493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351535.P17043866812179014493

namespace A351535

/-- `filter[A174398(2*n+1), A358678(#)]` -/
def P17043866812179014493.Spec : Prop :=
  ∀ n, P17043866812179014493.a n = A351535 (n + 1)

end A351535

/-!
# A351536: Odd numbers for which sigma(k) is congruent to 2 modulo 4 and the 3-adic valuations of k and sigma(k) are equal.

The programs for A351536, there is no canonical definition to state claims against.
-/

/-! ## A351536.P12123370039290351037

`∪[A068228(n+1), A349755(n+1)]`
-/

namespace A351536.P12123370039290351037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351536.P12123370039290351037

/-! ## A351536.P3358759429473076683

`filter[A349752(n+1), A229062(#)]`
-/

namespace A351536.P3358759429473076683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A351536.P3358759429473076683

/-! ## A351536.P5979486990587780625

`filter[A349752(n+1), A347870(#)]`
-/

namespace A351536.P5979486990587780625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A351536.P5979486990587780625

/-! ## A351536.P7487256901945948764

`filter[A349752(n+1), A353812(#)]`
-/

namespace A351536.P7487256901945948764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A351536.P7487256901945948764

/-!
# A351537: Odd numbers k for which sigma(k) is congruent to 2 modulo 4 and is not a multiple of 3.

The programs for A351537, there is no canonical definition to state claims against.
-/

/-! ## A351537.P12413070853410481027

`A351538(n+1)/2`
-/

namespace A351537.P12413070853410481027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351538 (n + 1) : ℚ) / 2

end

end A351537.P12413070853410481027

/-! ## A351537.P733938083827737961

`filter[A191218(n+1), A353815(#)]`
-/

namespace A351537.P733938083827737961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A351537.P733938083827737961

/-! ## A351537.P11748197992432194092

`A273943(A351538(n+1))`
-/

namespace A351537.P11748197992432194092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A351538 (n + 1)).toNat

end

end A351537.P11748197992432194092

/-! ## A351537.P17925836938826485517

`filter[A329963(n+1), A358678(#)]`
-/

namespace A351537.P17925836938826485517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351537.P17925836938826485517

/-! ## A351537.P16506554159321874819

`∩[A191218(n+1), A329963(n+1)]`
-/

namespace A351537.P16506554159321874819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351537.P16506554159321874819

/-! ## A351537.P3801753517711716967

`A000265(∪[A351538(3*n+5), A351538(n+1)])`
-/

namespace A351537.P3801753517711716967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351538 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351538 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A351537.P3801753517711716967

/-! ## A351537.P8374731821382275407

`filter[A097503(n+1), A358678(#)]`
-/

namespace A351537.P8374731821382275407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351537.P8374731821382275407

/-! ## A351537.P14178979094531291033

`∩[A097503(n+1), A191218(n+1)]`
-/

namespace A351537.P14178979094531291033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351537.P14178979094531291033

/-! ## A351537.P2252819889831060663

`A000265(2*A351538(n+1))`
-/

namespace A351537.P2252819889831060663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A351538 (n + 1)).toNat

end

end A351537.P2252819889831060663

/-! ## A351537.P9450636109010189837

`A171435(2*A351538(n+1))`
-/

namespace A351537.P9450636109010189837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A351538 (n + 1)).toNat

end

end A351537.P9450636109010189837

/-! ## A351537.P17381266724760163040

`filter[A232437(n+1), A358678(#)]`
-/

namespace A351537.P17381266724760163040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A351537.P17381266724760163040

/-! ## A351537.P8646596697301239814

`∩[A191218(n+1), A232437(n+1)]`
-/

namespace A351537.P8646596697301239814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351537.P8646596697301239814

/-! ## A351537.P5969212733340752952

`A249122(A351538(n+1)+1)`
-/

namespace A351537.P5969212733340752952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A351538 (n + 1) + 1).toNat

end

end A351537.P5969212733340752952

/-! ## A351537.P13132906031703831026

`A351565(A351538(n+1)-1)`
-/

namespace A351537.P13132906031703831026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A351538 (n + 1) - 1).toNat

end

end A351537.P13132906031703831026

/-! ## A351537.P11304741120200252902

`A351565(xor(3, A351538(n+1)))`
-/

namespace A351537.P11304741120200252902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (Int.xor 3 (A351538 (n + 1))).toNat

end

end A351537.P11304741120200252902

/-! ## A351537.P14164745126626124659

`A004525(A351538(n+1)+1)`
-/

namespace A351537.P14164745126626124659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A351538 (n + 1) + 1).toNat

end

end A351537.P14164745126626124659

/-! ## A351537.P11430336650397508976

`A000463(A351538(n+1)-1)`
-/

namespace A351537.P11430336650397508976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A351538 (n + 1) - 1).toNat

end

end A351537.P11430336650397508976

/-! ## A351537.P9191463113174752232

`A025480(or(2, A351538(n+1)))`
-/

namespace A351537.P9191463113174752232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lor 2 (A351538 (n + 1))).toNat

end

end A351537.P9191463113174752232

/-! ## A351537.P14865388450173320356

`A032742(or(2, A351538(n+1)))`
-/

namespace A351537.P14865388450173320356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.lor 2 (A351538 (n + 1))).toNat

end

end A351537.P14865388450173320356

/-! ## A351537.P3806814150430286289

`A225058(or(2, A351538(n+1)))`
-/

namespace A351537.P3806814150430286289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (Int.lor 2 (A351538 (n + 1))).toNat

end

end A351537.P3806814150430286289

/-!
# A351538: Numbers k such that both k and sigma(k) are congruent to 2 modulo 4 and the 3-adic valuation of sigma(k) is exactly 1.

The programs for A351538, there is no canonical definition to state claims against.
-/

/-! ## A351538.P9056072394580333818

`2*A351537(n+1)`
-/

namespace A351538.P9056072394580333818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351537 (n + 1)

end

end A351538.P9056072394580333818

/-! ## A351538.P1045105051180518048

`lcm(2, A351537(A000027(n+1)))`
-/

namespace A351538.P1045105051180518048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A351537 (A000027 (n + 1)).toNat)

end

end A351538.P1045105051180518048

/-! ## A351538.P3371069900162125466

`A351537(A000027(n+1))+A351537(n+1)`
-/

namespace A351538.P3371069900162125466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (A000027 (n + 1)).toNat + A351537 (n + 1)

end

end A351538.P3371069900162125466

/-! ## A351538.P238138978638521561

`lcm(A000005(A002144(n+1)), A351537(n+1))`
-/

namespace A351538.P238138978638521561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A002144 (n + 1)).toNat) (A351537 (n + 1))

end

end A351538.P238138978638521561

/-! ## A351538.P1813203414339851288

`2*∩[A191218(n+1), A329963(n+1)]`
-/

namespace A351538.P1813203414339851288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351538.P1813203414339851288

/-! ## A351538.P5812404755755187341

`2*∩[A097503(n+1), A191218(n+1)]`
-/

namespace A351538.P5812404755755187341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351538.P5812404755755187341

/-! ## A351538.P13294246632392678148

`2*∩[A191218(n+1), A232437(n+1)]`
-/

namespace A351538.P13294246632392678148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351538.P13294246632392678148

/-! ## A351538.P4565156756636400403

`A003485(A351537(n+1))`
-/

namespace A351538.P4565156756636400403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A351537 (n + 1)).toNat

end

end A351538.P4565156756636400403

/-! ## A351538.P1977561314221216283

`A103517(A351537(n+1)-1)`
-/

namespace A351538.P1977561314221216283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A351537 (n + 1) - 1).toNat

end

end A351538.P1977561314221216283

/-! ## A351538.P11273066788882084736

`A103517(xor(1, A351537(n+1)))`
-/

namespace A351538.P11273066788882084736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.xor 1 (A351537 (n + 1))).toNat

end

end A351538.P11273066788882084736

/-! ## A351538.P3593777144125564483

`A004277(A351537(n+1)%A044513(n+1))`
-/

namespace A351538.P3593777144125564483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A351537 (n + 1)) (A044513 (n + 1))).toNat

end

end A351538.P3593777144125564483

/-! ## A351538.P11795678677564333834

`A028310(A351537(n+1)/cot(atan(2)))`
-/

namespace A351538.P11795678677564333834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A351537 (n + 1) : ℝ) / Real.cot (Real.arctan (2 : ℝ)))).toNat

end

end A351538.P11795678677564333834

/-! ## A351538.P11096288143007174808

`A004277(A351537(n+1))%A275180(n+1)`
-/

namespace A351538.P11096288143007174808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A351537 (n + 1)).toNat) (A275180 (n + 1))

end

end A351538.P11096288143007174808

/-!
# A351539: Number of odd prime factors p of n such that p^(1+valuation(n,p)) divides sigma(n).

The programs for A351539, the canonical program `A351539.P10581206996454005610` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351539 has offset 1).

The definition of A351539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351539.P1905547739827307742

`A005087(gcd(A017665(n+1), A129202(n)))`
-/

namespace A351539.P1905547739827307742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (Int.gcd (A017665 (n + 1)) (A129202 n))

end

end A351539.P1905547739827307742

namespace A351539

/-- `A005087(gcd(A017665(n+1), A129202(n)))` -/
def P1905547739827307742.Spec : Prop :=
  ∀ n, P1905547739827307742.a n = A351539 (n + 1)

end A351539

/-! ## A351539.P10581206996454005610

`A005087(A306682(n+1)/A009194(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A351539

/-- `A005087(A306682(n+1)/A009194(n+1))` -/
def P10581206996454005610.Spec : Prop :=
  ∀ n, P10581206996454005610.a n = A351539 (n + 1)

theorem P10581206996454005610.correct : P10581206996454005610.Spec := by
  intro n
  simp only [A351539, Nat.add_sub_cancel]

end A351539

/-! ## A351539.P2842863335486812641

`A001221(gcd(A009242(n+1)/(n+1), A136655(n+1)))`
-/

namespace A351539.P2842863335486812641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (SequenceMachineLib.roundAway ((A009242 (n + 1) : ℚ) / (n + 1 : ℚ))) (A136655 (n + 1)))

end

end A351539.P2842863335486812641

namespace A351539

/-- `A001221(gcd(A009242(n+1)/(n+1), A136655(n+1)))` -/
def P2842863335486812641.Spec : Prop :=
  ∀ n, P2842863335486812641.a n = A351539 (n + 1)

end A351539

/-! ## A351539.P9375995547840497390

`val(A161942(n+1), A141066(A038500(n+1)))`
-/

namespace A351539.P9375995547840497390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161942 (n + 1)).toNat (A141066 (A038500 (n + 1)).toNat).toNat

end

end A351539.P9375995547840497390

namespace A351539

/-- `val(A161942(n+1), A141066(A038500(n+1)))` -/
def P9375995547840497390.Spec : Prop :=
  ∀ n, (P9375995547840497390.a n : ℤ) = A351539 (n + 1)

end A351539

/-! ## A351539.P4483480908547194134

`val(A000203(3*(n+1)), A066711(A088179(n+1)))`
-/

namespace A351539.P4483480908547194134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (3 * (n + 1))).toNat (A066711 (A088179 (n + 1)).toNat).toNat

end

end A351539.P4483480908547194134

namespace A351539

/-- `val(A000203(3*(n+1)), A066711(A088179(n+1)))` -/
def P4483480908547194134.Spec : Prop :=
  ∀ n, (P4483480908547194134.a n : ℤ) = A351539 (n + 1)

end A351539

/-! ## A351539.P14457382812641090134

`val(A000203(3*(n+1)), A066711(A007528(3*(n+1))))`
-/

namespace A351539.P14457382812641090134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (3 * (n + 1))).toNat (A066711 (A007528 (3 * (n + 1))).toNat).toNat

end

end A351539.P14457382812641090134

namespace A351539

/-- `val(A000203(3*(n+1)), A066711(A007528(3*(n+1))))` -/
def P14457382812641090134.Spec : Prop :=
  ∀ n, (P14457382812641090134.a n : ℤ) = A351539 (n + 1)

end A351539

/-! ## A351539.P13807472124797838823

`val(A000203(3*(n+1)), A066711(A180517(n+1)))`
-/

namespace A351539.P13807472124797838823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (3 * (n + 1))).toNat (A066711 (A180517 (n + 1)).toNat).toNat

end

end A351539.P13807472124797838823

namespace A351539

/-- `val(A000203(3*(n+1)), A066711(A180517(n+1)))` -/
def P13807472124797838823.Spec : Prop :=
  ∀ n, (P13807472124797838823.a n : ℤ) = A351539 (n + 1)

end A351539

/-! ## A351539.P3601438319538329727

`A235046(gcd(A045596(n+1), A306682(n+1)))`
-/

namespace A351539.P3601438319538329727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 (Int.gcd (A045596 (n + 1)) (A306682 (n + 1)))

end

end A351539.P3601438319538329727

namespace A351539

/-- `A235046(gcd(A045596(n+1), A306682(n+1)))` -/
def P3601438319538329727.Spec : Prop :=
  ∀ n, P3601438319538329727.a n = A351539 (n + 1)

end A351539

/-! ## A351539.P16041121019204587683

`val(A285802(A020631(n+1)), 5)`
-/

namespace A351539.P16041121019204587683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285802 (A020631 (n + 1)).toNat).toNat 5

end

end A351539.P16041121019204587683

namespace A351539

/-- `val(A285802(A020631(n+1)), 5)` -/
def P16041121019204587683.Spec : Prop :=
  ∀ n, (P16041121019204587683.a n : ℤ) = A351539 (n + 1)

end A351539

/-!
# A351540: Numbers k that have an odd prime factor p such that p^(1+valuation(k,p)) divides sigma(k).

The programs for A351540, there is no canonical definition to state claims against.
-/

/-! ## A351540.P1567134730520525800

`eq[1, A351539(n+1)]+1`
-/

namespace A351540.P1567134730520525800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351540.P1567134730520525800

/-! ## A351540.P3509485863342752835

`eq[1, A351539(A028310(n))]`
-/

namespace A351540.P3509485863342752835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351540.P3509485863342752835

/-! ## A351540.P6810680538317010411

`A020725(eq[1, A351539(n+1)])`
-/

namespace A351540.P6810680538317010411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351540.P6810680538317010411

/-! ## A351540.P1398786551940715711

`A117571(eq[1, A351539(n+1)])`
-/

namespace A351540.P1398786551940715711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351540.P1398786551940715711

/-! ## A351540.P5386443601892712280

`eq[1, A351539(A233583(n+1))]`
-/

namespace A351540.P5386443601892712280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351540.P5386443601892712280

/-!
# A351543: Even numbers k such that there is an odd prime p that divides sigma(k), but valuation(k, p) differs from valuation(sigma(k), p), and p does not divide A003961(k), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A351543, there is no canonical definition to state claims against.
-/

/-! ## A351543.P6365915383204211068

`∩[2*(n+1), comp[A351554(n+1)]]`
-/

namespace A351543.P6365915383204211068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A351543.P6365915383204211068

/-! ## A351543.P17732713132369953553

`lt[A040418(n), A351555(n+1)+1]+1`
-/

namespace A351543.P17732713132369953553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351555 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351543.P17732713132369953553

/-! ## A351543.P10589085440415411817

`∩[2*n, lt[1, A351555(A028310(n))+1]]`
-/

namespace A351543.P10589085440415411817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351555 (A028310 n).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A351543.P10589085440415411817

/-! ## A351543.P17667174828236916161

`eq[char[A351554(n+1)]+2, A040001(n)]`
-/

namespace A351543.P17667174828236916161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351543.P17667174828236916161

/-! ## A351543.P18316718446248228573

`lt[1, (A351555(A028310(n))+1)*A059841(n)]`
-/

namespace A351543.P18316718446248228573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351555 (A028310 n).toNat + 1) * A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A351543.P18316718446248228573

/-! ## A351543.P3256355002695121864

`eq[char[A351553(n+1)], A210628(n)]`
-/

namespace A351543.P3256355002695121864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351553 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351543.P3256355002695121864

/-!
# A351544: a(n) is the largest unitary divisor of sigma(n) such that its every prime factor also divides A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A351544, the canonical program `A351544.P15377189541473253501` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351544 has offset 1).

The definition of A351544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351544.P13535935489085186330

`A000203(n+1)/A351546(n+1)`
-/

namespace A351544.P13535935489085186330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P13535935489085186330

namespace A351544

/-- `A000203(n+1)/A351546(n+1)` -/
def P13535935489085186330.Spec : Prop :=
  ∀ n, P13535935489085186330.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P17238970369982249400

`A351545(n+1)*A354997(n+1)`
-/

namespace A351544.P17238970369982249400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351545 (n + 1) * A354997 (n + 1)

end

end A351544.P17238970369982249400

namespace A351544

/-- `A351545(n+1)*A354997(n+1)` -/
def P17238970369982249400.Spec : Prop :=
  ∀ n, P17238970369982249400.a n = A351544 (n + 1)

end A351544

/-! ## A351544.P18286302329653373989

`lcm(A342671(n+1), A351545(n+1))`
-/

namespace A351544.P18286302329653373989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A342671 (n + 1)) (A351545 (n + 1))

end

end A351544.P18286302329653373989

namespace A351544

/-- `lcm(A342671(n+1), A351545(n+1))` -/
def P18286302329653373989.Spec : Prop :=
  ∀ n, (P18286302329653373989.a n : ℤ) = A351544 (n + 1)

end A351544

/-! ## A351544.P2168436143151444977

`sqrt(A072861(n+1))/A351546(n+1)`
-/

namespace A351544.P2168436143151444977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A351546 (n + 1) : ℝ)

end

end A351544.P2168436143151444977

namespace A351544

/-- `sqrt(A072861(n+1))/A351546(n+1)` -/
def P2168436143151444977.Spec : Prop :=
  ∀ n, P2168436143151444977.a n = (A351544 (n + 1) : ℝ)

end A351544

/-! ## A351544.P6916877536248629555

`∑[A340793(n+1)]/A351546(n+1)`
-/

namespace A351544.P6916877536248629555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P6916877536248629555

namespace A351544

/-- `∑[A340793(n+1)]/A351546(n+1)` -/
def P6916877536248629555.Spec : Prop :=
  ∀ n, P6916877536248629555.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P16503751150102114038

`A074400(n+1)/(2*A351546(n+1))`
-/

namespace A351544.P16503751150102114038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A351546 (n + 1) : ℚ)

end

end A351544.P16503751150102114038

namespace A351544

/-- `A074400(n+1)/(2*A351546(n+1))` -/
def P16503751150102114038.Spec : Prop :=
  ∀ n, P16503751150102114038.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P16426155268553924980

`A245092(2*n+1)/A351546(n+1)`
-/

namespace A351544.P16426155268553924980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P16426155268553924980

namespace A351544

/-- `A245092(2*n+1)/A351546(n+1)` -/
def P16426155268553924980.Spec : Prop :=
  ∀ n, P16426155268553924980.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P15377189541473253501

`gcd(A045967(n+1)²², A000203(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351544

/-- `gcd(A045967(n+1)²², A000203(n+1))` -/
def P15377189541473253501.Spec : Prop :=
  ∀ n, (P15377189541473253501.a n : ℤ) = A351544 (n + 1)

theorem P15377189541473253501.correct : P15377189541473253501.Spec := by
  intro n
  simp only [A351544, Nat.add_sub_cancel]

end A351544

/-! ## A351544.P17128281244170195671

`(A001065(n+1)+1+n)/A351546(n+1)`
-/

namespace A351544.P17128281244170195671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P17128281244170195671

namespace A351544

/-- `(A001065(n+1)+1+n)/A351546(n+1)` -/
def P17128281244170195671.Spec : Prop :=
  ∀ n, P17128281244170195671.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P7911918811046279836

`(A237588(n+1)+comp[2*n])/A351546(n+1)`
-/

namespace A351544.P7911918811046279836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237588 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P7911918811046279836

namespace A351544

/-- `(A237588(n+1)+comp[2*n])/A351546(n+1)` -/
def P7911918811046279836.Spec : Prop :=
  ∀ n, P7911918811046279836.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P2087092916547210833

`(2*(n+1)-A033879(n+1))/A351546(n+1)`
-/

namespace A351544.P2087092916547210833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A033879 (n + 1) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P2087092916547210833

namespace A351544

/-- `(2*(n+1)-A033879(n+1))/A351546(n+1)` -/
def P2087092916547210833.Spec : Prop :=
  ∀ n, P2087092916547210833.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P6992150446059907881

`(A065387(n+1)-A000010(n+1))/A351546(n+1)`
-/

namespace A351544.P6992150446059907881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065387 (n + 1) - A000010 (n + 1) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P6992150446059907881

namespace A351544

/-- `(A065387(n+1)-A000010(n+1))/A351546(n+1)` -/
def P6992150446059907881.Spec : Prop :=
  ∀ n, P6992150446059907881.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P5553651102156780627

`(A003961(n+1)-A286385(n+1))/A351546(n+1)`
-/

namespace A351544.P5553651102156780627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A286385 (n + 1) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P5553651102156780627

namespace A351544

/-- `(A003961(n+1)-A286385(n+1))/A351546(n+1)` -/
def P5553651102156780627.Spec : Prop :=
  ∀ n, P5553651102156780627.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P7629868637702605404

`A000203(n+1)/A351547(n+1)*A354997(n+1)`
-/

namespace A351544.P7629868637702605404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351547 (n + 1) : ℚ) * (A354997 (n + 1) : ℚ)

end

end A351544.P7629868637702605404

namespace A351544

/-- `A000203(n+1)/A351547(n+1)*A354997(n+1)` -/
def P7629868637702605404.Spec : Prop :=
  ∀ n, P7629868637702605404.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P8769214570657758703

`A000203(n+1)/(A353666(n+1)*A353668(n+1))`
-/

namespace A351544.P8769214570657758703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A353666 (n + 1) * A353668 (n + 1) : ℚ)

end

end A351544.P8769214570657758703

namespace A351544

/-- `A000203(n+1)/(A353666(n+1)*A353668(n+1))` -/
def P8769214570657758703.Spec : Prop :=
  ∀ n, P8769214570657758703.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P8579830645730543070

`A342671(n+1)*A349162(n+1)/A351546(n+1)`
-/

namespace A351544.P8579830645730543070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342671 (n + 1) * A349162 (n + 1) : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P8579830645730543070

namespace A351544

/-- `A342671(n+1)*A349162(n+1)/A351546(n+1)` -/
def P8579830645730543070.Spec : Prop :=
  ∀ n, P8579830645730543070.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P12640775483175010249

`A351545(n+1)/A351546(n+1)*A351547(n+1)`
-/

namespace A351544.P12640775483175010249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351545 (n + 1) : ℚ) / (A351546 (n + 1) : ℚ) * (A351547 (n + 1) : ℚ)

end

end A351544.P12640775483175010249

namespace A351544

/-- `A351545(n+1)/A351546(n+1)*A351547(n+1)` -/
def P12640775483175010249.Spec : Prop :=
  ∀ n, P12640775483175010249.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P17645501550271533250

`A004525(A074400(n+1)/A351546(n+1))`
-/

namespace A351544.P17645501550271533250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A351546 (n + 1) : ℚ))).toNat

end

end A351544.P17645501550271533250

namespace A351544

/-- `A004525(A074400(n+1)/A351546(n+1))` -/
def P17645501550271533250.Spec : Prop :=
  ∀ n, P17645501550271533250.a n = A351544 (n + 1)

end A351544

/-! ## A351544.P8382045822097895563

`A262610(Δ[n²])/A351546(n+1)`
-/

namespace A351544.P8382045822097895563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P8382045822097895563

namespace A351544

/-- `A262610(Δ[n²])/A351546(n+1)` -/
def P8382045822097895563.Spec : Prop :=
  ∀ n, P8382045822097895563.a n = (A351544 (n + 1) : ℚ)

end A351544

/-! ## A351544.P5806730714046539855

`A008619(A002659(n+1))/A351546(n+1)`
-/

namespace A351544.P5806730714046539855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A002659 (n + 1)).toNat : ℚ) / (A351546 (n + 1) : ℚ)

end

end A351544.P5806730714046539855

namespace A351544

/-- `A008619(A002659(n+1))/A351546(n+1)` -/
def P5806730714046539855.Spec : Prop :=
  ∀ n, P5806730714046539855.a n = (A351544 (n + 1) : ℚ)

end A351544

/-!
# A351545: a(n) is the largest unitary divisor of sigma(n) such that its every prime factor p also divides A003961(n), and valuation(sigma(n),p) >= valuation(A003961(n),p).

The programs for A351545, there is no canonical definition to state claims against.
-/

/-! ## A351545.P2477663388825768938

`A000203(n+1)/A351547(n+1)`
-/

namespace A351545.P2477663388825768938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351547 (n + 1) : ℚ)

end

end A351545.P2477663388825768938

/-! ## A351545.P12189921464013431965

`A351544(n+1)/A354997(n+1)`
-/

namespace A351545.P12189921464013431965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351544 (n + 1) : ℚ) / (A354997 (n + 1) : ℚ)

end

end A351545.P12189921464013431965

/-! ## A351545.P10451280351138035256

`(A003961(n+1)-A286385(n+1))/A351547(n+1)`
-/

namespace A351545.P10451280351138035256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A286385 (n + 1) : ℚ) / (A351547 (n + 1) : ℚ)

end

end A351545.P10451280351138035256

/-! ## A351545.P1217119328314883124

`A000203(n+1)/(A351546(n+1)*A354997(n+1))`
-/

namespace A351545.P1217119328314883124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351546 (n + 1) * A354997 (n + 1) : ℚ)

end

end A351545.P1217119328314883124

/-! ## A351545.P10453275843035210930

`A342671(n+1)*A349162(n+1)/A351547(n+1)`
-/

namespace A351545.P10453275843035210930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342671 (n + 1) * A349162 (n + 1) : ℚ) / (A351547 (n + 1) : ℚ)

end

end A351545.P10453275843035210930

/-! ## A351545.P11918969989557935384

`A351544(n+1)*A351546(n+1)/A351547(n+1)`
-/

namespace A351545.P11918969989557935384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351544 (n + 1) * A351546 (n + 1) : ℚ) / (A351547 (n + 1) : ℚ)

end

end A351545.P11918969989557935384

/-!
# A351546: a(n) is the largest unitary divisor of sigma(n) coprime with A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A351546, the canonical program `A351546.P8277132408193178014` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351546 has offset 1).

The definition of A351546 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351544, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351546.P16180340656508895872

`A353666(n+1)*A353668(n+1)`
-/

namespace A351546.P16180340656508895872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353666 (n + 1) * A353668 (n + 1)

end

end A351546.P16180340656508895872

namespace A351546

/-- `A353666(n+1)*A353668(n+1)` -/
def P16180340656508895872.Spec : Prop :=
  ∀ n, P16180340656508895872.a n = A351546 (n + 1)

end A351546

/-! ## A351546.P8277132408193178014

`A000203(n+1)/A351544(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A351546

/-- `A000203(n+1)/A351544(n+1)` -/
def P8277132408193178014.Spec : Prop :=
  ∀ n, P8277132408193178014.a n = (A351546 (n + 1) : ℚ)

end A351546

/-! ## A351546.P6715461828832052568

`A351547(n+1)/A354997(n+1)`
-/

namespace A351546.P6715461828832052568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351547 (n + 1) : ℚ) / (A354997 (n + 1) : ℚ)

end

end A351546.P6715461828832052568

namespace A351546

/-- `A351547(n+1)/A354997(n+1)` -/
def P6715461828832052568.Spec : Prop :=
  ∀ n, P6715461828832052568.a n = (A351546 (n + 1) : ℚ)

end A351546

/-! ## A351546.P13108817004243497425

`gcd(A349162(n+1), A351547(n+1))`
-/

namespace A351546.P13108817004243497425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A349162 (n + 1)) (A351547 (n + 1))

end

end A351546.P13108817004243497425

namespace A351546

/-- `gcd(A349162(n+1), A351547(n+1))` -/
def P13108817004243497425.Spec : Prop :=
  ∀ n, (P13108817004243497425.a n : ℤ) = A351546 (n + 1)

end A351546

/-! ## A351546.P16879162163203301657

`abs(A143348(n+1)/A351544(n+1))`
-/

namespace A351546.P16879162163203301657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143348 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ)|

end

end A351546.P16879162163203301657

namespace A351546

/-- `abs(A143348(n+1)/A351544(n+1))` -/
def P16879162163203301657.Spec : Prop :=
  ∀ n, P16879162163203301657.a n = (A351546 (n + 1) : ℚ)

end A351546

/-! ## A351546.P8735683642173133193

`sqrt(A072861(n+1))/A351544(n+1)`
-/

namespace A351546.P8735683642173133193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A351544 (n + 1) : ℝ)

end

end A351546.P8735683642173133193

namespace A351546

/-- `sqrt(A072861(n+1))/A351544(n+1)` -/
def P8735683642173133193.Spec : Prop :=
  ∀ n, P8735683642173133193.a n = (A351546 (n + 1) : ℝ)

end A351546

/-! ## A351546.P2026158646132114039

`A074400(n+1)/(2*A351544(n+1))`
-/

namespace A351546.P2026158646132114039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A351544 (n + 1) : ℚ)

end

end A351546.P2026158646132114039

namespace A351546

/-- `A074400(n+1)/(2*A351544(n+1))` -/
def P2026158646132114039.Spec : Prop :=
  ∀ n, P2026158646132114039.a n = (A351546 (n + 1) : ℚ)

end A351546

/-! ## A351546.P17594539846611645281

`(A001065(n+1)+n+1)/A351544(n+1)`
-/

namespace A351546.P17594539846611645281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + (n + 1 : ℤ) : ℚ) / (A351544 (n + 1) : ℚ)

end

end A351546.P17594539846611645281

namespace A351546

/-- `(A001065(n+1)+n+1)/A351544(n+1)` -/
def P17594539846611645281.Spec : Prop :=
  ∀ n, P17594539846611645281.a n = (A351546 (n + 1) : ℚ)

end A351546

/-! ## A351546.P5372974453437074036

`A000203(n+1)/(A351545(n+1)*A354997(n+1))`
-/

namespace A351546.P5372974453437074036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351545 (n + 1) * A354997 (n + 1) : ℚ)

end

end A351546.P5372974453437074036

namespace A351546

/-- `A000203(n+1)/(A351545(n+1)*A354997(n+1))` -/
def P5372974453437074036.Spec : Prop :=
  ∀ n, P5372974453437074036.a n = (A351546 (n + 1) : ℚ)

end A351546

/-! ## A351546.P11122872635459749427

`A342671(n+1)*A349162(n+1)/A351544(n+1)`
-/

namespace A351546.P11122872635459749427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342671 (n + 1) * A349162 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ)

end

end A351546.P11122872635459749427

namespace A351546

/-- `A342671(n+1)*A349162(n+1)/A351544(n+1)` -/
def P11122872635459749427.Spec : Prop :=
  ∀ n, P11122872635459749427.a n = (A351546 (n + 1) : ℚ)

end A351546

/-! ## A351546.P15559745713774987688

`A351545(n+1)/A351544(n+1)*A351547(n+1)`
-/

namespace A351546.P15559745713774987688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351545 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ) * (A351547 (n + 1) : ℚ)

end

end A351546.P15559745713774987688

namespace A351546

/-- `A351545(n+1)/A351544(n+1)*A351547(n+1)` -/
def P15559745713774987688.Spec : Prop :=
  ∀ n, P15559745713774987688.a n = (A351546 (n + 1) : ℚ)

end A351546

/-! ## A351546.P14618444973723419663

`A004525(A074400(n+1)/A351544(n+1))`
-/

namespace A351546.P14618444973723419663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ))).toNat

end

end A351546.P14618444973723419663

namespace A351546

/-- `A004525(A074400(n+1)/A351544(n+1))` -/
def P14618444973723419663.Spec : Prop :=
  ∀ n, P14618444973723419663.a n = A351546 (n + 1)

end A351546

/-! ## A351546.P9874043982970438499

`A008619(A002659(n+1))/A351544(n+1)`
-/

namespace A351546.P9874043982970438499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A002659 (n + 1)).toNat : ℚ) / (A351544 (n + 1) : ℚ)

end

end A351546.P9874043982970438499

namespace A351546

/-- `A008619(A002659(n+1))/A351544(n+1)` -/
def P9874043982970438499.Spec : Prop :=
  ∀ n, P9874043982970438499.a n = (A351546 (n + 1) : ℚ)

end A351546

/-!
# A351547: a(n) = sigma(n) / A351545(n).

The programs for A351547, there is no canonical definition to state claims against.
-/

/-! ## A351547.P13258673402747928538

`A351546(n+1)*A354997(n+1)`
-/

namespace A351547.P13258673402747928538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351546 (n + 1) * A354997 (n + 1)

end

end A351547.P13258673402747928538

/-! ## A351547.P17489946724427922150

`A000203(n+1)/A351545(n+1)`
-/

namespace A351547.P17489946724427922150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351545 (n + 1) : ℚ)

end

end A351547.P17489946724427922150

/-! ## A351547.P3392799529860196057

`Δ[A160664(n)]/A351545(n+1)`
-/

namespace A351547.P3392799529860196057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A351545 (n + 1) : ℚ)

end

end A351547.P3392799529860196057

/-! ## A351547.P10971788433949180969

`A245092(Δ[n²])/A351545(n+1)`
-/

namespace A351547.P10971788433949180969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A351545 (n + 1) : ℚ)

end

end A351547.P10971788433949180969

/-! ## A351547.P5246870939710445695

`abs(A143348(n+1)/A351545(n+1))`
-/

namespace A351547.P5246870939710445695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143348 (n + 1) : ℚ) / (A351545 (n + 1) : ℚ)|

end

end A351547.P5246870939710445695

/-! ## A351547.P5279364244332701909

`sqrt(A072861(n+1))/A351545(n+1)`
-/

namespace A351547.P5279364244332701909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A351545 (n + 1) : ℝ)

end

end A351547.P5279364244332701909

/-! ## A351547.P4676943207327752916

`(A039653(n+1)+1)/A351545(n+1)`
-/

namespace A351547.P4676943207327752916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1 : ℚ) / (A351545 (n + 1) : ℚ)

end

end A351547.P4676943207327752916

/-! ## A351547.P2055495966915775501

`A074400(n+1)/(2*A351545(n+1))`
-/

namespace A351547.P2055495966915775501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (2 * A351545 (n + 1) : ℚ)

end

end A351547.P2055495966915775501

/-! ## A351547.P4241018812860989140

`ceil(A002659(n+1)/(2*A351545(n+1)))`
-/

namespace A351547.P4241018812860989140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002659 (n + 1) : ℚ) / (2 * A351545 (n + 1) : ℚ)⌉

end

end A351547.P4241018812860989140

/-! ## A351547.P1121306169825462160

`(A003961(n+1)-A286385(n+1))/A351545(n+1)`
-/

namespace A351547.P1121306169825462160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A286385 (n + 1) : ℚ) / (A351545 (n + 1) : ℚ)

end

end A351547.P1121306169825462160

/-! ## A351547.P11722100242524593675

`A000203(n+1)/A351544(n+1)*A354997(n+1)`
-/

namespace A351547.P11722100242524593675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ) * (A354997 (n + 1) : ℚ)

end

end A351547.P11722100242524593675

/-! ## A351547.P17526074681148671552

`A342671(n+1)*A349162(n+1)/A351545(n+1)`
-/

namespace A351547.P17526074681148671552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342671 (n + 1) * A349162 (n + 1) : ℚ) / (A351545 (n + 1) : ℚ)

end

end A351547.P17526074681148671552

/-! ## A351547.P10137258589938321571

`A351544(n+1)/A351545(n+1)*A351546(n+1)`
-/

namespace A351547.P10137258589938321571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351544 (n + 1) : ℚ) / (A351545 (n + 1) : ℚ) * (A351546 (n + 1) : ℚ)

end

end A351547.P10137258589938321571

/-! ## A351547.P13498991359105273886

`A065033(A074400(n+1)/A351545(n+1))`
-/

namespace A351547.P13498991359105273886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A351545 (n + 1) : ℚ))).toNat

end

end A351547.P13498991359105273886

/-! ## A351547.P13198011521596427269

`A272172(A000124(n))/A351545(n+1)`
-/

namespace A351547.P13198011521596427269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272172 (A000124 n).toNat : ℚ) / (A351545 (n + 1) : ℚ)

end

end A351547.P13198011521596427269

/-!
# A351548: a(n) = A349745(n) divided by 2 if it is even, and 0 if A349745(n) is odd.

The programs for A351548, there is no canonical definition to state claims against.
-/

/-! ## A351548.P12728122844038440662

`floor(A349745(n+1)/2)`
-/

namespace A351548.P12728122844038440662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A349745 (n + 1) : ℚ) / 2⌋

end

end A351548.P12728122844038440662

/-! ## A351548.P6462644820681225699

`(A349745(n+1)-A000007(n))/2`
-/

namespace A351548.P6462644820681225699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349745 (n + 1) - A000007 n : ℚ) / 2

end

end A351548.P6462644820681225699

/-! ## A351548.P16002698460147663735

`(A349745(n+1)-A151909(n))/2`
-/

namespace A351548.P16002698460147663735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349745 (n + 1) - A151909 n : ℚ) / 2

end

end A351548.P16002698460147663735

/-! ## A351548.P5743231259133627306

`A349745(n+1)/2*A057427(n)`
-/

namespace A351548.P5743231259133627306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349745 (n + 1) : ℚ) / 2 * (A057427 n : ℚ)

end

end A351548.P5743231259133627306

/-! ## A351548.P2602298348826286198

`-A349745(n+1)/2*A057428(n)`
-/

namespace A351548.P2602298348826286198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A349745 (n + 1) : ℚ) / 2 * (A057428 n : ℚ))

end

end A351548.P2602298348826286198

/-! ## A351548.P5852542578065850984

`A349745(n+1)/2*A000040(n+1)%2`
-/

namespace A351548.P5852542578065850984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349745 (n + 1) : ℚ) / 2 * (Int.tmod (A000040 (n + 1)) 2 : ℚ)

end

end A351548.P5852542578065850984

/-! ## A351548.P5836884711826058243

`A349745(n+1)/2*A000045(n²%(n+1))`
-/

namespace A351548.P5836884711826058243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349745 (n + 1) : ℚ) / 2 * (A000045 (n ^ 2 % (n + 1)) : ℚ)

end

end A351548.P5836884711826058243

/-!
# A351550: Numbers of the form 4u+2 in A351551.

The programs for A351550, there is no canonical definition to state claims against.
-/

/-! ## A351550.P122577557338603388

`∩[A351551(n+1), A016825(n)]`
-/

namespace A351550.P122577557338603388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351550.P122577557338603388

/-! ## A351550.P4478330024457030194

`∩[A351551(n+1), A017089(n)]`
-/

namespace A351550.P4478330024457030194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351550.P4478330024457030194

/-!
# A351551: Numbers k such that the largest unitary divisor of sigma(k) that is coprime with A003961(k) is also a unitary divisor of k.

The programs for A351551, there is no canonical definition to state claims against.
-/

/-! ## A351551.P108970080239571906

`record[(n+1)*A353633(n+1)]`
-/

namespace A351551.P108970080239571906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351551.P108970080239571906

/-! ## A351551.P6236257398403478605

`comp[xor(A000027(n+1), A353633(n+1))]`
-/

namespace A351551.P6236257398403478605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000027 (n + 1)) (A353633 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351551.P6236257398403478605

/-! ## A351551.P6482016668412433561

`eq[1, A353633(n+1)]+1`
-/

namespace A351551.P6482016668412433561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351551.P6482016668412433561

/-! ## A351551.P5768025952963299813

`lt[A353638(n+1), A353633(n+1)]+1`
-/

namespace A351551.P5768025952963299813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351551.P5768025952963299813

/-! ## A351551.P5094962837865643047

`lt[A353676(n+1), A353633(n+1)]+1`
-/

namespace A351551.P5094962837865643047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351551.P5094962837865643047

/-! ## A351551.P12147584611083795103

`lt[A353675(n+3), A353633(n+1)]+1`
-/

namespace A351551.P12147584611083795103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353675 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A351551.P12147584611083795103

/-!
# A351552: Numbers k for which A351546(k) divides k, where A351546(n) is the largest unitary divisor of sigma(n) such that none of its prime factors divide A003961(n).

The programs for A351552, there is no canonical definition to state claims against.
-/

/-! ## A351552.P5740244807512821346

`eq[1, A353668(n+1)]+1`
-/

namespace A351552.P5740244807512821346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351552.P5740244807512821346

/-! ## A351552.P16404153950247228918

`eq[A351546(n+1), A353666(n+1)]+1`
-/

namespace A351552.P16404153950247228918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351552.P16404153950247228918

/-! ## A351552.P5505357190403804012

`eq[A056926(n), A353668(A028310(n))]`
-/

namespace A351552.P5505357190403804012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353668 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351552.P5505357190403804012

/-! ## A351552.P7351598443355394754

`eq[A057427(n), A353668(A028310(n))]`
-/

namespace A351552.P7351598443355394754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353668 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351552.P7351598443355394754

/-! ## A351552.P12086578983648895309

`eq[A158388(n), A353668(A028310(n))]`
-/

namespace A351552.P12086578983648895309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353668 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351552.P12086578983648895309

/-!
# A351553: Even numbers k such that there are no odd prime factors p of sigma(k) such that p does not divide A003961(k) and the valuation(k, p) is different from valuation(sigma(k), p), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A351553, there is no canonical definition to state claims against.
-/

/-! ## A351553.P11404589335733666840

`filter[A351554(n+2), A354034(#)]`
-/

namespace A351553.P11404589335733666840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A351553.P11404589335733666840

/-! ## A351553.P12997210522844218911

`∩[2*n, A351554(n+1)]`
-/

namespace A351553.P12997210522844218911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351553.P12997210522844218911

/-! ## A351553.P12099162814137263749

`∩[A351554(n+1), A005843(n)]`
-/

namespace A351553.P12099162814137263749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351553.P12099162814137263749

/-! ## A351553.P9855648874409205977

`filter[A351554(n+1), A059841(#)]`
-/

namespace A351553.P9855648874409205977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A351553.P9855648874409205977

/-! ## A351553.P3280598412078631743

`filter[A351554(n+2), A135528(#)]`
-/

namespace A351553.P3280598412078631743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A351553.P3280598412078631743

/-! ## A351553.P13094035017273357287

`filter[A351554(n+2), A266591(#)]`
-/

namespace A351553.P13094035017273357287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A351553.P13094035017273357287

/-! ## A351553.P16863775444023263473

`eq[char[A351554(n+1)], A000034(n)]`
-/

namespace A351553.P16863775444023263473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351553.P16863775444023263473

/-! ## A351553.P11241453788369430765

`eq[char[A351554(n+1)], A010684(n)]`
-/

namespace A351553.P11241453788369430765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351553.P11241453788369430765

/-! ## A351553.P18291108537486440633

`eq[A010673(n)!, char[A351554(n+1)]]`
-/

namespace A351553.P18291108537486440633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010673 n).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351553.P18291108537486440633

/-! ## A351553.P6751629898173720651

`eq[char[A351554(n+1)], A006519(n+1)]`
-/

namespace A351553.P6751629898173720651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351553.P6751629898173720651

/-! ## A351553.P15680984254729008658

`eq[char[A351554(n+1)], A040001(n+1)]`
-/

namespace A351553.P15680984254729008658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351553.P15680984254729008658

/-!
# A351554: Numbers k such that there are no odd prime factors p of sigma(k) such that p does not divide A003961(k) and the valuation(k, p) is different from valuation(sigma(k), p), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A351554, there is no canonical definition to state claims against.
-/

/-! ## A351554.P945507573305491500

`∪[A351553(n+1), A386430(n+1)]`
-/

namespace A351554.P945507573305491500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351554.P945507573305491500

/-! ## A351554.P17681084373380683843

`eq[0, A351555(n+1)]+1`
-/

namespace A351554.P17681084373380683843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351554.P17681084373380683843

/-! ## A351554.P15374412274954069345

`lt[n*A351555(A028310(n)), n]`
-/

namespace A351554.P15374412274954069345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A351555 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351554.P15374412274954069345

/-! ## A351554.P17313472822801628194

`eq[A000007(n), A351555(A028310(n))]`
-/

namespace A351554.P17313472822801628194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351555 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351554.P17313472822801628194

/-! ## A351554.P2857459406339787365

`eq[A127802(2*n), A351555(A028310(n))]`
-/

namespace A351554.P2857459406339787365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351555 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351554.P2857459406339787365

/-! ## A351554.P8627814952595966464

`lt[A351555(A028310(n)), n/A315745(n)]`
-/

namespace A351554.P8627814952595966464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351555 (A028310 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A315745 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A351554.P8627814952595966464

/-!
# A351555: a(n) is the number of odd prime factors of sigma(n) that do not divide A003961(n) and the valuation(n, p) is different from valuation(sigma(n), p).

The programs for A351555, there is no canonical definition to state claims against.
-/

/-! ## A351555.P12394664613612640170

`A186729(2*n+3)%A000120(A353668(n+1))`
-/

namespace A351555.P12394664613612640170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186729 (2 * n + 3)) (A000120 (A353668 (n + 1)).toNat)

end

end A351555.P12394664613612640170

/-! ## A351555.P17363661271749887302

`A188083(A032020(n)+A007318(n+1))`
-/

namespace A351555.P17363661271749887302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188083 (A032020 n + A007318 (n + 1)).toNat

end

end A351555.P17363661271749887302

/-! ## A351555.P14807325843351874090

`A137331(A078867(n+1)%A141214(n))`
-/

namespace A351555.P14807325843351874090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 (Int.tmod (A078867 (n + 1)) (A141214 n)).toNat

end

end A351555.P14807325843351874090

/-! ## A351555.P7812287199458422551

`A137331(A353668(n+1)%A078867(n+1))`
-/

namespace A351555.P7812287199458422551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 (Int.tmod (A353668 (n + 1)) (A078867 (n + 1))).toNat

end

end A351555.P7812287199458422551

/-! ## A351555.P10440401245026675146

`A188970(A100064(n+1))`
-/

namespace A351555.P10440401245026675146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188970 (A100064 (n + 1)).toNat

end

end A351555.P10440401245026675146

/-!
# A351556: a(n) = gcd(n, A019565(n)).

The programs for A351556, there is no canonical definition to state claims against.
-/

/-! ## A351556.P16315608009994963963

`gcd(n, A019565(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351556.P16315608009994963963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A019565 n)

end

end A351556.P16315608009994963963

/-! ## A351556.P6750654339871658690

`A019565(A351558(n))`
-/

namespace A351556.P6750654339871658690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A351558 n).toNat

end

end A351556.P6750654339871658690

/-! ## A351556.P3322051914847173058

`sqrt(gcd(n^4, A334110(n)))`
-/

namespace A351556.P3322051914847173058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (n ^ 4 : ℤ) (A334110 n) : ℝ)

end

end A351556.P3322051914847173058

/-! ## A351556.P11109159274829453542

`gcd(n², A284003(A003188(n)))`
-/

namespace A351556.P11109159274829453542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A284003 (A003188 n).toNat)

end

end A351556.P11109159274829453542

/-! ## A351556.P10876096516026811652

`gcd(A257088(n), A303770(A303774(n)))`
-/

namespace A351556.P10876096516026811652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257088 n) (A303770 (A303774 n).toNat)

end

end A351556.P10876096516026811652

/-! ## A351556.P15820312468193092518

`gcd(A000290(n), A304537(A304534(n)))`
-/

namespace A351556.P15820312468193092518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 n) (A304537 (A304534 n).toNat)

end

end A351556.P15820312468193092518

/-!
# A351557: a(n) = gcd(sigma(n), A019565(n)).

The programs for A351557, there is no canonical definition to state claims against.
-/

/-! ## A351557.P17464085942776065476

`A019565(A351559(n+1))`
-/

namespace A351557.P17464085942776065476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A351559 (n + 1)).toNat

end

end A351557.P17464085942776065476

/-! ## A351557.P7972554702583588725

`gcd(∑{d}[n+1, #], A019565(n+1))`
-/

namespace A351557.P7972554702583588725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A019565 (n + 1))

end

end A351557.P7972554702583588725

/-! ## A351557.P1624031802313821666

`gcd(A000203(n+1), Δ[A288570(n)])`
-/

namespace A351557.P1624031802313821666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (f1 (n + 1) - f1 n)

end

end A351557.P1624031802313821666

/-! ## A351557.P4644661931578565578

`gcd(A019565(n+1), A143348(n+1))`
-/

namespace A351557.P4644661931578565578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019565 (n + 1)) (A143348 (n + 1))

end

end A351557.P4644661931578565578

/-! ## A351557.P15145543360291146004

`gcd(A339809(n+1)+1, A000203(n+1)²)`
-/

namespace A351557.P15145543360291146004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339809 (n + 1) + 1) (A000203 (n + 1) ^ 2)

end

end A351557.P15145543360291146004

/-! ## A351557.P7247461643207053053

`gcd(A019565(A087156(n+1)), A272211(n+1))`
-/

namespace A351557.P7247461643207053053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019565 (A087156 (n + 1)).toNat) (A272211 (n + 1))

end

end A351557.P7247461643207053053

/-!
# A351558: a(n) = A048675(gcd(n, A019565(n))).

The programs for A351558, the canonical program `A351558.P12959759109943034203` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351558 has offset 0).

The definition of A351558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351558.P12463981208544566274

`A048675(A351556(n))`
-/

namespace A351558.P12463981208544566274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A351556 n).toNat

end

end A351558.P12463981208544566274

namespace A351558

/-- `A048675(A351556(n))` -/
def P12463981208544566274.Spec : Prop :=
  ∀ n, P12463981208544566274.a n = A351558 n

end A351558

/-! ## A351558.P1492778602074082532

`A048675(gcd(n, A019565(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351558.P1492778602074082532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (Int.gcd (n : ℤ) (A019565 n))

end

end A351558.P1492778602074082532

namespace A351558

/-- `A048675(gcd(n, A019565(n)))` -/
def P1492778602074082532.Spec : Prop :=
  ∀ n, P1492778602074082532.a n = A351558 n

end A351558

/-! ## A351558.P2750470365445580156

`A087207(A351556(2*n-n))`
-/

namespace A351558.P2750470365445580156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A351556 (2 * n - n)).toNat

end

end A351558.P2750470365445580156

namespace A351558

/-- `A087207(A351556(2*n-n))` -/
def P2750470365445580156.Spec : Prop :=
  ∀ n, P2750470365445580156.a n = A351558 n

end A351558

/-! ## A351558.P12959759109943034203

`and(n, A248663(∏{p}[n, #]))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A351558

/-- `and(n, A248663(∏{p}[n, #]))` -/
def P12959759109943034203.Spec : Prop :=
  ∀ n, P12959759109943034203.a n = A351558 n

theorem P12959759109943034203.correct : P12959759109943034203.Spec := by
  intro n
  simp only [A351558]

end A351558

/-! ## A351558.P16005612555291194567

`and(n, A087207(A028310(n)))`
-/

namespace A351558.P16005612555291194567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A087207 (A028310 n).toNat)

end

end A351558.P16005612555291194567

namespace A351558

/-- `and(n, A087207(A028310(n)))` -/
def P16005612555291194567.Spec : Prop :=
  ∀ n, P16005612555291194567.a n = A351558 n

end A351558

/-! ## A351558.P9613816853666702535

`and(A087207(A233583(n+1)), A233583(n+1))`
-/

namespace A351558.P9613816853666702535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087207 (A233583 (n + 1)).toNat) (A233583 (n + 1))

end

end A351558.P9613816853666702535

namespace A351558

/-- `and(A087207(A233583(n+1)), A233583(n+1))` -/
def P9613816853666702535.Spec : Prop :=
  ∀ n, P9613816853666702535.a n = A351558 n

end A351558

/-! ## A351558.P16187212019201743085

`A087207(A351556(n)²)`
-/

namespace A351558.P16187212019201743085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A351556 n ^ 2).toNat

end

end A351558.P16187212019201743085

namespace A351558

/-- `A087207(A351556(n)²)` -/
def P16187212019201743085.Spec : Prop :=
  ∀ n, P16187212019201743085.a n = A351558 n

end A351558

/-! ## A351558.P8429722525943508387

`A087207(A351556(n)*A351556(n))`
-/

namespace A351558.P8429722525943508387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A351556 n * A351556 n).toNat

end

end A351558.P8429722525943508387

namespace A351558

/-- `A087207(A351556(n)*A351556(n))` -/
def P8429722525943508387.Spec : Prop :=
  ∀ n, P8429722525943508387.a n = A351558 n

end A351558

/-!
# A351559: a(n) = A048675(gcd(sigma(n), A019565(n))).

The programs for A351559, there is no canonical definition to state claims against.
-/

/-! ## A351559.P3054735624193602103

`A048675(A351557(n+1))`
-/

namespace A351559.P3054735624193602103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A351557 (n + 1)).toNat

end

end A351559.P3054735624193602103

/-! ## A351559.P6045376111519811687

`∑{p}[A351557(n+1), A156552(#)]`
-/

namespace A351559.P6045376111519811687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A351559.P6045376111519811687

/-! ## A351559.P956681148493446063

`A087207(A351557(2*n+1-n))`
-/

namespace A351559.P956681148493446063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A351557 (2 * n + 1 - n)).toNat

end

end A351559.P956681148493446063

/-! ## A351559.P16135810105104684215

`A087207(A351557(n+1)+A000007(n+1))`
-/

namespace A351559.P16135810105104684215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A351557 (n + 1) + A000007 (n + 1)).toNat

end

end A351559.P16135810105104684215

/-! ## A351559.P5819035235231787721

`and(n+1, A351560(n+1))`
-/

namespace A351559.P5819035235231787721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A351560 (n + 1))

end

end A351559.P5819035235231787721

/-! ## A351559.P2122715441121563593

`and(n+1, A087207(A000203(n+1)))`
-/

namespace A351559.P2122715441121563593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A087207 (A000203 (n + 1)).toNat)

end

end A351559.P2122715441121563593

/-! ## A351559.P2992132340268927935

`and(n+1, A048675(A080398(n+1)))`
-/

namespace A351559.P2992132340268927935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A048675 (A080398 (n + 1)).toNat)

end

end A351559.P2992132340268927935

/-! ## A351559.P11307619446563760102

`and(n+1, A087207(A074400(n+1)/2))`
-/

namespace A351559.P11307619446563760102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A087207 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat)

end

end A351559.P11307619446563760102

/-! ## A351559.P1368896236378405255

`and(n+1, A087207(A160664(n+1)-A160664(n)))`
-/

namespace A351559.P1368896236378405255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A087207 (A160664 (n + 1) - A160664 n).toNat)

end

end A351559.P1368896236378405255

/-! ## A351559.P14319512906673374557

`A087207(A007947(A351557(n+1)²))`
-/

namespace A351559.P14319512906673374557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A007947 (A351557 (n + 1) ^ 2).toNat).toNat

end

end A351559.P14319512906673374557

/-!
# A351560: a(n) is a binary representation of the primes that divide sigma(n) [the sum of divisors of n function], shown in decimal.

The programs for A351560, the canonical program `A351560.P4314084197358316879` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351560 has offset 1).

The definition of A351560 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351560.P4314084197358316879

`A087207(A000203(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A351560

/-- `A087207(A000203(n+1))` -/
def P4314084197358316879.Spec : Prop :=
  ∀ n, P4314084197358316879.a n = A351560 (n + 1)

theorem P4314084197358316879.correct : P4314084197358316879.Spec := by
  intro n
  simp only [A351560, Nat.add_sub_cancel]

end A351560

/-! ## A351560.P818650259652724166

`A048675(A080398(n+1))`
-/

namespace A351560.P818650259652724166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A080398 (n + 1)).toNat

end

end A351560.P818650259652724166

namespace A351560

/-- `A048675(A080398(n+1))` -/
def P818650259652724166.Spec : Prop :=
  ∀ n, P818650259652724166.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P15324628770148461386

`A087207(∑{d}[n+1, #])`
-/

namespace A351560.P15324628770148461386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A351560.P15324628770148461386

namespace A351560

/-- `A087207(∑{d}[n+1, #])` -/
def P15324628770148461386.Spec : Prop :=
  ∀ n, P15324628770148461386.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P5375931391819803932

`A048675(∏{p}[∑{d}[n+1, #], #])`
-/

namespace A351560.P5375931391819803932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351560.P5375931391819803932

namespace A351560

/-- `A048675(∏{p}[∑{d}[n+1, #], #])` -/
def P5375931391819803932.Spec : Prop :=
  ∀ n, P5375931391819803932.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P13844244677511076098

`A248663(∏{p}[∑{d}[n+1, #], #])`
-/

namespace A351560.P13844244677511076098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351560.P13844244677511076098

namespace A351560

/-- `A248663(∏{p}[∑{d}[n+1, #], #])` -/
def P13844244677511076098.Spec : Prop :=
  ∀ n, P13844244677511076098.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P6290795954166215052

`A285330(∏{p}[∑{d}[n+1, #], #])`
-/

namespace A351560.P6290795954166215052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351560.P6290795954166215052

namespace A351560

/-- `A285330(∏{p}[∑{d}[n+1, #], #])` -/
def P6290795954166215052.Spec : Prop :=
  ∀ n, P6290795954166215052.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P1092515151070887401

`A087207(A175433(n+1))`
-/

namespace A351560.P1092515151070887401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A175433 (n + 1)).toNat

end

end A351560.P1092515151070887401

namespace A351560

/-- `A087207(A175433(n+1))` -/
def P1092515151070887401.Spec : Prop :=
  ∀ n, P1092515151070887401.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P16128048328648394247

`A087207(A353783(n+1))`
-/

namespace A351560.P16128048328648394247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A353783 (n + 1)).toNat

end

end A351560.P16128048328648394247

namespace A351560

/-- `A087207(A353783(n+1))` -/
def P16128048328648394247.Spec : Prop :=
  ∀ n, P16128048328648394247.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P13083068048032609303

`A087207(A074400(n+1)/2)`
-/

namespace A351560.P13083068048032609303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A351560.P13083068048032609303

namespace A351560

/-- `A087207(A074400(n+1)/2)` -/
def P13083068048032609303.Spec : Prop :=
  ∀ n, P13083068048032609303.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P6097609932612079747

`A285330(∏{p}[A000203(n+1), #])`
-/

namespace A351560.P6097609932612079747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A351560.P6097609932612079747

namespace A351560

/-- `A285330(∏{p}[A000203(n+1), #])` -/
def P6097609932612079747.Spec : Prop :=
  ∀ n, P6097609932612079747.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P15489041735179253990

`A087207(A001065(n+1)+1+n)`
-/

namespace A351560.P15489041735179253990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A351560.P15489041735179253990

namespace A351560

/-- `A087207(A001065(n+1)+1+n)` -/
def P15489041735179253990.Spec : Prop :=
  ∀ n, P15489041735179253990.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P2450599061336177651

`A087207(A080398(2*n+1-n))`
-/

namespace A351560.P2450599061336177651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A080398 (2 * n + 1 - n)).toNat

end

end A351560.P2450599061336177651

namespace A351560

/-- `A087207(A080398(2*n+1-n))` -/
def P2450599061336177651.Spec : Prop :=
  ∀ n, P2450599061336177651.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P7684301968081366991

`A285330(∏{p}[A245092(2*n+1), #])`
-/

namespace A351560.P7684301968081366991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A351560.P7684301968081366991

namespace A351560

/-- `A285330(∏{p}[A245092(2*n+1), #])` -/
def P7684301968081366991.Spec : Prop :=
  ∀ n, P7684301968081366991.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P12303759703260800446

`A285330(∏{p}[A074400(n+1)/2, #])`
-/

namespace A351560.P12303759703260800446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A351560.P12303759703260800446

namespace A351560

/-- `A285330(∏{p}[A074400(n+1)/2, #])` -/
def P12303759703260800446.Spec : Prop :=
  ∀ n, P12303759703260800446.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P10776403163527762611

`A285330(∏{p}[A155085(n+1)-(n+1), #])`
-/

namespace A351560.P10776403163527762611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A351560.P10776403163527762611

namespace A351560

/-- `A285330(∏{p}[A155085(n+1)-(n+1), #])` -/
def P10776403163527762611.Spec : Prop :=
  ∀ n, P10776403163527762611.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P16290320251574536495

`A285330(∏{p}[A064987(n+1)/(n+1), #])`
-/

namespace A351560.P16290320251574536495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A351560.P16290320251574536495

namespace A351560

/-- `A285330(∏{p}[A064987(n+1)/(n+1), #])` -/
def P16290320251574536495.Spec : Prop :=
  ∀ n, P16290320251574536495.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P10072158851254769764

`A285330(∏{p}[A237588(n+1)+Δ[n²], #])`
-/

namespace A351560.P10072158851254769764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A351560.P10072158851254769764

namespace A351560

/-- `A285330(∏{p}[A237588(n+1)+Δ[n²], #])` -/
def P10072158851254769764.Spec : Prop :=
  ∀ n, P10072158851254769764.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P556900137164688747

`A285330(∏{p}[2*(n+1)-A033879(n+1), #])`
-/

namespace A351560.P556900137164688747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A351560.P556900137164688747

namespace A351560

/-- `A285330(∏{p}[2*(n+1)-A033879(n+1), #])` -/
def P556900137164688747.Spec : Prop :=
  ∀ n, P556900137164688747.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P16104694815908954012

`A087207(A160664(n+1)-A160664(n))`
-/

namespace A351560.P16104694815908954012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A160664 (n + 1) - A160664 n).toNat

end

end A351560.P16104694815908954012

namespace A351560

/-- `A087207(A160664(n+1)-A160664(n))` -/
def P16104694815908954012.Spec : Prop :=
  ∀ n, P16104694815908954012.a n = A351560 (n + 1)

end A351560

/-! ## A351560.P17811652813096845887

`A048675(A007947(A001065(n+1)+n+1))`
-/

namespace A351560.P17811652813096845887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A007947 (A001065 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A351560.P17811652813096845887

namespace A351560

/-- `A048675(A007947(A001065(n+1)+n+1))` -/
def P17811652813096845887.Spec : Prop :=
  ∀ n, P17811652813096845887.a n = A351560 (n + 1)

end A351560

/-!
# A351561: a(n) = n + d(n) - phi(n), where d is the number of divisors function, and phi is the Euler totient function.

The programs for A351561, the canonical program `A351561.P9711075868512573755` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351561 has offset 1).

The definition of A351561 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351561.P5042298310733999964

`n+1-A063070(n+1)`
-/

namespace A351561.P5042298310733999964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A063070 (n + 1)

end

end A351561.P5042298310733999964

namespace A351561

/-- `n+1-A063070(n+1)` -/
def P5042298310733999964.Spec : Prop :=
  ∀ n, P5042298310733999964.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P9711075868512573755

`A000005(n+1)+A051953(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A351561

/-- `A000005(n+1)+A051953(n+1)` -/
def P9711075868512573755.Spec : Prop :=
  ∀ n, P9711075868512573755.a n = A351561 (n + 1)

theorem P9711075868512573755.correct : P9711075868512573755.Spec := by
  intro n
  simp only [A351561, Nat.add_sub_cancel]

end A351561

/-! ## A351561.P16704560580849130780

`n+1+A000005(n+1)-A000010(n+1)`
-/

namespace A351561.P16704560580849130780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000005 (n + 1) - A000010 (n + 1)

end

end A351561.P16704560580849130780

namespace A351561

/-- `n+1+A000005(n+1)-A000010(n+1)` -/
def P16704560580849130780.Spec : Prop :=
  ∀ n, P16704560580849130780.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P11589661824248731553

`A051953(n+1)+Δ[A006218(n)]`
-/

namespace A351561.P11589661824248731553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (f1 (n + 1) - f1 n)

end

end A351561.P11589661824248731553

namespace A351561

/-- `A051953(n+1)+Δ[A006218(n)]` -/
def P11589661824248731553.Spec : Prop :=
  ∀ n, P11589661824248731553.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P3946033088503035032

`A051953(n+1)+Δ[A054519(n)]`
-/

namespace A351561.P3946033088503035032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (f1 (n + 1) - f1 n)

end

end A351561.P3946033088503035032

namespace A351561

/-- `A051953(n+1)+Δ[A054519(n)]` -/
def P3946033088503035032.Spec : Prop :=
  ∀ n, P3946033088503035032.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P6078130853669493472

`A114003(n+1)+A045763(n+1)`
-/

namespace A351561.P6078130853669493472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + A045763 (n + 1)

end

end A351561.P6078130853669493472

namespace A351561

/-- `A114003(n+1)+A045763(n+1)` -/
def P6078130853669493472.Spec : Prop :=
  ∀ n, P6078130853669493472.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P726542154920519799

`A163523(n+1)+A057860(n+1)`
-/

namespace A351561.P726542154920519799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) + A057860 (n + 1)

end

end A351561.P726542154920519799

namespace A351561

/-- `A163523(n+1)+A057860(n+1)` -/
def P726542154920519799.Spec : Prop :=
  ∀ n, P726542154920519799.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P2880533180498015631

`A334954(n+1)+A219428(n+1)`
-/

namespace A351561.P2880533180498015631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) + A219428 (n + 1)

end

end A351561.P2880533180498015631

namespace A351561

/-- `A334954(n+1)+A219428(n+1)` -/
def P2880533180498015631.Spec : Prop :=
  ∀ n, P2880533180498015631.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P13537577876144919669

`A062249(n+1)-A000010(n+1)`
-/

namespace A351561.P13537577876144919669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - A000010 (n + 1)

end

end A351561.P13537577876144919669

namespace A351561

/-- `A062249(n+1)-A000010(n+1)` -/
def P13537577876144919669.Spec : Prop :=
  ∀ n, P13537577876144919669.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P845357218831559272

`A053158(n+1)-A049820(n+1)`
-/

namespace A351561.P845357218831559272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A049820 (n + 1)

end

end A351561.P845357218831559272

namespace A351561

/-- `A053158(n+1)-A049820(n+1)` -/
def P845357218831559272.Spec : Prop :=
  ∀ n, P845357218831559272.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P16811426366029144131

`A061468(n+1)-A083254(n+1)`
-/

namespace A351561.P16811426366029144131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A083254 (n + 1)

end

end A351561.P16811426366029144131

namespace A351561

/-- `A061468(n+1)-A083254(n+1)` -/
def P16811426366029144131.Spec : Prop :=
  ∀ n, P16811426366029144131.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P4202842250598606086

`A163163(n+1)-A051709(n+1)`
-/

namespace A351561.P4202842250598606086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) - A051709 (n + 1)

end

end A351561.P4202842250598606086

namespace A351561

/-- `A163163(n+1)-A051709(n+1)` -/
def P4202842250598606086.Spec : Prop :=
  ∀ n, P4202842250598606086.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P17966575567949877645

`A007503(n+1)-A209187(n+1)`
-/

namespace A351561.P17966575567949877645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A209187 (n + 1)

end

end A351561.P17966575567949877645

namespace A351561

/-- `A007503(n+1)-A209187(n+1)` -/
def P17966575567949877645.Spec : Prop :=
  ∀ n, P17966575567949877645.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P9221840230467721362

`Δ[A006218(n)]-A109606(n+1)+n`
-/

namespace A351561.P9221840230467721362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A109606 (n + 1) + (n : ℤ)

end

end A351561.P9221840230467721362

namespace A351561

/-- `Δ[A006218(n)]-A109606(n+1)+n` -/
def P9221840230467721362.Spec : Prop :=
  ∀ n, P9221840230467721362.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P15870538388420179537

`A000005(n+1)+A219428(n+1)+1`
-/

namespace A351561.P15870538388420179537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A219428 (n + 1) + 1)

end

end A351561.P15870538388420179537

namespace A351561

/-- `A000005(n+1)+A219428(n+1)+1` -/
def P15870538388420179537.Spec : Prop :=
  ∀ n, P15870538388420179537.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P9548063194013629878

`A158907(n+1)+1-A000010(n+1)`
-/

namespace A351561.P9548063194013629878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) + (1 - A000010 (n + 1))

end

end A351561.P9548063194013629878

namespace A351561

/-- `A158907(n+1)+1-A000010(n+1)` -/
def P9548063194013629878.Spec : Prop :=
  ∀ n, P9548063194013629878.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P7948762791797093698

`A051953(n+1)+A334954(n+1)-1`
-/

namespace A351561.P7948762791797093698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A334954 (n + 1) - 1)

end

end A351561.P7948762791797093698

namespace A351561

/-- `A051953(n+1)+A334954(n+1)-1` -/
def P7948762791797093698.Spec : Prop :=
  ∀ n, P7948762791797093698.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P13422527467949812752

`A051953(n+1)+2-A378216(n+1)`
-/

namespace A351561.P13422527467949812752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (2 - A378216 (n + 1))

end

end A351561.P13422527467949812752

namespace A351561

/-- `A051953(n+1)+2-A378216(n+1)` -/
def P13422527467949812752.Spec : Prop :=
  ∀ n, P13422527467949812752.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P2484895201374113281

`A000005(n+1)-A109606(n+1)+n`
-/

namespace A351561.P2484895201374113281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A109606 (n + 1) + (n : ℤ)

end

end A351561.P2484895201374113281

namespace A351561

/-- `A000005(n+1)-A109606(n+1)+n` -/
def P2484895201374113281.Spec : Prop :=
  ∀ n, P2484895201374113281.a n = A351561 (n + 1)

end A351561

/-! ## A351561.P13834429038300823549

`A051953(n+1)+A062355(n+1)/A000010(n+1)`
-/

namespace A351561.P13834429038300823549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) + (A062355 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A351561.P13834429038300823549

namespace A351561

/-- `A051953(n+1)+A062355(n+1)/A000010(n+1)` -/
def P13834429038300823549.Spec : Prop :=
  ∀ n, P13834429038300823549.a n = (A351561 (n + 1) : ℚ)

end A351561

/-!
# A351562: Odd composites k such that A342926(2*k) is a multiple of 3.

The programs for A351562, there is no canonical definition to state claims against.
-/

/-! ## A351562.P1884906163098715947

`eq[A055671(n), A347883(A266303(n))]`
-/

namespace A351562.P1884906163098715947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A266303 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351562.P1884906163098715947

/-! ## A351562.P10341139352375353066

`filter[A349751(n+1), A005171(#)]`
-/

namespace A351562.P10341139352375353066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A351562.P10341139352375353066

/-! ## A351562.P2475852255603215459

`filter[A349751(n+1), A066247(#)]`
-/

namespace A351562.P2475852255603215459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A351562.P2475852255603215459

/-! ## A351562.P16745038310511926588

`filter[A349751(n+1), A143731(#)]`
-/

namespace A351562.P16745038310511926588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A351562.P16745038310511926588

/-! ## A351562.P5481710408913107040

`filter[A349751(n+1), A174898(#)]`
-/

namespace A351562.P5481710408913107040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A351562.P5481710408913107040

/-!
# A351563: a(n) is the exponent of the second smallest prime factor of n, or 0 if n is a power of a prime.

The programs for A351563, there is no canonical definition to state claims against.
-/

/-! ## A351563.P2370605462905781726

`A067029(A028234(n+1))`
-/

namespace A351563.P2370605462905781726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A028234 (n + 1)).toNat

end

end A351563.P2370605462905781726

/-! ## A351563.P10331142214409068557

`val(A071364(n+1), 3)`
-/

namespace A351563.P10331142214409068557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071364 (n + 1)).toNat 3

end

end A351563.P10331142214409068557

/-! ## A351563.P16749119366223524662

`A007949(A071364(n+1))`
-/

namespace A351563.P16749119366223524662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A071364 (n + 1)).toNat

end

end A351563.P16749119366223524662

/-! ## A351563.P9621977421334268260

`A067029((n+1)/A028233(n+1))`
-/

namespace A351563.P9621977421334268260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028233 (n + 1) : ℚ))).toNat

end

end A351563.P9621977421334268260

/-! ## A351563.P11431047170744672148

`A069157(A028233((n+1)/A028233(n+1)))`
-/

namespace A351563.P11431047170744672148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028233 (n + 1) : ℚ))).toNat).toNat

end

end A351563.P11431047170744672148

/-! ## A351563.P3898455669346109070

`A302045(A302044(A250245(n+1)))`
-/

namespace A351563.P3898455669346109070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A302044 (A250245 (n + 1)).toNat).toNat

end

end A351563.P3898455669346109070

/-! ## A351563.P15932193558020364681

`A362983(A304233(n+1))`
-/

namespace A351563.P15932193558020364681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362983 (A304233 (n + 1)).toNat

end

end A351563.P15932193558020364681

/-!
# A351564: a(n) = 1 if all the exponents in the prime factorization of n are distinct, and 0 otherwise.

The programs for A351564, the canonical program `A351564.P10528409074498164417` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351564 has offset 1).

The definition of A351564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351564.P10528409074498164417

`A008966(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A351564

/-- `A008966(A181819(n+1))` -/
def P10528409074498164417.Spec : Prop :=
  ∀ n, P10528409074498164417.a n = A351564 (n + 1)

theorem P10528409074498164417.correct : P10528409074498164417.Spec := by
  intro n
  simp only [A351564, Nat.add_sub_cancel]

end A351564

/-! ## A351564.P17188299890131230475

`floor(1/A327499(n+1))`
-/

namespace A351564.P17188299890131230475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A327499 (n + 1) : ℚ)⌋

end

end A351564.P17188299890131230475

namespace A351564

/-- `floor(1/A327499(n+1))` -/
def P17188299890131230475.Spec : Prop :=
  ∀ n, P17188299890131230475.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P3049616022136322792

`floor(1/A351944(n+1))`
-/

namespace A351564.P3049616022136322792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A351944 (n + 1) : ℚ)⌋

end

end A351564.P3049616022136322792

namespace A351564

/-- `floor(1/A351944(n+1))` -/
def P3049616022136322792.Spec : Prop :=
  ∀ n, P3049616022136322792.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P10310922992365457210

`floor(1/A353693(n+1))`
-/

namespace A351564.P10310922992365457210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A353693 (n + 1) : ℚ)⌋

end

end A351564.P10310922992365457210

namespace A351564

/-- `floor(1/A353693(n+1))` -/
def P10310922992365457210.Spec : Prop :=
  ∀ n, P10310922992365457210.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P7713944772253290298

`A327500(n+1)!%2`
-/

namespace A351564.P7713944772253290298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A327500 (n + 1)).toNat % 2

end

end A351564.P7713944772253290298

namespace A351564

/-- `A327500(n+1)!%2` -/
def P7713944772253290298.Spec : Prop :=
  ∀ n, (P7713944772253290298.a n : ℤ) = A351564 (n + 1)

end A351564

/-! ## A351564.P15870439858150380443

`char[A130091(n+1)-1]`
-/

namespace A351564.P15870439858150380443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A351564.P15870439858150380443

namespace A351564

/-- `char[A130091(n+1)-1]` -/
def P15870439858150380443.Spec : Prop :=
  ∀ n, (P15870439858150380443.a n : ℤ) = A351564 (n + 1)

end A351564

/-! ## A351564.P8270738069680449392

`char[A327498(n+1)-1]`
-/

namespace A351564.P8270738069680449392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A351564.P8270738069680449392

namespace A351564

/-- `char[A327498(n+1)-1]` -/
def P8270738069680449392.Spec : Prop :=
  ∀ n, (P8270738069680449392.a n : ℤ) = A351564 (n + 1)

end A351564

/-! ## A351564.P9395930424405074304

`C(n+1, A353694(n+1))`
-/

namespace A351564.P9395930424405074304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A353694 (n + 1)).toNat

end

end A351564.P9395930424405074304

namespace A351564

/-- `C(n+1, A353694(n+1))` -/
def P9395930424405074304.Spec : Prop :=
  ∀ n, (P9395930424405074304.a n : ℤ) = A351564 (n + 1)

end A351564

/-! ## A351564.P10697330354433013880

`A341629(A238745(n+1))`
-/

namespace A351564.P10697330354433013880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (A238745 (n + 1)).toNat

end

end A351564.P10697330354433013880

namespace A351564

/-- `A341629(A238745(n+1))` -/
def P10697330354433013880.Spec : Prop :=
  ∀ n, P10697330354433013880.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P14010102307340358342

`A293449(A181819(n+1)²)`
-/

namespace A351564.P14010102307340358342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293449 (A181819 (n + 1) ^ 2).toNat

end

end A351564.P14010102307340358342

namespace A351564

/-- `A293449(A181819(n+1)²)` -/
def P14010102307340358342.Spec : Prop :=
  ∀ n, P14010102307340358342.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P8322614242957575569

`A008966(∏{e}[n+1, A127052(#)])`
-/

namespace A351564.P8322614242957575569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (∏ p ∈ Nat.primeFactors (f1 n), A127052 (Nat.factorization (f1 n) p)).toNat

end

end A351564.P8322614242957575569

namespace A351564

/-- `A008966(∏{e}[n+1, A127052(#)])` -/
def P8322614242957575569.Spec : Prop :=
  ∀ n, P8322614242957575569.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P10861883771842340798

`abs(A008683(∏{e}[n+1, A000040(#)]))`
-/

namespace A351564.P10861883771842340798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat|

end

end A351564.P10861883771842340798

namespace A351564

/-- `abs(A008683(∏{e}[n+1, A000040(#)]))` -/
def P10861883771842340798.Spec : Prop :=
  ∀ n, P10861883771842340798.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P14138376884743114986

`A008683(∏{e}[n+1, A127052(#)])²`
-/

namespace A351564.P14138376884743114986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), A127052 (Nat.factorization (f1 n) p)).toNat ^ 2

end

end A351564.P14138376884743114986

namespace A351564

/-- `A008683(∏{e}[n+1, A127052(#)])²` -/
def P14138376884743114986.Spec : Prop :=
  ∀ n, P14138376884743114986.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P3614359242909753117

`C(A182860(n+1), A034444(n+1))`
-/

namespace A351564.P3614359242909753117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A182860 (n + 1)).toNat (A034444 (n + 1)).toNat

end

end A351564.P3614359242909753117

namespace A351564

/-- `C(A182860(n+1), A034444(n+1))` -/
def P3614359242909753117.Spec : Prop :=
  ∀ n, (P3614359242909753117.a n : ℤ) = A351564 (n + 1)

end A351564

/-! ## A351564.P2349385018565666870

`∑{d}[n+1, A008683(#)*A181796((n+1)/#)]`
-/

namespace A351564.P2349385018565666870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A181796 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351564.P2349385018565666870

namespace A351564

/-- `∑{d}[n+1, A008683(#)*A181796((n+1)/#)]` -/
def P2349385018565666870.Spec : Prop :=
  ∀ n, P2349385018565666870.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P9143515212955873327

`C(A327499(A327502(n+1)), A327499(n+1))`
-/

namespace A351564.P9143515212955873327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327499 (A327502 (n + 1)).toNat).toNat (A327499 (n + 1)).toNat

end

end A351564.P9143515212955873327

namespace A351564

/-- `C(A327499(A327502(n+1)), A327499(n+1))` -/
def P9143515212955873327.Spec : Prop :=
  ∀ n, (P9143515212955873327.a n : ℤ) = A351564 (n + 1)

end A351564

/-! ## A351564.P11515956283930842389

`A008966(A327499(n+1)²)`
-/

namespace A351564.P11515956283930842389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A327499 (n + 1) ^ 2).toNat

end

end A351564.P11515956283930842389

namespace A351564

/-- `A008966(A327499(n+1)²)` -/
def P11515956283930842389.Spec : Prop :=
  ∀ n, P11515956283930842389.a n = A351564 (n + 1)

end A351564

/-! ## A351564.P484326983468050262

`A000007(∏{e}[(n+1)², A020639(#)]-A182860(n+1))`
-/

namespace A351564.P484326983468050262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∏ p ∈ Nat.primeFactors (f1 n), A020639 (Nat.factorization (f1 n) p) - A182860 (n + 1)).toNat

end

end A351564.P484326983468050262

namespace A351564

/-- `A000007(∏{e}[(n+1)², A020639(#)]-A182860(n+1))` -/
def P484326983468050262.Spec : Prop :=
  ∀ n, P484326983468050262.a n = A351564 (n + 1)

end A351564

/-!
# A351565: Odd part of Kimberling's paraphrase of the binary number system: a(n) = A000265(A003602(n)).

The programs for A351565, the canonical program `A351565.P4204189420348850380` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351565 has offset 1).

The definition of A351565 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351565.P4204189420348850380

`A000265(A003602(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A351565

/-- `A000265(A003602(n+1))` -/
def P4204189420348850380.Spec : Prop :=
  ∀ n, P4204189420348850380.a n = A351565 (n + 1)

theorem P4204189420348850380.correct : P4204189420348850380.Spec := by
  intro n
  simp only [A351565, Nat.add_sub_cancel]

end A351565

/-! ## A351565.P6334321512635483101

`A000265(1+A000265(n+1))`
-/

namespace A351565.P6334321512635483101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A000265 (n + 1)).toNat

end

end A351565.P6334321512635483101

namespace A351565

/-- `A000265(1+A000265(n+1))` -/
def P6334321512635483101.Spec : Prop :=
  ∀ n, P6334321512635483101.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P15722922177314576180

`2*A110962(n)+1`
-/

namespace A351565.P15722922177314576180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110962 n + 1

end

end A351565.P15722922177314576180

namespace A351565

/-- `2*A110962(n)+1` -/
def P15722922177314576180.Spec : Prop :=
  ∀ n, P15722922177314576180.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P7007305509880761799

`A161151(or(n, n+1))`
-/

namespace A351565.P7007305509880761799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (Nat.lor n (n + 1))

end

end A351565.P7007305509880761799

namespace A351565

/-- `A161151(or(n, n+1))` -/
def P7007305509880761799.Spec : Prop :=
  ∀ n, P7007305509880761799.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P4578675158118181757

`2*A110963(n+1)-1`
-/

namespace A351565.P4578675158118181757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110963 (n + 1) - 1

end

end A351565.P4578675158118181757

namespace A351565

/-- `2*A110963(n+1)-1` -/
def P4578675158118181757.Spec : Prop :=
  ∀ n, P4578675158118181757.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P7313128804218327557

`A171435(or(n, n+1)+1)`
-/

namespace A351565.P7313128804218327557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (Nat.lor n (n + 1) + 1)

end

end A351565.P7313128804218327557

namespace A351565

/-- `A171435(or(n, n+1)+1)` -/
def P7313128804218327557.Spec : Prop :=
  ∀ n, P7313128804218327557.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P14743781695969862115

`A171435((n+1)/2^val(n+1, 2)+1)`
-/

namespace A351565.P14743781695969862115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1)).toNat

end

end A351565.P14743781695969862115

namespace A351565

/-- `A171435((n+1)/2^val(n+1, 2)+1)` -/
def P14743781695969862115.Spec : Prop :=
  ∀ n, P14743781695969862115.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P6382705628596562423

`A302044((n+1)/2^val(n+1, 2)+1)`
-/

namespace A351565.P6382705628596562423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1)).toNat

end

end A351565.P6382705628596562423

namespace A351565

/-- `A302044((n+1)/2^val(n+1, 2)+1)` -/
def P6382705628596562423.Spec : Prop :=
  ∀ n, P6382705628596562423.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P9870227915382346673

`A302044((n+1)/xor(n, or(n, n+1))+1)`
-/

namespace A351565.P9870227915382346673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ) + 1)).toNat

end

end A351565.P9870227915382346673

namespace A351565

/-- `A302044((n+1)/xor(n, or(n, n+1))+1)` -/
def P9870227915382346673.Spec : Prop :=
  ∀ n, P9870227915382346673.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P12147255215171470912

`A028234((n+1)/and(n+1, -(n+1))+1)`
-/

namespace A351565.P12147255215171470912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1)).toNat

end

end A351565.P12147255215171470912

namespace A351565

/-- `A028234((n+1)/and(n+1, -(n+1))+1)` -/
def P12147255215171470912.Spec : Prop :=
  ∀ n, P12147255215171470912.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P8200576523390141929

`A302034((n+1)/and(n+1, -(n+1))+1)`
-/

namespace A351565.P8200576523390141929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1)).toNat

end

end A351565.P8200576523390141929

namespace A351565

/-- `A302034((n+1)/and(n+1, -(n+1))+1)` -/
def P8200576523390141929.Spec : Prop :=
  ∀ n, P8200576523390141929.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P1305884890617174600

`or(1, A153733((n+1)/and(n+1, -(n+1))))`
-/

namespace A351565.P1305884890617174600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153733 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat)

end

end A351565.P1305884890617174600

namespace A351565

/-- `or(1, A153733((n+1)/and(n+1, -(n+1))))` -/
def P1305884890617174600.Spec : Prop :=
  ∀ n, P1305884890617174600.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P14287633844184679610

`A028234(2*(n+1)/(xor(n, n+1)+1)+1)`
-/

namespace A351565.P14287633844184679610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) + 1)).toNat

end

end A351565.P14287633844184679610

namespace A351565

/-- `A028234(2*(n+1)/(xor(n, n+1)+1)+1)` -/
def P14287633844184679610.Spec : Prop :=
  ∀ n, P14287633844184679610.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P16687745090082690381

`A302034(2*(n+1)/(xor(n, n+1)+1)+1)`
-/

namespace A351565.P16687745090082690381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) + 1)).toNat

end

end A351565.P16687745090082690381

namespace A351565

/-- `A302034(2*(n+1)/(xor(n, n+1)+1)+1)` -/
def P16687745090082690381.Spec : Prop :=
  ∀ n, P16687745090082690381.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P4085539364529878614

`or(1, A153733(2*(n+1)/(xor(n, n+1)+1)))`
-/

namespace A351565.P4085539364529878614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153733 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat)

end

end A351565.P4085539364529878614

namespace A351565

/-- `or(1, A153733(2*(n+1)/(xor(n, n+1)+1)))` -/
def P4085539364529878614.Spec : Prop :=
  ∀ n, P4085539364529878614.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P2237380301914486040

`A000265(A025480(n)+1)`
-/

namespace A351565.P2237380301914486040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A025480 n + 1).toNat

end

end A351565.P2237380301914486040

namespace A351565

/-- `A000265(A025480(n)+1)` -/
def P2237380301914486040.Spec : Prop :=
  ∀ n, P2237380301914486040.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P4814570591766309960

`A086767(A000265(n+1))`
-/

namespace A351565.P4814570591766309960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 (A000265 (n + 1)).toNat

end

end A351565.P4814570591766309960

namespace A351565

/-- `A086767(A000265(n+1))` -/
def P4814570591766309960.Spec : Prop :=
  ∀ n, P4814570591766309960.a n = A351565 (n + 1)

end A351565

/-! ## A351565.P394118866659044376

`A000265(A109168(n+1))`
-/

namespace A351565.P394118866659044376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A109168 (n + 1)).toNat

end

end A351565.P394118866659044376

namespace A351565

/-- `A000265(A109168(n+1))` -/
def P394118866659044376.Spec : Prop :=
  ∀ n, P394118866659044376.a n = A351565 (n + 1)

end A351565

/-!
# A351566: Radix of the second least significant nonzero digit in the primorial base expansion of n, or 1 if there is no such digit.

The programs for A351566, there is no canonical definition to state claims against.
-/

/-! ## A351566.P8477974116380664648

`A119288(A276086(n))`
-/

namespace A351566.P8477974116380664648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A276086 n).toNat

end

end A351566.P8477974116380664648

/-! ## A351566.P3150432111048939541

`A014673(A328571(n))`
-/

namespace A351566.P3150432111048939541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A328571 n).toNat

end

end A351566.P3150432111048939541

/-! ## A351566.P18151918936378934937

`A119288(A328571(n)%C(n+4, 3))`
-/

namespace A351566.P18151918936378934937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (Int.tmod (A328571 n) (Nat.choose (n + 4) 3 : ℤ)).toNat

end

end A351566.P18151918936378934937

/-! ## A351566.P9426427998625405467

`A119288(A328571(A000007(n)+n))`
-/

namespace A351566.P9426427998625405467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A328571 (A000007 n + (n : ℤ)).toNat).toNat

end

end A351566.P9426427998625405467

/-! ## A351566.P15780052637760996850

`A014673(A276086(n)/A328572(n))`
-/

namespace A351566.P15780052637760996850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat

end

end A351566.P15780052637760996850

/-! ## A351566.P8442096027275897655

`A119288(A328571(n))%A001952(n+1)`
-/

namespace A351566.P8442096027275897655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119288 (A328571 n).toNat) (A001952 (n + 1))

end

end A351566.P8442096027275897655

/-! ## A351566.P14752654882486793362

`A119288(A328571(n)%(16*A002299(n)))`
-/

namespace A351566.P14752654882486793362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (Int.tmod (A328571 n) (16 * A002299 n)).toNat

end

end A351566.P14752654882486793362

/-! ## A351566.P9146118198345822688

`A119288(A000034(n)*A328571(n))`
-/

namespace A351566.P9146118198345822688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A000034 n * A328571 n).toNat

end

end A351566.P9146118198345822688

/-! ## A351566.P3909819442971847206

`A020639(A392858(n))`
-/

namespace A351566.P3909819442971847206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A392858 n).toNat

end

end A351566.P3909819442971847206

/-!
# A351567: The second least significant nonzero digit in the primorial base expansion of n, or 0 if there is no such digit.

The programs for A351567, there is no canonical definition to state claims against.
-/

/-! ## A351567.P8907787081027038340

`A351563(A276086(n))`
-/

namespace A351567.P8907787081027038340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351563 (A276086 n).toNat

end

end A351567.P8907787081027038340

/-! ## A351567.P5894631829091522209

`A276088(A276093(n))`
-/

namespace A351567.P5894631829091522209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A276093 n).toNat

end

end A351567.P5894631829091522209

/-! ## A351567.P8733698768600872052

`A276088(n-A276094(n))`
-/

namespace A351567.P8733698768600872052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 ((n : ℤ) - A276094 n).toNat

end

end A351567.P8733698768600872052

/-! ## A351567.P9767057749626892364

`A343404(n)%A351566(n)`
-/

namespace A351567.P9767057749626892364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343404 n) (A351566 n)

end

end A351567.P9767057749626892364

/-! ## A351567.P13518849767818856501

`A328114(A276094(n-A276094(n)))`
-/

namespace A351567.P13518849767818856501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A276094 ((n : ℤ) - A276094 n).toNat).toNat

end

end A351567.P13518849767818856501

/-! ## A351567.P8426848865889127827

`A343404(A028310(n))%A014673(A328571(n))`
-/

namespace A351567.P8426848865889127827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343404 (A028310 n).toNat) (A014673 (A328571 n).toNat)

end

end A351567.P8426848865889127827

/-! ## A351567.P6973882917963307253

`A343404(A276093(n))%A014673(A328571(n))`
-/

namespace A351567.P6973882917963307253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343404 (A276093 n).toNat) (A014673 (A328571 n).toNat)

end

end A351567.P6973882917963307253

/-! ## A351567.P13878957713938090029

`A089310(A277022(n))`
-/

namespace A351567.P13878957713938090029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A277022 n).toNat

end

end A351567.P13878957713938090029

/-! ## A351567.P15410765178980005571

`A067029(A392858(n))`
-/

namespace A351567.P15410765178980005571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A392858 n).toNat

end

end A351567.P15410765178980005571

/-!
# A351568: Sum of the divisors of the largest unitary divisor of n that is a square.

The programs for A351568, the canonical program `A351568.P13453391376652961444` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351568 has offset 1).

The definition of A351568 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351568.P13453391376652961444

`A000203(A350388(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A351568

/-- `A000203(A350388(n+1))` -/
def P13453391376652961444.Spec : Prop :=
  ∀ n, P13453391376652961444.a n = A351568 (n + 1)

theorem P13453391376652961444.correct : P13453391376652961444.Spec := by
  intro n
  simp only [A351568, Nat.add_sub_cancel]

end A351568

/-! ## A351568.P7951893920858835108

`A000203(n+1)/A351569(n+1)`
-/

namespace A351568.P7951893920858835108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351569 (n + 1) : ℚ)

end

end A351568.P7951893920858835108

namespace A351568

/-- `A000203(n+1)/A351569(n+1)` -/
def P7951893920858835108.Spec : Prop :=
  ∀ n, P7951893920858835108.a n = (A351568 (n + 1) : ℚ)

end A351568

/-! ## A351568.P11653445889391272157

`∑{d}[A071974(n+1)², #]`
-/

namespace A351568.P11653445889391272157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A351568.P11653445889391272157

namespace A351568

/-- `∑{d}[A071974(n+1)², #]` -/
def P11653445889391272157.Spec : Prop :=
  ∀ n, (P11653445889391272157.a n : ℤ) = A351568 (n + 1)

end A351568

/-! ## A351568.P2153926190666902587

`A065764(A071974(n+1))`
-/

namespace A351568.P2153926190666902587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (A071974 (n + 1)).toNat

end

end A351568.P2153926190666902587

namespace A351568

/-- `A065764(A071974(n+1))` -/
def P2153926190666902587.Spec : Prop :=
  ∀ n, P2153926190666902587.a n = A351568 (n + 1)

end A351568

/-! ## A351568.P2477036056810648878

`A000203(A071974(n+1)²)`
-/

namespace A351568.P2477036056810648878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A071974 (n + 1) ^ 2).toNat

end

end A351568.P2477036056810648878

namespace A351568

/-- `A000203(A071974(n+1)²)` -/
def P2477036056810648878.Spec : Prop :=
  ∀ n, P2477036056810648878.a n = A351568 (n + 1)

end A351568

/-! ## A351568.P5495048712880173689

`A074400(A071974(n+1)²)/2`
-/

namespace A351568.P5495048712880173689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (A071974 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A351568.P5495048712880173689

namespace A351568

/-- `A074400(A071974(n+1)²)/2` -/
def P5495048712880173689.Spec : Prop :=
  ∀ n, P5495048712880173689.a n = (A351568 (n + 1) : ℚ)

end A351568

/-! ## A351568.P11758724303697005026

`A000203((n+1)/A350389(n+1))`
-/

namespace A351568.P11758724303697005026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A351568.P11758724303697005026

namespace A351568

/-- `A000203((n+1)/A350389(n+1))` -/
def P11758724303697005026.Spec : Prop :=
  ∀ n, P11758724303697005026.a n = A351568 (n + 1)

end A351568

/-! ## A351568.P8596420107464067890

`A000203(A071974(n+1)*A071974(n+1))`
-/

namespace A351568.P8596420107464067890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A071974 (n + 1) * A071974 (n + 1)).toNat

end

end A351568.P8596420107464067890

namespace A351568

/-- `A000203(A071974(n+1)*A071974(n+1))` -/
def P8596420107464067890.Spec : Prop :=
  ∀ n, P8596420107464067890.a n = A351568 (n + 1)

end A351568

/-! ## A351568.P2421936726342705611

`A069290(A350388(n+1)²)`
-/

namespace A351568.P2421936726342705611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A350388 (n + 1) ^ 2).toNat

end

end A351568.P2421936726342705611

namespace A351568

/-- `A069290(A350388(n+1)²)` -/
def P2421936726342705611.Spec : Prop :=
  ∀ n, P2421936726342705611.a n = A351568 (n + 1)

end A351568

/-! ## A351568.P16780854910340500410

`A367988(A350388(n+1)²)`
-/

namespace A351568.P16780854910340500410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367988 (A350388 (n + 1) ^ 2).toNat

end

end A351568.P16780854910340500410

namespace A351568

/-- `A367988(A350388(n+1)²)` -/
def P16780854910340500410.Spec : Prop :=
  ∀ n, P16780854910340500410.a n = A351568 (n + 1)

end A351568

/-! ## A351568.P5249353055064818356

`A367988(A071974(n+1)²²)`
-/

namespace A351568.P5249353055064818356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367988 ((A071974 (n + 1) ^ 2) ^ 2).toNat

end

end A351568.P5249353055064818356

namespace A351568

/-- `A367988(A071974(n+1)²²)` -/
def P5249353055064818356.Spec : Prop :=
  ∀ n, P5249353055064818356.a n = A351568 (n + 1)

end A351568

/-! ## A351568.P1069692681203343255

`A367988((n+1)*A350388(n+1))`
-/

namespace A351568.P1069692681203343255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367988 ((n + 1 : ℤ) * A350388 (n + 1)).toNat

end

end A351568.P1069692681203343255

namespace A351568

/-- `A367988((n+1)*A350388(n+1))` -/
def P1069692681203343255.Spec : Prop :=
  ∀ n, P1069692681203343255.a n = A351568 (n + 1)

end A351568

/-!
# A351569: Sum of divisors of the largest unitary divisor of n that is an exponentially odd number.

The programs for A351569, the canonical program `A351569.P8738686612960089184` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351569 has offset 1).

The definition of A351569 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351569.P2382356562314030904

`A000203(A350389(n+1))`
-/

namespace A351569.P2382356562314030904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A350389 (n + 1)).toNat

end

end A351569.P2382356562314030904

namespace A351569

/-- `A000203(A350389(n+1))` -/
def P2382356562314030904.Spec : Prop :=
  ∀ n, P2382356562314030904.a n = A351569 (n + 1)

end A351569

/-! ## A351569.P8738686612960089184

`A000203(n+1)/A351568(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A351569

/-- `A000203(n+1)/A351568(n+1)` -/
def P8738686612960089184.Spec : Prop :=
  ∀ n, P8738686612960089184.a n = (A351569 (n + 1) : ℚ)

end A351569

/-! ## A351569.P1363571317231038670

`∑{d}[A102631(A071975(n+1)), #]`
-/

namespace A351569.P1363571317231038670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A071975 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A351569.P1363571317231038670

namespace A351569

/-- `∑{d}[A102631(A071975(n+1)), #]` -/
def P1363571317231038670.Spec : Prop :=
  ∀ n, (P1363571317231038670.a n : ℤ) = A351569 (n + 1)

end A351569

/-! ## A351569.P15226850814782039753

`A000203((n+1)/A350388(n+1))`
-/

namespace A351569.P15226850814782039753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A351569.P15226850814782039753

namespace A351569

/-- `A000203((n+1)/A350388(n+1))` -/
def P15226850814782039753.Spec : Prop :=
  ∀ n, P15226850814782039753.a n = A351569 (n + 1)

end A351569

/-! ## A351569.P16527660768641472103

`A000203((n+1)/A071974(n+1)²)`
-/

namespace A351569.P16527660768641472103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A071974 (n + 1) ^ 2 : ℚ))).toNat

end

end A351569.P16527660768641472103

namespace A351569

/-- `A000203((n+1)/A071974(n+1)²)` -/
def P16527660768641472103.Spec : Prop :=
  ∀ n, P16527660768641472103.a n = A351569 (n + 1)

end A351569

/-! ## A351569.P14656372102234862657

`A326126(A350389(n+1))+A007913(n+1)`
-/

namespace A351569.P14656372102234862657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (A350389 (n + 1)).toNat + A007913 (n + 1)

end

end A351569.P14656372102234862657

namespace A351569

/-- `A326126(A350389(n+1))+A007913(n+1)` -/
def P14656372102234862657.Spec : Prop :=
  ∀ n, P14656372102234862657.a n = A351569 (n + 1)

end A351569

/-! ## A351569.P9585338399651763002

`A074400(n+1)/A074400(A071974(n+1)²)`
-/

namespace A351569.P9585338399651763002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (A074400 (A071974 (n + 1) ^ 2).toNat : ℚ)

end

end A351569.P9585338399651763002

namespace A351569

/-- `A074400(n+1)/A074400(A071974(n+1)²)` -/
def P9585338399651763002.Spec : Prop :=
  ∀ n, P9585338399651763002.a n = (A351569 (n + 1) : ℚ)

end A351569

/-! ## A351569.P4605304847531784149

`gcd(A188999(n+1), A245093(∑[n+1]))`
-/

namespace A351569.P4605304847531784149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188999 (n + 1)) (A245093 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A351569.P4605304847531784149

namespace A351569

/-- `gcd(A188999(n+1), A245093(∑[n+1]))` -/
def P4605304847531784149.Spec : Prop :=
  ∀ n, (P4605304847531784149.a n : ℤ) = A351569 (n + 1)

end A351569

/-! ## A351569.P13258036634695860173

`∑{d}[A350390(A071975(n+1)²), #]`
-/

namespace A351569.P13258036634695860173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (A071975 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A351569.P13258036634695860173

namespace A351569

/-- `∑{d}[A350390(A071975(n+1)²), #]` -/
def P13258036634695860173.Spec : Prop :=
  ∀ n, (P13258036634695860173.a n : ℤ) = A351569 (n + 1)

end A351569

/-!
# A351570: Arithmetic derivative of the sum of the divisors of the largest unitary divisor of n that is a square.

The programs for A351570, the canonical program `A351570.P16087539898957203616` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351570 has offset 1).

The definition of A351570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A351568, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351570.P13460078856489678415

`A342925(A350388(n+1))`
-/

namespace A351570.P13460078856489678415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (A350388 (n + 1)).toNat

end

end A351570.P13460078856489678415

namespace A351570

/-- `A342925(A350388(n+1))` -/
def P13460078856489678415.Spec : Prop :=
  ∀ n, P13460078856489678415.a n = A351570 (n + 1)

end A351570

/-! ## A351570.P16087539898957203616

`A003415(A351568(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A351570

/-- `A003415(A351568(n+1))` -/
def P16087539898957203616.Spec : Prop :=
  ∀ n, P16087539898957203616.a n = A351570 (n + 1)

theorem P16087539898957203616.correct : P16087539898957203616.Spec := by
  intro n
  simp only [A351570, Nat.add_sub_cancel]

end A351570

/-! ## A351570.P6083103273555262161

`A342925(A071974(n+1)²)`
-/

namespace A351570.P6083103273555262161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (A071974 (n + 1) ^ 2).toNat

end

end A351570.P6083103273555262161

namespace A351570

/-- `A342925(A071974(n+1)²)` -/
def P6083103273555262161.Spec : Prop :=
  ∀ n, P6083103273555262161.a n = A351570 (n + 1)

end A351570

/-! ## A351570.P17109253263294397132

`A342925(A071974(n+1)^2)`
-/

namespace A351570.P17109253263294397132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (A071974 (n + 1) ^ 2).toNat

end

end A351570.P17109253263294397132

namespace A351570

/-- `A342925(A071974(n+1)^2)` -/
def P17109253263294397132.Spec : Prop :=
  ∀ n, P17109253263294397132.a n = A351570 (n + 1)

end A351570

/-! ## A351570.P2316392061507355675

`A342925((n+1)/A350389(n+1))`
-/

namespace A351570.P2316392061507355675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A351570.P2316392061507355675

namespace A351570

/-- `A342925((n+1)/A350389(n+1))` -/
def P2316392061507355675.Spec : Prop :=
  ∀ n, P2316392061507355675.a n = A351570 (n + 1)

end A351570

/-! ## A351570.P1923818335924676584

`A342925(A071974(n+1)*A071974(n+1))`
-/

namespace A351570.P1923818335924676584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (A071974 (n + 1) * A071974 (n + 1)).toNat

end

end A351570.P1923818335924676584

namespace A351570

/-- `A342925(A071974(n+1)*A071974(n+1))` -/
def P1923818335924676584.Spec : Prop :=
  ∀ n, P1923818335924676584.a n = A351570 (n + 1)

end A351570

/-! ## A351570.P15882821809120958051

`A319703(2*A351568(n+1))`
-/

namespace A351570.P15882821809120958051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A351568 (n + 1)).toNat

end

end A351570.P15882821809120958051

namespace A351570

/-- `A319703(2*A351568(n+1))` -/
def P15882821809120958051.Spec : Prop :=
  ∀ n, P15882821809120958051.a n = A351570 (n + 1)

end A351570

/-! ## A351570.P7879031785166276802

`A003415(∑{d}[A350388(n+1), #])`
-/

namespace A351570.P7879031785166276802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A351570.P7879031785166276802

namespace A351570

/-- `A003415(∑{d}[A350388(n+1), #])` -/
def P7879031785166276802.Spec : Prop :=
  ∀ n, P7879031785166276802.a n = A351570 (n + 1)

end A351570

/-!
# A351571: Arithmetic derivative of the sum of the divisors of the largest unitary divisor of n that is an exponentially odd number.

The programs for A351571, the canonical program `A351571.P11125740512606955591` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351571 has offset 1).

The definition of A351571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A351569, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351571.P10182256772026061328

`A342925(A350389(n+1))`
-/

namespace A351571.P10182256772026061328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (A350389 (n + 1)).toNat

end

end A351571.P10182256772026061328

namespace A351571

/-- `A342925(A350389(n+1))` -/
def P10182256772026061328.Spec : Prop :=
  ∀ n, P10182256772026061328.a n = A351571 (n + 1)

end A351571

/-! ## A351571.P11125740512606955591

`A003415(A351569(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A351571

/-- `A003415(A351569(n+1))` -/
def P11125740512606955591.Spec : Prop :=
  ∀ n, P11125740512606955591.a n = A351571 (n + 1)

theorem P11125740512606955591.correct : P11125740512606955591.Spec := by
  intro n
  simp only [A351571, Nat.add_sub_cancel]

end A351571

/-! ## A351571.P5757308390999635025

`∑{d}[A351569(n+1), A300251(#)]`
-/

namespace A351571.P5757308390999635025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A351571.P5757308390999635025

namespace A351571

/-- `∑{d}[A351569(n+1), A300251(#)]` -/
def P5757308390999635025.Spec : Prop :=
  ∀ n, P5757308390999635025.a n = A351571 (n + 1)

end A351571

/-! ## A351571.P61028099661047446

`A342925((n+1)/A350388(n+1))`
-/

namespace A351571.P61028099661047446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A351571.P61028099661047446

namespace A351571

/-- `A342925((n+1)/A350388(n+1))` -/
def P61028099661047446.Spec : Prop :=
  ∀ n, P61028099661047446.a n = A351571 (n + 1)

end A351571

/-! ## A351571.P4013036628201030003

`∑{d}[∑{d}[A350389(n+1), #], A300251(#)]`
-/

namespace A351571.P4013036628201030003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A351571.P4013036628201030003

namespace A351571

/-- `∑{d}[∑{d}[A350389(n+1), #], A300251(#)]` -/
def P4013036628201030003.Spec : Prop :=
  ∀ n, P4013036628201030003.a n = A351571 (n + 1)

end A351571

/-! ## A351571.P17326980504455482664

`A003415(∑{d}[A350389(n+1), #])`
-/

namespace A351571.P17326980504455482664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A351571.P17326980504455482664

namespace A351571

/-- `A003415(∑{d}[A350389(n+1), #])` -/
def P17326980504455482664.Spec : Prop :=
  ∀ n, P17326980504455482664.a n = A351571 (n + 1)

end A351571

/-! ## A351571.P2069387537182398503

`A319703(2*A351569(n+1))`
-/

namespace A351571.P2069387537182398503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A351569 (n + 1)).toNat

end

end A351571.P2069387537182398503

namespace A351571

/-- `A319703(2*A351569(n+1))` -/
def P2069387537182398503.Spec : Prop :=
  ∀ n, P2069387537182398503.a n = A351571 (n + 1)

end A351571

/-!
# A351572: Arithmetic derivative of the largest unitary divisor of n that is a square.

The programs for A351572, the canonical program `A351572.P4940805872886659141` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351572 has offset 1).

The definition of A351572 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351572.P4940805872886659141

`A003415(A350388(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A351572

/-- `A003415(A350388(n+1))` -/
def P4940805872886659141.Spec : Prop :=
  ∀ n, P4940805872886659141.a n = A351572 (n + 1)

theorem P4940805872886659141.correct : P4940805872886659141.Spec := by
  intro n
  simp only [A351572, Nat.add_sub_cancel]

end A351572

/-! ## A351572.P8102314979302799909

`A068720(A071974(n+1))`
-/

namespace A351572.P8102314979302799909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068720 (A071974 (n + 1)).toNat

end

end A351572.P8102314979302799909

namespace A351572

/-- `A068720(A071974(n+1))` -/
def P8102314979302799909.Spec : Prop :=
  ∀ n, P8102314979302799909.a n = A351572 (n + 1)

end A351572

/-! ## A351572.P11250286132724281828

`A003415(A071974(n+1)²)`
-/

namespace A351572.P11250286132724281828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A071974 (n + 1) ^ 2).toNat

end

end A351572.P11250286132724281828

namespace A351572

/-- `A003415(A071974(n+1)²)` -/
def P11250286132724281828.Spec : Prop :=
  ∀ n, P11250286132724281828.a n = A351572 (n + 1)

end A351572

/-! ## A351572.P12532803951239367331

`A003415((n+1)/A350389(n+1))`
-/

namespace A351572.P12532803951239367331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A351572.P12532803951239367331

namespace A351572

/-- `A003415((n+1)/A350389(n+1))` -/
def P12532803951239367331.Spec : Prop :=
  ∀ n, P12532803951239367331.a n = A351572 (n + 1)

end A351572

/-! ## A351572.P12979979533613473917

`A003415(A071974(n+1)*A071974(n+1))`
-/

namespace A351572.P12979979533613473917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A071974 (n + 1) * A071974 (n + 1)).toNat

end

end A351572.P12979979533613473917

namespace A351572

/-- `A003415(A071974(n+1)*A071974(n+1))` -/
def P12979979533613473917.Spec : Prop :=
  ∀ n, P12979979533613473917.a n = A351572 (n + 1)

end A351572

/-! ## A351572.P4600543339295537082

`A319703(2*A071974(n+1)²)`
-/

namespace A351572.P4600543339295537082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A071974 (n + 1) ^ 2).toNat

end

end A351572.P4600543339295537082

namespace A351572

/-- `A319703(2*A071974(n+1)²)` -/
def P4600543339295537082.Spec : Prop :=
  ∀ n, P4600543339295537082.a n = A351572 (n + 1)

end A351572

/-! ## A351572.P2258037963115016715

`A319703(2*A071974(n+1)*A071974(n+1))`
-/

namespace A351572.P2258037963115016715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A071974 (n + 1) * A071974 (n + 1)).toNat

end

end A351572.P2258037963115016715

namespace A351572

/-- `A319703(2*A071974(n+1)*A071974(n+1))` -/
def P2258037963115016715.Spec : Prop :=
  ∀ n, P2258037963115016715.a n = A351572 (n + 1)

end A351572

/-!
# A351573: Arithmetic derivative of the largest unitary divisor of n that is an exponentially odd number.

The programs for A351573, the canonical program `A351573.P12299179014479245270` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351573 has offset 1).

The definition of A351573 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351573.P12299179014479245270

`A003415(A350389(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A351573

/-- `A003415(A350389(n+1))` -/
def P12299179014479245270.Spec : Prop :=
  ∀ n, P12299179014479245270.a n = A351573 (n + 1)

theorem P12299179014479245270.correct : P12299179014479245270.Spec := by
  intro n
  simp only [A351573, Nat.add_sub_cancel]

end A351573

/-! ## A351573.P7685685861928113178

`∑{d}[A350389(n+1), A300251(#)]`
-/

namespace A351573.P7685685861928113178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A351573.P7685685861928113178

namespace A351573

/-- `∑{d}[A350389(n+1), A300251(#)]` -/
def P7685685861928113178.Spec : Prop :=
  ∀ n, P7685685861928113178.a n = A351573 (n + 1)

end A351573

/-! ## A351573.P411224990696034746

`A003415((n+1)/A350388(n+1))`
-/

namespace A351573.P411224990696034746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A351573.P411224990696034746

namespace A351573

/-- `A003415((n+1)/A350388(n+1))` -/
def P411224990696034746.Spec : Prop :=
  ∀ n, P411224990696034746.a n = A351573 (n + 1)

end A351573

/-! ## A351573.P5517665964334958858

`A319703(2*A350389(n+1))`
-/

namespace A351573.P5517665964334958858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A350389 (n + 1)).toNat

end

end A351573.P5517665964334958858

namespace A351573

/-- `A319703(2*A350389(n+1))` -/
def P5517665964334958858.Spec : Prop :=
  ∀ n, P5517665964334958858.a n = A351573 (n + 1)

end A351573

/-! ## A351573.P11579066093626087818

`A319703(2*(n+1)/A071974(n+1)²)`
-/

namespace A351573.P11579066093626087818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / (A071974 (n + 1) ^ 2 : ℚ)))).toNat

end

end A351573.P11579066093626087818

namespace A351573

/-- `A319703(2*(n+1)/A071974(n+1)²)` -/
def P11579066093626087818.Spec : Prop :=
  ∀ n, P11579066093626087818.a n = A351573 (n + 1)

end A351573

/-!
# A351574: Terms of A228058 missing from A347874.

The programs for A351574, there is no canonical definition to state claims against.
-/

/-! ## A351574.P13083750119721275935

`A228058(∑[A252229(5^n)])`
-/

namespace A351574.P13083750119721275935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 (5 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351574.P13083750119721275935

/-!
# A351575: Positions of primes in A351568.

The programs for A351575, the canonical program `A351575.P6993377615906811371` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351575 has offset 1).

The definition of A351575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351575.P6993377615906811371

`eq[1, A351570(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A351575

/-- `eq[1, A351570(n+1)]+1` -/
def P6993377615906811371.Spec : Prop :=
  ∀ n, (P6993377615906811371.a n : ℤ) = A351575 (n + 1)

theorem P6993377615906811371.correct : P6993377615906811371.Spec := by
  intro n
  simp only [A351575, Nat.add_sub_cancel]

end A351575

/-! ## A351575.P1209456238062239025

`eq[1, A351570(n^floor(atan(n)))]`
-/

namespace A351575.P1209456238062239025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351575.P1209456238062239025

namespace A351575

/-- `eq[1, A351570(n^floor(atan(n)))]` -/
def P1209456238062239025.Spec : Prop :=
  ∀ n, (P1209456238062239025.a n : ℤ) = A351575 (n + 1)

end A351575

/-! ## A351575.P13839996540969189240

`eq[1, A351570(A028310(n))]`
-/

namespace A351575.P13839996540969189240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351575.P13839996540969189240

namespace A351575

/-- `eq[1, A351570(A028310(n))]` -/
def P13839996540969189240.Spec : Prop :=
  ∀ n, (P13839996540969189240.a n : ℤ) = A351575 (n + 1)

end A351575

/-! ## A351575.P6719401392742955880

`A020725(eq[1, A351570(n+1)])`
-/

namespace A351575.P6719401392742955880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351575.P6719401392742955880

namespace A351575

/-- `A020725(eq[1, A351570(n+1)])` -/
def P6719401392742955880.Spec : Prop :=
  ∀ n, P6719401392742955880.a n = A351575 (n + 1)

end A351575

/-! ## A351575.P17035009074154725480

`A061767(eq[1, A351570(n+1)])`
-/

namespace A351575.P17035009074154725480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351575.P17035009074154725480

namespace A351575

/-- `A061767(eq[1, A351570(n+1)])` -/
def P17035009074154725480.Spec : Prop :=
  ∀ n, P17035009074154725480.a n = A351575 (n + 1)

end A351575

/-! ## A351575.P10767515042983196553

`A065475(eq[1, A351570(n+1)])`
-/

namespace A351575.P10767515042983196553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351575.P10767515042983196553

namespace A351575

/-- `A065475(eq[1, A351570(n+1)])` -/
def P10767515042983196553.Spec : Prop :=
  ∀ n, P10767515042983196553.a n = A351575 (n + 1)

end A351575

/-! ## A351575.P13524943791961990524

`eq[1, A351570(A065033(2*n))]`
-/

namespace A351575.P13524943791961990524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351575.P13524943791961990524

namespace A351575

/-- `eq[1, A351570(A065033(2*n))]` -/
def P13524943791961990524.Spec : Prop :=
  ∀ n, (P13524943791961990524.a n : ℤ) = A351575 (n + 1)

end A351575

/-! ## A351575.P620071732797998642

`eq[1, A351570(A123108(2*n))]`
-/

namespace A351575.P620071732797998642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351575.P620071732797998642

namespace A351575

/-- `eq[1, A351570(A123108(2*n))]` -/
def P620071732797998642.Spec : Prop :=
  ∀ n, (P620071732797998642.a n : ℤ) = A351575 (n + 1)

end A351575

/-! ## A351575.P15595150432035548638

`eq[1, A351570(A233583(n+1))]`
-/

namespace A351575.P15595150432035548638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351575.P15595150432035548638

namespace A351575

/-- `eq[1, A351570(A233583(n+1))]` -/
def P15595150432035548638.Spec : Prop :=
  ∀ n, (P15595150432035548638.a n : ℤ) = A351575 (n + 1)

end A351575

/-!
# A351576: Factorial base expansion of n reinterpreted as a primorial base expansion, then converted back to decimal.

The programs for A351576, there is no canonical definition to state claims against.
-/

/-! ## A351576.P4484530906469466773

`A277021(A277012(n))`
-/

namespace A351576.P4484530906469466773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A277012 n).toNat

end

end A351576.P4484530906469466773

/-! ## A351576.P7127146468763768965

`eq[0, A318673(A328572(n))]`
-/

namespace A351576.P7127146468763768965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318673 (A328572 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351576.P7127146468763768965

/-! ## A351576.P939194661891291444

`lt[A005604(A328114(n)), 6]`
-/

namespace A351576.P939194661891291444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005604 (A328114 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351576.P939194661891291444

/-! ## A351576.P7209174186395422840

`A018851(A370133(n+1)²)`
-/

namespace A351576.P7209174186395422840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A370133 (n + 1) ^ 2).toNat

end

end A351576.P7209174186395422840

/-! ## A351576.P8974327727895933578

`lt[A060496(n)², A235640(n+1)]`
-/

namespace A351576.P8974327727895933578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060496 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351576.P8974327727895933578

/-! ## A351576.P12556666932464829109

`eq[A049345(n), A132387(A049345(n))]`
-/

namespace A351576.P12556666932464829109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132387 (A049345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351576.P12556666932464829109

/-! ## A351576.P5196008360113630344

`lt[A141417(A328114(n)), A194883(n)]`
-/

namespace A351576.P5196008360113630344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141417 (A328114 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351576.P5196008360113630344

/-! ## A351576.P4071211741969315180

`lt[A284673(A328114(n)), A301676(n)]`
-/

namespace A351576.P4071211741969315180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284673 (A328114 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351576.P4071211741969315180

/-! ## A351576.P12492237005747399815

`A370133(n+1)+A000007(A008288(n))`
-/

namespace A351576.P12492237005747399815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370133 (n + 1) + A000007 (A008288 n).toNat

end

end A351576.P12492237005747399815

/-! ## A351576.P15088239827227206628

`lt[A126300(A328114(n)), A001567(n+1)]`
-/

namespace A351576.P15088239827227206628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126300 (A328114 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351576.P15088239827227206628

/-!
# A351577: a(n) = A003557(A276076(n)).

The programs for A351577, there is no canonical definition to state claims against.
-/

/-! ## A351577.P14420790935407346474

`A276076(A276009(n))`
-/

namespace A351577.P14420790935407346474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (A276009 n).toNat

end

end A351577.P14420790935407346474

/-! ## A351577.P3724087094917211032

`A328572(A351576(n))`
-/

namespace A351577.P3724087094917211032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 (A351576 n).toNat

end

end A351577.P3724087094917211032

/-! ## A351577.P6853232632033547697

`A003557(A276076(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351577.P6853232632033547697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A276076 n).toNat

end

end A351577.P6853232632033547697

/-! ## A351577.P11815138836550868170

`A276076(n-A276008(n))`
-/

namespace A351577.P11815138836550868170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 ((n : ℤ) - A276008 n).toNat

end

end A351577.P11815138836550868170

/-! ## A351577.P16258051225337434197

`A276076(n-A059590(A275727(n)))`
-/

namespace A351577.P16258051225337434197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 ((n : ℤ) - A059590 (A275727 n).toNat).toNat

end

end A351577.P16258051225337434197

/-! ## A351577.P16859539135170146001

`A276076(n)/A275733(n)`
-/

namespace A351577.P16859539135170146001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276076 n : ℚ) / (A275733 n : ℚ)

end

end A351577.P16859539135170146001

/-! ## A351577.P17449961924467068078

`gcd(A276076(n), A351950(n))`
-/

namespace A351577.P17449961924467068078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276076 n) (A351950 n)

end

end A351577.P17449961924467068078

/-! ## A351577.P15753793591908455415

`filter[A328572(n), A212793(#)]`
-/

namespace A351577.P15753793591908455415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A351577.P15753793591908455415

/-! ## A351577.P9726503137004968175

`filter[A328572(n), A355823(#)]`
-/

namespace A351577.P9726503137004968175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A351577.P9726503137004968175

/-! ## A351577.P346029299773438167

`filter[A328572(n), A355825(#)]`
-/

namespace A351577.P346029299773438167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A351577.P346029299773438167

/-!
# A351580: a(n) is the number of multisets of size n-1 consisting of permutations of n elements.

The programs for A351580, there is no canonical definition to state claims against.
-/

/-! ## A351580.P8574003106683381522

`(n+1)*A344690(n+1)/A030495(n)`
-/

namespace A351580.P8574003106683381522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A344690 (n + 1) : ℚ) / (A030495 n : ℚ)

end

end A351580.P8574003106683381522

/-! ## A351580.P2300655684061538486

`C((n+1)!-1+n, n)`
-/

namespace A351580.P2300655684061538486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.factorial (n + 1) : ℤ) - 1 + (n : ℤ)).toNat n

end

end A351580.P2300655684061538486

/-! ## A351580.P10863321376885318297

`C(∏[n+1]+n-1, n)`
-/

namespace A351580.P10863321376885318297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat n

end

end A351580.P10863321376885318297

/-!
# A351587: Number of minimal edge covers in the n-cycle complement graph.

The programs for A351587, there is no canonical definition to state claims against.
-/

/-! ## A351587.P18246110633778342408

`Δ[A061008(A245685(n!))]`
-/

namespace A351587.P18246110633778342408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (A245685 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351587.P18246110633778342408

/-! ## A351587.P8892897455457358493

`A008619(A063585(a(n-1)))` with `a(0)=0`
-/

namespace A351587.P8892897455457358493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008619 (A063585 (a (n - 1)).toNat).toNat

end

end A351587.P8892897455457358493

/-!
# A351588: Number of minimal edge covers in the n-path complement graph.

The programs for A351588, there is no canonical definition to state claims against.
-/

/-! ## A351588.P2202948898939904041

`A238098(A198304(n))`
-/

namespace A351588.P2202948898939904041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238098 (A198304 n).toNat

end

end A351588.P2202948898939904041

/-! ## A351588.P15845192878129889205

`A238098(A372375(n))`
-/

namespace A351588.P15845192878129889205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238098 (A372375 n).toNat

end

end A351588.P15845192878129889205

/-! ## A351588.P10313902334159137200

`A070099(A178594(n+1))`
-/

namespace A351588.P10313902334159137200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070099 (A178594 (n + 1)).toNat

end

end A351588.P10313902334159137200

/-!
# A351591: Number of minimal edge coverings of the n-triangular honeycomb acute knight graph.

The programs for A351591, there is no canonical definition to state claims against.
-/

/-! ## A351591.P4981130670127946924

`floor(A291474(n^n)^(n-2))`
-/

namespace A351591.P4981130670127946924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A291474 (n ^ n) : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A351591.P4981130670127946924

/-! ## A351591.P3750122147269513631

`A130481(A135501(n)^3)`
-/

namespace A351591.P3750122147269513631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A135501 n ^ 3).toNat

end

end A351591.P3750122147269513631

/-!
# A351592: Number of Look-and-Say partitions (A239455) of n without distinct multiplicities, i.e., those that are not Wilf partitions (A098859).

The programs for A351592, there is no canonical definition to state claims against.
-/

/-! ## A351592.P10294758894589823754

`A239455(n)%A098859(n)`
-/

namespace A351592.P10294758894589823754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239455 n) (A098859 n)

end

end A351592.P10294758894589823754

/-! ## A351592.P13896551332922946076

`A336866(n)-A351293(n)`
-/

namespace A351592.P13896551332922946076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336866 n - A351293 n

end

end A351592.P13896551332922946076

/-! ## A351592.P12054731417065872438

`A213598(n)-A098859(n)-A351293(n)`
-/

namespace A351592.P12054731417065872438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A098859 n - A351293 n

end

end A351592.P12054731417065872438

/-! ## A351592.P3330552587469855179

`sqrt(A001255(n))-A098859(n)-A351293(n)`
-/

namespace A351592.P3330552587469855179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A098859 n : ℝ) - (A351293 n : ℝ)

end

end A351592.P3330552587469855179

/-! ## A351592.P7446760022047275224

`A239455(A028310(n))-(A213598(n)-A336866(n))`
-/

namespace A351592.P7446760022047275224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239455 (A028310 n).toNat - (A213598 n - A336866 n)

end

end A351592.P7446760022047275224

/-!
# A351593: Number of odd-length integer partitions of n into parts that are alternately equal and strictly decreasing.

The programs for A351593, there is no canonical definition to state claims against.
-/

/-! ## A351593.P10363728338930672437

`A351005(n)-A035457(n)`
-/

namespace A351593.P10363728338930672437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n - A035457 n

end

end A351593.P10363728338930672437

/-! ## A351593.P3815109429248197727

`A351005(n)-char[2*n]*A172033(n)`
-/

namespace A351593.P3815109429248197727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A172033 n

end

end A351593.P3815109429248197727

/-! ## A351593.P12436527351154547712

`A351005(n)-A286335(A101881(n))`
-/

namespace A351593.P12436527351154547712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n - A286335 (A101881 n).toNat

end

end A351593.P12436527351154547712

/-! ## A351593.P12400617745449744168

`A351005(n)-A116675(A327672(n))`
-/

namespace A351593.P12400617745449744168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n - A116675 (A327672 n).toNat

end

end A351593.P12400617745449744168

/-! ## A351593.P4581578436155353937

`A046779(n)+A351005(n)-A046767(n)`
-/

namespace A351593.P4581578436155353937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046779 n + (A351005 n - A046767 n)

end

end A351593.P4581578436155353937

/-! ## A351593.P14435670631445415418

`A351005(n)-A172033(n)%A052552(n)`
-/

namespace A351593.P14435670631445415418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n - Int.tmod (A172033 n) (A052552 n)

end

end A351593.P14435670631445415418

/-! ## A351593.P1339194503470180027

`A351005(n)-lcm(A000009(floor(n/2)), A056594(n+2))`
-/

namespace A351593.P1339194503470180027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n - (Int.lcm (A000009 ⌊(n : ℚ) / 2⌋.toNat) (A056594 (n + 2)) : ℤ)

end

end A351593.P1339194503470180027

/-! ## A351593.P822209528048779108

`A351005(n)+A035457(n)*A332814(A332812(n+1))`
-/

namespace A351593.P822209528048779108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n + A035457 n * A332814 (A332812 (n + 1)).toNat

end

end A351593.P822209528048779108

/-!
# A351594: Number of odd-length integer partitions y of n that are alternately constant, meaning y_i = y_{i+1} for all odd i.

The programs for A351594, there is no canonical definition to state claims against.
-/

/-! ## A351594.P10891378378359432022

`A351004(n)-A035363(n)`
-/

namespace A351594.P10891378378359432022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - A035363 n

end

end A351594.P10891378378359432022

/-! ## A351594.P14007868265294155897

`A351004(n)-A035444(2*n)`
-/

namespace A351594.P14007868265294155897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - A035444 (2 * n)

end

end A351594.P14007868265294155897

/-! ## A351594.P11555531467788260845

`A351004(n)-char[2*n]*A119620(n)`
-/

namespace A351594.P11555531467788260845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A119620 n

end

end A351594.P11555531467788260845

/-! ## A351594.P12045561799013116634

`A351004(n)-A035377(A006368(n))`
-/

namespace A351594.P12045561799013116634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - A035377 (A006368 n).toNat

end

end A351594.P12045561799013116634

/-! ## A351594.P2144600516342067603

`A351004(n)-A035377(A007494(n))`
-/

namespace A351594.P2144600516342067603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - A035377 (A007494 n).toNat

end

end A351594.P2144600516342067603

/-! ## A351594.P4610514494303015373

`A351004(n)-A035377(A026430(n))`
-/

namespace A351594.P4610514494303015373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - A035377 (A026430 n).toNat

end

end A351594.P4610514494303015373

/-! ## A351594.P9521149268783974805

`A351004(n)-A035377(A032766(n))`
-/

namespace A351594.P9521149268783974805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - A035377 (A032766 n).toNat

end

end A351594.P9521149268783974805

/-! ## A351594.P12290294837993531541

`A351004(n)-A035377(A074306(n))`
-/

namespace A351594.P12290294837993531541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - A035377 (A074306 n).toNat

end

end A351594.P12290294837993531541

/-! ## A351594.P11611730342577585684

`A351004(n)-A035377(record[n-A035377(n+1)])`
-/

namespace A351594.P11611730342577585684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - A035377 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A351594.P11611730342577585684

/-!
# A351595: Number of odd-length integer partitions y of n such that y_i > y_{i+1} for all even i.

The programs for A351595, there is no canonical definition to state claims against.
-/

/-! ## A351595.P17364382002557683041

`A122135(n)-A122134(n)`
-/

namespace A351595.P17364382002557683041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122135 n - A122134 n

end

end A351595.P17364382002557683041

/-! ## A351595.P14858103665772444269

`A227135(n)-A351008(n)`
-/

namespace A351595.P14858103665772444269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227135 n - A351008 n

end

end A351595.P14858103665772444269

/-! ## A351595.P13221260153241250741

`A122135(n)-A137677(4*n)`
-/

namespace A351595.P13221260153241250741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122135 n - A137677 (4 * n)

end

end A351595.P13221260153241250741

/-! ## A351595.P14746879548961397767

`A137676(4*n+1)-A122134(n)`
-/

namespace A351595.P14746879548961397767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n + 1) - A122134 n

end

end A351595.P14746879548961397767

/-! ## A351595.P15689129220160838002

`A137676(4*n+1)-A137677(4*n)`
-/

namespace A351595.P15689129220160838002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n + 1) - A137677 (4 * n)

end

end A351595.P15689129220160838002

/-! ## A351595.P8115269678507759532

`A182372(n)-(A351008(n)+A227134(n))`
-/

namespace A351595.P8115269678507759532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182372 n - (A351008 n + A227134 n)

end

end A351595.P8115269678507759532

/-! ## A351595.P9780767658778339820

`A122135(n)+A008683(A007918(n))*A122134(n)`
-/

namespace A351595.P9780767658778339820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122135 n + A008683 (A007918 n).toNat * A122134 n

end

end A351595.P9780767658778339820

/-! ## A351595.P14270906254160798119

`A122135(n)+A122129(n)-(A351008(n)+A227134(n))`
-/

namespace A351595.P14270906254160798119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122135 n + A122129 n - (A351008 n + A227134 n)

end

end A351595.P14270906254160798119

/-! ## A351595.P4209518285910191994

`A122135(n)-(A209229(n²+2)+A137677(A008574(n)))`
-/

namespace A351595.P4209518285910191994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122135 n - (A209229 (n ^ 2 + 2) + A137677 (A008574 n).toNat)

end

end A351595.P4209518285910191994

/-!
# A351596: Numbers k such that the k-th composition in standard order has all distinct run-lengths.

The programs for A351596, there is no canonical definition to state claims against.
-/

/-! ## A351596.P10238758343594965208

`eq[A124767(n), A354579(n)]`
-/

namespace A351596.P10238758343594965208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351596.P10238758343594965208

/-! ## A351596.P13874221908774611254

`eq[A354579(n)+A124762(n), A000120(n)]`
-/

namespace A351596.P13874221908774611254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n + A124762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351596.P13874221908774611254

/-! ## A351596.P5471841786975324022

`eq[A124765(n)+A124761(n), A354579(n)]`
-/

namespace A351596.P5471841786975324022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n + A124761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351596.P5471841786975324022

/-! ## A351596.P11394964335129935860

`eq[A124766(n)+A124760(n), A354579(n)]`
-/

namespace A351596.P11394964335129935860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n + A124760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351596.P11394964335129935860

/-! ## A351596.P11689830125983227086

`eq[n-(A124762(n)+A011371(n)), A354579(n)]`
-/

namespace A351596.P11689830125983227086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A124762 n + A011371 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351596.P11689830125983227086

/-!
# A351599: a(n) is the smallest integer m > 0 such that m*n is a digitally balanced number (A031443).

The programs for A351599, there is no canonical definition to state claims against.
-/

/-! ## A351599.P13605923148427798194

`A143146(n+1)/(n+1)`
-/

namespace A351599.P13605923148427798194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143146 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A351599.P13605923148427798194

/-! ## A351599.P7304004546167339235

`(n+1)^A008683(A001913(n+1))*A143146(n+1)`
-/

namespace A351599.P7304004546167339235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A001913 (n + 1)).toNat : ℤ) * (A143146 (n + 1) : ℚ)

end

end A351599.P7304004546167339235

/-! ## A351599.P4574687740371667303

`(n+1)^A008683(A006530(n+1))*A143146(n+1)`
-/

namespace A351599.P4574687740371667303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A006530 (n + 1)).toNat : ℤ) * (A143146 (n + 1) : ℚ)

end

end A351599.P4574687740371667303

/-! ## A351599.P9974798385442942525

`(n+1)^A008683(A007304(n+1))*A143146(n+1)`
-/

namespace A351599.P9974798385442942525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A007304 (n + 1)).toNat : ℤ) * (A143146 (n + 1) : ℚ)

end

end A351599.P9974798385442942525

