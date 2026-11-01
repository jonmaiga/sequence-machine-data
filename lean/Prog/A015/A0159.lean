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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

/-!
# A015900: Inverse of 1891st cyclotomic polynomial.

The programs for A015900, there is no canonical definition to state claims against.
-/

/-! ## A015900.P10386189625691373843

`A015838(A033270(p?[A054429(n+1)]))`
-/

namespace A015900.P10386189625691373843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 (A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A015900.P10386189625691373843

/-! ## A015900.P14277231419122424546

`A015952(A356720(n+4)-A325368(n+1))`
-/

namespace A015900.P14277231419122424546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015952 (A356720 (n + 4) - A325368 (n + 1)).toNat

end

end A015900.P14277231419122424546

/-! ## A015900.P5277977727343027265

`A010815(A111859(n+4)*A173065(n+2))`
-/

namespace A015900.P5277977727343027265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A111859 (n + 4) * A173065 (n + 2)).toNat

end

end A015900.P5277977727343027265

/-! ## A015900.P6635747737327013448

`A121373(A111859(n+4)*A173065(n+2))`
-/

namespace A015900.P6635747737327013448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A111859 (n + 4) * A173065 (n + 2)).toNat

end

end A015900.P6635747737327013448

/-! ## A015900.P8590628932057790646

`floor(A353833(n+1)/33)!²%2`
-/

namespace A015900.P8590628932057790646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(A353833 (n + 1) : ℚ) / 33⌋.toNat ^ 2 % 2

end

end A015900.P8590628932057790646

/-! ## A015900.P4442591792221162132

`A121373(∑[∑[A025443(n)]]²)`
-/

namespace A015900.P4442591792221162132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A015900.P4442591792221162132

/-! ## A015900.P9555065076603444409

`A194685(or(28, A107823(n+1)))`
-/

namespace A015900.P9555065076603444409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194685 (Int.lor 28 (A107823 (n + 1))).toNat

end

end A015900.P9555065076603444409

/-! ## A015900.P18040727133544254374

`A000035(floor(log2(A234806(n+4))))`
-/

namespace A015900.P18040727133544254374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.log 2 (A234806 (n + 4)).toNat)

end

end A015900.P18040727133544254374

/-! ## A015900.P6116353951951425864

`A215737(∑[char[A298169(n+1)]]!)`
-/

namespace A015900.P6116353951951425864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298169 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215737 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015900.P6116353951951425864

/-! ## A015900.P8006722983773498881

`A256432(C(A010784(n+1), n+2))`
-/

namespace A015900.P8006722983773498881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256432 (Nat.choose (A010784 (n + 1)).toNat (n + 2))

end

end A015900.P8006722983773498881

/-!
# A015901: Inverse of 1892nd cyclotomic polynomial.

The programs for A015901, there is no canonical definition to state claims against.
-/

/-! ## A015901.P13222807534747009403

`A016077(n)^A139250(A027689(3*n))`
-/

namespace A015901.P13222807534747009403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016077 n : ℚ) ^ (A139250 (A027689 (3 * n)).toNat : ℤ)

end

end A015901.P13222807534747009403

/-! ## A015901.P3175184664391344366

`A016077(n)^A061395(A208908(n+1))`
-/

namespace A015901.P3175184664391344366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016077 n : ℚ) ^ (A061395 (A208908 (n + 1)).toNat : ℤ)

end

end A015901.P3175184664391344366

/-! ## A015901.P15966134788429089721

`A016077(n)/A374586(A257725(2*(n+1)))`
-/

namespace A015901.P15966134788429089721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016077 n : ℚ) / (A374586 (A257725 (2 * (n + 1))).toNat : ℚ)

end

end A015901.P15966134788429089721

/-! ## A015901.P17739929096389716242

`A015813(n)%(A014262(A026405(n+1)%A197299(n+1))+2)`
-/

namespace A015901.P17739929096389716242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015813 n) (A014262 (Int.tmod (A026405 (n + 1)) (A197299 (n + 1))).toNat + 2)

end

end A015901.P17739929096389716242

/-! ## A015901.P16302723802972450572

`A016077(n)^A248641(A125100(n))`
-/

namespace A015901.P16302723802972450572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016077 n : ℚ) ^ (A248641 (A125100 n).toNat : ℤ)

end

end A015901.P16302723802972450572

/-! ## A015901.P16107464727177990977

`A016077(n)^A000203(A001263(n+1))`
-/

namespace A015901.P16107464727177990977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016077 n : ℚ) ^ (A000203 (A001263 (n + 1)).toNat : ℤ)

end

end A015901.P16107464727177990977

/-!
# A015902: Numbers k such that k | 10^k + 10.

The programs for A015902, there is no canonical definition to state claims against.
-/

/-! ## A015902.P11004491677197133751

`A087005(A066699(n+2))`
-/

namespace A015902.P11004491677197133751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087005 (A066699 (n + 2)).toNat

end

end A015902.P11004491677197133751

/-! ## A015902.P16896777276198695438

`A287896(A137963(n))+n`
-/

namespace A015902.P16896777276198695438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A137963 n).toNat + (n : ℤ)

end

end A015902.P16896777276198695438

/-! ## A015902.P13426572928231607882

`A108602(A102359(n+1)+A004442(n))`
-/

namespace A015902.P13426572928231607882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A102359 (n + 1) + A004442 n).toNat

end

end A015902.P13426572928231607882

/-!
# A015903: Numbers n such that n | 11^n + 11.

The programs for A015903, there is no canonical definition to state claims against.
-/

/-! ## A015903.P1757048889379464863

`A018297(comp[∑[3*n]])`
-/

namespace A015903.P1757048889379464863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018297 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A015903.P1757048889379464863

/-! ## A015903.P76231321557496502

`eq[A106612(A051724(n)), A356162(n)]`
-/

namespace A015903.P76231321557496502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A051724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015903.P76231321557496502

/-! ## A015903.P1607851266847860880

`A018431(∪[A018391(n+1), A018414(n+1)])`
-/

namespace A015903.P1607851266847860880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018414 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018431 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A015903.P1607851266847860880

/-! ## A015903.P13430673363268994472

`A018431(∪[A018371(n+1), A018442(n+1)])`
-/

namespace A015903.P13430673363268994472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018442 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018431 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A015903.P13430673363268994472

/-! ## A015903.P13842684647132944305

`A018431(∪[A018406(n+1), A018442(n+1)])`
-/

namespace A015903.P13842684647132944305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018442 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018431 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A015903.P13842684647132944305

/-!
# A015905: Numbers k such that k | 13^k + 13.

The programs for A015905, there is no canonical definition to state claims against.
-/

/-! ## A015905.P3649512646632338029

`record[gcd(n, A234982(a(n-1)))]` with `a(0)=1`
-/

namespace A015905.P3649512646632338029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.gcd (n : ℤ) (A234982 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015905.P3649512646632338029

/-! ## A015905.P3669485128586261191

`record[gcd(C(n, 2)+n², A008796(n))]`
-/

namespace A015905.P3669485128586261191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n 2 + n ^ 2 : ℤ) (A008796 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015905.P3669485128586261191

/-!
# A015906: First k>n such that k | n^k + n.

The programs for A015906, there is no canonical definition to state claims against.
-/

/-! ## A015906.P7782337200645203460

`A007922(lcm(n+1, ceil(2^(n-1))))`
-/

namespace A015906.P7782337200645203460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007922 (Int.lcm (n + 1 : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉)

end

end A015906.P7782337200645203460

/-! ## A015906.P5136221880215938470

`A230849(A026721(n)+2*n)+n`
-/

namespace A015906.P5136221880215938470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (A026721 n + (2 * n : ℤ)).toNat + (n : ℤ)

end

end A015906.P5136221880215938470

/-! ## A015906.P16585406235071699965

`A325352(record[2-xor(1, -n)]*A001511(3*n+4))`
-/

namespace A015906.P16585406235071699965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001511 (3 * n + 4)).toNat

end

end A015906.P16585406235071699965

/-! ## A015906.P17273955735546019893

`A140524(n+1)-A091225(A188378(n))`
-/

namespace A015906.P17273955735546019893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140524 (n + 1) - A091225 (A188378 n).toNat

end

end A015906.P17273955735546019893

/-! ## A015906.P12196917674761005060

`A140524(n+1)-A121373(A171373(n))`
-/

namespace A015906.P12196917674761005060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140524 (n + 1) - A121373 (A171373 n).toNat

end

end A015906.P12196917674761005060

/-!
# A015907: Inverse of 1898th cyclotomic polynomial.

The programs for A015907, there is no canonical definition to state claims against.
-/

/-! ## A015907.P17648725077071925519

`A014958(n)*A014971(A005811(n))`
-/

namespace A015907.P17648725077071925519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014958 n * A014971 (A005811 n).toNat

end

end A015907.P17648725077071925519

/-! ## A015907.P13185011307247905982

`A014958(n)/A014971(A005811(n))%A357972(n)`
-/

namespace A015907.P13185011307247905982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014958 n : ℚ) / (Int.tmod (A014971 (A005811 n).toNat) (A357972 n) : ℚ)

end

end A015907.P13185011307247905982

/-! ## A015907.P1650040610061602200

`A016063(lt[A089283(n), A016081(2*n+1)])`
-/

namespace A015907.P1650040610061602200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016081 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016063 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015907.P1650040610061602200

/-! ## A015907.P15089412702089529283

`(-A010051(round(sqrt(n))!+1))^n`
-/

namespace A015907.P15089412702089529283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A010051 (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat + 1)) ^ n

end

end A015907.P15089412702089529283

/-! ## A015907.P12068549853152679603

`a(n-1)^4*A015127(A341936(n))` with `a(0)=1`
-/

namespace A015907.P12068549853152679603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 4 * A015127 (A341936 n).toNat

end

end A015907.P12068549853152679603

/-! ## A015907.P3254633708843241883

`A014763(n)*A014776(A089854(n))`
-/

namespace A015907.P3254633708843241883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014763 n * A014776 (A089854 n).toNat

end

end A015907.P3254633708843241883

/-! ## A015907.P10281259564068082695

`A015348(A115728(n))*A015387(n)`
-/

namespace A015907.P10281259564068082695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015348 (A115728 n).toNat * A015387 n

end

end A015907.P10281259564068082695

/-! ## A015907.P2818519039594050376

`A014958(A115728(n))*A015855(n)`
-/

namespace A015907.P2818519039594050376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014958 (A115728 n).toNat * A015855 n

end

end A015907.P2818519039594050376

/-! ## A015907.P13421769198006421195

`A014958(A115728(n))*A016167(n)`
-/

namespace A015907.P13421769198006421195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014958 (A115728 n).toNat * A016167 n

end

end A015907.P13421769198006421195

/-! ## A015907.P14350967114960406624

`A016323(A345808(n+1))+A016323(n)`
-/

namespace A015907.P14350967114960406624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016323 (A345808 (n + 1)).toNat + A016323 n

end

end A015907.P14350967114960406624

/-!
# A015908: Smallest odd k>n such that k | n^k + n, or 0 if n=2^m.

The programs for A015908, there is no canonical definition to state claims against.
-/

/-! ## A015908.P6075172979243493267

`A272727(char[1]+n^n)`
-/

namespace A015908.P6075172979243493267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272727 ((if ∃ j, f1 j = n then 1 else 0) + n ^ n)

end

end A015908.P6075172979243493267

/-! ## A015908.P3136326713311618110

`A342697(or(2, n^n+n)-n)`
-/

namespace A015908.P3136326713311618110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (Nat.lor 2 (n ^ n + n) - n)

end

end A015908.P3136326713311618110

/-!
# A015909: a(n) = smallest k >= 1 such that n divides k^n + k.

The programs for A015909, there is no canonical definition to state claims against.
-/

/-! ## A015909.P1618256773278390768

`A345993(n+1)-A007814(A005918(3*n+1))`
-/

namespace A015909.P1618256773278390768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - A007814 (A005918 (3 * n + 1)).toNat

end

end A015909.P1618256773278390768

/-! ## A015909.P14752232738817698620

`A345993(n+1)-A000035(A000567(3*n+4))`
-/

namespace A015909.P14752232738817698620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - A000035 (A000567 (3 * n + 4)).toNat

end

end A015909.P14752232738817698620

/-! ## A015909.P8109530236065736827

`A345993(n+1)-A101455(A005918(3*n+4))`
-/

namespace A015909.P8109530236065736827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - A101455 (A005918 (3 * n + 4)).toNat

end

end A015909.P8109530236065736827

/-! ## A015909.P8927725681920239110

`A345993(n+1)-A344617(A000079(n))`
-/

namespace A015909.P8927725681920239110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - A344617 (A000079 n).toNat

end

end A015909.P8927725681920239110

/-! ## A015909.P15862395997998068547

`A345993(n+1)-A000035(A071160(n))`
-/

namespace A015909.P15862395997998068547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1) - A000035 (A071160 n).toNat

end

end A015909.P15862395997998068547

/-!
# A015910: a(n) = 2^n mod n.

The programs for A015910, the canonical program `A015910.P10708089779728586376` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015910 has offset 1).

The definition of A015910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1))%(n+1)` (program `A015910.P10708089779728586376`, by `A015910.P10708089779728586376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015910.P17824040486334662779

`(2^(n+1-A000010(n+1)))%(n+1)`
-/

namespace A015910.P17824040486334662779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n + 1 : ℤ) - A000010 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A015910.P17824040486334662779

namespace A015910

/-- `(2^(n+1-A000010(n+1)))%(n+1)` -/
def P17824040486334662779.Spec : Prop :=
  ∀ n, P17824040486334662779.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P10708089779728586376

`(2^(n+1))%(n+1)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015910

/-- `(2^(n+1))%(n+1)` -/
def P10708089779728586376.Spec : Prop :=
  ∀ n, (P10708089779728586376.a n : ℤ) = A015910 (n + 1)

theorem P10708089779728586376.correct : P10708089779728586376.Spec := by
  intro n
  simp only [A015910, Nat.add_sub_cancel]

end A015910

/-! ## A015910.P371052175714419726

`1-A082494(1+n)+n`
-/

namespace A015910.P371052175714419726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082494 (1 + n) + (n : ℤ)

end

end A015910.P371052175714419726

namespace A015910

/-- `1-A082494(1+n)+n` -/
def P371052175714419726.Spec : Prop :=
  ∀ n, P371052175714419726.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P4894043452764162799

`A357531(n+1)-A099894(n)`
-/

namespace A015910.P4894043452764162799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357531 (n + 1) - A099894 n

end

end A015910.P4894043452764162799

namespace A015910

/-- `A357531(n+1)-A099894(n)` -/
def P4894043452764162799.Spec : Prop :=
  ∀ n, P4894043452764162799.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P14285261789288595360

`A043545(n)*A357531(n+1)`
-/

namespace A015910.P14285261789288595360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A357531 (n + 1)

end

end A015910.P14285261789288595360

namespace A015910

/-- `A043545(n)*A357531(n+1)` -/
def P14285261789288595360.Spec : Prop :=
  ∀ n, P14285261789288595360.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P2801250151023627568

`and(A003817(n), A357531(n+1))`
-/

namespace A015910.P2801250151023627568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A357531 (n + 1))

end

end A015910.P2801250151023627568

namespace A015910

/-- `and(A003817(n), A357531(n+1))` -/
def P2801250151023627568.Spec : Prop :=
  ∀ n, P2801250151023627568.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P4414726906778414697

`A112983(n+1)+A082900(n+1)`
-/

namespace A015910.P4414726906778414697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112983 (n + 1) + A082900 (n + 1)

end

end A015910.P4414726906778414697

namespace A015910

/-- `A112983(n+1)+A082900(n+1)` -/
def P4414726906778414697.Spec : Prop :=
  ∀ n, P4414726906778414697.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P9813428412237864498

`A357531(n+1)-A048298(n+1)`
-/

namespace A015910.P9813428412237864498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357531 (n + 1) - A048298 (n + 1)

end

end A015910.P9813428412237864498

namespace A015910

/-- `A357531(n+1)-A048298(n+1)` -/
def P9813428412237864498.Spec : Prop :=
  ∀ n, P9813428412237864498.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P10251471738158940511

`lcm(A080940(n+1), A357531(n+1))`
-/

namespace A015910.P10251471738158940511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080940 (n + 1)) (A357531 (n + 1))

end

end A015910.P10251471738158940511

namespace A015910

/-- `lcm(A080940(n+1), A357531(n+1))` -/
def P10251471738158940511.Spec : Prop :=
  ∀ n, (P10251471738158940511.a n : ℤ) = A015910 (n + 1)

end A015910

/-! ## A015910.P6444628805478237570

`log2(A112987(n+1))`
-/

namespace A015910.P6444628805478237570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A112987 (n + 1) : ℝ)

end

end A015910.P6444628805478237570

namespace A015910

/-- `log2(A112987(n+1))` -/
def P6444628805478237570.Spec : Prop :=
  ∀ n, P6444628805478237570.a n = (A015910 (n + 1) : ℝ)

end A015910

/-! ## A015910.P7187939082050760791

`abs(A122803(n+1)%(n+1))`
-/

namespace A015910.P7187939082050760791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A122803 (n + 1)) (n + 1 : ℤ)|

end

end A015910.P7187939082050760791

namespace A015910

/-- `abs(A122803(n+1)%(n+1))` -/
def P7187939082050760791.Spec : Prop :=
  ∀ n, P7187939082050760791.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P5975232140285189

`2^(n+1)-A128092(n+1)`
-/

namespace A015910.P5975232140285189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A128092 (n + 1)

end

end A015910.P5975232140285189

namespace A015910

/-- `2^(n+1)-A128092(n+1)` -/
def P5975232140285189.Spec : Prop :=
  ∀ n, P5975232140285189.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P11072239193385001139

`A060154(∑[n+1]+2)`
-/

namespace A015910.P11072239193385001139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060154 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A015910.P11072239193385001139

namespace A015910

/-- `A060154(∑[n+1]+2)` -/
def P11072239193385001139.Spec : Prop :=
  ∀ n, P11072239193385001139.a n = A015910 (n + 1)

end A015910

/-! ## A015910.P28177105937165512

`A114448(∑[n+2])`
-/

namespace A015910.P28177105937165512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015910.P28177105937165512

namespace A015910

/-- `A114448(∑[n+2])` -/
def P28177105937165512.Spec : Prop :=
  ∀ n, P28177105937165512.a n = A015910 (n + 1)

end A015910

/-!
# A015911: Numbers k such that 2^k mod k is odd.

The programs for A015911, there is no canonical definition to state claims against.
-/

/-! ## A015911.P12951979373569049773

`∩[2*n+1, A112992(n+2)]`
-/

namespace A015911.P12951979373569049773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P12951979373569049773

/-! ## A015911.P12565029237446767357

`filter[A112992(n+1), A202238(#)]`
-/

namespace A015911.P12565029237446767357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A015911.P12565029237446767357

/-! ## A015911.P12138512005383350377

`filter[A112992(1+n), A347523(#)]`
-/

namespace A015911.P12138512005383350377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A015911.P12138512005383350377

/-! ## A015911.P7681286417877204387

`filter[A112992(n+2), A039982(#)]`
-/

namespace A015911.P7681286417877204387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A015911.P7681286417877204387

/-! ## A015911.P1777503515232283665

`filter[A112992(n+2), A093719(#)]`
-/

namespace A015911.P1777503515232283665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A015911.P1777503515232283665

/-! ## A015911.P6450416571962871483

`filter[A112992(n+2), A254651(#)]`
-/

namespace A015911.P6450416571962871483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A015911.P6450416571962871483

/-! ## A015911.P5617792362502335521

`filter[A112992(n+2), A361023(#)]`
-/

namespace A015911.P5617792362502335521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A015911.P5617792362502335521

/-! ## A015911.P3090420879710736

`filter[A112992(n+3), A098725(#)]`
-/

namespace A015911.P3090420879710736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A015911.P3090420879710736

/-! ## A015911.P13272631281253950823

`filter[A112992(n+3), A166486(#)]`
-/

namespace A015911.P13272631281253950823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A015911.P13272631281253950823

/-! ## A015911.P5011352785658065518

`∩[2*n+1, A071354(n+1)]`
-/

namespace A015911.P5011352785658065518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P5011352785658065518

/-! ## A015911.P3544376625358233773

`∩[A112992(n+1), A280199(n+1)]`
-/

namespace A015911.P3544376625358233773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P3544376625358233773

/-! ## A015911.P12915916145925349076

`∩[A071354(n+1), A071904(n+1)]`
-/

namespace A015911.P12915916145925349076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P12915916145925349076

/-! ## A015911.P8724934800109419438

`∩[A112992(n+1), A270574(n+1)]`
-/

namespace A015911.P8724934800109419438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P8724934800109419438

/-! ## A015911.P13458918326798654185

`∩[A071354(n+1), A255763(n+1)]`
-/

namespace A015911.P13458918326798654185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P13458918326798654185

/-! ## A015911.P3626360120914198679

`∩[A071354(n+1), A296602(n+1)]`
-/

namespace A015911.P3626360120914198679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P3626360120914198679

/-! ## A015911.P5972281208534498896

`∩[A071354(n+1), A020742(n)]`
-/

namespace A015911.P5972281208534498896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P5972281208534498896

/-! ## A015911.P7350797280819628297

`∩[A112992(n+1), A020742(n)]`
-/

namespace A015911.P7350797280819628297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P7350797280819628297

/-! ## A015911.P8622275427325177007

`∩[A071354(n+1), A130773(n)]`
-/

namespace A015911.P8622275427325177007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P8622275427325177007

/-! ## A015911.P12934045729502224448

`∩[A071354(n+1), A163985(n)]`
-/

namespace A015911.P12934045729502224448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P12934045729502224448

/-! ## A015911.P13547798126899873483

`∩[A071354(n+1), A223134(n)]`
-/

namespace A015911.P13547798126899873483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015911.P13547798126899873483

/-!
# A015912: Inverse of 1903rd cyclotomic polynomial.

The programs for A015912, the canonical program `A015912.P6802983766881013673` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015912 has offset 0).

The definition of A015912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015912.P6802983766881013673

`C(10, A326588(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A015912

/-- `C(10, A326588(n))` -/
def P6802983766881013673.Spec : Prop :=
  ∀ n, (P6802983766881013673.a n : ℤ) = A015912 n

theorem P6802983766881013673.correct : P6802983766881013673.Spec := by
  intro n
  simp only [A015912]

end A015912

/-! ## A015912.P588353817979047817

`C(n, lt[A321804(n), 1])`
-/

namespace A015912.P588353817979047817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015912.P588353817979047817

namespace A015912

/-- `C(n, lt[A321804(n), 1])` -/
def P588353817979047817.Spec : Prop :=
  ∀ n, (P588353817979047817.a n : ℤ) = A015912 n

end A015912

/-! ## A015912.P11583435635006273703

`C(2, A308924(3%(n+1)+n))`
-/

namespace A015912.P11583435635006273703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308924 (3 % (n + 1) + n)).toNat

end

end A015912.P11583435635006273703

namespace A015912

/-- `C(2, A308924(3%(n+1)+n))` -/
def P11583435635006273703.Spec : Prop :=
  ∀ n, (P11583435635006273703.a n : ℤ) = A015912 n

end A015912

/-! ## A015912.P14310535430627896727

`A360122(n²+n+11)*a(n-1)` with `a(0)=1`
-/

namespace A015912.P14310535430627896727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A360122 (n ^ 2 + n + 11) * a (n - 1)

end

end A015912.P14310535430627896727

namespace A015912

/-- `A360122(n²+n+11)*a(n-1)` -/
def P14310535430627896727.Spec : Prop :=
  ∀ n, P14310535430627896727.a n = A015912 n

end A015912

/-! ## A015912.P17384575343752373904

`A183918(A259197(n))`
-/

namespace A015912.P17384575343752373904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183918 (A259197 (n + 14)).toNat

end

end A015912.P17384575343752373904

namespace A015912

/-- `A183918(A259197(n))` -/
def P17384575343752373904.Spec : Prop :=
  ∀ n, P17384575343752373904.a n = A015912 n

end A015912

/-! ## A015912.P15499152664686815130

`A000010(A196933(n))%2`
-/

namespace A015912.P15499152664686815130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A196933 n).toNat) 2

end

end A015912.P15499152664686815130

namespace A015912

/-- `A000010(A196933(n))%2` -/
def P15499152664686815130.Spec : Prop :=
  ∀ n, P15499152664686815130.a n = A015912 n

end A015912

/-! ## A015912.P17780145009367058405

`A000120(C(2, A240864(n)))`
-/

namespace A015912.P17780145009367058405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose 2 (A240864 n).toNat)

end

end A015912.P17780145009367058405

namespace A015912

/-- `A000120(C(2, A240864(n)))` -/
def P17780145009367058405.Spec : Prop :=
  ∀ n, P17780145009367058405.a n = A015912 n

end A015912

/-! ## A015912.P5938547541542986432

`A001045(C(2, A240864(n)))`
-/

namespace A015912.P5938547541542986432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Nat.choose 2 (A240864 n).toNat)

end

end A015912.P5938547541542986432

namespace A015912

/-- `A001045(C(2, A240864(n)))` -/
def P5938547541542986432.Spec : Prop :=
  ∀ n, P5938547541542986432.a n = A015912 n

end A015912

/-! ## A015912.P4084356019555753409

`A007598(C(2, A240864(n)))`
-/

namespace A015912.P4084356019555753409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (Nat.choose 2 (A240864 n).toNat)

end

end A015912.P4084356019555753409

namespace A015912

/-- `A007598(C(2, A240864(n)))` -/
def P4084356019555753409.Spec : Prop :=
  ∀ n, P4084356019555753409.a n = A015912 n

end A015912

/-! ## A015912.P8565662215277593279

`A034968(C(2, A240864(n)))`
-/

namespace A015912.P8565662215277593279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Nat.choose 2 (A240864 n).toNat)

end

end A015912.P8565662215277593279

namespace A015912

/-- `A034968(C(2, A240864(n)))` -/
def P8565662215277593279.Spec : Prop :=
  ∀ n, P8565662215277593279.a n = A015912 n

end A015912

/-! ## A015912.P1390380805031334421

`A092695(C(2, A240864(n)))`
-/

namespace A015912.P1390380805031334421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (Nat.choose 2 (A240864 n).toNat)

end

end A015912.P1390380805031334421

namespace A015912

/-- `A092695(C(2, A240864(n)))` -/
def P1390380805031334421.Spec : Prop :=
  ∀ n, P1390380805031334421.a n = A015912 n

end A015912

/-! ## A015912.P9761870434909351945

`A255738(A007602(n+1)-n)`
-/

namespace A015912.P9761870434909351945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (A007602 (n + 1) - (n : ℤ)).toNat

end

end A015912.P9761870434909351945

namespace A015912

/-- `A255738(A007602(n+1)-n)` -/
def P9761870434909351945.Spec : Prop :=
  ∀ n, P9761870434909351945.a n = A015912 n

end A015912

/-! ## A015912.P1278119886586229706

`floor(1/(n+1))^A209859(A061798(n+1))`
-/

namespace A015912.P1278119886586229706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊1 / (n + 1 : ℚ)⌋ : ℚ) ^ (A209859 (A061798 (n + 1)).toNat : ℤ)

end

end A015912.P1278119886586229706

namespace A015912

/-- `floor(1/(n+1))^A209859(A061798(n+1))` -/
def P1278119886586229706.Spec : Prop :=
  ∀ n, P1278119886586229706.a n = (A015912 n : ℚ)

end A015912

/-! ## A015912.P17722433697877055035

`C(A053832(A000008(n)), A000008(n))`
-/

namespace A015912.P17722433697877055035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053832 (A000008 n).toNat).toNat (A000008 n).toNat

end

end A015912.P17722433697877055035

namespace A015912

/-- `C(A053832(A000008(n)), A000008(n))` -/
def P17722433697877055035.Spec : Prop :=
  ∀ n, (P17722433697877055035.a n : ℤ) = A015912 n

end A015912

/-! ## A015912.P13974313481317633954

`C(A279049(A005185(n+1)), A005185(n+1))`
-/

namespace A015912.P13974313481317633954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A279049 (A005185 (n + 1)).toNat).toNat (A005185 (n + 1)).toNat

end

end A015912.P13974313481317633954

namespace A015912

/-- `C(A279049(A005185(n+1)), A005185(n+1))` -/
def P13974313481317633954.Spec : Prop :=
  ∀ n, (P13974313481317633954.a n : ℤ) = A015912 n

end A015912

/-! ## A015912.P15785427039769815648

`C(A337135(A103378(n+1)), A103378(n+1))`
-/

namespace A015912.P15785427039769815648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A337135 (A103378 (n + 1)).toNat).toNat (A103378 (n + 1)).toNat

end

end A015912.P15785427039769815648

namespace A015912

/-- `C(A337135(A103378(n+1)), A103378(n+1))` -/
def P15785427039769815648.Spec : Prop :=
  ∀ n, (P15785427039769815648.a n : ℤ) = A015912 n

end A015912

/-! ## A015912.P1064904796836231149

`A000007(A103380(n+3)-1)`
-/

namespace A015912.P1064904796836231149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A103380 (n + 3) - 1).toNat

end

end A015912.P1064904796836231149

namespace A015912

/-- `A000007(A103380(n+3)-1)` -/
def P1064904796836231149.Spec : Prop :=
  ∀ n, P1064904796836231149.a n = A015912 n

end A015912

/-! ## A015912.P4752344409731560947

`C(A333769(A008619(n)), A033106(n+2))`
-/

namespace A015912.P4752344409731560947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333769 (A008619 n).toNat).toNat (A033106 (n + 2)).toNat

end

end A015912.P4752344409731560947

namespace A015912

/-- `C(A333769(A008619(n)), A033106(n+2))` -/
def P4752344409731560947.Spec : Prop :=
  ∀ n, (P4752344409731560947.a n : ℤ) = A015912 n

end A015912

/-! ## A015912.P11326604850987418748

`A000035(A016116(∑[(val(n+1, 2)+n)%2]))`
-/

namespace A015912.P11326604850987418748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A016116 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A015912.P11326604850987418748

namespace A015912

/-- `A000035(A016116(∑[(val(n+1, 2)+n)%2]))` -/
def P11326604850987418748.Spec : Prop :=
  ∀ n, P11326604850987418748.a n = A015912 n

end A015912

/-! ## A015912.P6141357443189074813

`floor(1/4^A161113(n+1))`
-/

namespace A015912.P6141357443189074813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (4 : ℚ) ^ (A161113 (n + 1) : ℤ)⌋

end

end A015912.P6141357443189074813

namespace A015912

/-- `floor(1/4^A161113(n+1))` -/
def P6141357443189074813.Spec : Prop :=
  ∀ n, P6141357443189074813.a n = A015912 n

end A015912

/-!
# A015913: Numbers k such that sigma(k) + 4 = sigma(k+4).

The programs for A015913, there is no canonical definition to state claims against.
-/

/-! ## A015913.P1997003856704843084

`A087679(1+n)-2`
-/

namespace A015913.P1997003856704843084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (1 + n) - 2

end

end A015913.P1997003856704843084

/-! ## A015913.P12565513934518861876

`A046132(n+1)-4`
-/

namespace A015913.P12565513934518861876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) - 4

end

end A015913.P12565513934518861876

/-! ## A015913.P14704540036987809535

`A165986(n+1)/2`
-/

namespace A015913.P14704540036987809535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 1) : ℚ) / 2

end

end A015913.P14704540036987809535

/-! ## A015913.P14474938320505986070

`2*A047847(n+1)+1`
-/

namespace A015913.P14474938320505986070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047847 (n + 1) + 1

end

end A015913.P14474938320505986070

/-! ## A015913.P2601736334218084615

`2*A088762(n+1)-1`
-/

namespace A015913.P2601736334218084615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088762 (n + 1) - 1

end

end A015913.P2601736334218084615

/-! ## A015913.P14996661221185391597

`A053320(n)+a(n-1)` with `a(0)=3`
-/

namespace A015913.P14996661221185391597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A053320 n + a (n - 1)

end

end A015913.P14996661221185391597

/-! ## A015913.P16194177171899080223

`floor(sqrt(A143206(n+1)))-1`
-/

namespace A015913.P16194177171899080223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A143206 (n + 1)) - 1

end

end A015913.P16194177171899080223

/-! ## A015913.P13777250123650755784

`A088762(n+1)+A047847(n+1)`
-/

namespace A015913.P13777250123650755784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088762 (n + 1) + A047847 (n + 1)

end

end A015913.P13777250123650755784

/-! ## A015913.P2371276585992758147

`A029710(n+1)-A053320(n+1)`
-/

namespace A015913.P2371276585992758147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1) - A053320 (n + 1)

end

end A015913.P2371276585992758147

/-! ## A015913.P4257599508942616079

`A143206(n+1)/A046132(n+1)`
-/

namespace A015913.P4257599508942616079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143206 (n + 1) : ℚ) / (A046132 (n + 1) : ℚ)

end

end A015913.P4257599508942616079

/-! ## A015913.P10241710604168822775

`A143206(n+1)%A165986(n+1)`
-/

namespace A015913.P10241710604168822775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143206 (n + 1)) (A165986 (n + 1))

end

end A015913.P10241710604168822775

/-! ## A015913.P11911945413868124908

`A172238(2+n)`
-/

namespace A015913.P11911945413868124908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (2 + n)

end

end A015913.P11911945413868124908

/-! ## A015913.P1070680129381658757

`A067830(n+2)-4`
-/

namespace A015913.P1070680129381658757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 2) - 4

end

end A015913.P1070680129381658757

/-! ## A015913.P14060417119369881285

`A143206(n+1)/A067830(n+2)`
-/

namespace A015913.P14060417119369881285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143206 (n + 1) : ℚ) / (A067830 (n + 2) : ℚ)

end

end A015913.P14060417119369881285

/-! ## A015913.P6737206474428500671

`p?[A056772(n+1)]`
-/

namespace A015913.P6737206474428500671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A015913.P6737206474428500671

/-! ## A015913.P12817862331375216379

`A094343(Δ[n²])`
-/

namespace A015913.P12817862331375216379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A015913.P12817862331375216379

/-! ## A015913.P2103994248011937554

`A072541(Δ[n²])-1`
-/

namespace A015913.P2103994248011937554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A015913.P2103994248011937554

/-! ## A015913.P10095828471359232797

`min(A094343(2*n+1), A094343(2*(n+1)))`
-/

namespace A015913.P10095828471359232797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A094343 (2 * n + 1)) (A094343 (2 * (n + 1)))

end

end A015913.P10095828471359232797

/-! ## A015913.P18140520788247144886

`∩[A007645(n+1), A056772(n+1)]`
-/

namespace A015913.P18140520788247144886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015913.P18140520788247144886

/-! ## A015913.P14787981641940689243

`∩[A015919(n+1), A056772(n+1)]`
-/

namespace A015913.P14787981641940689243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015913.P14787981641940689243

/-! ## A015913.P14964843265737524791

`p?[p?[2*n+1]-4]`
-/

namespace A015913.P14964843265737524791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A015913.P14964843265737524791

/-!
# A015914: Numbers k such that sigma(k) + 6 = sigma(k+6).

The programs for A015914, the canonical program `A015914.P16999400420647426476` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015914 has offset 1).

The definition of A015914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015914.P16999400420647426476

`eq[A281006(n+1), A281006(n+7)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A015914

/-- `eq[A281006(n+1), A281006(n+7)]+1` -/
def P16999400420647426476.Spec : Prop :=
  ∀ n, (P16999400420647426476.a n : ℤ) = A015914 (n + 1)

theorem P16999400420647426476.correct : P16999400420647426476.Spec := by
  intro n
  simp only [A015914, Nat.add_sub_cancel]

end A015914

/-! ## A015914.P13101901965413256734

`eq[A039653(n)+6, A039653(n+6)]`
-/

namespace A015914.P13101901965413256734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015914.P13101901965413256734

namespace A015914

/-- `eq[A039653(n)+6, A039653(n+6)]` -/
def P13101901965413256734.Spec : Prop :=
  ∀ n, (P13101901965413256734.a n : ℤ) = A015914 (n + 1)

end A015914

/-! ## A015914.P1843792440863428479

`eq[A001065(n+1), A001065(n+7)]+1`
-/

namespace A015914.P1843792440863428479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015914.P1843792440863428479

namespace A015914

/-- `eq[A001065(n+1), A001065(n+7)]+1` -/
def P1843792440863428479.Spec : Prop :=
  ∀ n, (P1843792440863428479.a n : ℤ) = A015914 (n + 1)

end A015914

/-! ## A015914.P11697760164241820248

`eq[A048050(n+2), A048050(n+8)]+2`
-/

namespace A015914.P11697760164241820248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A015914.P11697760164241820248

namespace A015914

/-- `eq[A048050(n+2), A048050(n+8)]+2` -/
def P11697760164241820248.Spec : Prop :=
  ∀ n, (P11697760164241820248.a n : ℤ) = A015914 (n + 1)

end A015914

/-! ## A015914.P16480547395107390777

`eq[A173455(n+3), A173455(n+9)]+3`
-/

namespace A015914.P16480547395107390777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A015914.P16480547395107390777

namespace A015914

/-- `eq[A173455(n+3), A173455(n+9)]+3` -/
def P16480547395107390777.Spec : Prop :=
  ∀ n, (P16480547395107390777.a n : ℤ) = A015914 (n + 1)

end A015914

/-!
# A015915: Numbers k such that sigma(k) + 8 = sigma(k+8).

The programs for A015915, the canonical program `A015915.P7648696316371349775` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015915 has offset 1).

The definition of A015915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015915.P7648696316371349775

`A005408(eq[A054024(2*n+1), A054024(2*n+9)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A015915

/-- `A005408(eq[A054024(2*n+1), A054024(2*n+9)])` -/
def P7648696316371349775.Spec : Prop :=
  ∀ n, P7648696316371349775.a n = A015915 (n + 1)

theorem P7648696316371349775.correct : P7648696316371349775.Spec := by
  intro n
  simp only [A015915, Nat.add_sub_cancel]

end A015915

/-! ## A015915.P8204921868922317494

`eq[A001065(n+1), A001065(n+9)]+1`
-/

namespace A015915.P8204921868922317494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015915.P8204921868922317494

namespace A015915

/-- `eq[A001065(n+1), A001065(n+9)]+1` -/
def P8204921868922317494.Spec : Prop :=
  ∀ n, (P8204921868922317494.a n : ℤ) = A015915 (n + 1)

end A015915

/-! ## A015915.P8371544963459793438

`eq[A048050(n+1), A048050(n+9)]+1`
-/

namespace A015915.P8371544963459793438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015915.P8371544963459793438

namespace A015915

/-- `eq[A048050(n+1), A048050(n+9)]+1` -/
def P8371544963459793438.Spec : Prop :=
  ∀ n, (P8371544963459793438.a n : ℤ) = A015915 (n + 1)

end A015915

/-! ## A015915.P16956143183845740709

`eq[A001065(n+8), A001065(A109613(n))]`
-/

namespace A015915.P16956143183845740709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015915.P16956143183845740709

namespace A015915

/-- `eq[A001065(n+8), A001065(A109613(n))]` -/
def P16956143183845740709.Spec : Prop :=
  ∀ n, (P16956143183845740709.a n : ℤ) = A015915 (n + 1)

end A015915

/-! ## A015915.P3477512052736992043

`A065190(eq[A048050(n+1), A048050(n+9)])`
-/

namespace A015915.P3477512052736992043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015915.P3477512052736992043

namespace A015915

/-- `A065190(eq[A048050(n+1), A048050(n+9)])` -/
def P3477512052736992043.Spec : Prop :=
  ∀ n, P3477512052736992043.a n = A015915 (n + 1)

end A015915

/-!
# A015917: Numbers k such that sigma(k) + 12 = sigma(k+12).

The programs for A015917, there is no canonical definition to state claims against.
-/

/-! ## A015917.P14535420566766446175

`∪[A046133(n+1), A054902(n+1)]`
-/

namespace A015917.P14535420566766446175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015917.P14535420566766446175

/-! ## A015917.P17786736345443839499

`eq[A001065(n+1), A001065(n+13)]+1`
-/

namespace A015917.P17786736345443839499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015917.P17786736345443839499

/-! ## A015917.P3178890330882211292

`eq[A173455(n+3), A173455(n+15)]+3`
-/

namespace A015917.P3178890330882211292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A015917.P3178890330882211292

/-! ## A015917.P10385326403117552998

`∩[A056775(n+1), A273200(n+1)]`
-/

namespace A015917.P10385326403117552998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015917.P10385326403117552998

/-! ## A015917.P13685985032525852395

`∩[A056775(n+1), A342144(n+1)]`
-/

namespace A015917.P13685985032525852395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015917.P13685985032525852395

/-!
# A015918: Inverse of 1909th cyclotomic polynomial.

The programs for A015918, there is no canonical definition to state claims against.
-/

/-! ## A015918.P16522959169951374605

`A014482(∑[A118102(A345599(n+1))])`
-/

namespace A015918.P16522959169951374605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A345599 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014482 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015918.P16522959169951374605

/-! ## A015918.P12624139652922260912

`floor(∑[∑[A244860(n+5)+1]]/(n+1)²)`
-/

namespace A015918.P12624139652922260912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244860 (n + 5) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)⌋

end

end A015918.P12624139652922260912

/-! ## A015918.P17480232822783233786

`A165560(A025510(n+5))`
-/

namespace A015918.P17480232822783233786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A025510 (n + 5)).toNat

end

end A015918.P17480232822783233786

/-! ## A015918.P13464130884598949715

`A014676(3^A235043(n))`
-/

namespace A015918.P13464130884598949715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014676 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A235043 n : ℤ))).toNat

end

end A015918.P13464130884598949715

/-! ## A015918.P847402690882716213

`A369975(A082996(n+1)!)`
-/

namespace A015918.P847402690882716213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369975 (Nat.factorial (A082996 (n + 1)).toNat)

end

end A015918.P847402690882716213

/-! ## A015918.P14068399286708225722

`A383706(∏[A043285(n+1)])`
-/

namespace A015918.P14068399286708225722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015918.P14068399286708225722

/-! ## A015918.P6956159524798154731

`A329678(3*A026801(n+1))`
-/

namespace A015918.P6956159524798154731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (3 * A026801 (n + 1)).toNat

end

end A015918.P6956159524798154731

/-! ## A015918.P6126135303382715826

`A113217(2*A025510(n+5))`
-/

namespace A015918.P6126135303382715826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113217 (2 * A025510 (n + 5)).toNat

end

end A015918.P6126135303382715826

/-! ## A015918.P11391392197443714692

`A125122(A025510(n+5)+4)`
-/

namespace A015918.P11391392197443714692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125122 (A025510 (n + 5) + 4).toNat

end

end A015918.P11391392197443714692

/-! ## A015918.P9999622900434701985

`A127245(A025510(n+5)+4)`
-/

namespace A015918.P9999622900434701985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127245 (A025510 (n + 5) + 4).toNat

end

end A015918.P9999622900434701985

/-!
# A015919: Positive integers k such that 2^k == 2 (mod k).

The programs for A015919, the canonical program `A015919.P3585954114832443963` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015919 has offset 1).

The definition of A015919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015919.P6452520343698264802

`∪[A001567(n+1), A008578(n+1)]`
-/

namespace A015919.P6452520343698264802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015919.P6452520343698264802

namespace A015919

/-- `∪[A001567(n+1), A008578(n+1)]` -/
def P6452520343698264802.Spec : Prop :=
  ∀ n, (P6452520343698264802.a n : ℤ) = A015919 (n + 1)

end A015919

/-! ## A015919.P17137556364370568531

`∪[A001567(n+1), A158611(n+2)]`
-/

namespace A015919.P17137556364370568531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015919.P17137556364370568531

namespace A015919

/-- `∪[A001567(n+1), A158611(n+2)]` -/
def P17137556364370568531.Spec : Prop :=
  ∀ n, (P17137556364370568531.a n : ℤ) = A015919 (n + 1)

end A015919

/-! ## A015919.P17571292770978683628

`∪[A001567(n+1), record[A259153(n+1)]]`
-/

namespace A015919.P17571292770978683628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015919.P17571292770978683628

namespace A015919

/-- `∪[A001567(n+1), record[A259153(n+1)]]` -/
def P17571292770978683628.Spec : Prop :=
  ∀ n, (P17571292770978683628.a n : ℤ) = A015919 (n + 1)

end A015919

/-! ## A015919.P18078885618697109348

`∪[A001567(n+1), A182986(n+1)+A000007(n)]`
-/

namespace A015919.P18078885618697109348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015919.P18078885618697109348

namespace A015919

/-- `∪[A001567(n+1), A182986(n+1)+A000007(n)]` -/
def P18078885618697109348.Spec : Prop :=
  ∀ n, (P18078885618697109348.a n : ℤ) = A015919 (n + 1)

end A015919

/-! ## A015919.P2432715636557681291

`∪[A001567(n+1), A112773(n+1)%A001747(n+1)]`
-/

namespace A015919.P2432715636557681291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112773 (n + 1)) (A001747 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015919.P2432715636557681291

namespace A015919

/-- `∪[A001567(n+1), A112773(n+1)%A001747(n+1)]` -/
def P2432715636557681291.Spec : Prop :=
  ∀ n, (P2432715636557681291.a n : ℤ) = A015919 (n + 1)

end A015919

/-! ## A015919.P4828022425668349126

`record[A007947(A176176(n+1))]`
-/

namespace A015919.P4828022425668349126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A176176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015919.P4828022425668349126

namespace A015919

/-- `record[A007947(A176176(n+1))]` -/
def P4828022425668349126.Spec : Prop :=
  ∀ n, P4828022425668349126.a n = A015919 (n + 1)

end A015919

/-! ## A015919.P3585954114832443963

`filter[A176176(n+1), A008966(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A015919

/-- `filter[A176176(n+1), A008966(#)]` -/
def P3585954114832443963.Spec : Prop :=
  ∀ n, P3585954114832443963.a n = A015919 (n + 1)

theorem P3585954114832443963.correct : P3585954114832443963.Spec := by
  intro n
  simp only [A015919, Nat.add_sub_cancel]

end A015919

/-! ## A015919.P10091890966521981664

`A141310(eq[A305890(n+1)%4, A305890(n+1)])`
-/

namespace A015919.P10091890966521981664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305890 (n + 1)) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015919.P10091890966521981664

namespace A015919

/-- `A141310(eq[A305890(n+1)%4, A305890(n+1)])` -/
def P10091890966521981664.Spec : Prop :=
  ∀ n, P10091890966521981664.a n = A015919 (n + 1)

end A015919

/-! ## A015919.P6489293994089989893

`record[A214606(1+n)]`
-/

namespace A015919.P6489293994089989893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015919.P6489293994089989893

namespace A015919

/-- `record[A214606(1+n)]` -/
def P6489293994089989893.Spec : Prop :=
  ∀ n, P6489293994089989893.a n = A015919 (n + 1)

end A015919

/-! ## A015919.P1317088091864935600

`eq[2, A239452(n+1)]+1`
-/

namespace A015919.P1317088091864935600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015919.P1317088091864935600

namespace A015919

/-- `eq[2, A239452(n+1)]+1` -/
def P1317088091864935600.Spec : Prop :=
  ∀ n, (P1317088091864935600.a n : ℤ) = A015919 (n + 1)

end A015919

/-! ## A015919.P1107688501286205084

`record[(1+n)/A159353(n+1)]`
-/

namespace A015919.P1107688501286205084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A159353 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015919.P1107688501286205084

namespace A015919

/-- `record[(1+n)/A159353(n+1)]` -/
def P1107688501286205084.Spec : Prop :=
  ∀ n, P1107688501286205084.a n = (A015919 (n + 1) : ℚ)

end A015919

/-! ## A015919.P10235161425027829324

`eq[n, n*A082495(n+1)]+1`
-/

namespace A015919.P10235161425027829324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015919.P10235161425027829324

namespace A015919

/-- `eq[n, n*A082495(n+1)]+1` -/
def P10235161425027829324.Spec : Prop :=
  ∀ n, (P10235161425027829324.a n : ℤ) = A015919 (n + 1)

end A015919

/-! ## A015919.P1133409656308470081

`A214606(eq[n+1, A214606(n+1)]+1)`
-/

namespace A015919.P1133409656308470081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015919.P1133409656308470081

namespace A015919

/-- `A214606(eq[n+1, A214606(n+1)]+1)` -/
def P1133409656308470081.Spec : Prop :=
  ∀ n, P1133409656308470081.a n = A015919 (n + 1)

end A015919

/-! ## A015919.P4181308016217140469

`record[gcd(n, 2-A182256(n))]`
-/

namespace A015919.P4181308016217140469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (2 - A182256 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015919.P4181308016217140469

namespace A015919

/-- `record[gcd(n, 2-A182256(n))]` -/
def P4181308016217140469.Spec : Prop :=
  ∀ n, (P4181308016217140469.a n : ℤ) = A015919 (n + 1)

end A015919

/-!
# A015920: Inverse of 1911th cyclotomic polynomial.

The programs for A015920, there is no canonical definition to state claims against.
-/

/-! ## A015920.P5994268042037550686

`A014828(A008706(n)-A312974(n))`
-/

namespace A015920.P5994268042037550686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014828 (A008706 n - A312974 n).toNat

end

end A015920.P5994268042037550686

/-!
# A015921: Positive integers n such that 2^n == 4 (mod n).

The programs for A015921, the canonical program `A015921.P682807466615567953` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015921 has offset 1).

The definition of A015921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015921.P682807466615567953

`record[gcd(A082494(n+1)+4, n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A015921

/-- `record[gcd(A082494(n+1)+4, n+1)]` -/
def P682807466615567953.Spec : Prop :=
  ∀ n, (P682807466615567953.a n : ℤ) = A015921 (n + 1)

theorem P682807466615567953.correct : P682807466615567953.Spec := by
  intro n
  simp only [A015921, Nat.add_sub_cancel]

end A015921

/-! ## A015921.P17750546294695665397

`eq[A269735(n), A270096(n+1)]+1`
-/

namespace A015921.P17750546294695665397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015921.P17750546294695665397

namespace A015921

/-- `eq[A269735(n), A270096(n+1)]+1` -/
def P17750546294695665397.Spec : Prop :=
  ∀ n, (P17750546294695665397.a n : ℤ) = A015921 (n + 1)

end A015921

/-! ## A015921.P13239569492625053022

`A106247(eq[A269735(n), A270096(n+1)])`
-/

namespace A015921.P13239569492625053022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015921.P13239569492625053022

namespace A015921

/-- `A106247(eq[A269735(n), A270096(n+1)])` -/
def P13239569492625053022.Spec : Prop :=
  ∀ n, P13239569492625053022.a n = A015921 (n + 1)

end A015921

/-! ## A015921.P10466102568677759264

`record[gcd(n+1, 2^(n+1)-4)]`
-/

namespace A015921.P10466102568677759264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((2 ^ (n + 1) : ℤ) - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015921.P10466102568677759264

namespace A015921

/-- `record[gcd(n+1, 2^(n+1)-4)]` -/
def P10466102568677759264.Spec : Prop :=
  ∀ n, (P10466102568677759264.a n : ℤ) = A015921 (n + 1)

end A015921

/-! ## A015921.P5342201430412666777

`eq[n, gcd(n, 4-A297663(n))]`
-/

namespace A015921.P5342201430412666777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (4 - A297663 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015921.P5342201430412666777

namespace A015921

/-- `eq[n, gcd(n, 4-A297663(n))]` -/
def P5342201430412666777.Spec : Prop :=
  ∀ n, (P5342201430412666777.a n : ℤ) = A015921 (n + 1)

end A015921

/-!
# A015922: Numbers k such that 2^k == 8 (mod k).

The programs for A015922, there is no canonical definition to state claims against.
-/

/-! ## A015922.P14140529932858391485

`∪[A033553(n+1), A033554(n+1)]`
-/

namespace A015922.P14140529932858391485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015922.P14140529932858391485

/-! ## A015922.P10512830919444401913

`∪[A033554(n+1), A276967(n+1)]`
-/

namespace A015922.P10512830919444401913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015922.P10512830919444401913

/-! ## A015922.P29940104231884378

`∪[A130133(n+1), A276967(n+1)]`
-/

namespace A015922.P29940104231884378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015922.P29940104231884378

/-! ## A015922.P150697647099156107

`∪[A130134(n+1), A276967(n+1)]`
-/

namespace A015922.P150697647099156107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015922.P150697647099156107

/-! ## A015922.P5149582015775878103

`record[gcd(n+1, A082494(n+1)+8)]`
-/

namespace A015922.P5149582015775878103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A082494 (n + 1) + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015922.P5149582015775878103

/-! ## A015922.P15136631712162489491

`record[gcd(8-A182256(n), A028310(n))]`
-/

namespace A015922.P15136631712162489491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 - A182256 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015922.P15136631712162489491

/-!
# A015923: Inverse of 1914th cyclotomic polynomial.

The programs for A015923, there is no canonical definition to state claims against.
-/

/-! ## A015923.P7949916384476773064

`A014966(n)*A033999(n)`
-/

namespace A015923.P7949916384476773064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014966 n * A033999 n

end

end A015923.P7949916384476773064

/-! ## A015923.P16161113495196205265

`A016055(n)%A139092(n+4)`
-/

namespace A015923.P16161113495196205265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016055 n) (A139092 (n + 4))

end

end A015923.P16161113495196205265

/-! ## A015923.P15475180601071838730

`A016055(n)%A118656(n+1)`
-/

namespace A015923.P15475180601071838730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016055 n) (A118656 (n + 1))

end

end A015923.P15475180601071838730

/-! ## A015923.P2813096643957415904

`A181838(A054425(n+1))+A016055(n)`
-/

namespace A015923.P2813096643957415904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181838 (A054425 (n + 1)).toNat + A016055 n

end

end A015923.P2813096643957415904

/-! ## A015923.P16774780133948951826

`A016055(A351831(n+1))`
-/

namespace A015923.P16774780133948951826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016055 (A351831 (n + 1)).toNat

end

end A015923.P16774780133948951826

/-!
# A015924: Positive integers n such that 2^n == 16 (mod n).

The programs for A015924, there is no canonical definition to state claims against.
-/

/-! ## A015924.P2001949196787608807

`record[gcd((n+4)²-A182256(n), A028310(n))]`
-/

namespace A015924.P2001949196787608807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 4) ^ 2 : ℤ) - A182256 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015924.P2001949196787608807

/-! ## A015924.P10854483550425692779

`eq[n, gcd(n, 16-A000079(n))]`
-/

namespace A015924.P10854483550425692779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (16 - A000079 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015924.P10854483550425692779

/-! ## A015924.P4396752067186722268

`record[gcd(16-A122111(n+1), A061395(3*(n+1)))]`
-/

namespace A015924.P4396752067186722268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (16 - A122111 (n + 1)) (A061395 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015924.P4396752067186722268

/-! ## A015924.P17441001673889305559

`lt[A128139(A061038(n+2)), A198395(n)]`
-/

namespace A015924.P17441001673889305559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A061038 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015924.P17441001673889305559

/-!
# A015925: Positive integers n such that 2^n == 2^5 (mod n).

The programs for A015925, there is no canonical definition to state claims against.
-/

/-! ## A015925.P17901529102536114814

`A249870(record[A003823(n)])`
-/

namespace A015925.P17901529102536114814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249870 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015925.P17901529102536114814

/-! ## A015925.P12889675577070194565

`A249870(A226635(n+1))`
-/

namespace A015925.P12889675577070194565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249870 (A226635 (n + 1)).toNat

end

end A015925.P12889675577070194565

/-! ## A015925.P14086590884910840969

`record[A051125(∑[A127279(n)])]`
-/

namespace A015925.P14086590884910840969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015925.P14086590884910840969

/-! ## A015925.P3931343851145960741

`record[A334030(∑[A195849(n)])]`
-/

namespace A015925.P3931343851145960741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334030 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015925.P3931343851145960741

/-! ## A015925.P9353643177404456661

`record[and(A050167(n), A117352(n))]`
-/

namespace A015925.P9353643177404456661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050167 n) (A117352 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015925.P9353643177404456661

/-!
# A015926: Positive integers n such that 2^n == 2^6 (mod n).

The programs for A015926, there is no canonical definition to state claims against.
-/

/-! ## A015926.P3944022409599419751

`record[gcd(n+1, A000337(n)+63)]`
-/

namespace A015926.P3944022409599419751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000337 n + 63)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015926.P3944022409599419751

/-! ## A015926.P17308342566854730354

`A085154(n+1)-A101637(A085134(n+1))`
-/

namespace A015926.P17308342566854730354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085154 (n + 1) - A101637 (A085134 (n + 1)).toNat

end

end A015926.P17308342566854730354

/-! ## A015926.P3616908482834208148

`A109884(n+1)+A055641(ceil(A119917(n+1)/2))`
-/

namespace A015926.P3616908482834208148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109884 (n + 1) + A055641 ⌈(A119917 (n + 1) : ℚ) / 2⌉.toNat

end

end A015926.P3616908482834208148

/-! ## A015926.P2239029017612535982

`A109884(n+1)+A055641(∑[2^n-A178472(n+1)])`
-/

namespace A015926.P2239029017612535982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A178472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109884 (n + 1) + A055641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015926.P2239029017612535982

/-! ## A015926.P14478094033003027201

`record[A000005(A247913(2*n+1))]-char[11]`
-/

namespace A015926.P14478094033003027201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A247913 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A015926.P14478094033003027201

/-!
# A015927: Positive integers n such that 2^n == 2^7 (mod n).

The programs for A015927, there is no canonical definition to state claims against.
-/

/-! ## A015927.P8840170985274689642

`record[Δ[A187816(A298221(n+1))]]`
-/

namespace A015927.P8840170985274689642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187816 (A298221 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015927.P8840170985274689642

/-! ## A015927.P879679743947156209

`record[Δ[A187816(A299682(n+1))]]`
-/

namespace A015927.P879679743947156209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187816 (A299682 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015927.P879679743947156209

/-! ## A015927.P9822183884825283792

`A305563(n+1)+A086008(A369631(n))`
-/

namespace A015927.P9822183884825283792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305563 (n + 1) + A086008 (A369631 n).toNat

end

end A015927.P9822183884825283792

/-! ## A015927.P17145012202339113132

`A339890(A374525(n+1))+A321142(n)`
-/

namespace A015927.P17145012202339113132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (A374525 (n + 1)).toNat + A321142 n

end

end A015927.P17145012202339113132

/-!
# A015928: Inverse of 1919th cyclotomic polynomial.

The programs for A015928, the canonical program `A015928.P17940027003137050527` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015928 has offset 0).

The definition of A015928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015928.P2699365708598527035

`A014952(A004858(p?[A035250(n+1)]))`
-/

namespace A015928.P2699365708598527035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014952 (A004858 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A015928.P2699365708598527035

namespace A015928

/-- `A014952(A004858(p?[A035250(n+1)]))` -/
def P2699365708598527035.Spec : Prop :=
  ∀ n, P2699365708598527035.a n = A015928 n

end A015928

/-! ## A015928.P14598804703819502718

`A014592(A140106(n+1)+n-(A124762(n)+A011371(n)))`
-/

namespace A015928.P14598804703819502718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014592 (A140106 (n + 1) + ((n : ℤ) - (A124762 n + A011371 n))).toNat

end

end A015928.P14598804703819502718

namespace A015928

/-- `A014592(A140106(n+1)+n-(A124762(n)+A011371(n)))` -/
def P14598804703819502718.Spec : Prop :=
  ∀ n, P14598804703819502718.a n = A015928 n

end A015928

/-! ## A015928.P16114742933948796126

`C(2, A326688(n+2))`
-/

namespace A015928.P16114742933948796126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326688 (n + 2)).toNat

end

end A015928.P16114742933948796126

namespace A015928

/-- `C(2, A326688(n+2))` -/
def P16114742933948796126.Spec : Prop :=
  ∀ n, (P16114742933948796126.a n : ℤ) = A015928 n

end A015928

/-! ## A015928.P926286875265891940

`C(2, A326681(n+1)²)`
-/

namespace A015928.P926286875265891940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326681 (n + 1) ^ 2).toNat

end

end A015928.P926286875265891940

namespace A015928

/-- `C(2, A326681(n+1)²)` -/
def P926286875265891940.Spec : Prop :=
  ∀ n, (P926286875265891940.a n : ℤ) = A015928 n

end A015928

/-! ## A015928.P13568665316565853361

`C(n, comp[A006626(n+4)])`
-/

namespace A015928.P13568665316565853361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006626 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015928.P13568665316565853361

namespace A015928

/-- `C(n, comp[A006626(n+4)])` -/
def P13568665316565853361.Spec : Prop :=
  ∀ n, (P13568665316565853361.a n : ℤ) = A015928 n

end A015928

/-! ## A015928.P9877886205843806173

`row(C(2, A350893(n+1)))`
-/

namespace A015928.P9877886205843806173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose 2 (A350893 (n + 1)).toNat)

end

end A015928.P9877886205843806173

namespace A015928

/-- `row(C(2, A350893(n+1)))` -/
def P9877886205843806173.Spec : Prop :=
  ∀ n, (P9877886205843806173.a n : ℤ) = A015928 n

end A015928

/-! ## A015928.P17583570324992956509

`A000007(A326681(n+1))`
-/

namespace A015928.P17583570324992956509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A326681 (n + 1)).toNat

end

end A015928.P17583570324992956509

namespace A015928

/-- `A000007(A326681(n+1))` -/
def P17583570324992956509.Spec : Prop :=
  ∀ n, P17583570324992956509.a n = A015928 n

end A015928

/-! ## A015928.P6614145410149022892

`floor(A188900(n)/A374517(n))`
-/

namespace A015928.P6614145410149022892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188900 n : ℚ) / (A374517 n : ℚ)⌋

end

end A015928.P6614145410149022892

namespace A015928

/-- `floor(A188900(n)/A374517(n))` -/
def P6614145410149022892.Spec : Prop :=
  ∀ n, P6614145410149022892.a n = A015928 n

end A015928

/-! ## A015928.P3673935889341877184

`A019590(A326681(n+1)+1)`
-/

namespace A015928.P3673935889341877184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A326681 (n + 1) + 1).toNat

end

end A015928.P3673935889341877184

namespace A015928

/-- `A019590(A326681(n+1)+1)` -/
def P3673935889341877184.Spec : Prop :=
  ∀ n, P3673935889341877184.a n = A015928 n

end A015928

/-! ## A015928.P17940027003137050527

`A000035(∑[char[A000040(3*n+5)]]!)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A015928

/-- `A000035(∑[char[A000040(3*n+5)]]!)` -/
def P17940027003137050527.Spec : Prop :=
  ∀ n, P17940027003137050527.a n = A015928 n

theorem P17940027003137050527.correct : P17940027003137050527.Spec := by
  intro n
  simp only [A015928]

end A015928

/-! ## A015928.P5060105197937784755

`val(A000010(A326681(n+1)+1)+1, 2)`
-/

namespace A015928.P5060105197937784755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A326681 (n + 1) + 1).toNat + 1).toNat 2

end

end A015928.P5060105197937784755

namespace A015928

/-- `val(A000010(A326681(n+1)+1)+1, 2)` -/
def P5060105197937784755.Spec : Prop :=
  ∀ n, (P5060105197937784755.a n : ℤ) = A015928 n

end A015928

/-! ## A015928.P2840503144732279964

`A151878(A365543(n+4))+A015966(n)`
-/

namespace A015928.P2840503144732279964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A365543 (n + 4)).toNat + A015966 n

end

end A015928.P2840503144732279964

namespace A015928

/-- `A151878(A365543(n+4))+A015966(n)` -/
def P2840503144732279964.Spec : Prop :=
  ∀ n, P2840503144732279964.a n = A015928 n

end A015928

/-! ## A015928.P2514094184762080570

`A000007(floor(A259692(n+1)/(A120808(3*n+4)+1)))`
-/

namespace A015928.P2514094184762080570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(A259692 (n + 1) : ℚ) / (A120808 (3 * n + 4) + 1 : ℚ)⌋.toNat

end

end A015928.P2514094184762080570

namespace A015928

/-- `A000007(floor(A259692(n+1)/(A120808(3*n+4)+1)))` -/
def P2514094184762080570.Spec : Prop :=
  ∀ n, P2514094184762080570.a n = A015928 n

end A015928

/-! ## A015928.P4628993020090311623

`A121373(∑[A243831(n+1)]+1)`
-/

namespace A015928.P4628993020090311623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A015928.P4628993020090311623

namespace A015928

/-- `A121373(∑[A243831(n+1)]+1)` -/
def P4628993020090311623.Spec : Prop :=
  ∀ n, P4628993020090311623.a n = A015928 n

end A015928

/-! ## A015928.P1489385842240744153

`round(A005117(n+1)/A321290(n+1))`
-/

namespace A015928.P1489385842240744153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005117 (n + 1) : ℚ) / (A321290 (n + 1) : ℚ))

end

end A015928.P1489385842240744153

namespace A015928

/-- `round(A005117(n+1)/A321290(n+1))` -/
def P1489385842240744153.Spec : Prop :=
  ∀ n, P1489385842240744153.a n = A015928 n

end A015928

/-! ## A015928.P6461324068966134560

`C(A249351(n+1), ∑[A333146(n+1)])`
-/

namespace A015928.P6461324068966134560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A249351 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015928.P6461324068966134560

namespace A015928

/-- `C(A249351(n+1), ∑[A333146(n+1)])` -/
def P6461324068966134560.Spec : Prop :=
  ∀ n, (P6461324068966134560.a n : ℤ) = A015928 n

end A015928

/-! ## A015928.P3482943870185172501

`C(∏{e}[n+1, #%2], A326687(A130481(n+1)))`
-/

namespace A015928.P3482943870185172501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % 2) (A326687 (A130481 (n + 1)).toNat).toNat

end

end A015928.P3482943870185172501

namespace A015928

/-- `C(∏{e}[n+1, #%2], A326687(A130481(n+1)))` -/
def P3482943870185172501.Spec : Prop :=
  ∀ n, (P3482943870185172501.a n : ℤ) = A015928 n

end A015928

/-! ## A015928.P16033869138089971327

`A000007(floor(A316185(n+1)/(A340608(n+1)+1)))`
-/

namespace A015928.P16033869138089971327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(A316185 (n + 1) : ℚ) / (A340608 (n + 1) + 1 : ℚ)⌋.toNat

end

end A015928.P16033869138089971327

namespace A015928

/-- `A000007(floor(A316185(n+1)/(A340608(n+1)+1)))` -/
def P16033869138089971327.Spec : Prop :=
  ∀ n, P16033869138089971327.a n = A015928 n

end A015928

/-!
# A015929: Positive integers n such that 2^n == 2^8 (mod n).

The programs for A015929, there is no canonical definition to state claims against.
-/

/-! ## A015929.P6326410481981486080

`lt[A072213(A002487(n)), A207826(n+1)]`
-/

namespace A015929.P6326410481981486080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072213 (A002487 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015929.P6326410481981486080

/-! ## A015929.P2762966637068841894

`∑[∏{p}[A076876(n), A000005(#)]]`
-/

namespace A015929.P2762966637068841894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076876 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A000005 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015929.P2762966637068841894

/-! ## A015929.P3202653405380598508

`lt[A305989(n), A393600(A023119(n+1))]`
-/

namespace A015929.P3202653405380598508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393600 ((A023119 (n + 1)).toNat + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015929.P3202653405380598508

/-! ## A015929.P14232078944588358711

`record[and(A004277(n), A096842(n+1))]`
-/

namespace A015929.P14232078944588358711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004277 n) (A096842 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015929.P14232078944588358711

/-! ## A015929.P16683548387161207432

`record[gcd(A134149(n+1), A186690(n+1))]`
-/

namespace A015929.P16683548387161207432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134149 (n + 1)) (A186690 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015929.P16683548387161207432

/-!
# A015930: Inverse of 1921st cyclotomic polynomial.

The programs for A015930, there is no canonical definition to state claims against.
-/

/-! ## A015930.P13509282131377520860

`A015088(A325419(n+1)%A233583(n+1))`
-/

namespace A015930.P13509282131377520860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015088 (Int.tmod (A325419 (n + 1)) (A233583 (n + 1))).toNat

end

end A015930.P13509282131377520860

/-! ## A015930.P9239377924950495235

`1-∑[char[A000040(6+A320155(n+1)!)]]`
-/

namespace A015930.P9239377924950495235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (6 + Nat.factorial (A320155 (n + 1)).toNat)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A015930.P9239377924950495235

/-! ## A015930.P3529209231643254467

`1-∑[char[A000040(6+A320179(3*n+1)!)]]`
-/

namespace A015930.P3529209231643254467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (6 + Nat.factorial (A320179 (3 * n + 1)).toNat)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A015930.P3529209231643254467

/-! ## A015930.P15098165558611165229

`C(n, comp[A354880(n+1)])`
-/

namespace A015930.P15098165558611165229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015930.P15098165558611165229

/-! ## A015930.P7755787165861388112

`C(2, A000788(A308977(n)))`
-/

namespace A015930.P7755787165861388112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000788 (A308977 n).toNat).toNat

end

end A015930.P7755787165861388112

/-! ## A015930.P7146442972900124354

`C(2, A326457(A151800(n)))`
-/

namespace A015930.P7146442972900124354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326457 (A151800 n).toNat).toNat

end

end A015930.P7146442972900124354

/-! ## A015930.P8747863045111247209

`floor(1/A394862(A110656(n)))`
-/

namespace A015930.P8747863045111247209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A394862 (A110656 n).toNat : ℚ)⌋

end

end A015930.P8747863045111247209

/-! ## A015930.P6199057848051005709

`A000007(A065685(n+1)^5)`
-/

namespace A015930.P6199057848051005709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A065685 (n + 1) ^ 5).toNat

end

end A015930.P6199057848051005709

/-! ## A015930.P12570441313758037342

`A373588(∑[A373588(n+3)]!)`
-/

namespace A015930.P12570441313758037342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373588 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373588 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A015930.P12570441313758037342

/-! ## A015930.P3994088049782978110

`A047999(floor(log2(A345780(3*n+5))))`
-/

namespace A015930.P3994088049782978110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (Nat.log 2 (A345780 (3 * n + 5)).toNat)

end

end A015930.P3994088049782978110

/-! ## A015930.P7625393753715847118

`C(A289508(2*(n+1)), A079412(A079438(n)))`
-/

namespace A015930.P7625393753715847118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A289508 (2 * (n + 1))).toNat (A079412 (A079438 n).toNat).toNat

end

end A015930.P7625393753715847118

/-! ## A015930.P9800196971020195673

`C(A281013(n+4), A326588(A384513(n+2)))`
-/

namespace A015930.P9800196971020195673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A281013 (n + 4)).toNat (A326588 (A384513 (n + 2)).toNat).toNat

end

end A015930.P9800196971020195673

/-! ## A015930.P17527365696916175967

`C(A001222(A136066(3*n+2)), A017885(n+1))`
-/

namespace A015930.P17527365696916175967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A136066 (3 * n + 2)).toNat).toNat (A017885 (n + 1)).toNat

end

end A015930.P17527365696916175967

/-! ## A015930.P4609794533659430531

`A263013(∑[∑[A263014(n+3)]])`
-/

namespace A015930.P4609794533659430531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015930.P4609794533659430531

/-! ## A015930.P3575961063005171531

`C(A007318(A007318(n)), A048037(n+1))`
-/

namespace A015930.P3575961063005171531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 (A007318 n).toNat).toNat (A048037 (n + 1)).toNat

end

end A015930.P3575961063005171531

/-! ## A015930.P17439318745218881253

`A115944(A003624(2*n+3)*A105514(n+3))`
-/

namespace A015930.P17439318745218881253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115944 (A003624 (2 * n + 3) * A105514 (n + 3)).toNat

end

end A015930.P17439318745218881253

/-! ## A015930.P7277152624318210310

`A245928(4^A065685(n+1))`
-/

namespace A015930.P7277152624318210310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245928 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A065685 (n + 1) : ℤ))).toNat

end

end A015930.P7277152624318210310

/-! ## A015930.P5975548663193242193

`round(root(A000040(n+1)/A038664(n+1), 4))`
-/

namespace A015930.P5975548663193242193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000040 (n + 1) : ℚ) / (A038664 (n + 1) : ℚ) : ℝ) ^ (1 / (4 : ℝ)))

end

end A015930.P5975548663193242193

/-! ## A015930.P9504828901438629717

`round(root(A023982(3*n+2)/A038664(n+1), 4))`
-/

namespace A015930.P9504828901438629717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A023982 (3 * n + 2) : ℚ) / (A038664 (n + 1) : ℚ) : ℝ) ^ (1 / (4 : ℝ)))

end

end A015930.P9504828901438629717

/-! ## A015930.P7694632956954545701

`A094497(n)^A345166(A065033(n)+1)`
-/

namespace A015930.P7694632956954545701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094497 n : ℚ) ^ (A345166 (A065033 n + 1).toNat : ℤ)

end

end A015930.P7694632956954545701

/-!
# A015931: Positive integers n such that 2^n (mod n) == 2^9 (mod n).

The programs for A015931, there is no canonical definition to state claims against.
-/

/-! ## A015931.P6395617629073469815

`eq[3, A335465(A004760(n+1))]`
-/

namespace A015931.P6395617629073469815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (A004760 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015931.P6395617629073469815

/-! ## A015931.P8349289248762052739

`∪[A276970(n+1), A394533(A061509(n))]`
-/

namespace A015931.P8349289248762052739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394533 (A061509 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015931.P8349289248762052739

/-!
# A015933: Inverse of 1924th cyclotomic polynomial.

The programs for A015933, there is no canonical definition to state claims against.
-/

/-! ## A015933.P14845329601066962516

`A015662(A291790(1+n))+A015637(n)`
-/

namespace A015933.P14845329601066962516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015662 (A291790 (1 + n)).toNat + A015637 n

end

end A015933.P14845329601066962516

/-! ## A015933.P3195996816082863147

`A016141(n)+A000007(A214626(n))`
-/

namespace A015933.P3195996816082863147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016141 n + A000007 (A214626 n).toNat

end

end A015933.P3195996816082863147

/-! ## A015933.P15247691922128810350

`A001221(A062343(1+n))*A016141(n)`
-/

namespace A015933.P15247691922128810350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062343 (1 + n)).toNat * A016141 n

end

end A015933.P15247691922128810350

/-! ## A015933.P6705655227660516697

`A008966(or(3, A177915(n+1)))*A016245(n)`
-/

namespace A015933.P6705655227660516697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (Int.lor 3 (A177915 (n + 1))).toNat * A016245 n

end

end A015933.P6705655227660516697

/-! ## A015933.P15670259243044821776

`A001221(A248972(n+1)²²)*A016141(n)`
-/

namespace A015933.P15670259243044821776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A248972 (n + 1) ^ 2) ^ 2).toNat * A016141 n

end

end A015933.P15670259243044821776

/-! ## A015933.P8113877448534413086

`A008966(A177915(n+1)+n+1)*A016245(n)`
-/

namespace A015933.P8113877448534413086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A177915 (n + 1) + (n + 1 : ℤ)).toNat * A016245 n

end

end A015933.P8113877448534413086

/-! ## A015933.P1108654653939931885

`A015760(A115728(n))*A016245(n)`
-/

namespace A015933.P1108654653939931885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015760 (A115728 n).toNat * A016245 n

end

end A015933.P1108654653939931885

/-! ## A015933.P17261534868849992878

`A016245(n)*A079724(A220122(n))`
-/

namespace A015933.P17261534868849992878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016245 n * A079724 (A220122 n).toNat

end

end A015933.P17261534868849992878

/-! ## A015933.P4920242059043481768

`A016141(n)^A104847(A179969(n+2))`
-/

namespace A015933.P4920242059043481768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016141 n : ℚ) ^ (A104847 (A179969 (n + 2)).toNat : ℤ)

end

end A015933.P4920242059043481768

/-! ## A015933.P6709433235583967198

`A016245(n)+A089851(n)%A033999(n)`
-/

namespace A015933.P6709433235583967198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016245 n + Int.tmod (A089851 n) (A033999 n)

end

end A015933.P6709433235583967198

/-!
# A015934: Inverse of 1925th cyclotomic polynomial.

The programs for A015934, there is no canonical definition to state claims against.
-/

/-! ## A015934.P367304338208611446

`gcd(A016344(n), A016392(2*n+1))*A016346(n)`
-/

namespace A015934.P367304338208611446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A016344 n) (A016392 (2 * n + 1)) : ℤ) * A016346 n

end

end A015934.P367304338208611446

/-! ## A015934.P5448865008077446271

`(A016392(2*n+1)+A016346(2*(n+1)))*A016346(n)`
-/

namespace A015934.P5448865008077446271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016392 (2 * n + 1) + A016346 (2 * (n + 1))) * A016346 n

end

end A015934.P5448865008077446271

/-! ## A015934.P10704074069497497518

`A016346(n)^A111254(n+1)`
-/

namespace A015934.P10704074069497497518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016346 n : ℚ) ^ (A111254 (n + 1) : ℤ)

end

end A015934.P10704074069497497518

/-! ## A015934.P13780084016709938833

`A016284(n)^A176983(n+1)`
-/

namespace A015934.P13780084016709938833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016284 n : ℚ) ^ (A176983 (n + 1) : ℤ)

end

end A015934.P13780084016709938833

/-! ## A015934.P14432843529256077088

`A016286(A002522(n))+A016284(n)`
-/

namespace A015934.P14432843529256077088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 (A002522 n).toNat + A016284 n

end

end A015934.P14432843529256077088

/-! ## A015934.P1857585841433510175

`A016346(n)*A321455(A259341(n+1))`
-/

namespace A015934.P1857585841433510175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016346 n * A321455 (A259341 (n + 1)).toNat

end

end A015934.P1857585841433510175

/-! ## A015934.P3299180090423866868

`A016346(n)^A186619(A256567(n+1))`
-/

namespace A015934.P3299180090423866868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016346 n : ℚ) ^ (A186619 (A256567 (n + 1)).toNat : ℤ)

end

end A015934.P3299180090423866868

/-! ## A015934.P12500518914037853195

`A016284(n)-A080300(A176983(n+1)-2)`
-/

namespace A015934.P12500518914037853195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016284 n - A080300 (A176983 (n + 1) - 2).toNat

end

end A015934.P12500518914037853195

/-! ## A015934.P14780595961214626529

`A016284(n)+C(A176983(n+1), A063990(n+1))`
-/

namespace A015934.P14780595961214626529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016284 n + (Nat.choose (A176983 (n + 1)).toNat (A063990 (n + 1)).toNat : ℤ)

end

end A015934.P14780595961214626529

/-! ## A015934.P12346415500288212600

`A016284(n)+C(A176983(n+1), A069496(n+1))`
-/

namespace A015934.P12346415500288212600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016284 n + (Nat.choose (A176983 (n + 1)).toNat (A069496 (n + 1)).toNat : ℤ)

end

end A015934.P12346415500288212600

/-!
# A015935: Positive integers n such that 2^n == 2^11 (mod n).

The programs for A015935, there is no canonical definition to state claims against.
-/

/-! ## A015935.P9095296911178695167

`eq[A010892(A104035(n)), A353849(n)]`
-/

namespace A015935.P9095296911178695167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A104035 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015935.P9095296911178695167

/-! ## A015935.P9536488886941603972

`eq[A316789(A072493(n+1)), A353849(n)]`
-/

namespace A015935.P9536488886941603972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (A072493 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015935.P9536488886941603972

/-! ## A015935.P15726348513288910637

`eq[A057521(A161492(2*n+3)), A353849(n)]`
-/

namespace A015935.P15726348513288910637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A161492 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015935.P15726348513288910637

/-! ## A015935.P13593166805758735495

`record[A005041(A126290(n))]`
-/

namespace A015935.P13593166805758735495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A126290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015935.P13593166805758735495

/-! ## A015935.P6608745654399067511

`∑[A094604(val(A171287(n+1)-4, 2))]`
-/

namespace A015935.P6608745654399067511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 (SequenceMachineLib.valuation (A171287 (n + 1) - 4).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015935.P6608745654399067511

/-!
# A015936: Inverse of 1927th cyclotomic polynomial.

The programs for A015936, there is no canonical definition to state claims against.
-/

/-! ## A015936.P7096459600931225274

`A015600(A008616(9*n+3))`
-/

namespace A015936.P7096459600931225274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 (A008616 (9 * n + 3)).toNat

end

end A015936.P7096459600931225274

/-! ## A015936.P15537480974158643211

`A016288(∑[A317146(1+n)]+n)`
-/

namespace A015936.P15537480974158643211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317146 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A015936.P15537480974158643211

/-! ## A015936.P18375474087742749998

`A015600(A004277(n)-A338331(n+1))`
-/

namespace A015936.P18375474087742749998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 (A004277 n - A338331 (n + 1)).toNat

end

end A015936.P18375474087742749998

/-! ## A015936.P7835300296602509379

`A029880(ceil(A112952(n)/A002144(n+1)))`
-/

namespace A015936.P7835300296602509379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029880 ⌈(A112952 n : ℚ) / (A002144 (n + 1) : ℚ)⌉.toNat

end

end A015936.P7835300296602509379

/-! ## A015936.P9618396941381040149

`A122045(floor(A370320(n)/A352203(3*n+4)))`
-/

namespace A015936.P9618396941381040149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 ⌊(A370320 n : ℚ) / (A352203 (3 * n + 4) : ℚ)⌋.toNat

end

end A015936.P9618396941381040149

/-!
# A015937: Positive integers n such that 2^n == 2^12 (mod n).

The programs for A015937, there is no canonical definition to state claims against.
-/

/-! ## A015937.P16144965687375685700

`eq[n, gcd(n, A024018(n+4))]`
-/

namespace A015937.P16144965687375685700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A024018 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015937.P16144965687375685700

/-!
# A015938: Smallest k>2^n such that 2^k == 2^n (mod k).

The programs for A015938, there is no canonical definition to state claims against.
-/

/-! ## A015938.P4139511103015714025

`A015939(n+1)+2^(n+1)`
-/

namespace A015938.P4139511103015714025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015939 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A015938.P4139511103015714025

/-! ## A015938.P7659443108623191738

`A140513(∑[n])+A015939(n+1)`
-/

namespace A015938.P7659443108623191738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 (∑ j ∈ Finset.range (n + 1), f1 j) + A015939 (n + 1)

end

end A015938.P7659443108623191738

/-! ## A015938.P12133112777759350254

`or(A000079(1+n), A015939(n+1))`
-/

namespace A015938.P12133112777759350254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (1 + n)) (A015939 (n + 1))

end

end A015938.P12133112777759350254

/-! ## A015938.P15500096077607269787

`A077957(A317440(n+1))+A015939(n+1)`
-/

namespace A015938.P15500096077607269787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A317440 (n + 1)).toNat + A015939 (n + 1)

end

end A015938.P15500096077607269787

/-! ## A015938.P4314493295979044521

`xor(A000079(A000027(n+1)), A015939(n+1))`
-/

namespace A015938.P4314493295979044521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 (A000027 (n + 1)).toNat) (A015939 (n + 1))

end

end A015938.P4314493295979044521

/-! ## A015938.P14286201680647202274

`xor(A000079(A130446(n+1)), A015939(n+1))`
-/

namespace A015938.P14286201680647202274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 (A130446 (n + 1)).toNat) (A015939 (n + 1))

end

end A015938.P14286201680647202274

/-!
# A015939: A015938(n)-2^n.

The programs for A015939, there is no canonical definition to state claims against.
-/

/-! ## A015939.P2447702509666378123

`A015938(n+1)-2^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A015939.P2447702509666378123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015938 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A015939.P2447702509666378123

/-! ## A015939.P2352440840338166471

`and(∑[2^n], A015938(n+1))`
-/

namespace A015939.P2352440840338166471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A015938 (n + 1))

end

end A015939.P2352440840338166471

/-! ## A015939.P11301140244376819724

`and(A015938(n+1), A126646(n))`
-/

namespace A015939.P11301140244376819724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015938 (n + 1)) (A126646 n)

end

end A015939.P11301140244376819724

/-! ## A015939.P4318713810631231694

`and(A015938(n+1), A263806(n))`
-/

namespace A015939.P4318713810631231694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015938 (n + 1)) (A263806 n)

end

end A015939.P4318713810631231694

/-! ## A015939.P2701622461939587333

`and(A015938(n+1), A267816(n))`
-/

namespace A015939.P2701622461939587333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015938 (n + 1)) (A267816 n)

end

end A015939.P2701622461939587333

/-! ## A015939.P9187458084513316604

`and(A015938(n+1), A283606(n))`
-/

namespace A015939.P9187458084513316604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015938 (n + 1)) (A283606 n)

end

end A015939.P9187458084513316604

/-! ## A015939.P18031599839735648534

`and(A015938(n+1), A286521(n))`
-/

namespace A015939.P18031599839735648534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015938 (n + 1)) (A286521 n)

end

end A015939.P18031599839735648534

/-! ## A015939.P11826466775912897464

`and(A015938(n+1), A290682(n))`
-/

namespace A015939.P11826466775912897464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015938 (n + 1)) (A290682 n)

end

end A015939.P11826466775912897464

/-! ## A015939.P840142256345642733

`and(A015938(n+1), A290836(n))`
-/

namespace A015939.P840142256345642733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015938 (n + 1)) (A290836 n)

end

end A015939.P840142256345642733

/-! ## A015939.P5808757919680210429

`and(A015938(n+1), A060160(n+1))`
-/

namespace A015939.P5808757919680210429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015938 (n + 1)) (A060160 (n + 1))

end

end A015939.P5808757919680210429

/-!
# A015941: Inverse of 1932nd cyclotomic polynomial.

The programs for A015941, there is no canonical definition to state claims against.
-/

/-! ## A015941.P4132558586514552805

`A015605(lt[A236800(n+6), A094612(n+4)])`
-/

namespace A015941.P4132558586514552805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236800 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015941.P4132558586514552805

/-!
# A015942: Positive integers n such that n | (2^n + n/2 - 1).

The programs for A015942, there is no canonical definition to state claims against.
-/

/-! ## A015942.P16340281454924507596

`A014741(3+n)`
-/

namespace A015942.P16340281454924507596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (3 + n)

end

end A015942.P16340281454924507596

/-! ## A015942.P3613439653959063534

`2*A014945(2+n)`
-/

namespace A015942.P3613439653959063534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014945 (2 + n)

end

end A015942.P3613439653959063534

/-! ## A015942.P12681552468155007015

`6*A125227(n+3)`
-/

namespace A015942.P12681552468155007015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A125227 (n + 3)

end

end A015942.P12681552468155007015

/-! ## A015942.P13586585812310732238

`lcm(2, A014945(n+2))`
-/

namespace A015942.P13586585812310732238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A014945 (n + 2))

end

end A015942.P13586585812310732238

/-! ## A015942.P16424871451525090155

`record[A014741(A183041(n))]`
-/

namespace A015942.P16424871451525090155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (A183041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015942.P16424871451525090155

/-! ## A015942.P6766058166310312248

`2*∩[A014851(n+2), A014957(n+2)]`
-/

namespace A015942.P6766058166310312248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014851 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015942.P6766058166310312248

/-! ## A015942.P921160769108317937

`∩[A068563(n+1), A074837(n+1)]`
-/

namespace A015942.P921160769108317937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015942.P921160769108317937

/-! ## A015942.P4098987911182203895

`∩[A074837(n+1), A124276(n+1)]`
-/

namespace A015942.P4098987911182203895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015942.P4098987911182203895

/-! ## A015942.P7849107194553002293

`A342320(n+2)+1`
-/

namespace A015942.P7849107194553002293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342320 (n + 2) + 1

end

end A015942.P7849107194553002293

/-!
# A015943: a(n) = (2^(2*n)+n) mod (2*n).

The programs for A015943, the canonical program `A015943.P10757771265388745654` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015943 has offset 1).

The definition of A015943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2*(n+1))+n+1)%(2*(n+1))` (program `A015943.P10757771265388745654`, by `A015943.P10757771265388745654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015943.P10757771265388745654

`(2^(2*(n+1))+n+1)%(2*(n+1))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015943

/-- `(2^(2*(n+1))+n+1)%(2*(n+1))` -/
def P10757771265388745654.Spec : Prop :=
  ∀ n, (P10757771265388745654.a n : ℤ) = A015943 (n + 1)

theorem P10757771265388745654.correct : P10757771265388745654.Spec := by
  intro n
  simp only [A015943, Nat.add_sub_cancel]

end A015943

/-! ## A015943.P15161904986915222469

`1-A082900(2*(n+1))+n`
-/

namespace A015943.P15161904986915222469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082900 (2 * (n + 1)) + (n : ℤ)

end

end A015943.P15161904986915222469

namespace A015943

/-- `1-A082900(2*(n+1))+n` -/
def P15161904986915222469.Spec : Prop :=
  ∀ n, P15161904986915222469.a n = A015943 (n + 1)

end A015943

/-! ## A015943.P3300975855604963802

`1+n-A082900(A103517(n))`
-/

namespace A015943.P3300975855604963802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A082900 (A103517 n).toNat

end

end A015943.P3300975855604963802

namespace A015943

/-- `1+n-A082900(A103517(n))` -/
def P3300975855604963802.Spec : Prop :=
  ∀ n, P3300975855604963802.a n = A015943 (n + 1)

end A015943

/-! ## A015943.P11996442075994970163

`A025581(A054000(n+1)+1-A215747(2*(n+1)))`
-/

namespace A015943.P11996442075994970163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A054000 (n + 1) + 1 - A215747 (2 * (n + 1))).toNat

end

end A015943.P11996442075994970163

namespace A015943

/-- `A025581(A054000(n+1)+1-A215747(2*(n+1)))` -/
def P11996442075994970163.Spec : Prop :=
  ∀ n, P11996442075994970163.a n = A015943 (n + 1)

end A015943

/-!
# A015944: Inverse of 1935th cyclotomic polynomial.

The programs for A015944, there is no canonical definition to state claims against.
-/

/-! ## A015944.P7312667859855880838

`A016124(n)^A131581(A271365(n+1))`
-/

namespace A015944.P7312667859855880838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A131581 (A271365 (n + 1)).toNat : ℤ)

end

end A015944.P7312667859855880838

/-! ## A015944.P5988139373515986573

`A016124(n)^A000466(A025586(3*n+2))`
-/

namespace A015944.P5988139373515986573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A000466 (A025586 (3 * n + 2)).toNat : ℤ)

end

end A015944.P5988139373515986573

/-! ## A015944.P1855148398260827049

`A016124(n)^A267742(n+1)`
-/

namespace A015944.P1855148398260827049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A267742 (n + 1) : ℤ)

end

end A015944.P1855148398260827049

/-! ## A015944.P15168295108791105035

`A015082(A000700(n))*A016124(n)`
-/

namespace A015944.P15168295108791105035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 (A000700 n).toNat * A016124 n

end

end A015944.P15168295108791105035

/-! ## A015944.P12356418232656564228

`A016124(n)^A000040(A033015(3*n+2))`
-/

namespace A015944.P12356418232656564228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A000040 (A033015 (3 * n + 2)).toNat : ℤ)

end

end A015944.P12356418232656564228

/-! ## A015944.P6387513442457445527

`A015082(C(4, A067035(n+1)))*A016124(n)`
-/

namespace A015944.P6387513442457445527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 (Nat.choose 4 (A067035 (n + 1)).toNat) * A016124 n

end

end A015944.P6387513442457445527

/-!
# A015945: Positive integers n such that n | (2^n + n/2 + 1).

The programs for A015945, there is no canonical definition to state claims against.
-/

/-! ## A015945.P13566092640563482388

`2*A015950(n+1)`
-/

namespace A015945.P13566092640563482388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015950 (n + 1)

end

end A015945.P13566092640563482388

/-! ## A015945.P2196404935001695709

`lcm(2, A015950(1+n))`
-/

namespace A015945.P2196404935001695709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A015950 (1 + n))

end

end A015945.P2196404935001695709

/-! ## A015945.P10776888474079855085

`2*filter[A045581(1+n), #%2]`
-/

namespace A015945.P10776888474079855085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045581 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A015945.P10776888474079855085

/-! ## A015945.P16618378119154390768

`2*filter[A045581(n+1), gcd(2, #)]`
-/

namespace A015945.P16618378119154390768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => Int.gcd 2 (f1 j) = 1) n)

end

end A015945.P16618378119154390768

/-! ## A015945.P1435466630489477958

`A015950(n+1)+A015950(1+n)`
-/

namespace A015945.P1435466630489477958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015950 (n + 1) + A015950 (1 + n)

end

end A015945.P1435466630489477958

/-!
# A015946: Inverse of 1937th cyclotomic polynomial.

The programs for A015946, there is no canonical definition to state claims against.
-/

/-! ## A015946.P15478628076096800064

`A015972(A299637(n)%A000201(n+1))`
-/

namespace A015946.P15478628076096800064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015972 (Int.tmod (A299637 n) (A000201 (n + 1))).toNat

end

end A015946.P15478628076096800064

/-! ## A015946.P2021986534526708020

`A015972(comp[A326683(2*n+3)+A198778(3*n+2)])`
-/

namespace A015946.P2021986534526708020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 (2 * n + 3) + A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015972 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015946.P2021986534526708020

/-! ## A015946.P11302078498730918698

`A016050(∑[A341684(3*n+2)+A341684(n)])`
-/

namespace A015946.P11302078498730918698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341684 (3 * n + 2) + A341684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015946.P11302078498730918698

/-! ## A015946.P14708724637251878856

`A015972(comp[A198778(3*n+2)+A160411(n+1)])`
-/

namespace A015946.P14708724637251878856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2) + A160411 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015972 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015946.P14708724637251878856

/-! ## A015946.P8602508648025125468

`A015972(comp[A198778(3*n+2)+A198778(3*n+2)])`
-/

namespace A015946.P8602508648025125468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2) + A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015972 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015946.P8602508648025125468

/-! ## A015946.P11179355427923739221

`C(n, comp[A272382(1+n)])`
-/

namespace A015946.P11179355427923739221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272382 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015946.P11179355427923739221

/-! ## A015946.P565410201791901333

`A192093(ceil(and(n+3, -7)/5))%2`
-/

namespace A015946.P565410201791901333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192093 ⌈(Int.land (n + 3 : ℤ) (-7) : ℚ) / 5⌉.toNat) 2

end

end A015946.P565410201791901333

/-! ## A015946.P7353480384405691021

`T(T(1, T(n-1,k)*T(n-1,k-1))+T(n-1,k)*T(n-1,k-1), A326634(n+1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A015946.P7353480384405691021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUp a n * SequenceMachineLib.triUpLeft a n : ℤ) + SequenceMachineLib.triUp a n * SequenceMachineLib.triUpLeft a n : ℤ) (A326634 (n + 1))

end

end A015946.P7353480384405691021

/-! ## A015946.P13832764387702311196

`C(2, ∑[A394332(A004525(n))])`
-/

namespace A015946.P13832764387702311196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394332 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015946.P13832764387702311196

/-! ## A015946.P4057809710040439172

`A077618(∏[A333254(n+1)!])`
-/

namespace A015946.P4057809710040439172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A333254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A015946.P4057809710040439172

/-! ## A015946.P3417437139305435984

`A004012(∑[A161239(n+1)])%2`
-/

namespace A015946.P3417437139305435984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004012 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A015946.P3417437139305435984

/-! ## A015946.P2016907040169219962

`A074918(A001358(2*(n+1)))%2`
-/

namespace A015946.P2016907040169219962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074918 (A001358 (2 * (n + 1))).toNat) 2

end

end A015946.P2016907040169219962

/-! ## A015946.P18008415535559035371

`and(1, A121216(A068228(2*(n+2))))`
-/

namespace A015946.P18008415535559035371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A121216 (A068228 (2 * (n + 2))).toNat)

end

end A015946.P18008415535559035371

/-! ## A015946.P14092152289599499089

`C(A401176(2*n+3), Δ[A326634(n)])`
-/

namespace A015946.P14092152289599499089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A401176 (2 * n + 3)).toNat (f1 (n + 1) - f1 n).toNat

end

end A015946.P14092152289599499089

/-! ## A015946.P13844332477867982519

`C(A204988(A125127(n+1)), A319922(n))`
-/

namespace A015946.P13844332477867982519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204988 (A125127 (n + 1)).toNat).toNat (A319922 n).toNat

end

end A015946.P13844332477867982519

/-! ## A015946.P12550794784458815636

`A355478(A344869(n))^A355478(2*n+3)`
-/

namespace A015946.P12550794784458815636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355478 (A344869 n).toNat : ℚ) ^ (A355478 (2 * n + 3) : ℤ)

end

end A015946.P12550794784458815636

/-! ## A015946.P10240480406730688136

`val(A130445(n+1), A317945(A130445(n+1)))`
-/

namespace A015946.P10240480406730688136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130445 (n + 1)).toNat (A317945 (A130445 (n + 1)).toNat).toNat

end

end A015946.P10240480406730688136

/-! ## A015946.P2087167376402356860

`C(A052409(A074346(n+1)), A135665(n+1))`
-/

namespace A015946.P2087167376402356860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052409 (A074346 (n + 1)).toNat).toNat (A135665 (n + 1)).toNat

end

end A015946.P2087167376402356860

/-! ## A015946.P12134472689146924285

`C(A103380(n+1), A069832(A103380(n+1)))`
-/

namespace A015946.P12134472689146924285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A103380 (n + 1)).toNat (A069832 (A103380 (n + 1)).toNat).toNat

end

end A015946.P12134472689146924285

/-! ## A015946.P6598035681706183105

`C(A257839(n+3), A270613(A257839(n+3)))`
-/

namespace A015946.P6598035681706183105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257839 (n + 3)).toNat (A270613 (A257839 (n + 3)).toNat).toNat

end

end A015946.P6598035681706183105

/-!
# A015947: Inverse of 1938th cyclotomic polynomial.

The programs for A015947, there is no canonical definition to state claims against.
-/

/-! ## A015947.P9873490621071052636

`A014978(n)*A033999(n)`
-/

namespace A015947.P9873490621071052636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014978 n * A033999 n

end

end A015947.P9873490621071052636

/-! ## A015947.P9157234366448279502

`A011649(n)*A014712(n)`
-/

namespace A015947.P9157234366448279502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011649 n * A014712 n

end

end A015947.P9157234366448279502

/-! ## A015947.P5466953115336453729

`A011649(n)*A014788(n)`
-/

namespace A015947.P5466953115336453729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011649 n * A014788 n

end

end A015947.P5466953115336453729

/-! ## A015947.P3595492480655245222

`A011649(n)*A014826(n)`
-/

namespace A015947.P3595492480655245222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011649 n * A014826 n

end

end A015947.P3595492480655245222

/-! ## A015947.P2287070842889049284

`A011649(n)*A014902(n)`
-/

namespace A015947.P2287070842889049284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011649 n * A014902 n

end

end A015947.P2287070842889049284

/-!
# A015948: a(n) = smallest k >= n such that k | (2^k + n).

The programs for A015948, there is no canonical definition to state claims against.
-/

/-! ## A015948.P8125215766407395742

`fo[A082494(n+1)-1]+1`
-/

namespace A015948.P8125215766407395742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082494 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A015948.P8125215766407395742

/-!
# A015949: Numbers k such that k | 3^k + 1.

The programs for A015949, there is no canonical definition to state claims against.
-/

/-! ## A015949.P5066124581610267382

`∩[A045579(n+1), A045588(n+1)]`
-/

namespace A015949.P5066124581610267382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015949.P5066124581610267382

/-! ## A015949.P2713122017431748952

`∩[A045588(n+1), A068382(n+1)]`
-/

namespace A015949.P2713122017431748952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015949.P2713122017431748952

/-! ## A015949.P6047243978735159217

`∩[A045588(n+1), A093547(n+1)]`
-/

namespace A015949.P6047243978735159217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015949.P6047243978735159217

/-! ## A015949.P5063343699253967814

`A333429(∑[n+3]+1)`
-/

namespace A015949.P5063343699253967814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A015949.P5063343699253967814

/-! ## A015949.P2792859827524206507

`A333429(A034856(n+2))+char[18]`
-/

namespace A015949.P2792859827524206507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A015949.P2792859827524206507

/-!
# A015950: Numbers k such that k | 4^k + 1.

The programs for A015950, there is no canonical definition to state claims against.
-/

/-! ## A015950.P16315508501856849133

`filter[A045581(1+n), #%2]`
-/

namespace A015950.P16315508501856849133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045581 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A015950.P16315508501856849133

/-! ## A015950.P17005362238819964636

`filter[A045581(n+1), gcd(2, #)]`
-/

namespace A015950.P17005362238819964636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.gcd 2 (f1 j) = 1) n)

end

end A015950.P17005362238819964636

/-! ## A015950.P17439287674534030881

`A015945(1+n)/2`
-/

namespace A015950.P17439287674534030881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015945 (1 + n) : ℚ) / 2

end

end A015950.P17439287674534030881

/-! ## A015950.P389699805589889275

`floor(A015945(Δ[n²]-n)/2)`
-/

namespace A015950.P389699805589889275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A015945 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A015950.P389699805589889275

/-! ## A015950.P1122948008014225595

`ceil(A015945(1-A001489(n))/2)`
-/

namespace A015950.P1122948008014225595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A015945 (1 - A001489 n).toNat : ℚ) / 2⌉

end

end A015950.P1122948008014225595

/-! ## A015950.P684976334531522489

`round(A015945(Δ[A000290(n)]-n)/2)`
-/

namespace A015950.P684976334531522489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A015945 (f1 (n + 1) - f1 n - (n : ℤ)).toNat : ℚ) / 2)

end

end A015950.P684976334531522489

/-! ## A015950.P7979949376976037725

`(A015945(Δ[n²]-n)/2)^A178334(n)`
-/

namespace A015950.P7979949376976037725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A015945 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2) ^ (A178334 n : ℤ)

end

end A015950.P7979949376976037725

/-! ## A015950.P16952505921080282764

`2^A133574(A001316(n))*A015945(n+1)`
-/

namespace A015950.P16952505921080282764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) * (A015945 (n + 1) : ℚ)

end

end A015950.P16952505921080282764

/-! ## A015950.P7739498879024074840

`and(A015945(1-A001489(n))/2, A260196(n))`
-/

namespace A015950.P7739498879024074840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A015945 (1 - A001489 n).toNat : ℚ) / 2)) (A260196 n)

end

end A015950.P7739498879024074840

/-!
# A015951: Numbers k such that k | 5^k + 1.

The programs for A015951, there is no canonical definition to state claims against.
-/

/-! ## A015951.P13663735143120850693

`filter[A045583(1+n), A098725(#)]`
-/

namespace A015951.P13663735143120850693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A015951.P13663735143120850693

/-! ## A015951.P6162200247840642970

`filter[A045583(n+1), A166486(#)]`
-/

namespace A015951.P6162200247840642970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A015951.P6162200247840642970

/-! ## A015951.P16012298295078149272

`record[A065883(A045583(1+n))]`
-/

namespace A015951.P16012298295078149272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A045583 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015951.P16012298295078149272

/-! ## A015951.P861923522283737219

`∩[A045583(n+1), A196499(n+1)]`
-/

namespace A015951.P861923522283737219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015951.P861923522283737219

/-! ## A015951.P3044936575810674134

`∩[A045583(n+1), A047489(n+1)]`
-/

namespace A015951.P3044936575810674134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015951.P3044936575810674134

/-!
# A015952: Inverse of 1943rd cyclotomic polynomial.

The programs for A015952, there is no canonical definition to state claims against.
-/

/-! ## A015952.P2865114834848920288

`A016272(lt[A045918(n), A231100(n+1)²])`
-/

namespace A015952.P2865114834848920288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231100 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015952.P2865114834848920288

/-! ## A015952.P15173077511202248681

`A016068(lt[A165033(3*(n+1)), A160411(n+1)])`
-/

namespace A015952.P15173077511202248681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015952.P15173077511202248681

/-! ## A015952.P6774160764001957914

`A016272(∑[char[A114614(2*(n+2))]]+n)`
-/

namespace A015952.P6774160764001957914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114614 (2 * (n + 2))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A015952.P6774160764001957914

/-! ## A015952.P11731303091885768183

`A016272(lt[A002266(n), A297749(2*(n+2))])`
-/

namespace A015952.P11731303091885768183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015952.P11731303091885768183

/-! ## A015952.P11759736782794602546

`A016068(lt[A288535(n+2), A029931(2*n+3)])`
-/

namespace A015952.P11759736782794602546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288535 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015952.P11759736782794602546

/-! ## A015952.P6121302483620117764

`A016272(lt[A386577(n+1), A288535(n+4)])`
-/

namespace A015952.P6121302483620117764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288535 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015952.P6121302483620117764

/-! ## A015952.P5487649883784996618

`C(n+1, A357873(n+1))`
-/

namespace A015952.P5487649883784996618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A357873 (n + 1)).toNat

end

end A015952.P5487649883784996618

/-! ## A015952.P317550782981984707

`C(n+1, A348520(n+2)-1)`
-/

namespace A015952.P317550782981984707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A348520 (n + 2) - 1).toNat

end

end A015952.P317550782981984707

/-! ## A015952.P8203333822920238902

`A079944(A347457(n+1)+94)`
-/

namespace A015952.P8203333822920238902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A347457 (n + 1) + 94).toNat

end

end A015952.P8203333822920238902

/-! ## A015952.P15605329256988459432

`A016068(n)^A359908(n+1)`
-/

namespace A015952.P15605329256988459432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016068 n : ℚ) ^ (A359908 (n + 1) : ℤ)

end

end A015952.P15605329256988459432

/-!
# A015953: Numbers k such that k | 6^k + 1.

The programs for A015953, there is no canonical definition to state claims against.
-/

/-! ## A015953.P1517111883517852471

`A333429(∑[n+6]+10)`
-/

namespace A015953.P1517111883517852471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A015953.P1517111883517852471

/-! ## A015953.P15845685565416988979

`or(1, A333429(A052905(n+3)))`
-/

namespace A015953.P15845685565416988979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333429 (A052905 (n + 3)).toNat)

end

end A015953.P15845685565416988979

/-! ## A015953.P5041953930913614800

`or(1, A333429(eq[5, A193592(n)]))`
-/

namespace A015953.P5041953930913614800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A015953.P5041953930913614800

/-! ## A015953.P1459867900944803532

`or(1, A333429(A000217(n+6)-5))`
-/

namespace A015953.P1459867900944803532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333429 (A000217 (n + 6) - 5).toNat)

end

end A015953.P1459867900944803532

/-! ## A015953.P11939752354868115276

`A284562(n)*A333429(A052905(n+3))`
-/

namespace A015953.P11939752354868115276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 n * A333429 (A052905 (n + 3)).toNat

end

end A015953.P11939752354868115276

/-!
# A015954: Numbers k such that k | 7^k + 1.

The programs for A015954, there is no canonical definition to state claims against.
-/

/-! ## A015954.P8318687695668371151

`A333429(A055999(n+4))`
-/

namespace A015954.P8318687695668371151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (A055999 (n + 4)).toNat

end

end A015954.P8318687695668371151

/-! ## A015954.P2638488674326991485

`A333429(eq[4, A219347(n)])`
-/

namespace A015954.P2638488674326991485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015954.P2638488674326991485

/-! ## A015954.P9406651802763651696

`A333429(eq[6, A193592(n)])`
-/

namespace A015954.P9406651802763651696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015954.P9406651802763651696

/-! ## A015954.P2502649571089881962

`A333429(eq[7, A152157(n)])`
-/

namespace A015954.P2502649571089881962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015954.P2502649571089881962

/-! ## A015954.P16270331468109714219

`A333429(Δ[A023551(n+2)])`
-/

namespace A015954.P16270331468109714219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (f1 (n + 1) - f1 n).toNat

end

end A015954.P16270331468109714219

/-!
# A015955: Numbers k such that k | 8^k + 1.

The programs for A015955, there is no canonical definition to state claims against.
-/

/-! ## A015955.P909772813452390253

`A006521(2+n)/3`
-/

namespace A015955.P909772813452390253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006521 (2 + n) : ℚ) / 3

end

end A015955.P909772813452390253

/-! ## A015955.P7908434534583501035

`ratio[A006521(n+1)]*a(n-1)` with `a(0)=1`
-/

namespace A015955.P7908434534583501035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006521 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * a (n - 1)

end

end A015955.P7908434534583501035

/-! ## A015955.P9969066141005290534

`∩[A093546(n+1), A125227(n+3)]`
-/

namespace A015955.P9969066141005290534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015955.P9969066141005290534

/-! ## A015955.P3955066399600089154

`∩[A045577(n+1), A093546(n+2)]/3`
-/

namespace A015955.P3955066399600089154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093546 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A015955.P3955066399600089154

/-! ## A015955.P2932591877011061994

`(A006521(n+2)*A007051(n))%A007051(n+1)`
-/

namespace A015955.P2932591877011061994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006521 (n + 2) * A007051 n) (A007051 (n + 1))

end

end A015955.P2932591877011061994

/-! ## A015955.P10309828545721250206

`(A006521(n+2)*A007583(n+1))%A000079(n+2)`
-/

namespace A015955.P10309828545721250206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006521 (n + 2) * A007583 (n + 1)) (A000079 (n + 2))

end

end A015955.P10309828545721250206

/-!
# A015956: Inverse of 1947th cyclotomic polynomial.

The programs for A015956, there is no canonical definition to state claims against.
-/

/-! ## A015956.P2254473536645286874

`A016022(lt[A016049(n+2), A016016(2*n+1)])`
-/

namespace A015956.P2254473536645286874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016022 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015956.P2254473536645286874

/-! ## A015956.P4738950909789569461

`A016016(A016006(n+1))*A016022(n)`
-/

namespace A015956.P4738950909789569461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A016006 (n + 1)).toNat * A016022 n

end

end A015956.P4738950909789569461

/-! ## A015956.P12693701369314571232

`A016016(A016007(n+1))*A016022(n)`
-/

namespace A015956.P12693701369314571232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A016007 (n + 1)).toNat * A016022 n

end

end A015956.P12693701369314571232

/-! ## A015956.P9140458867265751444

`A015012(A386296(n+1))*A016022(n)`
-/

namespace A015956.P9140458867265751444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 (A386296 (n + 1)).toNat * A016022 n

end

end A015956.P9140458867265751444

/-! ## A015956.P17383392951258874080

`A016033(A265759(n+1))+A016022(n)`
-/

namespace A015956.P17383392951258874080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016033 (A265759 (n + 1)).toNat + A016022 n

end

end A015956.P17383392951258874080

/-! ## A015956.P15204314177959606363

`A016022(n)^A265759(n+1)^A016139(2*(n+2))`
-/

namespace A015956.P15204314177959606363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016022 n : ℝ) ^ ((A265759 (n + 1) : ℚ) ^ (A016139 (2 * (n + 2)) : ℤ) : ℝ)

end

end A015956.P15204314177959606363

/-!
# A015957: Numbers k such that k | 9^k + 1.

The programs for A015957, there is no canonical definition to state claims against.
-/

/-! ## A015957.P5787426473707182807

`A333429(eq[6, A219347(n)])`
-/

namespace A015957.P5787426473707182807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015957.P5787426473707182807

/-! ## A015957.P7658828376737214285

`A333429(eq[8, A193592(n)])`
-/

namespace A015957.P7658828376737214285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015957.P7658828376737214285

/-! ## A015957.P2992949545300364175

`A333429(A055999(n+6)-2)`
-/

namespace A015957.P2992949545300364175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (A055999 (n + 6) - 2).toNat

end

end A015957.P2992949545300364175

/-! ## A015957.P18319808631383328709

`A333429(A000217(n+9)-8)`
-/

namespace A015957.P18319808631383328709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (A000217 (n + 9) - 8).toNat

end

end A015957.P18319808631383328709

/-! ## A015957.P12594719206267404323

`A333429(eq[9, A195663(n)]+1)`
-/

namespace A015957.P12594719206267404323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015957.P12594719206267404323

/-!
# A015958: Numbers k such that k | 10^k + 1.

The programs for A015958, there is no canonical definition to state claims against.
-/

/-! ## A015958.P3958716700078462238

`A333429(A168109(n)-9)`
-/

namespace A015958.P3958716700078462238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (A168109 n - 9).toNat

end

end A015958.P3958716700078462238

/-! ## A015958.P2255782637192459208

`A333429(eq[8, A219347(n)])`
-/

namespace A015958.P2255782637192459208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015958.P2255782637192459208

/-! ## A015958.P14667723887050186909

`A333429(eq[9, A193592(n)])`
-/

namespace A015958.P14667723887050186909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015958.P14667723887050186909

/-! ## A015958.P7393480276709331764

`A333429(eq[9, A130302(n+1)])`
-/

namespace A015958.P7393480276709331764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015958.P7393480276709331764

/-! ## A015958.P17207808832162735518

`A333429(eq[16, A185782(n+1)])`
-/

namespace A015958.P17207808832162735518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015958.P17207808832162735518

/-!
# A015959: Inverse of 1950th cyclotomic polynomial.

The programs for A015959, there is no canonical definition to state claims against.
-/

/-! ## A015959.P9785691142659021501

`(-1)^n*A014984(n)`
-/

namespace A015959.P9785691142659021501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014984 n

end

end A015959.P9785691142659021501

/-! ## A015959.P2370520834149502419

`A014984(n)*A033999(n)`
-/

namespace A015959.P2370520834149502419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014984 n * A033999 n

end

end A015959.P2370520834149502419

/-! ## A015959.P9184454762771019230

`A014019(n)*A014984(n)^3`
-/

namespace A015959.P9184454762771019230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A014984 n ^ 3

end

end A015959.P9184454762771019230

/-! ## A015959.P3542943849869259663

`A014984(n)*A016379(n)`
-/

namespace A015959.P3542943849869259663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014984 n * A016379 n

end

end A015959.P3542943849869259663

/-! ## A015959.P899443898482384058

`A014984(n)/A033999(A050782(n))`
-/

namespace A015959.P899443898482384058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014984 n : ℚ) / (A033999 (A050782 n).toNat : ℚ)

end

end A015959.P899443898482384058

/-!
# A015960: Numbers k such that k | 11^k + 1.

The programs for A015960, there is no canonical definition to state claims against.
-/

/-! ## A015960.P4207223016397705882

`eq[n, A066441(n+1)]+1`
-/

namespace A015960.P4207223016397705882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015960.P4207223016397705882

/-! ## A015960.P2007512636174005968

`eq[n, A066441(A028310(n))+1]`
-/

namespace A015960.P2007512636174005968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015960.P2007512636174005968

/-! ## A015960.P6875024577439891308

`eq[A023443(n), A066441(A028310(n))]`
-/

namespace A015960.P6875024577439891308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066441 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015960.P6875024577439891308

/-! ## A015960.P2566787834458536103

`record[A052905(A066441(n+1))-A055998(n)]`
-/

namespace A015960.P2566787834458536103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A066441 (n + 1)).toNat - A055998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015960.P2566787834458536103

/-! ## A015960.P11868275856819048184

`A333429(A056000(n+7))`
-/

namespace A015960.P11868275856819048184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (A056000 (n + 7)).toNat

end

end A015960.P11868275856819048184

/-!
# A015961: Positive integers k such that k | (12^k + 1).

The programs for A015961, there is no canonical definition to state claims against.
-/

/-! ## A015961.P2328999096922023738

`A333429(eq[11, A193592(n)])`
-/

namespace A015961.P2328999096922023738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015961.P2328999096922023738

/-! ## A015961.P14033545602959920606

`A333429(eq[12, A219347(n)])`
-/

namespace A015961.P14033545602959920606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015961.P14033545602959920606

/-! ## A015961.P9994290731882031921

`A333429(A168109(n+1)+n+1)`
-/

namespace A015961.P9994290731882031921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (A168109 (n + 1) + (n + 1 : ℤ)).toNat

end

end A015961.P9994290731882031921

/-!
# A015963: Numbers k such that k | 13^k + 1.

The programs for A015963, there is no canonical definition to state claims against.
-/

/-! ## A015963.P10048704284677586783

`eq[n, A116609(n+1)]+1`
-/

namespace A015963.P10048704284677586783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015963.P10048704284677586783

/-! ## A015963.P4686710496076964154

`A004482(eq[n, A116609(n+1)])`
-/

namespace A015963.P4686710496076964154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015963.P4686710496076964154

/-! ## A015963.P2937119501888064851

`eq[n, A116609(A028310(n))+1]`
-/

namespace A015963.P2937119501888064851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015963.P2937119501888064851

/-! ## A015963.P17451284672117546188

`A004482(lt[n, A116609(n+1)+1])`
-/

namespace A015963.P17451284672117546188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A015963.P17451284672117546188

/-! ## A015963.P12444862375392486701

`lt[A023443(n), A116609(n+1)]+1`
-/

namespace A015963.P12444862375392486701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A015963.P12444862375392486701

/-!
# A015964: Inverse of 1955th cyclotomic polynomial.

The programs for A015964, there is no canonical definition to state claims against.
-/

/-! ## A015964.P883823075904455016

`Δ[A003849(A265359(A022280(n)))]`
-/

namespace A015964.P883823075904455016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A265359 (A022280 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015964.P883823075904455016

/-! ## A015964.P8046778364745956772

`(A067856(A000005(n+1)+1)^(n-2))^n*A016344(n)`
-/

namespace A015964.P8046778364745956772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A067856 (A000005 (n + 1) + 1).toNat : ℚ) ^ ((n : ℤ) - 2 : ℤ)) ^ n * (A016344 n : ℚ)

end

end A015964.P8046778364745956772

/-!
# A015965: Numbers k such that k | 14^k + 1.

The programs for A015965, there is no canonical definition to state claims against.
-/

/-! ## A015965.P17816146139738740921

`A231114(∑[A287384(n)])`
-/

namespace A015965.P17816146139738740921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231114 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015965.P17816146139738740921

/-! ## A015965.P16746884874413572984

`A231114(A287384(n)+n)`
-/

namespace A015965.P16746884874413572984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231114 (A287384 n + (n : ℤ)).toNat

end

end A015965.P16746884874413572984

/-! ## A015965.P5949496495181741861

`record[A231114(A194973(n+1))]`
-/

namespace A015965.P5949496495181741861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231114 (A194973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015965.P5949496495181741861

/-! ## A015965.P797283975882961261

`record[A231114(A195079(n+1))]`
-/

namespace A015965.P797283975882961261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231114 (A195079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015965.P797283975882961261

/-! ## A015965.P11251782230529099422

`∩[A045599(n+1), A261514(n+1)]`
-/

namespace A015965.P11251782230529099422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015965.P11251782230529099422

/-!
# A015966: Inverse of 1957th cyclotomic polynomial.

The programs for A015966, there is no canonical definition to state claims against.
-/

/-! ## A015966.P1116073853577254091

`A014932(∑[A008683(A167499(n))²])`
-/

namespace A015966.P1116073853577254091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A167499 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014932 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015966.P1116073853577254091

/-! ## A015966.P2674473057592512542

`A016042(comp[A198778(3*n+2)+3])`
-/

namespace A015966.P2674473057592512542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016042 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015966.P2674473057592512542

/-! ## A015966.P13967669772841705198

`C(2, A326547(2+n))`
-/

namespace A015966.P13967669772841705198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326547 (2 + n)).toNat

end

end A015966.P13967669772841705198

/-! ## A015966.P2837175166571934111

`C(2, A326679(1+n)²)`
-/

namespace A015966.P2837175166571934111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326679 (1 + n) ^ 2).toNat

end

end A015966.P2837175166571934111

/-! ## A015966.P1270881613193520123

`C(2, A326684(n+1)²)`
-/

namespace A015966.P1270881613193520123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326684 (n + 1) ^ 2).toNat

end

end A015966.P1270881613193520123

/-! ## A015966.P10423337734692892359

`C(2, A325933(A326549(n)))`
-/

namespace A015966.P10423337734692892359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A325933 (A326549 n).toNat).toNat

end

end A015966.P10423337734692892359

/-! ## A015966.P12971265025775780688

`A080339(Δ[A246075(n+2)])`
-/

namespace A015966.P12971265025775780688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (f1 (n + 1) - f1 n).toNat

end

end A015966.P12971265025775780688

/-! ## A015966.P14586882348520896768

`C(A214304(n), A326679(n+1))`
-/

namespace A015966.P14586882348520896768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214304 n).toNat (A326679 (n + 1)).toNat

end

end A015966.P14586882348520896768

/-! ## A015966.P16914396234821839203

`A127247(∑[A127268(n+1)]²)`
-/

namespace A015966.P16914396234821839203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A015966.P16914396234821839203

/-! ## A015966.P9051848993441777221

`C(A070084(3*(n+1)), A326684(n+1))`
-/

namespace A015966.P9051848993441777221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070084 (3 * (n + 1))).toNat (A326684 (n + 1)).toNat

end

end A015966.P9051848993441777221

/-! ## A015966.P11063195746271162739

`C(A074292(A380367(n)), A326546(n))`
-/

namespace A015966.P11063195746271162739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074292 (A380367 n).toNat).toNat (A326546 n).toNat

end

end A015966.P11063195746271162739

/-! ## A015966.P12639726704395671813

`C(A000265(A237593(n+1)), A326679(n+1))`
-/

namespace A015966.P12639726704395671813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000265 (A237593 (n + 1)).toNat).toNat (A326679 (n + 1)).toNat

end

end A015966.P12639726704395671813

/-! ## A015966.P17694076635649943394

`C(A344606(A053188(n)+1), A326679(n+1))`
-/

namespace A015966.P17694076635649943394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344606 (A053188 n + 1).toNat).toNat (A326679 (n + 1)).toNat

end

end A015966.P17694076635649943394

/-! ## A015966.P8700679395336508533

`C(A344606(A003056(n+4)+1), A326679(n+1))`
-/

namespace A015966.P8700679395336508533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344606 (A003056 (n + 4) + 1).toNat).toNat (A326679 (n + 1)).toNat

end

end A015966.P8700679395336508533

/-! ## A015966.P76275714902179119

`C(3, A326688(n+1)²²)`
-/

namespace A015966.P76275714902179119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((A326688 (n + 1) ^ 2) ^ 2).toNat

end

end A015966.P76275714902179119

/-! ## A015966.P1721259622992631611

`round(3/(A373069(n+1)+3))²`
-/

namespace A015966.P1721259622992631611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (A373069 (n + 1) + 3 : ℚ)) ^ 2

end

end A015966.P1721259622992631611

/-! ## A015966.P1489374061719847446

`A027879(A061217(n+1))%3`
-/

namespace A015966.P1489374061719847446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027879 (A061217 (n + 1)).toNat) 3

end

end A015966.P1489374061719847446

/-!
# A015967: Inverse of 1958th cyclotomic polynomial.

The programs for A015967, there is no canonical definition to state claims against.
-/

/-! ## A015967.P11845570915795768993

`(-1)^n*A014988(n)`
-/

namespace A015967.P11845570915795768993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014988 n

end

end A015967.P11845570915795768993

/-! ## A015967.P1827919645744454446

`A016275(eq[A016258(n), A016266(3*n+1)])`
-/

namespace A015967.P1827919645744454446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016275 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015967.P1827919645744454446

/-! ## A015967.P17373567253208628654

`(-floor(5/A380770(n)))^n`
-/

namespace A015967.P17373567253208628654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-⌊5 / (A380770 n : ℚ)⌋) ^ n

end

end A015967.P17373567253208628654

/-! ## A015967.P6545484261710066074

`round(A053254(3*n)/A007865(n))`
-/

namespace A015967.P6545484261710066074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053254 (3 * n) : ℚ) / (A007865 n : ℚ))

end

end A015967.P6545484261710066074

/-! ## A015967.P450477724634538605

`round(A186690(n+1)/A005520(n+1))`
-/

namespace A015967.P450477724634538605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A186690 (n + 1) : ℚ) / (A005520 (n + 1) : ℚ))

end

end A015967.P450477724634538605

/-! ## A015967.P16806763385857502289

`A016143(n)/A261585(col(A185227(2*(n+2))))`
-/

namespace A015967.P16806763385857502289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016143 n : ℚ) / (A261585 (SequenceMachineLib.triCol (A185227 (2 * (n + 2))).toNat) : ℚ)

end

end A015967.P16806763385857502289

/-! ## A015967.P13701703414161738409

`(A335446(n+1)-1)*a(n-1)` with `a(0)=1`
-/

namespace A015967.P13701703414161738409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A335446 (n + 1) - 1) * a (n - 1)

end

end A015967.P13701703414161738409

/-! ## A015967.P2751567423517167537

`(A335460(n+1)-1)*a(n-1)` with `a(0)=1`
-/

namespace A015967.P2751567423517167537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A335460 (n + 1) - 1) * a (n - 1)

end

end A015967.P2751567423517167537

/-! ## A015967.P5303068177015017443

`(A374247(n+1)-1)*a(n-1)` with `a(0)=1`
-/

namespace A015967.P5303068177015017443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A374247 (n + 1) - 1) * a (n - 1)

end

end A015967.P5303068177015017443

/-!
# A015968: Positive integers k such that k | (15^k + 1).

The programs for A015968, there is no canonical definition to state claims against.
-/

/-! ## A015968.P9803888355361718383

`A333429(eq[14, A193592(n)])`
-/

namespace A015968.P9803888355361718383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015968.P9803888355361718383

/-! ## A015968.P14143259783560478236

`A333429(eq[22, A219347(n)])`
-/

namespace A015968.P14143259783560478236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015968.P14143259783560478236

/-!
# A015970: Inverse of 1961st cyclotomic polynomial.

The programs for A015970, there is no canonical definition to state claims against.
-/

/-! ## A015970.P12395074520385033805

`A015342(A313803(3*(n+1))%A001962(n+1))`
-/

namespace A015970.P12395074520385033805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015342 (Int.tmod (A313803 (3 * (n + 1))) (A001962 (n + 1))).toNat

end

end A015970.P12395074520385033805

/-! ## A015970.P14599035220896950583

`∑[A010815(A023036(2+3*n))]+1`
-/

namespace A015970.P14599035220896950583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A023036 (2 + 3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A015970.P14599035220896950583

/-! ## A015970.P7401449050980724779

`A016192(lt[A329744(n+1), A094759(2*n+5)])`
-/

namespace A015970.P7401449050980724779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015970.P7401449050980724779

/-! ## A015970.P9175538567030024724

`A016192(lt[A098050(n+3), A257331(n+3)])`
-/

namespace A015970.P9175538567030024724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098050 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257331 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015970.P9175538567030024724

/-! ## A015970.P1789697208968087089

`A016192(lt[A098050(n), A257340(3*n+2)])`
-/

namespace A015970.P1789697208968087089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257340 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015970.P1789697208968087089

/-! ## A015970.P8782510421248504768

`∑[A121373(A395776(3*n+5)*n)]`
-/

namespace A015970.P8782510421248504768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A395776 (3 * n + 5) * (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015970.P8782510421248504768

/-! ## A015970.P16437017872411898829

`A015546(n)^A015082(n)^A160738(n)`
-/

namespace A015970.P16437017872411898829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A015546 n : ℝ) ^ ((A015082 n : ℚ) ^ (A160738 n : ℤ) : ℝ)

end

end A015970.P16437017872411898829

/-! ## A015970.P5328638252594620489

`A015546(n)^A016155(n)^A160738(n)`
-/

namespace A015970.P5328638252594620489
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A015546 n : ℝ) ^ ((A016155 n : ℚ) ^ (A160738 n : ℤ) : ℝ)

end

end A015970.P5328638252594620489

/-! ## A015970.P4093002598544702869

`A023936(C(ceil(n/4), 10))`
-/

namespace A015970.P4093002598544702869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023936 (Nat.choose ⌈(n : ℚ) / 4⌉.toNat 10)

end

end A015970.P4093002598544702869

/-! ## A015970.P8198672671795469956

`A261612(floor(root(A325193(n), 11)))`
-/

namespace A015970.P8198672671795469956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261612 ⌊(A325193 n : ℝ) ^ (1 / (11 : ℝ))⌋.toNat

end

end A015970.P8198672671795469956

/-!
# A015972: Inverse of 1963rd cyclotomic polynomial.

The programs for A015972, there is no canonical definition to state claims against.
-/

/-! ## A015972.P8056241351897061448

`A015426(∑[A060953(1+n)]+6)`
-/

namespace A015972.P8056241351897061448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015426 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A015972.P8056241351897061448

/-! ## A015972.P16838763223802463485

`row(C(2, A326635(n)))`
-/

namespace A015972.P16838763223802463485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose 2 (A326635 n).toNat)

end

end A015972.P16838763223802463485

/-! ## A015972.P15791037109157643221

`C(2, ∑[A181499(2+n)])`
-/

namespace A015972.P15791037109157643221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181499 (2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015972.P15791037109157643221

/-! ## A015972.P16610258699907387737

`A000045(C(2, A326635(n)))`
-/

namespace A015972.P16610258699907387737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A326635 n).toNat)

end

end A015972.P16610258699907387737

/-! ## A015972.P3701683347849989690

`A000081(C(2, A326635(n)))`
-/

namespace A015972.P3701683347849989690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (Nat.choose 2 (A326635 n).toNat)

end

end A015972.P3701683347849989690

/-! ## A015972.P526230271840650493

`A000120(C(2, A326635(n)))`
-/

namespace A015972.P526230271840650493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose 2 (A326635 n).toNat)

end

end A015972.P526230271840650493

/-! ## A015972.P4121947060901986266

`A000196(C(2, A326635(n)))`
-/

namespace A015972.P4121947060901986266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose 2 (A326635 n).toNat)

end

end A015972.P4121947060901986266

/-! ## A015972.P12332984332030839889

`A001045(C(2, A326635(n)))`
-/

namespace A015972.P12332984332030839889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Nat.choose 2 (A326635 n).toNat)

end

end A015972.P12332984332030839889

/-! ## A015972.P11724008857983119188

`A002487(C(2, A326635(n)))`
-/

namespace A015972.P11724008857983119188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.choose 2 (A326635 n).toNat)

end

end A015972.P11724008857983119188

/-! ## A015972.P17826791511873366924

`A048766(C(2, A326635(n)))`
-/

namespace A015972.P17826791511873366924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Nat.choose 2 (A326635 n).toNat)

end

end A015972.P17826791511873366924

/-! ## A015972.P6168316474273889227

`A321448(∑{e}[A025151(n), #])`
-/

namespace A015972.P6168316474273889227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321448 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A015972.P6168316474273889227

/-! ## A015972.P15658433421417919006

`(A063850(n)%2)^A326635(n)`
-/

namespace A015972.P15658433421417919006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A063850 n) 2 : ℚ) ^ (A326635 n : ℤ)

end

end A015972.P15658433421417919006

/-! ## A015972.P6504662093131546834

`A320659(∑[char[A000959(3*n+5)]]²+1)`
-/

namespace A015972.P6504662093131546834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (3 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320659 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1)

end

end A015972.P6504662093131546834

/-! ## A015972.P9765440975381223878

`A000045(floor(A000124(n)/A325856(n)))`
-/

namespace A015972.P9765440975381223878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(A000124 n : ℚ) / (A325856 n : ℚ)⌋.toNat

end

end A015972.P9765440975381223878

/-! ## A015972.P18374491389735508199

`A357598(floor(A000124(n)/A325856(n)))`
-/

namespace A015972.P18374491389735508199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357598 ⌊(A000124 n : ℚ) / (A325856 n : ℚ)⌋.toNat

end

end A015972.P18374491389735508199

/-! ## A015972.P10279735536863678248

`A099894(A090620(n)*A286338(2*(n+1)))`
-/

namespace A015972.P10279735536863678248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A090620 n * A286338 (2 * (n + 1))).toNat

end

end A015972.P10279735536863678248

/-! ## A015972.P4552729115056967814

`C(A381455(A139827(n+1)), A049987(n+1))`
-/

namespace A015972.P4552729115056967814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A381455 (A139827 (n + 1)).toNat).toNat (A049987 (n + 1)).toNat

end

end A015972.P4552729115056967814

/-! ## A015972.P17346275184051453878

`C(A338623(n+4), A057732(A338623(n+4)))`
-/

namespace A015972.P17346275184051453878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A338623 (n + 4)).toNat (A057732 (A338623 (n + 4)).toNat).toNat

end

end A015972.P17346275184051453878

/-! ## A015972.P7358692173929596716

`floor(A000040(2*n+1)/A007782(n+1))`
-/

namespace A015972.P7358692173929596716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (2 * n + 1) : ℚ) / (A007782 (n + 1) : ℚ)⌋

end

end A015972.P7358692173929596716

/-!
# A015974: Numbers k that divide 4^k + 1, k not a power of 5.

The programs for A015974, there is no canonical definition to state claims against.
-/

/-! ## A015974.P3695347231949352000

`A015950(lt[A330060(3*(n+1)), A257740(2*n+3)])`
-/

namespace A015974.P3695347231949352000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015950 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015974.P3695347231949352000

/-! ## A015974.P12724713984687046466

`A015950(lt[A046315(n+1), A220959(2*n+3)])`
-/

namespace A015974.P12724713984687046466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015950 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015974.P12724713984687046466

/-! ## A015974.P2476813385439290292

`A015950(lt[A106554(n+1), A220959(2*n+3)])`
-/

namespace A015974.P2476813385439290292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015950 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015974.P2476813385439290292

/-! ## A015974.P14355044755892588771

`A015950(lt[A003238(3*(n+1)), A220959(2*n+3)])`
-/

namespace A015974.P14355044755892588771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015950 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015974.P14355044755892588771

/-! ## A015974.P18421140923677529595

`A015950(lt[A250120(3*n+2), A220959(2*n+3)])`
-/

namespace A015974.P18421140923677529595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015950 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015974.P18421140923677529595

/-!
# A015976: One iteration of Reverse and Add is needed to reach a palindrome.

The programs for A015976, there is no canonical definition to state claims against.
-/

/-! ## A015976.P15317256589568658698

`eq[A004086(A056964(n+1)), A056964(n+1)]+1`
-/

namespace A015976.P15317256589568658698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056964 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015976.P15317256589568658698

/-! ## A015976.P9694871688801522787

`lt[1, A084998(n+1)]+1`
-/

namespace A015976.P9694871688801522787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A015976.P9694871688801522787

/-! ## A015976.P16429234669139876085

`eq[1, A225538(n)]+1`
-/

namespace A015976.P16429234669139876085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015976.P16429234669139876085

/-! ## A015976.P402402702655410814

`comp[floor((A001651(2*n+1)-A084998(n+1))/3)]+1`
-/

namespace A015976.P402402702655410814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001651 (2 * n + 1) - A084998 (n + 1) : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A015976.P402402702655410814

/-! ## A015976.P783372994089331035

`record[A087712(A000040(n+1))/A225538(n)]`
-/

namespace A015976.P783372994089331035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087712 (A000040 (n + 1)).toNat : ℚ) / (A225538 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015976.P783372994089331035

/-! ## A015976.P15820061775930876732

`lt[n, A047813(A056964(n))]`
-/

namespace A015976.P15820061775930876732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A015976.P15820061775930876732

/-! ## A015976.P4468941617238513476

`lt[n, A047813(A004093(5*n)+n)]`
-/

namespace A015976.P4468941617238513476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A004093 (5 * n) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A015976.P4468941617238513476

/-! ## A015976.P15841025305730965331

`eq[1, A064834(A056964(n+1))+1]+1`
-/

namespace A015976.P15841025305730965331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A056964 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015976.P15841025305730965331

/-! ## A015976.P8003858541251212259

`eq[A000038(n), A056965(A056964(n))]`
-/

namespace A015976.P8003858541251212259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015976.P8003858541251212259

/-! ## A015976.P1821922977648097627

`eq[A000007(n), A241173(A056964(n))]`
-/

namespace A015976.P1821922977648097627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015976.P1821922977648097627

/-! ## A015976.P14294586133084673965

`lt[A338827(A056964(n)), A057515(n)]`
-/

namespace A015976.P14294586133084673965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015976.P14294586133084673965

/-! ## A015976.P7173150469064895038

`lt[A256756(A056964(n)), A178489(n)]`
-/

namespace A015976.P7173150469064895038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015976.P7173150469064895038

/-! ## A015976.P15798819416281002838

`eq[1, A248327(A056964(n))+A057427(n)]`
-/

namespace A015976.P15798819416281002838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (A056964 n).toNat + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015976.P15798819416281002838

/-! ## A015976.P9592181157474026307

`eq[1, A016016(n+1)]+1`
-/

namespace A015976.P9592181157474026307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015976.P9592181157474026307

/-! ## A015976.P11450753707358292332

`record[(n+1)/A004883(A016016(n+1)²+1)]`
-/

namespace A015976.P11450753707358292332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A004883 (A016016 (n + 1) ^ 2 + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015976.P11450753707358292332

/-! ## A015976.P12141512838409442386

`eq[n, A028310(n*A016016(A028310(n)))]`
-/

namespace A015976.P12141512838409442386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A016016 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015976.P12141512838409442386

/-!
# A015977: Two iterations of Reverse and Add are needed to reach a palindrome.

The programs for A015977, there is no canonical definition to state claims against.
-/

/-! ## A015977.P7863518042957748152

`eq[2, A016016(n+1)]+1`
-/

namespace A015977.P7863518042957748152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015977.P7863518042957748152

/-! ## A015977.P125245579689268138

`eq[2, A016016(n^floor(atan(n)))]`
-/

namespace A015977.P125245579689268138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015977.P125245579689268138

/-! ## A015977.P8663892753527614971

`eq[2, A016016(A028310(n))]`
-/

namespace A015977.P8663892753527614971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015977.P8663892753527614971

/-! ## A015977.P6855230406793579226

`A020725(eq[2, A016016(n+1)])`
-/

namespace A015977.P6855230406793579226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015977.P6855230406793579226

/-! ## A015977.P12137842289798143082

`eq[1, A033665(A056964(n))]`
-/

namespace A015977.P12137842289798143082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015977.P12137842289798143082

/-!
# A015978: Inverse of 1969th cyclotomic polynomial.

The programs for A015978, the canonical program `A015978.P5896666385813148863` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015978 has offset 0).

The definition of A015978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015978.P3650382181186205545

`C(2, ∑[A282338(n+2)])`
-/

namespace A015978.P3650382181186205545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282338 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015978.P3650382181186205545

namespace A015978

/-- `C(2, ∑[A282338(n+2)])` -/
def P3650382181186205545.Spec : Prop :=
  ∀ n, (P3650382181186205545.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P11728686866193091482

`(3^A161113(n+1))%3`
-/

namespace A015978.P11728686866193091482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161113 (n + 1) : ℤ))) 3

end

end A015978.P11728686866193091482

namespace A015978

/-- `(3^A161113(n+1))%3` -/
def P11728686866193091482.Spec : Prop :=
  ∀ n, P11728686866193091482.a n = A015978 n

end A015978

/-! ## A015978.P3855587271908972623

`C(a(n-1), A240867(n))` with `a(0)=1`
-/

namespace A015978.P3855587271908972623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (n - 1)) (A240867 n).toNat

end

end A015978.P3855587271908972623

namespace A015978

/-- `C(a(n-1), A240867(n))` -/
def P3855587271908972623.Spec : Prop :=
  ∀ n, (P3855587271908972623.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P9540828076391782118

`C(col(floor(n/4)), A326529(n))`
-/

namespace A015978.P9540828076391782118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol ⌊(n : ℚ) / 4⌋.toNat) (A326529 n).toNat

end

end A015978.P9540828076391782118

namespace A015978

/-- `C(col(floor(n/4)), A326529(n))` -/
def P9540828076391782118.Spec : Prop :=
  ∀ n, (P9540828076391782118.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P10754646349129589641

`C(n, comp[A180022(row(n)+1)])`
-/

namespace A015978.P10754646349129589641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180022 (SequenceMachineLib.triRow n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015978.P10754646349129589641

namespace A015978

/-- `C(n, comp[A180022(row(n)+1)])` -/
def P10754646349129589641.Spec : Prop :=
  ∀ n, (P10754646349129589641.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P12715789383588430139

`round(-(3/(n-A154536(n+1))))`
-/

namespace A015978.P12715789383588430139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(3 / ((n : ℤ) - A154536 (n + 1) : ℚ)))

end

end A015978.P12715789383588430139

namespace A015978

/-- `round(-(3/(n-A154536(n+1))))` -/
def P12715789383588430139.Spec : Prop :=
  ∀ n, P12715789383588430139.a n = A015978 n

end A015978

/-! ## A015978.P13091938243356014862

`round(5/A336900(floor((n+1)/3)+1))`
-/

namespace A015978.P13091938243356014862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 / (A336900 (⌊(n + 1 : ℚ) / 3⌋ + 1).toNat : ℚ))

end

end A015978.P13091938243356014862

namespace A015978

/-- `round(5/A336900(floor((n+1)/3)+1))` -/
def P13091938243356014862.Spec : Prop :=
  ∀ n, P13091938243356014862.a n = A015978 n

end A015978

/-! ## A015978.P9269705626301500045

`C((∑[char[A000040(2*n+5)]]²-n)², n²)²`
-/

namespace A015978.P9269705626301500045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)) ^ 2).toNat (n ^ 2) ^ 2

end

end A015978.P9269705626301500045

namespace A015978

/-- `C((∑[char[A000040(2*n+5)]]²-n)², n²)²` -/
def P9269705626301500045.Spec : Prop :=
  ∀ n, (P9269705626301500045.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P5896666385813148863

`A063524(A103378(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A015978

/-- `A063524(A103378(n+1))` -/
def P5896666385813148863.Spec : Prop :=
  ∀ n, P5896666385813148863.a n = A015978 n

theorem P5896666385813148863.correct : P5896666385813148863.Spec := by
  intro n
  simp only [A015978]

end A015978

/-! ## A015978.P7850544975909265150

`A322327(A210964(n))%2`
-/

namespace A015978.P7850544975909265150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322327 (A210964 n).toNat) 2

end

end A015978.P7850544975909265150

namespace A015978

/-- `A322327(A210964(n))%2` -/
def P7850544975909265150.Spec : Prop :=
  ∀ n, P7850544975909265150.a n = A015978 n

end A015978

/-! ## A015978.P7407286584259217695

`A010052(C(A230980(n), 3))`
-/

namespace A015978.P7407286584259217695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.choose (A230980 n).toNat 3)

end

end A015978.P7407286584259217695

namespace A015978

/-- `A010052(C(A230980(n), 3))` -/
def P7407286584259217695.Spec : Prop :=
  ∀ n, P7407286584259217695.a n = A015978 n

end A015978

/-! ## A015978.P8173345653085232950

`A010060(C(4, A326529(n)))`
-/

namespace A015978.P8173345653085232950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose 4 (A326529 n).toNat)

end

end A015978.P8173345653085232950

namespace A015978

/-- `A010060(C(4, A326529(n)))` -/
def P8173345653085232950.Spec : Prop :=
  ∀ n, P8173345653085232950.a n = A015978 n

end A015978

/-! ## A015978.P2500639257219858705

`C(A032548(n+1), A326529(n))`
-/

namespace A015978.P2500639257219858705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032548 (n + 1)).toNat (A326529 n).toNat

end

end A015978.P2500639257219858705

namespace A015978

/-- `C(A032548(n+1), A326529(n))` -/
def P2500639257219858705.Spec : Prop :=
  ∀ n, (P2500639257219858705.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P2736762166173019409

`C(A001285(n+1), ∑[A326529(n)])`
-/

namespace A015978.P2736762166173019409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001285 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015978.P2736762166173019409

namespace A015978

/-- `C(A001285(n+1), ∑[A326529(n)])` -/
def P2736762166173019409.Spec : Prop :=
  ∀ n, (P2736762166173019409.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P9450161920795790256

`C(A048158(n+3), ∑[A326529(n)])`
-/

namespace A015978.P9450161920795790256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048158 (n + 3)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015978.P9450161920795790256

namespace A015978

/-- `C(A048158(n+3), ∑[A326529(n)])` -/
def P9450161920795790256.Spec : Prop :=
  ∀ n, (P9450161920795790256.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P4648257246804508955

`C(A319797(2*(n+1)), A326529(n))`
-/

namespace A015978.P4648257246804508955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A319797 (2 * (n + 1))).toNat (A326529 n).toNat

end

end A015978.P4648257246804508955

namespace A015978

/-- `C(A319797(2*(n+1)), A326529(n))` -/
def P4648257246804508955.Spec : Prop :=
  ∀ n, (P4648257246804508955.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P17786562033801200194

`C(A071858(3*n+2), A326529(n))`
-/

namespace A015978.P17786562033801200194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071858 (3 * n + 2)).toNat (A326529 n).toNat

end

end A015978.P17786562033801200194

namespace A015978

/-- `C(A071858(3*n+2), A326529(n))` -/
def P17786562033801200194.Spec : Prop :=
  ∀ n, (P17786562033801200194.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P8143962557727320375

`A019590(abs(∑[A245618(n)]-1-n)+1)`
-/

namespace A015978.P8143962557727320375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (|∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)| + 1).toNat

end

end A015978.P8143962557727320375

namespace A015978

/-- `A019590(abs(∑[A245618(n)]-1-n)+1)` -/
def P8143962557727320375.Spec : Prop :=
  ∀ n, P8143962557727320375.a n = A015978 n

end A015978

/-! ## A015978.P18275001272403881268

`C(A000142(A319797(n)), A326529(n))`
-/

namespace A015978.P18275001272403881268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000142 (A319797 n).toNat).toNat (A326529 n).toNat

end

end A015978.P18275001272403881268

namespace A015978

/-- `C(A000142(A319797(n)), A326529(n))` -/
def P18275001272403881268.Spec : Prop :=
  ∀ n, (P18275001272403881268.a n : ℤ) = A015978 n

end A015978

/-! ## A015978.P13736221383980852887

`C(A026465(A298040(n)), A326529(n))`
-/

namespace A015978.P13736221383980852887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026465 (A298040 n).toNat).toNat (A326529 n).toNat

end

end A015978.P13736221383980852887

namespace A015978

/-- `C(A026465(A298040(n)), A326529(n))` -/
def P13736221383980852887.Spec : Prop :=
  ∀ n, (P13736221383980852887.a n : ℤ) = A015978 n

end A015978

/-!
# A015979: Three iterations of Reverse and Add are needed to reach a palindrome.

The programs for A015979, there is no canonical definition to state claims against.
-/

/-! ## A015979.P12420286001094371346

`eq[3, A016016(n+1)]+1`
-/

namespace A015979.P12420286001094371346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015979.P12420286001094371346

/-! ## A015979.P69526630907182541

`eq[3, A016016(n^floor(atan(n)))]`
-/

namespace A015979.P69526630907182541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015979.P69526630907182541

/-! ## A015979.P8375697735456285467

`eq[3, A016016(A028310(n))]`
-/

namespace A015979.P8375697735456285467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015979.P8375697735456285467

/-! ## A015979.P1979991779192373264

`A011760(eq[3, A016016(n+1)])`
-/

namespace A015979.P1979991779192373264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015979.P1979991779192373264

/-! ## A015979.P16413552258455668988

`A020725(eq[3, A016016(n+1)])`
-/

namespace A015979.P16413552258455668988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015979.P16413552258455668988

/-!
# A015980: Four iterations of Reverse and Add are needed to reach a palindrome.

The programs for A015980, there is no canonical definition to state claims against.
-/

/-! ## A015980.P1099194110174262436

`eq[4, A016016(n+1)]+1`
-/

namespace A015980.P1099194110174262436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015980.P1099194110174262436

/-! ## A015980.P12919159004415796691

`eq[4, A016016(n^floor(atan(n)))]`
-/

namespace A015980.P12919159004415796691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015980.P12919159004415796691

/-! ## A015980.P6097814848087052530

`eq[4, A016016(A028310(n))]`
-/

namespace A015980.P6097814848087052530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015980.P6097814848087052530

/-! ## A015980.P453677089599008153

`A011760(eq[4, A016016(n+1)])`
-/

namespace A015980.P453677089599008153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015980.P453677089599008153

/-! ## A015980.P8058661920355961122

`lt[A000005(2+a(A016016(n+2)-1)), 3]+2` with `a(0)=12, a(1)=16, a(2)=20, a(3)=3, a(4)=28`
-/

namespace A015980.P8058661920355961122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12, 16, 20, 3, 28] fun n f1 =>
  A000005 (2 + f1 (A016016 (n + 2) - 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A015980.P8058661920355961122

/-!
# A015981: Inverse of 1972nd cyclotomic polynomial.

The programs for A015981, there is no canonical definition to state claims against.
-/

/-! ## A015981.P10137274950372921287

`(gcd(2, n)-1)*A014995(A006370(n))`
-/

namespace A015981.P10137274950372921287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n : ℤ) - 1) * A014995 (A006370 n).toNat

end

end A015981.P10137274950372921287

/-! ## A015981.P15324448264760428830

`A014707(2*(1+n))*A014995(A006370(n))`
-/

namespace A015981.P15324448264760428830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * (1 + n)) * A014995 (A006370 n).toNat

end

end A015981.P15324448264760428830

/-! ## A015981.P14722178605962540444

`C(A051715(n), 7*n+2)+A016117(n)`
-/

namespace A015981.P14722178605962540444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A051715 n).toNat (7 * n + 2) : ℤ) + A016117 n

end

end A015981.P14722178605962540444

/-! ## A015981.P5710643437791052718

`A019590(A020668(n+4)*A370929(n))+A016117(n)`
-/

namespace A015981.P5710643437791052718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A020668 (n + 4) * A370929 n).toNat + A016117 n

end

end A015981.P5710643437791052718

/-! ## A015981.P18219426243002779379

`A019590(A020668(n+4)*A204890(2*n+5))+A016117(n)`
-/

namespace A015981.P18219426243002779379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A020668 (n + 4) * A204890 (2 * n + 5)).toNat + A016117 n

end

end A015981.P18219426243002779379

/-! ## A015981.P11898851309393205086

`A016117(n)^A331247(A331247(n+1))`
-/

namespace A015981.P11898851309393205086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016117 n : ℚ) ^ (A331247 (A331247 (n + 1)).toNat : ℤ)

end

end A015981.P11898851309393205086

/-! ## A015981.P8129855956502891014

`A019590(A035468(3*(n+1))+3)+A016117(n)`
-/

namespace A015981.P8129855956502891014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A035468 (3 * (n + 1)) + 3).toNat + A016117 n

end

end A015981.P8129855956502891014

/-! ## A015981.P4036202804647827413

`A016117(n)^A331249(n+1)`
-/

namespace A015981.P4036202804647827413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016117 n : ℚ) ^ (A331249 (n + 1) : ℤ)

end

end A015981.P4036202804647827413

/-! ## A015981.P4934902046609175131

`A019590(A112061(n+4))+A016117(n)`
-/

namespace A015981.P4934902046609175131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A112061 (n + 4)).toNat + A016117 n

end

end A015981.P4934902046609175131

/-! ## A015981.P5115459681955623187

`A019590(A351291(lcm(2, n+1)/2))+A016117(n)`
-/

namespace A015981.P5115459681955623187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A351291 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat).toNat + A016117 n

end

end A015981.P5115459681955623187

/-!
# A015983: Inverse of 1974th cyclotomic polynomial.

The programs for A015983, there is no canonical definition to state claims against.
-/

/-! ## A015983.P6176589533293024183

`A014996(n)*A033999(n)`
-/

namespace A015983.P6176589533293024183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014996 n * A033999 n

end

end A015983.P6176589533293024183

/-! ## A015983.P8943091842680347866

`A016235(A175427(n+1))`
-/

namespace A015983.P8943091842680347866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016235 (A175427 (n + 1)).toNat

end

end A015983.P8943091842680347866

/-! ## A015983.P3210453855799323071

`A015731(A283657(n+1))`
-/

namespace A015983.P3210453855799323071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015731 (A283657 (n + 1)).toNat

end

end A015983.P3210453855799323071

/-! ## A015983.P3017983170702858303

`A016235(n)*A369342(n)`
-/

namespace A015983.P3017983170702858303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016235 n * A369342 n

end

end A015983.P3017983170702858303

/-! ## A015983.P17516613890798841424

`A016235(n)*A184340(n+1)`
-/

namespace A015983.P17516613890798841424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016235 n * A184340 (n + 1)

end

end A015983.P17516613890798841424

/-!
# A015984: Six iterations of Reverse and Add are needed to reach a palindrome.

The programs for A015984, there is no canonical definition to state claims against.
-/

/-! ## A015984.P13553825043553900217

`eq[6, A016016(n+1)]+1`
-/

namespace A015984.P13553825043553900217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015984.P13553825043553900217

/-!
# A015985: Inverse of 1976th cyclotomic polynomial.

The programs for A015985, there is no canonical definition to state claims against.
-/

/-! ## A015985.P3123161015702249314

`A014997(gcd(n, ∑[n]))`
-/

namespace A015985.P3123161015702249314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014997 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015985.P3123161015702249314

/-! ## A015985.P5436792767038703501

`A014997(A014997(3*n+1)+A006370(n))`
-/

namespace A015985.P5436792767038703501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014997 (A014997 (3 * n + 1) + A006370 n).toNat

end

end A015985.P5436792767038703501

/-!
# A015987: Inverse of 1978th cyclotomic polynomial.

The programs for A015987, there is no canonical definition to state claims against.
-/

/-! ## A015987.P16790861551428414112

`A014998(n)*A033999(n)`
-/

namespace A015987.P16790861551428414112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A033999 n

end

end A015987.P16790861551428414112

/-! ## A015987.P17508127543915457689

`A014998(n)*A034947(A005843(2*n+1))`
-/

namespace A015987.P17508127543915457689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A034947 (A005843 (2 * n + 1)).toNat

end

end A015987.P17508127543915457689

/-! ## A015987.P1692172618085270131

`A016171(A175427(n+1))`
-/

namespace A015987.P1692172618085270131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016171 (A175427 (n + 1)).toNat

end

end A015987.P1692172618085270131

/-! ## A015987.P3794748245151560864

`(∑[val(A008963(n+2), 7)]^n-1)^n`
-/

namespace A015987.P3794748245151560864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008963 (n + 2)).toNat 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ n : ℕ) : ℤ) - 1) ^ n

end

end A015987.P3794748245151560864

/-! ## A015987.P10147915635510572020

`-1%(A129398(n+2)+1)*a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A015987.P10147915635510572020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  Int.tmod (-1) (A129398 (n + 2) + 1) * a (n - 1)

end

end A015987.P10147915635510572020

/-!
# A015989: Inverse of 1980th cyclotomic polynomial.

The programs for A015989, there is no canonical definition to state claims against.
-/

/-! ## A015989.P14746715434399340839

`A015329(round(2*n/3))`
-/

namespace A015989.P14746715434399340839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A015989.P14746715434399340839

/-! ## A015989.P2852461501938203770

`A015659(A090168(n))`
-/

namespace A015989.P2852461501938203770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015659 (A090168 n).toNat

end

end A015989.P2852461501938203770

/-! ## A015989.P9515478271625675183

`A014999(A300076(n))`
-/

namespace A015989.P9515478271625675183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014999 (A300076 n).toNat

end

end A015989.P9515478271625675183

/-! ## A015989.P1852302031826757494

`A014999(A014682(n))`
-/

namespace A015989.P1852302031826757494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014999 (A014682 n).toNat

end

end A015989.P1852302031826757494

/-! ## A015989.P16388854269339617138

`A014999(A001281(n))`
-/

namespace A015989.P16388854269339617138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014999 (A001281 n).toNat

end

end A015989.P16388854269339617138

/-! ## A015989.P14218814518679065171

`A014999(A006370(n))`
-/

namespace A015989.P14218814518679065171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014999 (A006370 n).toNat

end

end A015989.P14218814518679065171

/-! ## A015989.P17977353457406103347

`A014999(A181762(n))`
-/

namespace A015989.P17977353457406103347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014999 (A181762 n).toNat

end

end A015989.P17977353457406103347

/-! ## A015989.P12860945613098106433

`A014999(A085062(n))`
-/

namespace A015989.P12860945613098106433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014999 (A085062 n).toNat

end

end A015989.P12860945613098106433

/-!
# A015994: Smallest k such that the smallest palindrome > k in the Reverse and Add! trajectory of k is reached after exactly n iterations.

The programs for A015994, there is no canonical definition to state claims against.
-/

/-! ## A015994.P958887379359768799

`A023109(n+1)%A108310(A018625(n+2))`
-/

namespace A015994.P958887379359768799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023109 (n + 1)) (A108310 (A018625 (n + 2)).toNat)

end

end A015994.P958887379359768799

/-! ## A015994.P9960121148156942554

`A023109(n+1)%A158361(A107231(n))`
-/

namespace A015994.P9960121148156942554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023109 (n + 1)) (A158361 (A107231 n).toNat)

end

end A015994.P9960121148156942554

/-! ## A015994.P7195974739631020996

`A023109(A115569(n+1))%A081383(n+1)`
-/

namespace A015994.P7195974739631020996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023109 (A115569 (n + 1)).toNat) (A081383 (n + 1))

end

end A015994.P7195974739631020996

/-! ## A015994.P13224437702861139674

`A033866(n+1)%A132102(A135372(n+1))`
-/

namespace A015994.P13224437702861139674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033866 (n + 1)) (A132102 (A135372 (n + 1)).toNat)

end

end A015994.P13224437702861139674

/-! ## A015994.P17026007943769870070

`A023109(A250244(n+1))%A244507(n+2)`
-/

namespace A015994.P17026007943769870070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023109 (A250244 (n + 1)).toNat) (A244507 (n + 2))

end

end A015994.P17026007943769870070

/-!
# A015995: a(n) = (tau(n^3)+2)/3.

The programs for A015995, the canonical program `A015995.P845519996712568226` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015995 has offset 1).

The definition of A015995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015995.P845519996712568226

`(2+A048785(n+1))/3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A015995

/-- `(2+A048785(n+1))/3` -/
def P845519996712568226.Spec : Prop :=
  ∀ n, P845519996712568226.a n = (A015995 (n + 1) : ℚ)

end A015995

/-! ## A015995.P17814046002453308399

`ceil(Δ[A353551(n)]/3)`
-/

namespace A015995.P17814046002453308399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 3⌉

end

end A015995.P17814046002453308399

namespace A015995

/-- `ceil(Δ[A353551(n)]/3)` -/
def P17814046002453308399.Spec : Prop :=
  ∀ n, P17814046002453308399.a n = A015995 (n + 1)

end A015995

/-! ## A015995.P2981705875081726125

`ceil(A048785(1+n)/3)`
-/

namespace A015995.P2981705875081726125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048785 (1 + n) : ℚ) / 3⌉

end

end A015995.P2981705875081726125

namespace A015995

/-- `ceil(A048785(1+n)/3)` -/
def P2981705875081726125.Spec : Prop :=
  ∀ n, P2981705875081726125.a n = A015995 (n + 1)

end A015995

/-! ## A015995.P8075267979990538216

`∑{d}[n+1, 3^A297155(#)]`
-/

namespace A015995.P8075267979990538216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (3 : ℚ) ^ (A297155 d : ℤ)

end

end A015995.P8075267979990538216

namespace A015995

/-- `∑{d}[n+1, 3^A297155(#)]` -/
def P8075267979990538216.Spec : Prop :=
  ∀ n, P8075267979990538216.a n = (A015995 (n + 1) : ℚ)

end A015995

/-! ## A015995.P6497254837680296931

`A008620(A048785(1+n))`
-/

namespace A015995.P6497254837680296931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A048785 (1 + n)).toNat

end

end A015995.P6497254837680296931

namespace A015995

/-- `A008620(A048785(1+n))` -/
def P6497254837680296931.Spec : Prop :=
  ∀ n, P6497254837680296931.a n = A015995 (n + 1)

end A015995

/-! ## A015995.P4716386159189927766

`A086161(A144943(n+1))`
-/

namespace A015995.P4716386159189927766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A144943 (n + 1)).toNat

end

end A015995.P4716386159189927766

namespace A015995

/-- `A086161(A144943(n+1))` -/
def P4716386159189927766.Spec : Prop :=
  ∀ n, P4716386159189927766.a n = A015995 (n + 1)

end A015995

/-! ## A015995.P6801553334924054125

`A339914(2*A048785(n+1))`
-/

namespace A015995.P6801553334924054125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339914 (2 * A048785 (n + 1)).toNat

end

end A015995.P6801553334924054125

namespace A015995

/-- `A339914(2*A048785(n+1))` -/
def P6801553334924054125.Spec : Prop :=
  ∀ n, P6801553334924054125.a n = A015995 (n + 1)

end A015995

/-! ## A015995.P15737841204746076654

`A100565(n+1)+A066620(n+1)`
-/

namespace A015995.P15737841204746076654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100565 (n + 1) + A066620 (n + 1)

end

end A015995.P15737841204746076654

namespace A015995

/-- `A100565(n+1)+A066620(n+1)` -/
def P15737841204746076654.Spec : Prop :=
  ∀ n, P15737841204746076654.a n = A015995 (n + 1)

end A015995

/-! ## A015995.P15270030704025525447

`A000005(n+1)+2*A066620(n+1)`
-/

namespace A015995.P15270030704025525447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 2 * A066620 (n + 1)

end

end A015995.P15270030704025525447

namespace A015995

/-- `A000005(n+1)+2*A066620(n+1)` -/
def P15270030704025525447.Spec : Prop :=
  ∀ n, P15270030704025525447.a n = A015995 (n + 1)

end A015995

/-! ## A015995.P8720960851835080659

`2*A100565(n+1)-A000005(n+1)`
-/

namespace A015995.P8720960851835080659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100565 (n + 1) - A000005 (n + 1)

end

end A015995.P8720960851835080659

namespace A015995

/-- `2*A100565(n+1)-A000005(n+1)` -/
def P8720960851835080659.Spec : Prop :=
  ∀ n, P8720960851835080659.a n = A015995 (n + 1)

end A015995

/-!
# A015996: (tau(n^4) + 3)/4, where tau = A000005.

The programs for A015996, the canonical program `A015996.P15461774812698289129` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015996 has offset 1).

The definition of A015996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015996.P15461774812698289129

`(A000005((n+1)^4)+3)/4`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015996

/-- `(A000005((n+1)^4)+3)/4` -/
def P15461774812698289129.Spec : Prop :=
  ∀ n, P15461774812698289129.a n = (A015996 (n + 1) : ℚ)

end A015996

/-! ## A015996.P379695447127431507

`(∏{e}[n+1, 4*#+1]+3)/4`
-/

namespace A015996.P379695447127431507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (4 * Nat.factorization (f1 n) p + 1) + 3 : ℕ) : ℚ) / 4

end

end A015996.P379695447127431507

namespace A015996

/-- `(∏{e}[n+1, 4*#+1]+3)/4` -/
def P379695447127431507.Spec : Prop :=
  ∀ n, P379695447127431507.a n = (A015996 (n + 1) : ℚ)

end A015996

/-! ## A015996.P8677460366171332892

`ceil(A344327(n+1)/4)`
-/

namespace A015996.P8677460366171332892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A344327 (n + 1) : ℚ) / 4⌉

end

end A015996.P8677460366171332892

namespace A015996

/-- `ceil(A344327(n+1)/4)` -/
def P8677460366171332892.Spec : Prop :=
  ∀ n, P8677460366171332892.a n = A015996 (n + 1)

end A015996

/-! ## A015996.P15694462809713757439

`∑{d}[n+1, A007875(#)²]`
-/

namespace A015996.P15694462809713757439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d ^ 2

end

end A015996.P15694462809713757439

namespace A015996

/-- `∑{d}[n+1, A007875(#)²]` -/
def P15694462809713757439.Spec : Prop :=
  ∀ n, P15694462809713757439.a n = A015996 (n + 1)

end A015996

/-! ## A015996.P13232372654028616297

`(∑{d}[n+1, 4^A001221(#)]+3)/4`
-/

namespace A015996.P13232372654028616297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (4 : ℚ) ^ (A001221 d : ℤ) + 3) / 4

end

end A015996.P13232372654028616297

namespace A015996

/-- `(∑{d}[n+1, 4^A001221(#)]+3)/4` -/
def P13232372654028616297.Spec : Prop :=
  ∀ n, P13232372654028616297.a n = (A015996 (n + 1) : ℚ)

end A015996

/-! ## A015996.P10488043993516061045

`A003602(∏{e}[n+1, or(1, 4*#)]+1)`
-/

namespace A015996.P10488043993516061045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 1 (4 * Nat.factorization (f1 n) p) + 1)

end

end A015996.P10488043993516061045

namespace A015996

/-- `A003602(∏{e}[n+1, or(1, 4*#)]+1)` -/
def P10488043993516061045.Spec : Prop :=
  ∀ n, P10488043993516061045.a n = A015996 (n + 1)

end A015996

/-! ## A015996.P9058664681527984095

`A008621(A344327(n+1))`
-/

namespace A015996.P9058664681527984095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A344327 (n + 1)).toNat

end

end A015996.P9058664681527984095

namespace A015996

/-- `A008621(A344327(n+1))` -/
def P9058664681527984095.Spec : Prop :=
  ∀ n, P9058664681527984095.a n = A015996 (n + 1)

end A015996

/-! ## A015996.P11516741001998980553

`A046079(2*(n+1)*(n+1))/2+1`
-/

namespace A015996.P11516741001998980553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046079 (2 * (n + 1) * (n + 1)) : ℚ) / 2 + 1

end

end A015996.P11516741001998980553

namespace A015996

/-- `A046079(2*(n+1)*(n+1))/2+1` -/
def P11516741001998980553.Spec : Prop :=
  ∀ n, P11516741001998980553.a n = (A015996 (n + 1) : ℚ)

end A015996

/-! ## A015996.P7939610022638874451

`A065033(A046079((n+1)*2*(n+1))+2)`
-/

namespace A015996.P7939610022638874451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A046079 ((n + 1) * (2 * (n + 1))) + 2).toNat

end

end A015996.P7939610022638874451

namespace A015996

/-- `A065033(A046079((n+1)*2*(n+1))+2)` -/
def P7939610022638874451.Spec : Prop :=
  ∀ n, P7939610022638874451.a n = A015996 (n + 1)

end A015996

/-! ## A015996.P5087546272497754780

`(A048691((n+1)²)+3)/4`
-/

namespace A015996.P5087546272497754780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048691 ((n + 1) ^ 2) + 3 : ℚ) / 4

end

end A015996.P5087546272497754780

namespace A015996

/-- `(A048691((n+1)²)+3)/4` -/
def P5087546272497754780.Spec : Prop :=
  ∀ n, P5087546272497754780.a n = (A015996 (n + 1) : ℚ)

end A015996

/-! ## A015996.P6547255390402299881

`A110005(A048691((n+1)²))`
-/

namespace A015996.P6547255390402299881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A048691 ((n + 1) ^ 2)).toNat

end

end A015996.P6547255390402299881

namespace A015996

/-- `A110005(A048691((n+1)²))` -/
def P6547255390402299881.Spec : Prop :=
  ∀ n, P6547255390402299881.a n = A015996 (n + 1)

end A015996

/-! ## A015996.P14673073367436277628

`A250028(A018892((n+1)²))`
-/

namespace A015996.P14673073367436277628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250028 (A018892 ((n + 1) ^ 2)).toNat

end

end A015996.P14673073367436277628

namespace A015996

/-- `A250028(A018892((n+1)²))` -/
def P14673073367436277628.Spec : Prop :=
  ∀ n, P14673073367436277628.a n = A015996 (n + 1)

end A015996

/-! ## A015996.P8570822329128519753

`A000463(A000463(A048691(∑[2*n+1])))`
-/

namespace A015996.P8570822329128519753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A000463 (A048691 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A015996.P8570822329128519753

namespace A015996

/-- `A000463(A000463(A048691(∑[2*n+1])))` -/
def P8570822329128519753.Spec : Prop :=
  ∀ n, P8570822329128519753.a n = A015996 (n + 1)

end A015996

/-!
# A015997: Inverse of 1988th cyclotomic polynomial.

The programs for A015997, there is no canonical definition to state claims against.
-/

/-! ## A015997.P9018275642036939303

`A016053(lt[A016011(n+4), A245851(3*n+2)])`
-/

namespace A015997.P9018275642036939303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016011 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016053 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015997.P9018275642036939303

/-! ## A015997.P14046332329188137951

`A016221(n)^A001222(A003349(3*n+1))`
-/

namespace A015997.P14046332329188137951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016221 n : ℚ) ^ (A001222 (A003349 (3 * n + 1)).toNat : ℤ)

end

end A015997.P14046332329188137951

/-! ## A015997.P18392235786956842660

`A049310(∑[comp[ceil(40*(n+1)²²/3)]])`
-/

namespace A015997.P18392235786956842660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(40 * ((n + 1) ^ 2) ^ 2 : ℚ) / 3⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015997.P18392235786956842660

/-! ## A015997.P116311509363003010

`A016221(n)^A035517(A000217(n))`
-/

namespace A015997.P116311509363003010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016221 n : ℚ) ^ (A035517 (A000217 n).toNat : ℤ)

end

end A015997.P116311509363003010

/-! ## A015997.P10410512143405756954

`A015717(A265351(n)%A015727(3*n+1))`
-/

namespace A015997.P10410512143405756954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015717 (Int.tmod (A265351 n) (A015727 (3 * n + 1))).toNat

end

end A015997.P10410512143405756954

/-! ## A015997.P5204890637597264212

`A016221(n)+A010054(A152948(n+5))`
-/

namespace A015997.P5204890637597264212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016221 n + A010054 (A152948 (n + 5)).toNat

end

end A015997.P5204890637597264212

/-! ## A015997.P13401092898365522396

`A016192(A308920(7*row(n)))*A016221(n)`
-/

namespace A015997.P13401092898365522396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (A308920 (7 * SequenceMachineLib.triRow n)).toNat * A016221 n

end

end A015997.P13401092898365522396

/-! ## A015997.P13992131883405217970

`A016192(A308920(7*(col(n)+1)))*A016221(n)`
-/

namespace A015997.P13992131883405217970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (A308920 (7 * (SequenceMachineLib.triCol n + 1))).toNat * A016221 n

end

end A015997.P13992131883405217970

/-!
# A015999: a(n) = (tau(n^5) + 4)/5.

The programs for A015999, the canonical program `A015999.P13928052743250757637` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015999 has offset 1).

The definition of A015999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015999.P13928052743250757637

`(∏{e}[n+1, 5*#+1]+4)/5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015999

/-- `(∏{e}[n+1, 5*#+1]+4)/5` -/
def P13928052743250757637.Spec : Prop :=
  ∀ n, P13928052743250757637.a n = (A015999 (n + 1) : ℚ)

end A015999

/-! ## A015999.P13576347953745903011

`(A344328(1+n)+4)/5`
-/

namespace A015999.P13576347953745903011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344328 (1 + n) + 4 : ℚ) / 5

end

end A015999.P13576347953745903011

namespace A015999

/-- `(A344328(1+n)+4)/5` -/
def P13576347953745903011.Spec : Prop :=
  ∀ n, P13576347953745903011.a n = (A015999 (n + 1) : ℚ)

end A015999

/-! ## A015999.P6565152576702865862

`∑{d}[n+1, 5^A297155(#)]`
-/

namespace A015999.P6565152576702865862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (5 : ℚ) ^ (A297155 d : ℤ)

end

end A015999.P6565152576702865862

namespace A015999

/-- `∑{d}[n+1, 5^A297155(#)]` -/
def P6565152576702865862.Spec : Prop :=
  ∀ n, P6565152576702865862.a n = (A015999 (n + 1) : ℚ)

end A015999

/-! ## A015999.P18151597782731017989

`(∑{d}[n+1, 5^A001221(#)]+4)/5`
-/

namespace A015999.P18151597782731017989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (5 : ℚ) ^ (A001221 d : ℤ) + 4) / 5

end

end A015999.P18151597782731017989

namespace A015999

/-- `(∑{d}[n+1, 5^A001221(#)]+4)/5` -/
def P18151597782731017989.Spec : Prop :=
  ∀ n, P18151597782731017989.a n = (A015999 (n + 1) : ℚ)

end A015999

/-! ## A015999.P6780161574444211243

`∑{d}[n+1, A054576(2*A082476(#))]`
-/

namespace A015999.P6780161574444211243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054576 (2 * A082476 d).toNat

end

end A015999.P6780161574444211243

namespace A015999

/-- `∑{d}[n+1, A054576(2*A082476(#))]` -/
def P6780161574444211243.Spec : Prop :=
  ∀ n, P6780161574444211243.a n = A015999 (n + 1)

end A015999

/-! ## A015999.P1414557159665370897

`A058207(A344328(n+1))`
-/

namespace A015999.P1414557159665370897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (A344328 (n + 1)).toNat

end

end A015999.P1414557159665370897

namespace A015999

/-- `A058207(A344328(n+1))` -/
def P1414557159665370897.Spec : Prop :=
  ∀ n, P1414557159665370897.a n = A015999 (n + 1)

end A015999

/-! ## A015999.P1016783695711810289

`A089233((n+1)²)+A000005(n+1)`
-/

namespace A015999.P1016783695711810289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 ((n + 1) ^ 2) + A000005 (n + 1)

end

end A015999.P1016783695711810289

namespace A015999

/-- `A089233((n+1)²)+A000005(n+1)` -/
def P1016783695711810289.Spec : Prop :=
  ∀ n, P1016783695711810289.a n = A015999 (n + 1)

end A015999

