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
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A015700: Inverse of 1691st cyclotomic polynomial.

The programs for A015700, there is no canonical definition to state claims against.
-/

/-! ## A015700.P5656773869114567447

`A014802(floor(sqrt(A049715(n))))`
-/

namespace A015700.P5656773869114567447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014802 (Int.sqrt (A049715 n)).toNat

end

end A015700.P5656773869114567447

/-! ## A015700.P17859526698062489839

`A008966(row(ceil(n/2))!)`
-/

namespace A015700.P17859526698062489839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (Nat.factorial (SequenceMachineLib.triRow ⌈(n : ℚ) / 2⌉.toNat))

end

end A015700.P17859526698062489839

/-! ## A015700.P2478588764637581524

`A063524(∑[∑{digits}[n, C(#, 9)]]!)`
-/

namespace A015700.P2478588764637581524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.choose x 9).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015700.P2478588764637581524

/-! ## A015700.P14088360361615007010

`A008683(row(ceil(n/2))!)²`
-/

namespace A015700.P14088360361615007010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (SequenceMachineLib.triRow ⌈(n : ℚ) / 2⌉.toNat)) ^ 2

end

end A015700.P14088360361615007010

/-! ## A015700.P9106649967577672100

`A051731(3^∑[∑{digits}[n, C(#, 9)]])`
-/

namespace A015700.P9106649967577672100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.choose x 9).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015700.P9106649967577672100

/-! ## A015700.P9282194532721964039

`A377870(row(∑[n%2])!+1)`
-/

namespace A015700.P9282194532721964039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377870 (Nat.factorial (SequenceMachineLib.triRow (∑ j ∈ Finset.range (n + 1), f1 j)) + 1)

end

end A015700.P9282194532721964039

/-! ## A015700.P8603003430015009869

`A010051(2+∑[val(n+1, 10)]!)`
-/

namespace A015700.P8603003430015009869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 + Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015700.P8603003430015009869

/-! ## A015700.P16044266167942776802

`A000007(A326685(n+1))`
-/

namespace A015700.P16044266167942776802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A326685 (n + 1)).toNat

end

end A015700.P16044266167942776802

/-! ## A015700.P15050933957292218247

`A212793(4^A102684(n))`
-/

namespace A015700.P15050933957292218247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A102684 n : ℤ))).toNat

end

end A015700.P15050933957292218247

/-! ## A015700.P17225166250391885302

`∏{e}[A320320(n), A007330(#)]`
-/

namespace A015700.P17225166250391885302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007330 (Nat.factorization (f1 n).natAbs p)

end

end A015700.P17225166250391885302

/-!
# A015702: Numbers k where phi(k) + sigma(k) increases to a record value.

The programs for A015702, there is no canonical definition to state claims against.
-/

/-! ## A015702.P4677181857530369572

`A071391(A065388(1+n))`
-/

namespace A015702.P4677181857530369572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071391 (A065388 (1 + n)).toNat

end

end A015702.P4677181857530369572

/-! ## A015702.P16961968544764947898

`A071391(record[A065387(n+1)])`
-/

namespace A015702.P16961968544764947898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015702.P16961968544764947898

/-! ## A015702.P3769553115911284238

`A071391(record[A051709(n+1)+2*(n+1)])`
-/

namespace A015702.P3769553115911284238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015702.P3769553115911284238

/-! ## A015702.P11561528956120748371

`A071391(record[∑{d}[n+1, #*A007423((n+1)/#)]])`
-/

namespace A015702.P11561528956120748371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A007423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015702.P11561528956120748371

/-! ## A015702.P511911972975857675

`A071391(record[A000203(n+1)+A000010(n+1)])`
-/

namespace A015702.P511911972975857675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015702.P511911972975857675

/-! ## A015702.P11961520090210512782

`A071391(record[A121048(n+1)+A001065(n+1)])`
-/

namespace A015702.P11961520090210512782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) + A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015702.P11961520090210512782

/-! ## A015702.P14805564429598120803

`A071391(record[A158901(n+1)+A073757(n+1)])`
-/

namespace A015702.P14805564429598120803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) + A073757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015702.P14805564429598120803

/-!
# A015703: Inverse of 1694th cyclotomic polynomial.

The programs for A015703, there is no canonical definition to state claims against.
-/

/-! ## A015703.P17342803483932449988

`A014031(n)*A014856(n)`
-/

namespace A015703.P17342803483932449988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014031 n * A014856 n

end

end A015703.P17342803483932449988

/-! ## A015703.P5690733827327401077

`A014856(n)*A033999(n)`
-/

namespace A015703.P5690733827327401077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014856 n * A033999 n

end

end A015703.P5690733827327401077

/-! ## A015703.P10098959370510483460

`A014856(n)*A016426(n)`
-/

namespace A015703.P10098959370510483460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014856 n * A016426 n

end

end A015703.P10098959370510483460

/-! ## A015703.P16756608009885871427

`(-C(A001912(A107347(n+1)+1), A110726(n+1)/11))^n`
-/

namespace A015703.P16756608009885871427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.choose (A001912 (A107347 (n + 1) + 1).toNat).toNat (SequenceMachineLib.roundAway ((A110726 (n + 1 + 10) : ℚ) / 11)).toNat : ℤ)) ^ n

end

end A015703.P16756608009885871427

/-! ## A015703.P16930967573915767821

`A319116(n)%A109014(n)`
-/

namespace A015703.P16930967573915767821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319116 n) (A109014 n)

end

end A015703.P16930967573915767821

/-! ## A015703.P7035549871119051326

`A014053(2*A002522(n))`
-/

namespace A015703.P7035549871119051326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014053 (2 * A002522 n).toNat

end

end A015703.P7035549871119051326

/-! ## A015703.P12311348716819211854

`A014031(n²*(A145568(n)+1))`
-/

namespace A015703.P12311348716819211854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014031 ((n ^ 2 : ℤ) * (A145568 n + 1)).toNat

end

end A015703.P12311348716819211854

/-! ## A015703.P5460284776010949273

`A014031(n)*A014031(A001844(n))`
-/

namespace A015703.P5460284776010949273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014031 n * A014031 (A001844 n).toNat

end

end A015703.P5460284776010949273

/-! ## A015703.P1405946249503785461

`(-C(n, A239086(n+1)))^n`
-/

namespace A015703.P1405946249503785461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.choose n (A239086 (n + 1)).toNat : ℤ)) ^ n

end

end A015703.P1405946249503785461

/-! ## A015703.P799075089784297012

`(A321804(3*n+4)%A321804(n))^n`
-/

namespace A015703.P799075089784297012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321804 (3 * n + 4)) (A321804 n) ^ n

end

end A015703.P799075089784297012

/-!
# A015705: Geometric mean of phi(n) and sigma(n) is an integer, n odd.

The programs for A015705, there is no canonical definition to state claims against.
-/

/-! ## A015705.P4883442311377963199

`A011257(eq[1, A011257(n+1)%2]+1)`
-/

namespace A015705.P4883442311377963199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011257 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015705.P4883442311377963199

/-! ## A015705.P253129968683135806

`∩[2*n+1, A011257(n+1)]`
-/

namespace A015705.P253129968683135806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015705.P253129968683135806

/-! ## A015705.P17380508889923085808

`filter[A011257(1+n), A379952(#)]`
-/

namespace A015705.P17380508889923085808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A015705.P17380508889923085808

/-! ## A015705.P190325791557398064

`∩[A011257(n+1), A014076(n+1)]`
-/

namespace A015705.P190325791557398064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015705.P190325791557398064

/-! ## A015705.P2074206931119902386

`record[A093178(A011257(n+1))]`
-/

namespace A015705.P2074206931119902386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A011257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015705.P2074206931119902386

/-!
# A015706: Odd numbers k that divide phi(k)*sigma(k).

The programs for A015706, there is no canonical definition to state claims against.
-/

/-! ## A015706.P8597406683241207243

`A011775(eq[1, A011775(n+1)%2]+1)`
-/

namespace A015706.P8597406683241207243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011775 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015706.P8597406683241207243

/-! ## A015706.P6074171796185507154

`A011775(eq[1, gcd(2, A011775(n+1))]+1)`
-/

namespace A015706.P6074171796185507154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A011775 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A015706.P6074171796185507154

/-! ## A015706.P12406512029167143443

`A011775(eq[1, and(1, A011775(n+1))]+1)`
-/

namespace A015706.P12406512029167143443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A011775 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015706.P12406512029167143443

/-! ## A015706.P17877736839280537500

`∩[or(1, A047630(n+1)), A047630(n+1)]`
-/

namespace A015706.P17877736839280537500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047630 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015706.P17877736839280537500

/-! ## A015706.P16838918460642307787

`filter[A047630(n+1), A093719(#)]`
-/

namespace A015706.P16838918460642307787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A015706.P16838918460642307787

/-!
# A015707: Values of n where (phi(n) * sigma(n))/n is an integer and increases.

The programs for A015707, there is no canonical definition to state claims against.
-/

/-! ## A015707.P13104799461776510385

`A011775(lt[A357214(n+1), A134636(3*n)])`
-/

namespace A015707.P13104799461776510385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015707.P13104799461776510385

/-! ## A015707.P6783764422392460162

`A011775(A320058(n+1)%A132195(2*(n+2)))`
-/

namespace A015707.P6783764422392460162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (Int.tmod (A320058 (n + 1)) (A132195 (2 * (n + 2)))).toNat

end

end A015707.P6783764422392460162

/-! ## A015707.P14560965077841636010

`A011775(lt[A220553(3*n+5), A344311(3*n+5)])`
-/

namespace A015707.P14560965077841636010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344311 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015707.P14560965077841636010

/-! ## A015707.P15333520238952281366

`∩[A011775(n+1), A184429(n+1)]`
-/

namespace A015707.P15333520238952281366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015707.P15333520238952281366

/-! ## A015707.P7389597913431558856

`∩[A011775(n+1), A389619(n+1)]`
-/

namespace A015707.P7389597913431558856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015707.P7389597913431558856

/-!
# A015709: Composite n such that phi(n) * sigma(n) is one less than a square.

The programs for A015709, there is no canonical definition to state claims against.
-/

/-! ## A015709.P9258227441617935626

`∪[A015721(n+1), A015722(n+1)]`
-/

namespace A015709.P9258227441617935626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015709.P9258227441617935626

/-! ## A015709.P13264404864012059179

`eq[A014973(n+1), A015710(n+1)]+1`
-/

namespace A015709.P13264404864012059179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015709.P13264404864012059179

/-! ## A015709.P7292545152930344570

`A065475(eq[A014973(n+1), A015710(n+1)])`
-/

namespace A015709.P7292545152930344570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015709.P7292545152930344570

/-! ## A015709.P10392816042751591738

`record[A048671(A238463(n+4))]`
-/

namespace A015709.P10392816042751591738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A238463 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015709.P10392816042751591738

/-! ## A015709.P3338635168880005962

`filter[A238463(n+1), A005171(#)]`
-/

namespace A015709.P3338635168880005962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A015709.P3338635168880005962

/-!
# A015711: Inverse of 1702nd cyclotomic polynomial.

The programs for A015711, there is no canonical definition to state claims against.
-/

/-! ## A015711.P13090980789630887093

`A014860(n)*A033999(n)`
-/

namespace A015711.P13090980789630887093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014860 n * A033999 n

end

end A015711.P13090980789630887093

/-! ## A015711.P12894276906674917653

`A014860(n)/A033999(n)^A141354(n)`
-/

namespace A015711.P12894276906674917653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014860 n : ℚ) / (A033999 n : ℚ) ^ (A141354 n : ℤ)

end

end A015711.P12894276906674917653

/-! ## A015711.P11488042726851422762

`A014860(n)/A033999(n)^A006995(n+1)`
-/

namespace A015711.P11488042726851422762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014860 n : ℚ) / (A033999 n : ℚ) ^ (A006995 (n + 1) : ℤ)

end

end A015711.P11488042726851422762

/-! ## A015711.P872231475683356624

`A014860(n)/A033999(n)^A251720(n+1)`
-/

namespace A015711.P872231475683356624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014860 n : ℚ) / (A033999 n : ℚ) ^ (A251720 (n + 1) : ℤ)

end

end A015711.P872231475683356624

/-! ## A015711.P17288238848655249617

`A015895(A175427(n+1))`
-/

namespace A015711.P17288238848655249617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015895 (A175427 (n + 1)).toNat

end

end A015711.P17288238848655249617

/-!
# A015712: Inverse of 1703rd cyclotomic polynomial.

The programs for A015712, there is no canonical definition to state claims against.
-/

/-! ## A015712.P12266474872024631243

`A015790(record[A049084(A348553(n))])`
-/

namespace A015712.P12266474872024631243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A348553 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015712.P12266474872024631243

/-! ## A015712.P409782787460473404

`A015450(n)-A015450(A051635(n+5))`
-/

namespace A015712.P409782787460473404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015450 n - A015450 (A051635 (n + 5)).toNat

end

end A015712.P409782787460473404

/-! ## A015712.P15359455379938229375

`C(2, A308980(n+col(n)))`
-/

namespace A015712.P15359455379938229375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308980 (n + SequenceMachineLib.triCol n)).toNat

end

end A015712.P15359455379938229375

/-! ## A015712.P9401512461613718219

`C(n, comp[A101887(3*n+4)])`
-/

namespace A015712.P9401512461613718219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101887 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015712.P9401512461613718219

/-! ## A015712.P18337527319903266064

`A330935(A081290(1+n))`
-/

namespace A015712.P18337527319903266064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330935 (A081290 (1 + n)).toNat

end

end A015712.P18337527319903266064

/-! ## A015712.P292760062129743006

`A336423(A081290(n+1))`
-/

namespace A015712.P292760062129743006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336423 (A081290 (n + 1)).toNat

end

end A015712.P292760062129743006

/-! ## A015712.P3449329517737825864

`A010052(C(A091226(n), 4))`
-/

namespace A015712.P3449329517737825864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.choose (A091226 n).toNat 4)

end

end A015712.P3449329517737825864

/-! ## A015712.P14625461274563712216

`A000007(∑[A160984(n+1)])`
-/

namespace A015712.P14625461274563712216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015712.P14625461274563712216

/-! ## A015712.P3690778376706317323

`A000007(2*A161273(n+1))`
-/

namespace A015712.P3690778376706317323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * A161273 (n + 1)).toNat

end

end A015712.P3690778376706317323

/-! ## A015712.P16379302705898629035

`A000007(lcm(2, A161273(n+1)))`
-/

namespace A015712.P16379302705898629035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lcm 2 (A161273 (n + 1)))

end

end A015712.P16379302705898629035

/-! ## A015712.P5437412735084675288

`A343321(C(5, A084827(n+2)))`
-/

namespace A015712.P5437412735084675288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343321 (Nat.choose 5 (A084827 (n + 2)).toNat)

end

end A015712.P5437412735084675288

/-! ## A015712.P8110227792794895146

`A010054(∑[comp[A075930(3*n+2)]])`
-/

namespace A015712.P8110227792794895146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015712.P8110227792794895146

/-! ## A015712.P10327536495236787436

`A010054(∑[comp[A139373(3*n+5)]])`
-/

namespace A015712.P10327536495236787436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139373 (3 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015712.P10327536495236787436

/-! ## A015712.P2113168865395593081

`A000007(A090620(n)^(∑{p}[n+1, gcd(n, #)]+1))`
-/

namespace A015712.P2113168865395593081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A090620 n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + 1)).toNat

end

end A015712.P2113168865395593081

/-! ## A015712.P14701569139586212799

`A000007(A090620(n)*A246867(n))`
-/

namespace A015712.P14701569139586212799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A090620 n * A246867 n).toNat

end

end A015712.P14701569139586212799

/-! ## A015712.P11473427502097290633

`C(A180501(A002262(n+4)), A224813(n))`
-/

namespace A015712.P11473427502097290633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A180501 (A002262 (n + 4)).toNat).toNat (A224813 n).toNat

end

end A015712.P11473427502097290633

/-! ## A015712.P16511433797056856389

`C(A279041(n), A279012(A279012(3*n+4)))`
-/

namespace A015712.P16511433797056856389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A279041 n).toNat (A279012 (A279012 (3 * n + 4)).toNat).toNat

end

end A015712.P16511433797056856389

/-! ## A015712.P14273078843051318506

`A000161(ceil(A277015(n)/A222312(2*n+3)))`
-/

namespace A015712.P14273078843051318506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 ⌈(A277015 n : ℚ) / (A222312 (2 * n + 3) : ℚ)⌉.toNat

end

end A015712.P14273078843051318506

/-! ## A015712.P3850021129226802107

`A000079(A161089(n+1))%2`
-/

namespace A015712.P3850021129226802107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A161089 (n + 1)).toNat) 2

end

end A015712.P3850021129226802107

/-! ## A015712.P16724975567564761944

`A010054(∑[comp[A246439(2*n+5)]])`
-/

namespace A015712.P16724975567564761944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246439 (2 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015712.P16724975567564761944

/-!
# A015713: Numbers m such that phi(m) * sigma(m) + k^2 is not a square for any k.

The programs for A015713, there is no canonical definition to state claims against.
-/

/-! ## A015713.P10262591513518754245

`∩[A125853(n+1), A193305(n+1)]`
-/

namespace A015713.P10262591513518754245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P10262591513518754245

/-! ## A015713.P6043497319929357985

`∩[A028982(n+1), A066499(n+1)]`
-/

namespace A015713.P6043497319929357985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P6043497319929357985

/-! ## A015713.P2615934894265779609

`∩[A066499(n+1), A069265(n+1)]`
-/

namespace A015713.P2615934894265779609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P2615934894265779609

/-! ## A015713.P12910490691741915511

`∩[A069265(n+1), A097987(n+1)]`
-/

namespace A015713.P12910490691741915511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P12910490691741915511

/-! ## A015713.P5972755488410086496

`∩[A066499(n+1), A102646(n+1)]`
-/

namespace A015713.P5972755488410086496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P5972755488410086496

/-! ## A015713.P8142092606944027281

`∩[A066499(n+1), A125853(n+1)]`
-/

namespace A015713.P8142092606944027281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P8142092606944027281

/-! ## A015713.P10882450920511337420

`∩[A066499(n+1), A135572(n+1)]`
-/

namespace A015713.P10882450920511337420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P10882450920511337420

/-! ## A015713.P8642867503878481348

`∩[A066499(n+1), A195212(n+1)]`
-/

namespace A015713.P8642867503878481348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P8642867503878481348

/-! ## A015713.P17992533471304453643

`∩[A097987(n+1), A195212(n+1)]`
-/

namespace A015713.P17992533471304453643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P17992533471304453643

/-! ## A015713.P6135516806293514349

`∩[A066499(n+1), A320137(n+1)]`
-/

namespace A015713.P6135516806293514349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015713.P6135516806293514349

/-!
# A015714: Inverse of 1705th cyclotomic polynomial.

The programs for A015714, there is no canonical definition to state claims against.
-/

/-! ## A015714.P5809188879928887719

`A185284(A322058(n))+A016044(n)`
-/

namespace A015714.P5809188879928887719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A322058 n).toNat + A016044 n

end

end A015714.P5809188879928887719

/-! ## A015714.P15146995917678834665

`A090620(A122283(3*n))+A016044(n)`
-/

namespace A015714.P15146995917678834665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A122283 (3 * n)).toNat + A016044 n

end

end A015714.P15146995917678834665

/-! ## A015714.P18097339702583428007

`A016044(n)%A322348(n)`
-/

namespace A015714.P18097339702583428007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016044 n) (A322348 n)

end

end A015714.P18097339702583428007

/-! ## A015714.P12664194340788110977

`A016264(n)%A322348(n)`
-/

namespace A015714.P12664194340788110977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016264 n) (A322348 n)

end

end A015714.P12664194340788110977

/-! ## A015714.P10340697654929949974

`and(A016044(n), A391477(n+1))`
-/

namespace A015714.P10340697654929949974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016044 n) (A391477 (n + 1))

end

end A015714.P10340697654929949974

/-!
# A015715: Odd integers m such that phi(m) | sigma(m).

The programs for A015715, there is no canonical definition to state claims against.
-/

/-! ## A015715.P4135722735368003692

`filter[A076375(n+1), #%2]`
-/

namespace A015715.P4135722735368003692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A015715.P4135722735368003692

/-! ## A015715.P13270905272094980239

`filter[A020492(n+1), #%2]`
-/

namespace A015715.P13270905272094980239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A015715.P13270905272094980239

/-! ## A015715.P4712330623587445441

`A020492(eq[1, A020492(n+1)%2]+1)`
-/

namespace A015715.P4712330623587445441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020492 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015715.P4712330623587445441

/-! ## A015715.P5351154162250851143

`A020492(eq[1, gcd(2, A020492(n+1))]+1)`
-/

namespace A015715.P5351154162250851143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A020492 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A015715.P5351154162250851143

/-! ## A015715.P5722297609261826005

`A020492(record[(n+1)*and(1, A020492(n+1))])`
-/

namespace A015715.P5722297609261826005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A020492 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015715.P5722297609261826005

/-! ## A015715.P12542418398466931991

`∩[A020492(n+1), A236693(n+1)]`
-/

namespace A015715.P12542418398466931991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015715.P12542418398466931991

/-! ## A015715.P10941297686277281705

`∩[A076375(n+1), A236693(n+1)]`
-/

namespace A015715.P10941297686277281705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015715.P10941297686277281705

/-! ## A015715.P1776906243173011790

`∩[A236693(n+1), A342103(n+1)]`
-/

namespace A015715.P1776906243173011790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015715.P1776906243173011790

/-!
# A015716: Triangle read by rows: T(n,k) is the number of partitions of n into distinct parts, one of which is k (1<=k<=n).

The programs for A015716, there is no canonical definition to state claims against.
-/

/-! ## A015716.P1000531829464398549

`A238450(n+1)+A238451(n+1)`
-/

namespace A015716.P1000531829464398549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (n + 1) + A238451 (n + 1)

end

end A015716.P1000531829464398549

/-! ## A015716.P17179583572166133568

`A000009(comp[∑[n-1]]-n)-A015718(n+1)`
-/

namespace A015716.P17179583572166133568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) - A015718 (n + 1)

end

end A015716.P17179583572166133568

/-! ## A015716.P11878460956738246376

`A238450(n+1)+A003074(A049834(n+1))^A179456(n)`
-/

namespace A015716.P11878460956738246376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238450 (n + 1) : ℚ) + (A003074 (A049834 (n + 1)).toNat : ℚ) ^ (A179456 n : ℤ)

end

end A015716.P11878460956738246376

/-! ## A015716.P2073786003795751131

`A238450(n+1)+A003074(A054531(n+1))^A179456(n)`
-/

namespace A015716.P2073786003795751131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238450 (n + 1) : ℚ) + (A003074 (A054531 (n + 1)).toNat : ℚ) ^ (A179456 n : ℤ)

end

end A015716.P2073786003795751131

/-!
# A015717: Inverse of 1708th cyclotomic polynomial.

The programs for A015717, there is no canonical definition to state claims against.
-/

/-! ## A015717.P12068990475902019023

`A014541(n)*A014560(A308840(n))`
-/

namespace A015717.P12068990475902019023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014541 n * A014560 (A308840 n).toNat

end

end A015717.P12068990475902019023

/-! ## A015717.P5591934546238861859

`A015862(A116608(n+1))*A015885(n)`
-/

namespace A015717.P5591934546238861859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015862 (A116608 (n + 1)).toNat * A015885 n

end

end A015717.P5591934546238861859

/-! ## A015717.P9859456842324253222

`A015997(n)*A246457(A109128(n+4))`
-/

namespace A015717.P9859456842324253222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015997 n * A246457 (A109128 (n + 4)).toNat

end

end A015717.P9859456842324253222

/-! ## A015717.P18038539478888170028

`A015885(n)^A152147(A007318(n+4))`
-/

namespace A015717.P18038539478888170028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015885 n : ℚ) ^ (A152147 (A007318 (n + 4)).toNat : ℤ)

end

end A015717.P18038539478888170028

/-! ## A015717.P8367777160598217135

`A016221(n)^A094535(A004715(2*n+1))`
-/

namespace A015717.P8367777160598217135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016221 n : ℚ) ^ (A094535 (A004715 (2 * n + 1)).toNat : ℤ)

end

end A015717.P8367777160598217135

/-! ## A015717.P12399933335239909757

`A015997(n)^A003136(A109128(n+4)+1)`
-/

namespace A015717.P12399933335239909757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A003136 (A109128 (n + 4) + 1).toNat : ℤ)

end

end A015717.P12399933335239909757

/-! ## A015717.P8367744957327204992

`A015997(n)^A023739(A109128(n+4)+1)`
-/

namespace A015717.P8367744957327204992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A023739 (A109128 (n + 4) + 1).toNat : ℤ)

end

end A015717.P8367744957327204992

/-! ## A015717.P15502209867418183297

`A015997(n)/A309873(A109128(n+4)+1)²`
-/

namespace A015717.P15502209867418183297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) / (A309873 (A109128 (n + 4) + 1).toNat ^ 2 : ℚ)

end

end A015717.P15502209867418183297

/-! ## A015717.P2209523153691873540

`A015997(n)/A347176(A109128(n+4)+1)²`
-/

namespace A015717.P2209523153691873540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) / (A347176 (A109128 (n + 4) + 1).toNat ^ 2 : ℚ)

end

end A015717.P2209523153691873540

/-! ## A015717.P3215176408404531127

`A016192(A308920(1+n-row(n)))*A016221(n)`
-/

namespace A015717.P3215176408404531127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (A308920 (1 + ((n : ℤ) - (SequenceMachineLib.triRow n : ℤ))).toNat).toNat * A016221 n

end

end A015717.P3215176408404531127

/-! ## A015717.P11415861457643279372

`A015885(n)^A000040(A037276(2*n+1))`
-/

namespace A015717.P11415861457643279372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015885 n : ℚ) ^ (A000040 (A037276 (2 * n + 1)).toNat : ℤ)

end

end A015717.P11415861457643279372

/-! ## A015717.P6349927091578731717

`A061853(A137688(n))+A015885(n)`
-/

namespace A015717.P6349927091578731717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061853 (A137688 n).toNat + A015885 n

end

end A015717.P6349927091578731717

/-! ## A015717.P8848266577086301669

`A005347(A015995(n+1))*A015997(n)`
-/

namespace A015717.P8848266577086301669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005347 (A015995 (n + 1)).toNat * A015997 n

end

end A015717.P8848266577086301669

/-!
# A015718: Triangular array T given by rows: T(n,k) = number of partitions of n into distinct parts, none of which is k (1<=k<=n).

The programs for A015718, there is no canonical definition to state claims against.
-/

/-! ## A015718.P9172957917958305622

`A000009(A002024(n+1))-A015716(n+1)`
-/

namespace A015718.P9172957917958305622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002024 (n + 1)).toNat - A015716 (n + 1)

end

end A015718.P9172957917958305622

/-!
# A015719: Inverse of 1710th cyclotomic polynomial.

The programs for A015719, there is no canonical definition to state claims against.
-/

/-! ## A015719.P4713194259976620793

`(xor(2, ceil(n/2)%3)-1)*A014864(n)`
-/

namespace A015719.P4713194259976620793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (Int.tmod ⌈(n : ℚ) / 2⌉ 3) - 1) * A014864 n

end

end A015719.P4713194259976620793

/-! ## A015719.P16027728616705070861

`A010892(n)*A014864(n)`
-/

namespace A015719.P16027728616705070861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014864 n

end

end A015719.P16027728616705070861

/-! ## A015719.P10827839248705657085

`A014504(n)*A016345(n)`
-/

namespace A015719.P10827839248705657085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014504 n * A016345 n

end

end A015719.P10827839248705657085

/-! ## A015719.P12609557794510167334

`A010892(((n+1)²-1)*3+1)*A015044(n)`
-/

namespace A015719.P12609557794510167334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 ((((n + 1) ^ 2 : ℤ) - 1) * 3 + 1).toNat * A015044 n

end

end A015719.P12609557794510167334

/-! ## A015719.P16599367052390820724

`A016079(lt[A000217(n), A016046(n+3)])`
-/

namespace A015719.P16599367052390820724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016046 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015719.P16599367052390820724

/-! ## A015719.P14453795983227635527

`(A010892(n)*A015044(n))^A057181(A000005(n+3))`
-/

namespace A015719.P14453795983227635527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010892 n * A015044 n : ℚ) ^ (A057181 (A000005 (n + 3)).toNat : ℤ)

end

end A015719.P14453795983227635527

/-! ## A015719.P12055710649724002405

`A303555(n+1)%2+A010892(n)*A015044(n)`
-/

namespace A015719.P12055710649724002405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303555 (n + 1)) 2 + A010892 n * A015044 n

end

end A015719.P12055710649724002405

/-! ## A015719.P8670385472941530282

`A016079(n)*A302042(A016041(n+1))`
-/

namespace A015719.P8670385472941530282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 n * A302042 (A016041 (n + 1)).toNat

end

end A015719.P8670385472941530282

/-! ## A015719.P13537543319664405624

`A016079(n)+A000007(∑[A109701(2*n)])`
-/

namespace A015719.P13537543319664405624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016079 n + A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015719.P13537543319664405624

/-!
# A015720: Inverse of 1711th cyclotomic polynomial.

The programs for A015720, there is no canonical definition to state claims against.
-/

/-! ## A015720.P17936374140561241841

`A015090(n-A002264(A194640(n)))`
-/

namespace A015720.P17936374140561241841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015090 ((n : ℤ) - A002264 (A194640 n).toNat).toNat

end

end A015720.P17936374140561241841

/-! ## A015720.P2811585985984362599

`A015900(lt[A228101(2*n+5), A093645(n)])`
-/

namespace A015720.P2811585985984362599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228101 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015900 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015720.P2811585985984362599

/-! ## A015720.P5265929043376416040

`A015900(lt[A228101(2*n+5), A344764(2*(n+2))])`
-/

namespace A015720.P5265929043376416040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228101 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015900 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015720.P5265929043376416040

/-! ## A015720.P4229063563906698346

`ceil((A261921(n+1)/24-(n+1))/28)+1`
-/

namespace A015720.P4229063563906698346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A261921 (n + 1) : ℚ) / 24 - (n + 1 : ℚ)) / 28⌉ + 1

end

end A015720.P4229063563906698346

/-! ## A015720.P6236700191352744764

`A015933(A015916(n+1))+A015900(n+2)`
-/

namespace A015720.P6236700191352744764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015933 (A015916 (n + 1)).toNat + A015900 (n + 2)

end

end A015720.P6236700191352744764

/-! ## A015720.P8516170964757885575

`1-∑[A302110(A045967(n+1))]`
-/

namespace A015720.P8516170964757885575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A045967 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015720.P8516170964757885575

/-! ## A015720.P17330816538595277518

`∑[(-(A302110(A045967(n+1))/A131713(n)²))^n]`
-/

namespace A015720.P17330816538595277518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-((A302110 (A045967 (n + 1)).toNat : ℚ) / (A131713 n ^ 2 : ℚ))) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015720.P17330816538595277518

/-! ## A015720.P12818382650168412986

`A015900(n+2)^A015909(A015931(3*n+1))`
-/

namespace A015720.P12818382650168412986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015900 (n + 2) : ℚ) ^ (A015909 (A015931 (3 * n + 1)).toNat : ℤ)

end

end A015720.P12818382650168412986

/-! ## A015720.P5634982605332818667

`A015900(n+2)^A015911(A015935(n+1))`
-/

namespace A015720.P5634982605332818667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015900 (n + 2) : ℚ) ^ (A015911 (A015935 (n + 1)).toNat : ℤ)

end

end A015720.P5634982605332818667

/-! ## A015720.P322478542737012358

`A015900(n+2)^A332445(A002473(n+1))`
-/

namespace A015720.P322478542737012358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015900 (n + 2) : ℚ) ^ (A332445 (A002473 (n + 1)).toNat : ℤ)

end

end A015720.P322478542737012358

/-!
# A015721: Composite and even n such that phi(n) * sigma(n) is one less than a square.

The programs for A015721, there is no canonical definition to state claims against.
-/

/-! ## A015721.P13166093319322450399

`A015709(eq[0, A015709(n+1)%2]+1)`
-/

namespace A015721.P13166093319322450399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015709 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015721.P13166093319322450399

/-! ## A015721.P15738183891548587168

`∩[2*n, A015709(n+1)]`
-/

namespace A015721.P15738183891548587168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015721.P15738183891548587168

/-! ## A015721.P11923221504621574921

`record[abs(A009531(A015709(n+1)))]`
-/

namespace A015721.P11923221504621574921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009531 (A015709 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015721.P11923221504621574921

/-! ## A015721.P10657174095397687755

`∩[A015709(n+1), A020739(n)]`
-/

namespace A015721.P10657174095397687755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015721.P10657174095397687755

/-! ## A015721.P12172968652908035355

`∩[A015709(n+1), A103517(n)]`
-/

namespace A015721.P12172968652908035355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015721.P12172968652908035355

/-!
# A015722: Odd composite n such that phi(n) * sigma(n) is one less than a square.

The programs for A015722, there is no canonical definition to state claims against.
-/

/-! ## A015722.P8621561211955796518

`A015709(eq[1, A015709(n+1)%2]+1)`
-/

namespace A015722.P8621561211955796518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015709 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015722.P8621561211955796518

/-! ## A015722.P5367626441749866034

`∩[2*n+1, A015709(n+1)]`
-/

namespace A015722.P5367626441749866034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015722.P5367626441749866034

/-! ## A015722.P8981477953357533489

`filter[A015709(n+1), A379952(#)]`
-/

namespace A015722.P8981477953357533489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A015722.P8981477953357533489

/-! ## A015722.P15108116385990257819

`∩[A015709(n+1), A083883(n+1)]`
-/

namespace A015722.P15108116385990257819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015722.P15108116385990257819

/-! ## A015722.P7229279416196418732

`∩[A015709(n+1), A061346(n+1)]`
-/

namespace A015722.P7229279416196418732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015722.P7229279416196418732

/-!
# A015723: Number of parts in all partitions of n into distinct parts.

The programs for A015723, there is no canonical definition to state claims against.
-/

/-! ## A015723.P2036158612957815958

`A116676(n+1)+A116680(n+1)`
-/

namespace A015723.P2036158612957815958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 (n + 1) + A116680 (n + 1)

end

end A015723.P2036158612957815958

/-! ## A015723.P15659918238099366623

`A238131(n+1)+A238132(n+1)`
-/

namespace A015723.P15659918238099366623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238131 (n + 1) + A238132 (n + 1)

end

end A015723.P15659918238099366623

/-! ## A015723.P2646433427457050871

`∑{#}[n, A048272(#+1)*A000009(n+1-(#+1))]`
-/

namespace A015723.P2646433427457050871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A048272 (k + 1) * A000009 (n + 1 - (k + 1))

end

end A015723.P2646433427457050871

/-! ## A015723.P14382792049638256562

`A265251(1+n)+A038348(n)`
-/

namespace A015723.P14382792049638256562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 (1 + n) + A038348 n

end

end A015723.P14382792049638256562

/-! ## A015723.P5079723148445194243

`A036469(n)-A090858(n+1)`
-/

namespace A015723.P5079723148445194243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - A090858 (n + 1)

end

end A015723.P5079723148445194243

/-! ## A015723.P17897715525649154362

`∑[A000009(n)]-A090858(n+1)`
-/

namespace A015723.P17897715525649154362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A090858 (n + 1)

end

end A015723.P17897715525649154362

/-! ## A015723.P926889850934332222

`A067588(n+1)-A090867(n+1)`
-/

namespace A015723.P926889850934332222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 (n + 1) - A090867 (n + 1)

end

end A015723.P926889850934332222

/-! ## A015723.P14116508498554937525

`2*A067588(n+1)-A305082(n+1)`
-/

namespace A015723.P14116508498554937525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067588 (n + 1) - A305082 (n + 1)

end

end A015723.P14116508498554937525

/-! ## A015723.P6422036441143803349

`A305082(n+1)-2*A090867(n+1)`
-/

namespace A015723.P6422036441143803349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 (n + 1) - 2 * A090867 (n + 1)

end

end A015723.P6422036441143803349

/-! ## A015723.P4450650134318899825

`2*A238131(n+1)-A238133(n+1)`
-/

namespace A015723.P4450650134318899825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238131 (n + 1) - A238133 (n + 1)

end

end A015723.P4450650134318899825

/-! ## A015723.P15221902249772906506

`A265251(n+1)+∑[A096765(n+1)]`
-/

namespace A015723.P15221902249772906506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015723.P15221902249772906506

/-! ## A015723.P5020533192639598649

`A218074(n+1)+A000009(n+1)`
-/

namespace A015723.P5020533192639598649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218074 (n + 1) + A000009 (n + 1)

end

end A015723.P5020533192639598649

/-! ## A015723.P5295214654329400182

`A238133(n+1)+2*A238132(n+1)`
-/

namespace A015723.P5295214654329400182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238133 (n + 1) + 2 * A238132 (n + 1)

end

end A015723.P5295214654329400182

/-! ## A015723.P6654966186522219596

`A067588(n+1)-(A341495(n+1)+A341494(n+1))`
-/

namespace A015723.P6654966186522219596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 (n + 1) - (A341495 (n + 1) + A341494 (n + 1))

end

end A015723.P6654966186522219596

/-! ## A015723.P9504683656530554415

`A067588(n+1)-(A341497(n+1)+A341496(n+1))`
-/

namespace A015723.P9504683656530554415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 (n + 1) - (A341497 (n + 1) + A341496 (n + 1))

end

end A015723.P9504683656530554415

/-! ## A015723.P13206531480202114596

`A116676(n+1)+A341497(n+1)-A341496(n+1)`
-/

namespace A015723.P13206531480202114596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 (n + 1) + (A341497 (n + 1) - A341496 (n + 1))

end

end A015723.P13206531480202114596

/-! ## A015723.P4868723107045533457

`A210485(∑[n+1]+1)`
-/

namespace A015723.P4868723107045533457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A015723.P4868723107045533457

/-! ## A015723.P9800225181202740724

`A213177(∑[n+1]+1)`
-/

namespace A015723.P9800225181202740724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A015723.P9800225181202740724

/-! ## A015723.P12618490842587022756

`A327622(∑[n+3]+1)`
-/

namespace A015723.P12618490842587022756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A015723.P12618490842587022756

/-!
# A015724: Number of parts in all partitions of all the numbers in {1,2,...,n} into distinct parts.

The programs for A015724, there is no canonical definition to state claims against.
-/

/-! ## A015724.P4310957184739375445

`∑[A015723(1+n)]`
-/

namespace A015724.P4310957184739375445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P4310957184739375445

/-! ## A015724.P16149237024980894566

`A015723(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A015724.P16149237024980894566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015723 (n + 1) + a (n - 1)

end

end A015724.P16149237024980894566

/-! ## A015724.P14888812215941417269

`∑[A265251(1+n)+A038348(n)]`
-/

namespace A015724.P14888812215941417269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 (1 + n) + A038348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P14888812215941417269

/-! ## A015724.P6074923978613366546

`∑[A036469(n)-A090858(n+1)]`
-/

namespace A015724.P6074923978613366546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - A090858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P6074923978613366546

/-! ## A015724.P10645980686177863023

`∑[∑[A000009(n)]-A090858(n+1)]`
-/

namespace A015724.P10645980686177863023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A090858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P10645980686177863023

/-! ## A015724.P11189797851257470983

`∑[A218074(n+1)+A000009(n+1)]`
-/

namespace A015724.P11189797851257470983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218074 (n + 1) + A000009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P11189797851257470983

/-! ## A015724.P12033096610313560934

`∑[A116676(n+1)+A116680(n+1)]`
-/

namespace A015724.P12033096610313560934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 (n + 1) + A116680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P12033096610313560934

/-! ## A015724.P6611818195889703565

`∑[A067588(n+1)-A090867(n+1)]`
-/

namespace A015724.P6611818195889703565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 (n + 1) - A090867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P6611818195889703565

/-! ## A015724.P3414912388043420901

`∑[A265251(n+1)+∑[A096765(n+1)]]`
-/

namespace A015724.P3414912388043420901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P3414912388043420901

/-! ## A015724.P1732274187244002268

`∑[A210485(∑[n+1]+1)]`
-/

namespace A015724.P1732274187244002268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P1732274187244002268

/-! ## A015724.P7948139614585578127

`∑[A213177(∑[n+1]+1)]`
-/

namespace A015724.P7948139614585578127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P7948139614585578127

/-! ## A015724.P12064454131177022513

`∑[A327622(∑[n+3]+1)]`
-/

namespace A015724.P12064454131177022513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015724.P12064454131177022513

/-!
# A015725: Inverse of 1716th cyclotomic polynomial.

The programs for A015725, there is no canonical definition to state claims against.
-/

/-! ## A015725.P3104082999704915097

`A014867(A004525(n))*A059841(n)`
-/

namespace A015725.P3104082999704915097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014867 (A004525 n).toNat * A059841 n

end

end A015725.P3104082999704915097

/-! ## A015725.P7018134052963251926

`A014867(A242112(n)-1)*A059841(n)`
-/

namespace A015725.P7018134052963251926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014867 (A242112 n - 1).toNat * A059841 n

end

end A015725.P7018134052963251926

/-! ## A015725.P15230367539121946629

`A014952(n)*A016331(n)`
-/

namespace A015725.P15230367539121946629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014952 n * A016331 n

end

end A015725.P15230367539121946629

/-! ## A015725.P4582888765936283320

`A014998(n)*A016331(n)`
-/

namespace A015725.P4582888765936283320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A016331 n

end

end A015725.P4582888765936283320

/-! ## A015725.P11990367365788983642

`A015090(n)*A016331(n)`
-/

namespace A015725.P11990367365788983642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015090 n * A016331 n

end

end A015725.P11990367365788983642

/-!
# A015726: Inverse of 1717th cyclotomic polynomial.

The programs for A015726, there is no canonical definition to state claims against.
-/

/-! ## A015726.P3008684972286125487

`A014958(∑[(∑[A314703(2*n+3)]-1)%2])`
-/

namespace A015726.P3008684972286125487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314703 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014958 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015726.P3008684972286125487

/-! ## A015726.P10007362818473819342

`A014958(∑[(C(A315023(3*n+4), 3)+1)%2])`
-/

namespace A015726.P10007362818473819342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A315023 (3 * n + 4)).toNat 3 + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014958 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015726.P10007362818473819342

/-! ## A015726.P8350381744272675882

`A151878(A323300(2*(n+2)))+A015966(n+2)`
-/

namespace A015726.P8350381744272675882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A323300 (2 * (n + 2))).toNat + A015966 (n + 2)

end

end A015726.P8350381744272675882

/-! ## A015726.P9969925390121116597

`A016042(comp[A198778(3*n+2)]+2)`
-/

namespace A015726.P9969925390121116597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016042 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A015726.P9969925390121116597

/-! ## A015726.P12425779203157741352

`C(2, A326547(4+n))`
-/

namespace A015726.P12425779203157741352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326547 (4 + n)).toNat

end

end A015726.P12425779203157741352

/-! ## A015726.P4049581086112189024

`C(2, A326679(n+3)²)`
-/

namespace A015726.P4049581086112189024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326679 (n + 3) ^ 2).toNat

end

end A015726.P4049581086112189024

/-! ## A015726.P4132628697450370267

`C(n, comp[A196092(n+1)])`
-/

namespace A015726.P4132628697450370267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015726.P4132628697450370267

/-! ## A015726.P6109908289689565688

`C(a(n-1), A309913(n))` with `a(0)=1`
-/

namespace A015726.P6109908289689565688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (n - 1)) (A309913 n).toNat

end

end A015726.P6109908289689565688

/-! ## A015726.P4354051966397304473

`floor(1/(n+1))^A326684(n+3)`
-/

namespace A015726.P4354051966397304473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊1 / (n + 1 : ℚ)⌋ : ℚ) ^ (A326684 (n + 3) : ℤ)

end

end A015726.P4354051966397304473

/-! ## A015726.P2354845655031016633

`A010054(A235043(n)²²)`
-/

namespace A015726.P2354845655031016633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((A235043 n ^ 2) ^ 2).toNat

end

end A015726.P2354845655031016633

/-! ## A015726.P13470314584621755428

`C(A001285(n²), A326463(n))`
-/

namespace A015726.P13470314584621755428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001285 (n ^ 2)).toNat (A326463 n).toNat

end

end A015726.P13470314584621755428

/-! ## A015726.P359810785983818952

`floor(A000070(n)/A326083(n))`
-/

namespace A015726.P359810785983818952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000070 n : ℚ) / (A326083 n : ℚ)⌋

end

end A015726.P359810785983818952

/-! ## A015726.P3846768546516365314

`A063524(A326684(n+3)+1)`
-/

namespace A015726.P3846768546516365314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A326684 (n + 3) + 1).toNat

end

end A015726.P3846768546516365314

/-! ## A015726.P16122912258823954925

`A209229(or(1, A026800(n+4)))`
-/

namespace A015726.P16122912258823954925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (Int.lor 1 (A026800 (n + 4))).toNat

end

end A015726.P16122912258823954925

/-! ## A015726.P9887871734094225825

`A097945(∑[A340999(n)]²)`
-/

namespace A015726.P9887871734094225825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 (n + 204)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A015726.P9887871734094225825

/-! ## A015726.P16170333109356009372

`floor(A360671(n)/A103580(n+1))`
-/

namespace A015726.P16170333109356009372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A360671 n : ℚ) / (A103580 (n + 1) : ℚ)⌋

end

end A015726.P16170333109356009372

/-! ## A015726.P17361478466068332891

`A010052(n*comp[A055236(3*(n+1))])`
-/

namespace A015726.P17361478466068332891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015726.P17361478466068332891

/-!
# A015727: Numbers n such that phi(n) * sigma(n) + 4 is a perfect square.

The programs for A015727, there is no canonical definition to state claims against.
-/

/-! ## A015727.P8509237190545583182

`eq[2, A015710(n+1)]+1`
-/

namespace A015727.P8509237190545583182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015727.P8509237190545583182

/-! ## A015727.P16555776794066459346

`eq[2, A015710(A028310(n))]`
-/

namespace A015727.P16555776794066459346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015727.P16555776794066459346

/-! ## A015727.P13772692191257295018

`A020725(eq[2, A015710(n+1)])`
-/

namespace A015727.P13772692191257295018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015727.P13772692191257295018

/-! ## A015727.P9136816072188569601

`A065475(eq[2, A015710(n+1)])`
-/

namespace A015727.P9136816072188569601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015727.P9136816072188569601

/-! ## A015727.P10765238401165335401

`eq[2, A015710(A000007(n)+n)]`
-/

namespace A015727.P10765238401165335401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015727.P10765238401165335401

/-! ## A015727.P11530885302300657758

`eq[2, A015710(A000038(n)+n)]`
-/

namespace A015727.P11530885302300657758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015727.P11530885302300657758

/-!
# A015728: Numbers n such that phi(n) * sigma(n) + 9 is a perfect square.

The programs for A015728, there is no canonical definition to state claims against.
-/

/-! ## A015728.P7327501237144104430

`eq[3, A015710(n+1)]+1`
-/

namespace A015728.P7327501237144104430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015728.P7327501237144104430

/-! ## A015728.P12501084407535558663

`eq[3, A015710(A028310(n))]`
-/

namespace A015728.P12501084407535558663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015728.P12501084407535558663

/-! ## A015728.P12936160114496625766

`A020725(eq[3, A015710(n+1)])`
-/

namespace A015728.P12936160114496625766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015728.P12936160114496625766

/-! ## A015728.P9448435180434081174

`A065475(eq[3, A015710(n+1)])`
-/

namespace A015728.P9448435180434081174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015728.P9448435180434081174

/-! ## A015728.P3311351378093565329

`eq[3, A015710(A065033(2*n))]`
-/

namespace A015728.P3311351378093565329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015710 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015728.P3311351378093565329

/-!
# A015730: Numbers n such that tau(sigma(n))= tau(tau(n)).

The programs for A015730, there is no canonical definition to state claims against.
-/

/-! ## A015730.P15919495844935591333

`eq[A000005(A000203(n+1)), A328830(n+1)]+1`
-/

namespace A015730.P15919495844935591333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015730.P15919495844935591333

/-! ## A015730.P1332821273466315495

`eq[A010553(n+1), A062068(n+1)]+1`
-/

namespace A015730.P1332821273466315495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015730.P1332821273466315495

/-! ## A015730.P981626249983975132

`eq[A000005(A000005(n+1)), A062068(n+1)]+1`
-/

namespace A015730.P981626249983975132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015730.P981626249983975132

/-! ## A015730.P6383919615378833268

`filter[A353694(n+1), A379111(#)]`
-/

namespace A015730.P6383919615378833268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379111 (f1 j).toNat = 1) n)

end

end A015730.P6383919615378833268

/-! ## A015730.P1544041440619970126

`filter[A346151(n), A379111(#)]`
-/

namespace A015730.P1544041440619970126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379111 (f1 j).toNat = 1) n)

end

end A015730.P1544041440619970126

/-!
# A015731: Inverse of 1722nd cyclotomic polynomial.

The programs for A015731, there is no canonical definition to state claims against.
-/

/-! ## A015731.P12648476928051426913

`A014870(n)*A033999(n)`
-/

namespace A015731.P12648476928051426913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014870 n * A033999 n

end

end A015731.P12648476928051426913

/-! ## A015731.P13741401351141382512

`A016235(A048338(n))`
-/

namespace A015731.P13741401351141382512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016235 (A048338 n).toNat

end

end A015731.P13741401351141382512

/-! ## A015731.P14482743289085095651

`A016235(A048340(n))`
-/

namespace A015731.P14482743289085095651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016235 (A048340 n).toNat

end

end A015731.P14482743289085095651

/-! ## A015731.P5719000832876379907

`A015815(n)%A282535(n+4)`
-/

namespace A015731.P5719000832876379907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015815 n) (A282535 (n + 4))

end

end A015731.P5719000832876379907

/-! ## A015731.P3678944355092673749

`A015983(n)%A282535(n+4)`
-/

namespace A015731.P3678944355092673749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015983 n) (A282535 (n + 4))

end

end A015731.P3678944355092673749

/-!
# A015732: Even numbers k such that d(k) | phi(k).

The programs for A015732, the canonical program `A015732.P9248841914472335492` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015732 has offset 1).

The definition of A015732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015732.P18106154606739269814

`filter[2*(n+1), A124331(#)]`
-/

namespace A015732.P18106154606739269814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A124331 (f1 j) = 1) n)

end

end A015732.P18106154606739269814

namespace A015732

/-- `filter[2*(n+1), A124331(#)]` -/
def P18106154606739269814.Spec : Prop :=
  ∀ n, (P18106154606739269814.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P4341689940221012661

`eq[n%2, A124331(n+1)]+1`
-/

namespace A015732.P4341689940221012661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015732.P4341689940221012661

namespace A015732

/-- `eq[n%2, A124331(n+1)]+1` -/
def P4341689940221012661.Spec : Prop :=
  ∀ n, (P4341689940221012661.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P8056064242351867565

`eq[(-1)^(n+1), A124331(1+n)]+1`
-/

namespace A015732.P8056064242351867565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015732.P8056064242351867565

namespace A015732

/-- `eq[(-1)^(n+1), A124331(1+n)]+1` -/
def P8056064242351867565.Spec : Prop :=
  ∀ n, (P8056064242351867565.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P9248841914472335492

`∩[2*n, A069237(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A015732

/-- `∩[2*n, A069237(n+1)]` -/
def P9248841914472335492.Spec : Prop :=
  ∀ n, (P9248841914472335492.a n : ℤ) = A015732 (n + 1)

theorem P9248841914472335492.correct : P9248841914472335492.Spec := by
  intro n
  simp only [A015732, Nat.add_sub_cancel]

end A015732

/-! ## A015732.P7176325674044154625

`∩[A069237(n+1), A004271(n)]`
-/

namespace A015732.P7176325674044154625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P7176325674044154625

namespace A015732

/-- `∩[A069237(n+1), A004271(n)]` -/
def P7176325674044154625.Spec : Prop :=
  ∀ n, (P7176325674044154625.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P7652632448854024501

`∩[A069237(n+1), A004272(n)]`
-/

namespace A015732.P7652632448854024501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P7652632448854024501

namespace A015732

/-- `∩[A069237(n+1), A004272(n)]` -/
def P7652632448854024501.Spec : Prop :=
  ∀ n, (P7652632448854024501.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P642799027650033119

`∩[A069237(n+1), A004275(n)]`
-/

namespace A015732.P642799027650033119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P642799027650033119

namespace A015732

/-- `∩[A069237(n+1), A004275(n)]` -/
def P642799027650033119.Spec : Prop :=
  ∀ n, (P642799027650033119.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P5209126441155537642

`∩[A069237(n+1), A004277(n)]`
-/

namespace A015732.P5209126441155537642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P5209126441155537642

namespace A015732

/-- `∩[A069237(n+1), A004277(n)]` -/
def P5209126441155537642.Spec : Prop :=
  ∀ n, (P5209126441155537642.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P8708348615276839934

`∩[A069237(n+1), A004279(n)]`
-/

namespace A015732.P8708348615276839934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P8708348615276839934

namespace A015732

/-- `∩[A069237(n+1), A004279(n)]` -/
def P8708348615276839934.Spec : Prop :=
  ∀ n, (P8708348615276839934.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P9375951233078667744

`∩[A069237(n+1), A005843(n)]`
-/

namespace A015732.P9375951233078667744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P9375951233078667744

namespace A015732

/-- `∩[A069237(n+1), A005843(n)]` -/
def P9375951233078667744.Spec : Prop :=
  ∀ n, (P9375951233078667744.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P15509397070296697461

`∩[A069237(n+1), A020739(n)]`
-/

namespace A015732.P15509397070296697461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P15509397070296697461

namespace A015732

/-- `∩[A069237(n+1), A020739(n)]` -/
def P15509397070296697461.Spec : Prop :=
  ∀ n, (P15509397070296697461.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P12976866159081935960

`∩[A069237(n+1), A020744(n)]`
-/

namespace A015732.P12976866159081935960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P12976866159081935960

namespace A015732

/-- `∩[A069237(n+1), A020744(n)]` -/
def P12976866159081935960.Spec : Prop :=
  ∀ n, (P12976866159081935960.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P9271056178344015853

`∩[A069237(n+1), A103517(n)]`
-/

namespace A015732.P9271056178344015853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P9271056178344015853

namespace A015732

/-- `∩[A069237(n+1), A103517(n)]` -/
def P9271056178344015853.Spec : Prop :=
  ∀ n, (P9271056178344015853.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P8271747341415563306

`∩[A069237(n+1), A106092(n+1)]`
-/

namespace A015732.P8271747341415563306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P8271747341415563306

namespace A015732

/-- `∩[A069237(n+1), A106092(n+1)]` -/
def P8271747341415563306.Spec : Prop :=
  ∀ n, (P8271747341415563306.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P9953407920864735159

`∩[A069237(n+1), A163300(n+1)]`
-/

namespace A015732.P9953407920864735159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P9953407920864735159

namespace A015732

/-- `∩[A069237(n+1), A163300(n+1)]` -/
def P9953407920864735159.Spec : Prop :=
  ∀ n, (P9953407920864735159.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P14380227935176339939

`∩[A069237(n+1), A316571(n+1)]`
-/

namespace A015732.P14380227935176339939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P14380227935176339939

namespace A015732

/-- `∩[A069237(n+1), A316571(n+1)]` -/
def P14380227935176339939.Spec : Prop :=
  ∀ n, (P14380227935176339939.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P3165832820065923099

`∩[2*n, A020491(n+1)]`
-/

namespace A015732.P3165832820065923099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P3165832820065923099

namespace A015732

/-- `∩[2*n, A020491(n+1)]` -/
def P3165832820065923099.Spec : Prop :=
  ∀ n, (P3165832820065923099.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P14099846121899852465

`∩[A020491(n+1), A005843(n)]`
-/

namespace A015732.P14099846121899852465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P14099846121899852465

namespace A015732

/-- `∩[A020491(n+1), A005843(n)]` -/
def P14099846121899852465.Spec : Prop :=
  ∀ n, (P14099846121899852465.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P13644679806788754447

`∩[A020491(n+1), A020739(n)]`
-/

namespace A015732.P13644679806788754447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P13644679806788754447

namespace A015732

/-- `∩[A020491(n+1), A020739(n)]` -/
def P13644679806788754447.Spec : Prop :=
  ∀ n, (P13644679806788754447.a n : ℤ) = A015732 (n + 1)

end A015732

/-! ## A015732.P15044369061262056255

`∩[A020491(n+1), A020744(n)]`
-/

namespace A015732.P15044369061262056255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P15044369061262056255

namespace A015732

/-- `∩[A020491(n+1), A020744(n)]` -/
def P15044369061262056255.Spec : Prop :=
  ∀ n, (P15044369061262056255.a n : ℤ) = A015732 (n + 1)

end A015732

/-!
# A015733: Numbers k such that d(k) does not divide phi(k).

The programs for A015733, the canonical program `A015733.P16639205295778436390` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015733 has offset 1).

The definition of A015733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015733.P851011011218097275

`lt[1, A124331(1+n)]+1`
-/

namespace A015733.P851011011218097275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A015733.P851011011218097275

namespace A015733

/-- `lt[1, A124331(1+n)]+1` -/
def P851011011218097275.Spec : Prop :=
  ∀ n, (P851011011218097275.a n : ℤ) = A015733 (n + 1)

end A015733

/-! ## A015733.P10726901675715356122

`-xor(lt[1, A124331(-xor(n, -1))], -1)`
-/

namespace A015733.P10726901675715356122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (-1)

end

end A015733.P10726901675715356122

namespace A015733

/-- `-xor(lt[1, A124331(-xor(n, -1))], -1)` -/
def P10726901675715356122.Spec : Prop :=
  ∀ n, P10726901675715356122.a n = A015733 (n + 1)

end A015733

/-! ## A015733.P12157951433020889808

`comp[A020491(1+n)-1]+1`
-/

namespace A015733.P12157951433020889808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A015733.P12157951433020889808

namespace A015733

/-- `comp[A020491(1+n)-1]+1` -/
def P12157951433020889808.Spec : Prop :=
  ∀ n, (P12157951433020889808.a n : ℤ) = A015733 (n + 1)

end A015733

/-! ## A015733.P16639205295778436390

`eq[0, A286627(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A015733

/-- `eq[0, A286627(n+1)]+1` -/
def P16639205295778436390.Spec : Prop :=
  ∀ n, (P16639205295778436390.a n : ℤ) = A015733 (n + 1)

theorem P16639205295778436390.correct : P16639205295778436390.Spec := by
  intro n
  simp only [A015733, Nat.add_sub_cancel]

end A015733

/-! ## A015733.P5399804144984737980

`lt[1, A279288(n+1)]+1`
-/

namespace A015733.P5399804144984737980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A015733.P5399804144984737980

namespace A015733

/-- `lt[1, A279288(n+1)]+1` -/
def P5399804144984737980.Spec : Prop :=
  ∀ n, (P5399804144984737980.a n : ℤ) = A015733 (n + 1)

end A015733

/-! ## A015733.P15099535655189051171

`eq[0, A286627(A028310(n))]`
-/

namespace A015733.P15099535655189051171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015733.P15099535655189051171

namespace A015733

/-- `eq[0, A286627(A028310(n))]` -/
def P15099535655189051171.Spec : Prop :=
  ∀ n, (P15099535655189051171.a n : ℤ) = A015733 (n + 1)

end A015733

/-! ## A015733.P13411478298394629166

`A020725(eq[0, A286627(n+1)])`
-/

namespace A015733.P13411478298394629166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015733.P13411478298394629166

namespace A015733

/-- `A020725(eq[0, A286627(n+1)])` -/
def P13411478298394629166.Spec : Prop :=
  ∀ n, P13411478298394629166.a n = A015733 (n + 1)

end A015733

/-! ## A015733.P18350144612178647006

`lt[char[A020491(n+1)], A057427(n)]`
-/

namespace A015733.P18350144612178647006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A015733.P18350144612178647006

namespace A015733

/-- `lt[char[A020491(n+1)], A057427(n)]` -/
def P18350144612178647006.Spec : Prop :=
  ∀ n, (P18350144612178647006.a n : ℤ) = A015733 (n + 1)

end A015733

/-! ## A015733.P15641802907057580682

`eq[0, A286627(A123108(2*n))]`
-/

namespace A015733.P15641802907057580682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015733.P15641802907057580682

namespace A015733

/-- `eq[0, A286627(A123108(2*n))]` -/
def P15641802907057580682.Spec : Prop :=
  ∀ n, (P15641802907057580682.a n : ℤ) = A015733 (n + 1)

end A015733

/-! ## A015733.P13105497524284700674

`eq[0, A286627(A051176(A008486(n)))]`
-/

namespace A015733.P13105497524284700674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (A051176 (A008486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015733.P13105497524284700674

namespace A015733

/-- `eq[0, A286627(A051176(A008486(n)))]` -/
def P13105497524284700674.Spec : Prop :=
  ∀ n, (P13105497524284700674.a n : ℤ) = A015733 (n + 1)

end A015733

/-!
# A015734: Odd numbers k such that d(k) does not divide phi(k).

The programs for A015734, the canonical program `A015734.P13178663633944902549` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015734 has offset 1).

The definition of A015734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015734.P9749211311221627681

`∩[2*n+1, A015733(n+1)]`
-/

namespace A015734.P9749211311221627681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P9749211311221627681

namespace A015734

/-- `∩[2*n+1, A015733(n+1)]` -/
def P9749211311221627681.Spec : Prop :=
  ∀ n, (P9749211311221627681.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P18367255287045363645

`∩[A015733(n+1), A053850(n+1)]`
-/

namespace A015734.P18367255287045363645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P18367255287045363645

namespace A015734

/-- `∩[A015733(n+1), A053850(n+1)]` -/
def P18367255287045363645.Spec : Prop :=
  ∀ n, (P18367255287045363645.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P13178663633944902549

`A015733(eq[1, A015733(n+1)%2]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A015734

/-- `A015733(eq[1, A015733(n+1)%2]+1)` -/
def P13178663633944902549.Spec : Prop :=
  ∀ n, P13178663633944902549.a n = A015734 (n + 1)

theorem P13178663633944902549.correct : P13178663633944902549.Spec := by
  intro n
  simp only [A015734, Nat.add_sub_cancel]

end A015734

/-! ## A015734.P10878900831847883706

`filter[A015733(n+1), A353569(#)]`
-/

namespace A015734.P10878900831847883706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A015734.P10878900831847883706

namespace A015734

/-- `filter[A015733(n+1), A353569(#)]` -/
def P10878900831847883706.Spec : Prop :=
  ∀ n, P10878900831847883706.a n = A015734 (n + 1)

end A015734

/-! ## A015734.P11827405533313941562

`∩[A015733(n+1), A274720(n+1)]`
-/

namespace A015734.P11827405533313941562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P11827405533313941562

namespace A015734

/-- `∩[A015733(n+1), A274720(n+1)]` -/
def P11827405533313941562.Spec : Prop :=
  ∀ n, (P11827405533313941562.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P3910373245298377292

`∩[A015733(n+1), A139392(n+1)]`
-/

namespace A015734.P3910373245298377292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P3910373245298377292

namespace A015734

/-- `∩[A015733(n+1), A139392(n+1)]` -/
def P3910373245298377292.Spec : Prop :=
  ∀ n, (P3910373245298377292.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P14488362959082100770

`∩[A015733(n+1), A071904(n+1)]`
-/

namespace A015734.P14488362959082100770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P14488362959082100770

namespace A015734

/-- `∩[A015733(n+1), A071904(n+1)]` -/
def P14488362959082100770.Spec : Prop :=
  ∀ n, (P14488362959082100770.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P712488569946745132

`∩[A015733(n+1), A255763(n+1)]`
-/

namespace A015734.P712488569946745132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P712488569946745132

namespace A015734

/-- `∩[A015733(n+1), A255763(n+1)]` -/
def P712488569946745132.Spec : Prop :=
  ∀ n, (P712488569946745132.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P5274721904971392779

`∩[A015733(n+1), A257292(n+1)]`
-/

namespace A015734.P5274721904971392779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P5274721904971392779

namespace A015734

/-- `∩[A015733(n+1), A257292(n+1)]` -/
def P5274721904971392779.Spec : Prop :=
  ∀ n, (P5274721904971392779.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P7694128597514141191

`∩[A015733(n+1), A004273(n)]`
-/

namespace A015734.P7694128597514141191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P7694128597514141191

namespace A015734

/-- `∩[A015733(n+1), A004273(n)]` -/
def P7694128597514141191.Spec : Prop :=
  ∀ n, (P7694128597514141191.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P16943962912043632993

`∩[A015733(n+1), A020742(n)]`
-/

namespace A015734.P16943962912043632993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P16943962912043632993

namespace A015734

/-- `∩[A015733(n+1), A020742(n)]` -/
def P16943962912043632993.Spec : Prop :=
  ∀ n, (P16943962912043632993.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P8747723594523953109

`∩[A015733(n+1), A060747(n)]`
-/

namespace A015734.P8747723594523953109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P8747723594523953109

namespace A015734

/-- `∩[A015733(n+1), A060747(n)]` -/
def P8747723594523953109.Spec : Prop :=
  ∀ n, (P8747723594523953109.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P15003624175917051539

`∩[A015733(n+1), A062545(n)]`
-/

namespace A015734.P15003624175917051539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P15003624175917051539

namespace A015734

/-- `∩[A015733(n+1), A062545(n)]` -/
def P15003624175917051539.Spec : Prop :=
  ∀ n, (P15003624175917051539.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P908379270436123914

`∩[A015733(n+1), A020735(n+1)]`
-/

namespace A015734.P908379270436123914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P908379270436123914

namespace A015734

/-- `∩[A015733(n+1), A020735(n+1)]` -/
def P908379270436123914.Spec : Prop :=
  ∀ n, (P908379270436123914.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P5310705105996666349

`∩[A015733(n+1), A144396(n+1)]`
-/

namespace A015734.P5310705105996666349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P5310705105996666349

namespace A015734

/-- `∩[A015733(n+1), A144396(n+1)]` -/
def P5310705105996666349.Spec : Prop :=
  ∀ n, (P5310705105996666349.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P14024970633656079250

`∩[A015733(n+1), A308602(n+3)]`
-/

namespace A015734.P14024970633656079250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308602 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015734.P14024970633656079250

namespace A015734

/-- `∩[A015733(n+1), A308602(n+3)]` -/
def P14024970633656079250.Spec : Prop :=
  ∀ n, (P14024970633656079250.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P3278861053154098815

`eq[0, A286627(A093178(n))]`
-/

namespace A015734.P3278861053154098815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015734.P3278861053154098815

namespace A015734

/-- `eq[0, A286627(A093178(n))]` -/
def P3278861053154098815.Spec : Prop :=
  ∀ n, (P3278861053154098815.a n : ℤ) = A015734 (n + 1)

end A015734

/-! ## A015734.P1938525982104733144

`record[A186111(A015733(n+9))]`
-/

namespace A015734.P1938525982104733144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186111 (A015733 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015734.P1938525982104733144

namespace A015734

/-- `record[A186111(A015733(n+9))]` -/
def P1938525982104733144.Spec : Prop :=
  ∀ n, P1938525982104733144.a n = A015734 (n + 1)

end A015734

/-! ## A015734.P7895833306023317879

`filter[A015733(n+1), A000035(#)]`
-/

namespace A015734.P7895833306023317879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A015734.P7895833306023317879

namespace A015734

/-- `filter[A015733(n+1), A000035(#)]` -/
def P7895833306023317879.Spec : Prop :=
  ∀ n, P7895833306023317879.a n = A015734 (n + 1)

end A015734

/-! ## A015734.P2972175723965557225

`filter[A015733(n+1), A266070(#)]`
-/

namespace A015734.P2972175723965557225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A015734.P2972175723965557225

namespace A015734

/-- `filter[A015733(n+1), A266070(#)]` -/
def P2972175723965557225.Spec : Prop :=
  ∀ n, P2972175723965557225.a n = A015734 (n + 1)

end A015734

/-!
# A015735: Row sums of triangle A004747.

The programs for A015735, the canonical program `A015735.P12224051859578603978` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015735 has offset 1).

The definition of A015735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015735.P12224051859578603978

`6*(n-1)*a(n-1)-(3*(n+1)-8)*(3*(n+1)-7)*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=17`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015735

/-- `6*(n-1)*a(n-1)-(3*(n+1)-8)*(3*(n+1)-7)*a(n-2)+a(n-3)` -/
def P12224051859578603978.Spec : Prop :=
  ∀ n, P12224051859578603978.a n = A015735 (n + 1)

theorem P12224051859578603978.correct : P12224051859578603978.Spec := by
  intro n
  simp only [A015735, Nat.add_sub_cancel]

end A015735

/-!
# A015736: Inverse of 1727th cyclotomic polynomial.

The programs for A015736, there is no canonical definition to state claims against.
-/

/-! ## A015736.P16836041960556245692

`A016050(A233583(n+3)-A277152(2*n))`
-/

namespace A015736.P16836041960556245692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016050 (A233583 (n + 3) - A277152 (2 * n)).toNat

end

end A015736.P16836041960556245692

/-! ## A015736.P3416458542505707736

`C(10, n*A326595(n))`
-/

namespace A015736.P3416458542505707736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 10 ((n : ℤ) * A326595 n).toNat

end

end A015736.P3416458542505707736

/-! ## A015736.P9911204186485754341

`C((n+1)%2, A326632(n))`
-/

namespace A015736.P9911204186485754341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) % 2) (A326632 n).toNat

end

end A015736.P9911204186485754341

/-! ## A015736.P14036261977494908741

`C(n, lt[A267482(2*n+1), 2])`
-/

namespace A015736.P14036261977494908741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267482 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015736.P14036261977494908741

/-! ## A015736.P18065462982115843359

`C(∑{digits}[n, 10^#]%9, A326593(n+2))`
-/

namespace A015736.P18065462982115843359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9) (A326593 (n + 2)).toNat

end

end A015736.P18065462982115843359

/-! ## A015736.P14912699546521819471

`C(A047996(n+4), ∑[(n-∑{digits}[n, #])/9])`
-/

namespace A015736.P14912699546521819471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047996 (n + 4)).toNat (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A015736.P14912699546521819471

/-! ## A015736.P17221547562134698735

`C(A306734(n), ∑[A326632(n)])`
-/

namespace A015736.P17221547562134698735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A306734 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015736.P17221547562134698735

/-! ## A015736.P14646592444179548625

`A011655(C(2, A326593(n+2)))`
-/

namespace A015736.P14646592444179548625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (Nat.choose 2 (A326593 (n + 2)).toNat)

end

end A015736.P14646592444179548625

/-! ## A015736.P18355673955158611232

`C(A276444(n+1), record[A276444(n+1)])`
-/

namespace A015736.P18355673955158611232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A276444 (n + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015736.P18355673955158611232

/-! ## A015736.P13290710331268934796

`C(A024940(A007953(n)), A326595(n))`
-/

namespace A015736.P13290710331268934796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A024940 (A007953 n).toNat).toNat (A326595 n).toNat

end

end A015736.P13290710331268934796

/-! ## A015736.P3472608842270762213

`C(A245173(A024940(n)), A326595(n))`
-/

namespace A015736.P3472608842270762213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245173 (A024940 n).toNat).toNat (A326595 n).toNat

end

end A015736.P3472608842270762213

/-! ## A015736.P9339613797018727846

`C(A024940(A306239(n)), A326595(n))`
-/

namespace A015736.P9339613797018727846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A024940 (A306239 n).toNat).toNat (A326595 n).toNat

end

end A015736.P9339613797018727846

/-! ## A015736.P16618141987840786377

`C(A245173(A372555(n)), A326595(n))`
-/

namespace A015736.P16618141987840786377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245173 (A372555 n).toNat).toNat (A326595 n).toNat

end

end A015736.P16618141987840786377

/-! ## A015736.P327149273256977243

`C(A050602(A000203(n+1)), A326595(n))`
-/

namespace A015736.P327149273256977243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050602 (A000203 (n + 1)).toNat).toNat (A326595 n).toNat

end

end A015736.P327149273256977243

/-! ## A015736.P15780192385147288940

`C(n, comp[A376591(2*(n+2))])`
-/

namespace A015736.P15780192385147288940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376591 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015736.P15780192385147288940

/-!
# A015737: Number of 3's in partitions of n into distinct parts.

The programs for A015737, there is no canonical definition to state claims against.
-/

/-! ## A015737.P408645869191454650

`A117409(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A015737.P408645869191454650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A117409 n - a (n - 3)

end

end A015737.P408645869191454650

/-! ## A015737.P17001486923101822310

`A000009(n+1)-A015745(n+1)`
-/

namespace A015737.P17001486923101822310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A015745 (n + 1)

end

end A015737.P17001486923101822310

/-! ## A015737.P4541775277328829644

`A025147(n+1)+A025147(n)-A015745(n+1)`
-/

namespace A015737.P4541775277328829644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A015745 (n + 1))

end

end A015737.P4541775277328829644

/-! ## A015737.P395387295932345105

`A015739(n+1)+A015746(n+1)-A015745(n+1)`
-/

namespace A015737.P395387295932345105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015739 (n + 1) + (A015746 (n + 1) - A015745 (n + 1))

end

end A015737.P395387295932345105

/-! ## A015737.P11554624094749588794

`A015740(n+1)+A015750(n+1)-A015745(n+1)`
-/

namespace A015737.P11554624094749588794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015740 (n + 1) + (A015750 (n + 1) - A015745 (n + 1))

end

end A015737.P11554624094749588794

/-! ## A015737.P5307240397587090398

`A015741(n+1)+A015753(n+1)-A015745(n+1)`
-/

namespace A015737.P5307240397587090398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015741 (n + 1) + (A015753 (n + 1) - A015745 (n + 1))

end

end A015737.P5307240397587090398

/-! ## A015737.P10101535809292983731

`A015742(n+1)+A015754(n+1)-A015745(n+1)`
-/

namespace A015737.P10101535809292983731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015742 (n + 1) + (A015754 (n + 1) - A015745 (n + 1))

end

end A015737.P10101535809292983731

/-! ## A015737.P5079959034897818679

`A015743(n+1)+A015755(n+1)-A015745(n+1)`
-/

namespace A015737.P5079959034897818679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015743 (n + 1) + (A015755 (n + 1) - A015745 (n + 1))

end

end A015737.P5079959034897818679

/-! ## A015737.P14089278945654789297

`A015718(A288937(n+1)-n)`
-/

namespace A015737.P14089278945654789297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015718 (A288937 (n + 1) - (n : ℤ)).toNat

end

end A015737.P14089278945654789297

/-!
# A015738: Inverse of 1729th cyclotomic polynomial.

The programs for A015738, there is no canonical definition to state claims against.
-/

/-! ## A015738.P12994757312209063327

`A016355(A024645(n))`
-/

namespace A015738.P12994757312209063327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016355 (A024645 n).toNat

end

end A015738.P12994757312209063327

/-! ## A015738.P4141515219828473309

`A049347(∑[A035528(n)])`
-/

namespace A015738.P4141515219828473309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015738.P4141515219828473309

/-! ## A015738.P12113590285780430600

`Δ[A000002(A164682(n+1))]`
-/

namespace A015738.P12113590285780430600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A164682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015738.P12113590285780430600

/-! ## A015738.P7382461023684051728

`Δ[A000002(A094958(n+4))]`
-/

namespace A015738.P7382461023684051728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A094958 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015738.P7382461023684051728

/-! ## A015738.P7153256088306934620

`A016425(A381579(n))`
-/

namespace A015738.P7153256088306934620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016425 (A381579 n).toNat

end

end A015738.P7153256088306934620

/-!
# A015739: Number of 4's in all the partitions of n into distinct parts.

The programs for A015739, there is no canonical definition to state claims against.
-/

/-! ## A015739.P14397627911098984252

`A000009(1+n)-A015746(n+1)`
-/

namespace A015739.P14397627911098984252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (1 + n) - A015746 (n + 1)

end

end A015739.P14397627911098984252

/-! ## A015739.P2669622231660955252

`A025147(n+1)+A025147(n)-A015746(n+1)`
-/

namespace A015739.P2669622231660955252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A015746 (n + 1))

end

end A015739.P2669622231660955252

/-! ## A015739.P17392510080781943307

`A015737(n+1)+A015745(n+1)-A015746(n+1)`
-/

namespace A015739.P17392510080781943307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015737 (n + 1) + (A015745 (n + 1) - A015746 (n + 1))

end

end A015739.P17392510080781943307

/-! ## A015739.P8051246496846211219

`A015740(n+1)+A015750(n+1)-A015746(n+1)`
-/

namespace A015739.P8051246496846211219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015740 (n + 1) + (A015750 (n + 1) - A015746 (n + 1))

end

end A015739.P8051246496846211219

/-! ## A015739.P16238102653469244237

`A015741(n+1)+A015753(n+1)-A015746(n+1)`
-/

namespace A015739.P16238102653469244237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015741 (n + 1) + (A015753 (n + 1) - A015746 (n + 1))

end

end A015739.P16238102653469244237

/-! ## A015739.P5149731076660913330

`A015742(n+1)+A015754(n+1)-A015746(n+1)`
-/

namespace A015739.P5149731076660913330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015742 (n + 1) + (A015754 (n + 1) - A015746 (n + 1))

end

end A015739.P5149731076660913330

/-! ## A015739.P10310664869624682186

`A015743(n+1)+A015755(n+1)-A015746(n+1)`
-/

namespace A015739.P10310664869624682186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015743 (n + 1) + (A015755 (n + 1) - A015746 (n + 1))

end

end A015739.P10310664869624682186

/-!
# A015740: Number of 5's in all the partitions of n into distinct parts.

The programs for A015740, there is no canonical definition to state claims against.
-/

/-! ## A015740.P11772217671492438263

`A000009(n+1)-A015750(n+1)`
-/

namespace A015740.P11772217671492438263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A015750 (n + 1)

end

end A015740.P11772217671492438263

/-! ## A015740.P7459534023889568830

`A025147(n+1)+A025147(n)-A015750(n+1)`
-/

namespace A015740.P7459534023889568830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A015750 (n + 1))

end

end A015740.P7459534023889568830

/-! ## A015740.P13433615332888594471

`A015737(n+1)+A015745(n+1)-A015750(n+1)`
-/

namespace A015740.P13433615332888594471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015737 (n + 1) + (A015745 (n + 1) - A015750 (n + 1))

end

end A015740.P13433615332888594471

/-! ## A015740.P13573647822226449232

`A015739(n+1)+A015746(n+1)-A015750(n+1)`
-/

namespace A015740.P13573647822226449232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015739 (n + 1) + (A015746 (n + 1) - A015750 (n + 1))

end

end A015740.P13573647822226449232

/-! ## A015740.P7142961791765196555

`A015741(n+1)+A015753(n+1)-A015750(n+1)`
-/

namespace A015740.P7142961791765196555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015741 (n + 1) + (A015753 (n + 1) - A015750 (n + 1))

end

end A015740.P7142961791765196555

/-! ## A015740.P15687696470914729921

`A015742(n+1)+A015754(n+1)-A015750(n+1)`
-/

namespace A015740.P15687696470914729921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015742 (n + 1) + (A015754 (n + 1) - A015750 (n + 1))

end

end A015740.P15687696470914729921

/-! ## A015740.P14560889577738199695

`A015743(n+1)+A015755(n+1)-A015750(n+1)`
-/

namespace A015740.P14560889577738199695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015743 (n + 1) + (A015755 (n + 1) - A015750 (n + 1))

end

end A015740.P14560889577738199695

/-!
# A015741: Number of 6's in all the partitions of n into distinct parts.

The programs for A015741, there is no canonical definition to state claims against.
-/

/-! ## A015741.P17436374975314784103

`A000009(1+n)-A015753(n+1)`
-/

namespace A015741.P17436374975314784103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (1 + n) - A015753 (n + 1)

end

end A015741.P17436374975314784103

/-! ## A015741.P8183046739324730282

`A000009(n+1)%A015753(n+1)`
-/

namespace A015741.P8183046739324730282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (n + 1)) (A015753 (n + 1))

end

end A015741.P8183046739324730282

/-! ## A015741.P5952218681256066878

`A025147(n+1)+A025147(n)-A015753(n+1)`
-/

namespace A015741.P5952218681256066878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A015753 (n + 1))

end

end A015741.P5952218681256066878

/-! ## A015741.P13279013633780708655

`A015737(n+1)+A015745(n+1)-A015753(n+1)`
-/

namespace A015741.P13279013633780708655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015737 (n + 1) + (A015745 (n + 1) - A015753 (n + 1))

end

end A015741.P13279013633780708655

/-! ## A015741.P9735034891708834859

`A015739(n+1)+A015746(n+1)-A015753(n+1)`
-/

namespace A015741.P9735034891708834859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015739 (n + 1) + (A015746 (n + 1) - A015753 (n + 1))

end

end A015741.P9735034891708834859

/-! ## A015741.P14569254713841598740

`A015740(n+1)+A015750(n+1)-A015753(n+1)`
-/

namespace A015741.P14569254713841598740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015740 (n + 1) + (A015750 (n + 1) - A015753 (n + 1))

end

end A015741.P14569254713841598740

/-! ## A015741.P13790376113973114690

`A015742(n+1)+A015754(n+1)-A015753(n+1)`
-/

namespace A015741.P13790376113973114690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015742 (n + 1) + (A015754 (n + 1) - A015753 (n + 1))

end

end A015741.P13790376113973114690

/-! ## A015741.P15449120838962497659

`A015743(n+1)+A015755(n+1)-A015753(n+1)`
-/

namespace A015741.P15449120838962497659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015743 (n + 1) + (A015755 (n + 1) - A015753 (n + 1))

end

end A015741.P15449120838962497659

/-!
# A015742: Number of 7's in all the partitions of n into distinct parts.

The programs for A015742, there is no canonical definition to state claims against.
-/

/-! ## A015742.P6739901844205419745

`A000009(n+1)-A015754(n+1)`
-/

namespace A015742.P6739901844205419745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A015754 (n + 1)

end

end A015742.P6739901844205419745

/-! ## A015742.P13377068911248905926

`A000009(A028310(n)+1)%A015754(n+1)`
-/

namespace A015742.P13377068911248905926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (A028310 n + 1).toNat) (A015754 (n + 1))

end

end A015742.P13377068911248905926

/-! ## A015742.P1784436604776832952

`A025147(n+1)+A025147(n)-A015754(n+1)`
-/

namespace A015742.P1784436604776832952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A015754 (n + 1))

end

end A015742.P1784436604776832952

/-! ## A015742.P752663481306501613

`A015737(n+1)+A015745(n+1)-A015754(n+1)`
-/

namespace A015742.P752663481306501613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015737 (n + 1) + (A015745 (n + 1) - A015754 (n + 1))

end

end A015742.P752663481306501613

/-! ## A015742.P1975952256064447956

`A015739(n+1)+A015746(n+1)-A015754(n+1)`
-/

namespace A015742.P1975952256064447956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015739 (n + 1) + (A015746 (n + 1) - A015754 (n + 1))

end

end A015742.P1975952256064447956

/-! ## A015742.P7901509532317824764

`A015740(n+1)+A015750(n+1)-A015754(n+1)`
-/

namespace A015742.P7901509532317824764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015740 (n + 1) + (A015750 (n + 1) - A015754 (n + 1))

end

end A015742.P7901509532317824764

/-! ## A015742.P12614748960845713304

`A015741(n+1)+A015753(n+1)-A015754(n+1)`
-/

namespace A015742.P12614748960845713304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015741 (n + 1) + (A015753 (n + 1) - A015754 (n + 1))

end

end A015742.P12614748960845713304

/-!
# A015743: Number of 8's in all the partitions of n into distinct parts.

The programs for A015743, there is no canonical definition to state claims against.
-/

/-! ## A015743.P14761821962631651783

`A000009(1+n)-A015755(n+1)`
-/

namespace A015743.P14761821962631651783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (1 + n) - A015755 (n + 1)

end

end A015743.P14761821962631651783

/-! ## A015743.P9881771912954175477

`A000009(n+1)%A015755(n+1)`
-/

namespace A015743.P9881771912954175477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (n + 1)) (A015755 (n + 1))

end

end A015743.P9881771912954175477

/-! ## A015743.P9135369461188777133

`A025147(n+1)+A025147(n)-A015755(n+1)`
-/

namespace A015743.P9135369461188777133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A015755 (n + 1))

end

end A015743.P9135369461188777133

/-! ## A015743.P11972926696220551576

`A015750(n+1)+A015740(n+1)-A015755(n+1)`
-/

namespace A015743.P11972926696220551576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015750 (n + 1) + (A015740 (n + 1) - A015755 (n + 1))

end

end A015743.P11972926696220551576

/-! ## A015743.P6169564021477245449

`A015753(n+1)+A015741(n+1)-A015755(n+1)`
-/

namespace A015743.P6169564021477245449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015753 (n + 1) + (A015741 (n + 1) - A015755 (n + 1))

end

end A015743.P6169564021477245449

/-! ## A015743.P17376103244090476067

`A015754(n+1)+A015742(n+1)-A015755(n+1)`
-/

namespace A015743.P17376103244090476067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015754 (n + 1) + (A015742 (n + 1) - A015755 (n + 1))

end

end A015743.P17376103244090476067

/-!
# A015744: Number of partitions of n into distinct parts, none being 2.

The programs for A015744, there is no canonical definition to state claims against.
-/

/-! ## A015744.P16210606725118870935

`A000009(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015744.P16210606725118870935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000009 n - a (n - 2)

end

end A015744.P16210606725118870935

/-! ## A015744.P1357659986192502890

`abs(A081360(n))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015744.P1357659986192502890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |A081360 n| - a (n - 2)

end

end A015744.P1357659986192502890

/-! ## A015744.P17316317030103513737

`∑[A087897(n)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A015744.P17316317030103513737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A087897 n - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015744.P17316317030103513737

/-! ## A015744.P6247189869560549061

`1+A111133(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015744.P6247189869560549061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + A111133 n - a (n - 2)

end

end A015744.P6247189869560549061

/-! ## A015744.P200018320945335385

`A117409(n+2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015744.P200018320945335385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A117409 (n + 2) - a (n - 2)

end

end A015744.P200018320945335385

/-! ## A015744.P12679364305100023022

`A172033(2*n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015744.P12679364305100023022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A172033 (2 * n) - a (n - 2)

end

end A015744.P12679364305100023022

/-! ## A015744.P17037630211280830556

`A087135(n)/2-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015744.P17037630211280830556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A087135 n : ℚ) / 2 - a (n - 2)

end

end A015744.P17037630211280830556

/-! ## A015744.P330046887795766665

`A025147(n)+Δ[A096749(n)]`
-/

namespace A015744.P330046887795766665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (f1 (n + 1) - f1 n)

end

end A015744.P330046887795766665

/-! ## A015744.P5674506060173921521

`∑[A025148(n)-A096749(n)]`
-/

namespace A015744.P5674506060173921521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 n - A096749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015744.P5674506060173921521

/-! ## A015744.P8268587963719726112

`A096749(n+1)+A025148(n)`
-/

namespace A015744.P8268587963719726112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 (n + 1) + A025148 n

end

end A015744.P8268587963719726112

/-! ## A015744.P8959697950207429664

`A025147(n+1)-Δ[A025148(n)]`
-/

namespace A015744.P8959697950207429664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) - (f1 (n + 1) - f1 n)

end

end A015744.P8959697950207429664

/-! ## A015744.P11707822665919193930

`∑[2*A025148(n)-A025147(n)]`
-/

namespace A015744.P11707822665919193930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025148 n - A025147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015744.P11707822665919193930

/-! ## A015744.P17666501738106273551

`A096749(n+1)+A096749(n+2)`
-/

namespace A015744.P17666501738106273551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 (n + 1) + A096749 (n + 2)

end

end A015744.P17666501738106273551

/-! ## A015744.P9869705508375405047

`A238217(n+2)+A238209(n+2)`
-/

namespace A015744.P9869705508375405047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238217 (n + 2) + A238209 (n + 2)

end

end A015744.P9869705508375405047

/-! ## A015744.P5060500840961901622

`A025147(n+1)+A025148(n)-A025148(n+1)`
-/

namespace A015744.P5060500840961901622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025148 n - A025148 (n + 1))

end

end A015744.P5060500840961901622

/-! ## A015744.P7527180424902249192

`A284593(∑[n+3])`
-/

namespace A015744.P7527180424902249192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015744.P7527180424902249192

/-! ## A015744.P3623165992048627250

`A015718(∑[n-1]+3)`
-/

namespace A015744.P3623165992048627250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015718 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A015744.P3623165992048627250

/-! ## A015744.P14926886519577724687

`A015716(∑[n+1]+2)`
-/

namespace A015744.P14926886519577724687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A015744.P14926886519577724687

/-!
# A015745: Number of partitions of n into distinct parts, none being 3.

The programs for A015745, there is no canonical definition to state claims against.
-/

/-! ## A015745.P14999709871907204115

`A015737(n+3)`
-/

namespace A015745.P14999709871907204115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015737 (n + 3)

end

end A015745.P14999709871907204115

/-! ## A015745.P17324042497448147211

`A000009(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A015745.P17324042497448147211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000009 n - a (n - 3)

end

end A015745.P17324042497448147211

/-! ## A015745.P4274644096413199050

`∑[A087897(n)]-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A015745.P4274644096413199050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 3)

end

end A015745.P4274644096413199050

/-! ## A015745.P2781842311794530460

`abs(A081360(n))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A015745.P2781842311794530460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  |A081360 n| - a (n - 3)

end

end A015745.P2781842311794530460

/-! ## A015745.P1288551205912918244

`gcd(A000038(n), A015737(2*n-(n-3)))`
-/

namespace A015745.P1288551205912918244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A015737 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat)

end

end A015745.P1288551205912918244

/-! ## A015745.P5674865802965062841

`lcm(A015737(2*n-(n-3)), A020985(n))`
-/

namespace A015745.P5674865802965062841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015737 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat) (A020985 n)

end

end A015745.P5674865802965062841

/-! ## A015745.P6426124169622291822

`A026824(n)+∑[A025149(n)-A026824(n)]`
-/

namespace A015745.P6426124169622291822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 n - A026824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026824 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015745.P6426124169622291822

/-! ## A015745.P3181334984959654100

`A015716(∑[n+2]+4)`
-/

namespace A015745.P3181334984959654100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A015745.P3181334984959654100

/-!
# A015746: Number of partitions of n into distinct parts, none being 4.

The programs for A015746, there is no canonical definition to state claims against.
-/

/-! ## A015746.P11101105970499728165

`A015739(n+4)`
-/

namespace A015746.P11101105970499728165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015739 (n + 4)

end

end A015746.P11101105970499728165

/-! ## A015746.P13178779724031211433

`A000009(n)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A015746.P13178779724031211433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A000009 n - a (n - 4)

end

end A015746.P13178779724031211433

/-! ## A015746.P17054332139922675841

`A000009(n)-A015739(A028310(n))`
-/

namespace A015746.P17054332139922675841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A015739 (A028310 n).toNat

end

end A015746.P17054332139922675841

/-! ## A015746.P11817352025080447243

`abs(A081360(n))-A015739(A028310(n))`
-/

namespace A015746.P11817352025080447243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A015739 (A028310 n).toNat

end

end A015746.P11817352025080447243

/-! ## A015746.P13764565512721097302

`A015745(n+1)+A026825(n+1)-A025150(n+1)`
-/

namespace A015746.P13764565512721097302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015745 (n + 1) + (A026825 (n + 1) - A025150 (n + 1))

end

end A015746.P13764565512721097302

/-! ## A015746.P14724285601170438597

`A015716(∑[n+3]+7)`
-/

namespace A015746.P14724285601170438597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A015746.P14724285601170438597

/-! ## A015746.P6042716043944906311

`A015716(A167614(n+2)+1)%A169833(n)`
-/

namespace A015746.P6042716043944906311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015716 (A167614 (n + 2) + 1).toNat) (A169833 n)

end

end A015746.P6042716043944906311

/-! ## A015746.P2103946466278942917

`A015716(A052905(n)+9)%A245360(n+1)`
-/

namespace A015746.P2103946466278942917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015716 (A052905 n + 9).toNat) (A245360 (n + 1))

end

end A015746.P2103946466278942917

/-! ## A015746.P8239705449241266799

`A015716(A055999(n)+10)%A037074(n+1)`
-/

namespace A015746.P8239705449241266799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015716 (A055999 n + 10).toNat) (A037074 (n + 1))

end

end A015746.P8239705449241266799

/-!
# A015747: Inverse of 1738th cyclotomic polynomial.

The programs for A015747, there is no canonical definition to state claims against.
-/

/-! ## A015747.P671845313580551282

`(-1)^n*A014878(n)`
-/

namespace A015747.P671845313580551282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014878 n

end

end A015747.P671845313580551282

/-! ## A015747.P12766248878036511027

`A015835(lt[A117816(n+1), A015834(n+3)])`
-/

namespace A015747.P12766248878036511027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015834 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015835 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015747.P12766248878036511027

/-! ## A015747.P16215514637091775593

`a(n-1)*A352871(n)` with `a(0)=1`
-/

namespace A015747.P16215514637091775593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A352871 n

end

end A015747.P16215514637091775593

/-! ## A015747.P10071067476773409126

`A015967(n)^(A325227(n+1)+1)`
-/

namespace A015747.P10071067476773409126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015967 n : ℚ) ^ (A325227 (n + 1) + 1 : ℤ)

end

end A015747.P10071067476773409126

/-! ## A015747.P9508341681681918425

`A383898(A381946(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A015747.P9508341681681918425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A383898 (A381946 (n + 1)).toNat * a (n - 1)

end

end A015747.P9508341681681918425

/-! ## A015747.P3257831570124853559

`(1-A083891(A190815(n+1)))*a(n-2)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A015747.P3257831570124853559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  (1 - A083891 (A190815 (n + 1)).toNat) * a (n - 2)

end

end A015747.P3257831570124853559

/-! ## A015747.P18100870521189611247

`A016275(n)^A204763(A261585(n)²)`
-/

namespace A015747.P18100870521189611247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A204763 (A261585 n ^ 2).toNat : ℤ)

end

end A015747.P18100870521189611247

/-! ## A015747.P7024344177458830200

`A015967(n)/A332294(A235130(n+1))`
-/

namespace A015747.P7024344177458830200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015967 n : ℚ) / (A332294 (A235130 (n + 1)).toNat : ℚ)

end

end A015747.P7024344177458830200

/-! ## A015747.P13008557087564164251

`A016275(n)^A001567(A001567(n+1))`
-/

namespace A015747.P13008557087564164251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A001567 (A001567 (n + 1)).toNat : ℤ)

end

end A015747.P13008557087564164251

/-! ## A015747.P4821614211364720605

`A016275(n)^A000055(A363942(n+3))`
-/

namespace A015747.P4821614211364720605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A000055 (A363942 (n + 3)).toNat : ℤ)

end

end A015747.P4821614211364720605

/-! ## A015747.P15787780303349725207

`∏[dr(1-n)-n]%2`
-/

namespace A015747.P15787780303349725207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (1 - (n : ℤ)) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) 2

end

end A015747.P15787780303349725207

/-!
# A015748: Inverse of 1739th cyclotomic polynomial.

The programs for A015748, there is no canonical definition to state claims against.
-/

/-! ## A015748.P18170753550996927267

`∑[A240467(∑[A020669(1+n)])]`
-/

namespace A015748.P18170753550996927267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015748.P18170753550996927267

/-! ## A015748.P10646660860143317666

`A016288(lt[A356231(n+1), A376761(n+2)])`
-/

namespace A015748.P10646660860143317666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376761 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015748.P10646660860143317666

/-! ## A015748.P11287099886505913664

`A016288(∑[2*A016288(∑[n+1]+n)]+n)`
-/

namespace A015748.P11287099886505913664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016288 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A015748.P11287099886505913664

/-! ## A015748.P16628409957270353799

`A016288(A093841(1+n)+7)`
-/

namespace A015748.P16628409957270353799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 (A093841 (1 + n) + 7).toNat

end

end A015748.P16628409957270353799

/-! ## A015748.P17666012733151226299

`A016288(comp[A001075(n+3)]%A353834(n+1)+5)`
-/

namespace A015748.P17666012733151226299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A353834 (n + 1)) + 5).toNat

end

end A015748.P17666012733151226299

/-! ## A015748.P3293075468672735399

`A016192(lt[A094189(n+1), 6])`
-/

namespace A015748.P3293075468672735399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015748.P3293075468672735399

/-! ## A015748.P15197095382725812352

`A015970(lt[A097637(3*n+2), A000203(n+4)])`
-/

namespace A015748.P15197095382725812352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015748.P15197095382725812352

/-! ## A015748.P15837261774262228874

`A015970(lt[A236936(n+9), A001971(3*n+4)])`
-/

namespace A015748.P15837261774262228874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236936 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015748.P15837261774262228874

/-!
# A015749: Inverse of 1740th cyclotomic polynomial.

The programs for A015749, there is no canonical definition to state claims against.
-/

/-! ## A015749.P15066369754415868217

`A015869(n)^A103465(A319225(n+1))`
-/

namespace A015749.P15066369754415868217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015869 n : ℚ) ^ (A103465 (A319225 (n + 1)).toNat : ℤ)

end

end A015749.P15066369754415868217

/-! ## A015749.P1609692205650716269

`A015869(n)^A005187(A125615(n+3))`
-/

namespace A015749.P1609692205650716269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015869 n : ℚ) ^ (A005187 (A125615 (n + 3)).toNat : ℤ)

end

end A015749.P1609692205650716269

/-! ## A015749.P435376722033432388

`A016229(n)^A115728(comp[A025487(n+1)])`
-/

namespace A015749.P435376722033432388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016229 n : ℚ) ^ (A115728 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ)

end

end A015749.P435376722033432388

/-! ## A015749.P15545515912443986983

`(1-A000038(A210802(n+1)))*A016229(n)`
-/

namespace A015749.P15545515912443986983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000038 (A210802 (n + 1)).toNat) * A016229 n

end

end A015749.P15545515912443986983

/-! ## A015749.P17370609175647117280

`A016229(n)+A000007(A182536(3*n+1))`
-/

namespace A015749.P17370609175647117280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016229 n + A000007 (A182536 (3 * n + 1)).toNat

end

end A015749.P17370609175647117280

/-! ## A015749.P5678618167998441195

`A309873(A210802(n+1)+1)²*A016229(n)`
-/

namespace A015749.P5678618167998441195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A210802 (n + 1) + 1).toNat ^ 2 * A016229 n

end

end A015749.P5678618167998441195

/-! ## A015749.P4256562400952897328

`A015869(n)^(n+1)^n`
-/

namespace A015749.P4256562400952897328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015869 n ^ (n + 1) ^ n

end

end A015749.P4256562400952897328

/-! ## A015749.P4628423761631199271

`A016229(n)^(n+1)^n`
-/

namespace A015749.P4628423761631199271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016229 n ^ (n + 1) ^ n

end

end A015749.P4628423761631199271

/-! ## A015749.P16868014974622011737

`A016229(comp[A121852(n+1)-A025487(3*(n+1))])`
-/

namespace A015749.P16868014974622011737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121852 (n + 1) - A025487 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016229 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015749.P16868014974622011737

/-! ## A015749.P11806747549297894306

`A015869(n)*A347621(n)`
-/

namespace A015749.P11806747549297894306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015869 n * A347621 n

end

end A015749.P11806747549297894306

/-!
# A015750: Number of partitions of n into distinct parts, none being 5.

The programs for A015750, there is no canonical definition to state claims against.
-/

/-! ## A015750.P2700367399563907842

`A015740(n+5)`
-/

namespace A015750.P2700367399563907842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015740 (n + 5)

end

end A015750.P2700367399563907842

/-! ## A015750.P1858909369617216167

`A000009(n)-A015740(gcd(n, ∏{d}[n, #]))`
-/

namespace A015750.P1858909369617216167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A015740 (Nat.gcd n (∏ d ∈ Nat.divisors (f1 n), d))

end

end A015750.P1858909369617216167

/-! ## A015750.P11671699187422642976

`A000009(n)-A015740(A028310(n))`
-/

namespace A015750.P11671699187422642976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A015740 (A028310 n).toNat

end

end A015750.P11671699187422642976

/-! ## A015750.P3176827150900651113

`abs(A081360(n))-A015740(A028310(n))`
-/

namespace A015750.P3176827150900651113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A015740 (A028310 n).toNat

end

end A015750.P3176827150900651113

/-! ## A015750.P9604215950384160003

`∑[A087897(n)]-A015740(A028310(n))`
-/

namespace A015750.P9604215950384160003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015740 (A028310 n).toNat

end

end A015750.P9604215950384160003

/-! ## A015750.P2957481175172263184

`A000009(n)-A015740(or(n, A000007(n)))`
-/

namespace A015750.P2957481175172263184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A015740 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A015750.P2957481175172263184

/-! ## A015750.P11313534165538144614

`A015718(∑[n-1]+6)`
-/

namespace A015750.P11313534165538144614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015718 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A015750.P11313534165538144614

/-! ## A015750.P11813767275568455993

`A015716(A167499(n+3))`
-/

namespace A015750.P11813767275568455993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A167499 (n + 3)).toNat

end

end A015750.P11813767275568455993

/-! ## A015750.P12485774181275240488

`A015716(A155212(n)+13)`
-/

namespace A015750.P12485774181275240488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A155212 n + 13).toNat

end

end A015750.P12485774181275240488

/-! ## A015750.P12844485101020920635

`A015716(A056000(n)+15)`
-/

namespace A015750.P12844485101020920635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A056000 n + 15).toNat

end

end A015750.P12844485101020920635

/-! ## A015750.P12865909264553626720

`A015716(A133263(n+4)+3)`
-/

namespace A015750.P12865909264553626720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A133263 (n + 4) + 3).toNat

end

end A015750.P12865909264553626720

/-! ## A015750.P4471165986694088029

`A015716(A000124(n+4)+4)`
-/

namespace A015750.P4471165986694088029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000124 (n + 4) + 4).toNat

end

end A015750.P4471165986694088029

/-! ## A015750.P6275445655893018882

`A015716(A000217(n+4)+5)`
-/

namespace A015750.P6275445655893018882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000217 (n + 4) + 5).toNat

end

end A015750.P6275445655893018882

/-! ## A015750.P11210857079420178372

`A015716(A052905(n+3)-(2*n+1))`
-/

namespace A015750.P11210857079420178372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A015750.P11210857079420178372

/-! ## A015750.P3757812556556115922

`A015716(A038722(Δ[A023545(n+1)]))`
-/

namespace A015750.P3757812556556115922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A015750.P3757812556556115922

/-!
# A015751: Inverse of 1742nd cyclotomic polynomial.

The programs for A015751, there is no canonical definition to state claims against.
-/

/-! ## A015751.P5867457328401278747

`A014880(n)*A033999(n)`
-/

namespace A015751.P5867457328401278747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014880 n * A033999 n

end

end A015751.P5867457328401278747

/-! ## A015751.P8354529284209164906

`A014880(n)*A015855(A351290(n+1))`
-/

namespace A015751.P8354529284209164906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014880 n * A015855 (A351290 (n + 1)).toNat

end

end A015751.P8354529284209164906

/-! ## A015751.P8034930404223737356

`A014880(n)/A033999(A335467(n+1))`
-/

namespace A015751.P8034930404223737356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014880 n : ℚ) / (A033999 (A335467 (n + 1)).toNat : ℚ)

end

end A015751.P8034930404223737356

/-! ## A015751.P7954507109188669904

`A014880(n)/A033999(A374249(n+1))`
-/

namespace A015751.P7954507109188669904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014880 n : ℚ) / (A033999 (A374249 (n + 1)).toNat : ℚ)

end

end A015751.P7954507109188669904

/-! ## A015751.P9344777028465046372

`A015855(n)^Δ[A335467(n+1)]`
-/

namespace A015751.P9344777028465046372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015855 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A015751.P9344777028465046372

/-! ## A015751.P17512954420354453618

`A015907(n)^Δ[A335467(n+1)]`
-/

namespace A015751.P17512954420354453618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015907 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A015751.P17512954420354453618

/-! ## A015751.P7467921202806819690

`A016167(n)^Δ[A335467(n+1)]`
-/

namespace A015751.P7467921202806819690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016167 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A015751.P7467921202806819690

/-! ## A015751.P184910968733527268

`A015855(n)^Δ[A351290(n+1)]`
-/

namespace A015751.P184910968733527268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015855 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A015751.P184910968733527268

/-! ## A015751.P18287523342885836516

`A015907(n)^Δ[A351290(n+1)]`
-/

namespace A015751.P18287523342885836516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015907 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A015751.P18287523342885836516

/-! ## A015751.P14207377542958703112

`A016167(n)^Δ[A351290(n+1)]`
-/

namespace A015751.P14207377542958703112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016167 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A015751.P14207377542958703112

/-!
# A015752: Inverse of 1743rd cyclotomic polynomial.

The programs for A015752, there is no canonical definition to state claims against.
-/

/-! ## A015752.P9836849609340034779

`A015642(3*A007318(n))*A015668(n)`
-/

namespace A015752.P9836849609340034779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (3 * A007318 n).toNat * A015668 n

end

end A015752.P9836849609340034779

/-! ## A015752.P3637400292056870100

`A014786(n)*A015918(A035650(n+5))`
-/

namespace A015752.P3637400292056870100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014786 n * A015918 (A035650 (n + 5)).toNat

end

end A015752.P3637400292056870100

/-! ## A015752.P18276820895715183128

`A015878(n)*A015918(A035650(n+5))`
-/

namespace A015752.P18276820895715183128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015878 n * A015918 (A035650 (n + 5)).toNat

end

end A015752.P18276820895715183128

/-! ## A015752.P5300754503270740187

`A015526(lcm(n, A356771(n)))*A015542(n)`
-/

namespace A015752.P5300754503270740187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 (Int.lcm (n : ℤ) (A356771 n)) * A015542 n

end

end A015752.P5300754503270740187

/-! ## A015752.P6627203223796537011

`A015642(A325001(1+n))*A015668(n)`
-/

namespace A015752.P6627203223796537011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A325001 (1 + n)).toNat * A015668 n

end

end A015752.P6627203223796537011

/-! ## A015752.P13812140858589347703

`A015526(A084317(2*n+1))*A015542(n)`
-/

namespace A015752.P13812140858589347703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 (A084317 (2 * n + 1)).toNat * A015542 n

end

end A015752.P13812140858589347703

/-! ## A015752.P15996946273859396177

`A015878(n)^A001000(A015931(3*n+1))`
-/

namespace A015752.P15996946273859396177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015878 n : ℚ) ^ (A001000 (A015931 (3 * n + 1)).toNat : ℤ)

end

end A015752.P15996946273859396177

/-! ## A015752.P6446007527794174585

`A368914(A001358(n+1)*A312527(n)+1)*A015668(n)`
-/

namespace A015752.P6446007527794174585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368914 (A001358 (n + 1) * A312527 n + 1).toNat * A015668 n

end

end A015752.P6446007527794174585

/-! ## A015752.P1489945805568223008

`A015510(A262524(n+1))*A015542(n)`
-/

namespace A015752.P1489945805568223008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015510 (A262524 (n + 1)).toNat * A015542 n

end

end A015752.P1489945805568223008

/-! ## A015752.P7685065191983751446

`A015878(n)^A001000(A015935(n+1))`
-/

namespace A015752.P7685065191983751446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015878 n : ℚ) ^ (A001000 (A015935 (n + 1)).toNat : ℤ)

end

end A015752.P7685065191983751446

/-!
# A015753: Number of partitions of n into distinct parts, none being 6.

The programs for A015753, there is no canonical definition to state claims against.
-/

/-! ## A015753.P13412520334742234458

`A015741(n+6)`
-/

namespace A015753.P13412520334742234458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015741 (n + 6)

end

end A015753.P13412520334742234458

/-! ## A015753.P7867476397099758768

`A000009(n)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3`
-/

namespace A015753.P7867476397099758768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 3] fun n a =>
  A000009 n - a (n - 6)

end

end A015753.P7867476397099758768

/-! ## A015753.P5203720431570997915

`A000009(n)-A015741(A028310(n))`
-/

namespace A015753.P5203720431570997915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A015741 (A028310 n).toNat

end

end A015753.P5203720431570997915

/-! ## A015753.P17444066782139763704

`abs(A081360(n))-A015741(A028310(n))`
-/

namespace A015753.P17444066782139763704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A015741 (A028310 n).toNat

end

end A015753.P17444066782139763704

/-! ## A015753.P7985457817998090724

`∑[A087897(n)]-A015741(A028310(n))`
-/

namespace A015753.P7985457817998090724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015741 (A028310 n).toNat

end

end A015753.P7985457817998090724

/-! ## A015753.P13964877262518381200

`A035457(2*n)-A015741(A028310(n))`
-/

namespace A015753.P13964877262518381200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A015741 (A028310 n).toNat

end

end A015753.P13964877262518381200

/-! ## A015753.P5398951812221568097

`A052839(n)-A057427(n)-A015741(A028310(n))`
-/

namespace A015753.P5398951812221568097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - A057427 n - A015741 (A028310 n).toNat

end

end A015753.P5398951812221568097

/-! ## A015753.P10298537921686731220

`A033999(n)*A081360(n)-A015741(A028310(n))`
-/

namespace A015753.P10298537921686731220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081360 n - A015741 (A028310 n).toNat

end

end A015753.P10298537921686731220

/-! ## A015753.P17416164393460282916

`A015716(∑[n+5]+16)`
-/

namespace A015753.P17416164393460282916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A015753.P17416164393460282916

/-! ## A015753.P3209713914114988479

`or(char[1], A015716(A000096(n+4)+7))`
-/

namespace A015753.P3209713914114988479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A015716 (A000096 (n + 4) + 7).toNat)

end

end A015753.P3209713914114988479

/-! ## A015753.P15463271764397057750

`or(char[1], A015716(A000217(n+5)+6))`
-/

namespace A015753.P15463271764397057750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A015716 (A000217 (n + 5) + 6).toNat)

end

end A015753.P15463271764397057750

/-! ## A015753.P3820981822518988923

`A015716(A167499(n+4)+1)%A016899(n)`
-/

namespace A015753.P3820981822518988923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015716 (A167499 (n + 4) + 1).toNat) (A016899 n)

end

end A015753.P3820981822518988923

/-! ## A015753.P1645136680420666701

`A015716(A000096(n+4)+7)%A016827(n)`
-/

namespace A015753.P1645136680420666701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015716 (A000096 (n + 4) + 7).toNat) (A016827 n)

end

end A015753.P1645136680420666701

/-! ## A015753.P2899096670476689153

`A015716(A000217(n+5)+6)+char[A017440(n)]`
-/

namespace A015753.P2899096670476689153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A015753.P2899096670476689153

/-! ## A015753.P14613369127187325372

`A015716(A000217(n+5)+6)+A000007(n+1)`
-/

namespace A015753.P14613369127187325372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000217 (n + 5) + 6).toNat + A000007 (n + 1)

end

end A015753.P14613369127187325372

/-! ## A015753.P7247501384682699611

`A000034(2*n)*A015716(A000217(n+5)+6)`
-/

namespace A015753.P7247501384682699611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A015716 (A000217 (n + 5) + 6).toNat

end

end A015753.P7247501384682699611

/-! ## A015753.P871014745354071149

`A014963(6*(n+1))*A015716(A000217(n+5)+6)`
-/

namespace A015753.P871014745354071149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A015716 (A000217 (n + 5) + 6).toNat

end

end A015753.P871014745354071149

/-! ## A015753.P8133750435268678458

`A015716(A000217(n+5)+6)%A000040(2*(n+1))²²`
-/

namespace A015753.P8133750435268678458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015716 (A000217 (n + 5) + 6).toNat) ((A000040 (2 * (n + 1)) ^ 2) ^ 2)

end

end A015753.P8133750435268678458

/-! ## A015753.P5488634663182156797

`A153011(A000040(n+1))+A015716(A000217(n+5)+6)`
-/

namespace A015753.P5488634663182156797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153011 (A000040 (n + 1)).toNat + A015716 (A000217 (n + 5) + 6).toNat

end

end A015753.P5488634663182156797

/-!
# A015754: Number of partitions of n into distinct parts, none being 7.

The programs for A015754, there is no canonical definition to state claims against.
-/

/-! ## A015754.P16168264040228711695

`A015742(n+7)`
-/

namespace A015754.P16168264040228711695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015742 (n + 7)

end

end A015754.P16168264040228711695

/-! ## A015754.P6821839065367434759

`A000009(n)-A015742(gcd(n, ∏{d}[n, #]))`
-/

namespace A015754.P6821839065367434759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A015742 (Nat.gcd n (∏ d ∈ Nat.divisors (f1 n), d))

end

end A015754.P6821839065367434759

/-! ## A015754.P16266884851726526392

`A000009(n)-A015742(A028310(n))`
-/

namespace A015754.P16266884851726526392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A015742 (A028310 n).toNat

end

end A015754.P16266884851726526392

/-! ## A015754.P1910869694330313864

`abs(A081360(n))-A015742(A028310(n))`
-/

namespace A015754.P1910869694330313864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A015742 (A028310 n).toNat

end

end A015754.P1910869694330313864

/-! ## A015754.P9185271544926178938

`∑[A087897(n)]-A015742(A028310(n))`
-/

namespace A015754.P9185271544926178938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015742 (A028310 n).toNat

end

end A015754.P9185271544926178938

/-! ## A015754.P13201152665902953186

`A015716(A167487(n+5))`
-/

namespace A015754.P13201152665902953186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A167487 (n + 5)).toNat

end

end A015754.P13201152665902953186

/-! ## A015754.P2364187275582789748

`A015716(A167499(n+5)+2)`
-/

namespace A015754.P2364187275582789748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A167499 (n + 5) + 2).toNat

end

end A015754.P2364187275582789748

/-! ## A015754.P4170740016025943758

`A015716(A167614(n+5)+4)`
-/

namespace A015754.P4170740016025943758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A167614 (n + 5) + 4).toNat

end

end A015754.P4170740016025943758

/-! ## A015754.P11433836328184425362

`A015716(A000124(n+6)+6)`
-/

namespace A015754.P11433836328184425362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000124 (n + 6) + 6).toNat

end

end A015754.P11433836328184425362

/-! ## A015754.P1998698234241564447

`A015716(A000096(n+5)+8)`
-/

namespace A015754.P1998698234241564447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000096 (n + 5) + 8).toNat

end

end A015754.P1998698234241564447

/-! ## A015754.P15085323723922141149

`A015716(A000217(n+6)+7)`
-/

namespace A015754.P15085323723922141149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000217 (n + 6) + 7).toNat

end

end A015754.P15085323723922141149

/-! ## A015754.P1180467054837178884

`A015716(A055998(n+4)+10)`
-/

namespace A015754.P1180467054837178884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A055998 (n + 4) + 10).toNat

end

end A015754.P1180467054837178884

/-! ## A015754.P4780260043012119685

`A015716(∑[A242963(n+1)]+23)`
-/

namespace A015754.P4780260043012119685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (∑ j ∈ Finset.range (n + 1), f1 j + 23).toNat

end

end A015754.P4780260043012119685

/-! ## A015754.P9628121812612671966

`A015716(A133263(n+7)-(n+2))`
-/

namespace A015754.P9628121812612671966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A015754.P9628121812612671966

/-!
# A015755: Number of partitions of n into distinct parts, none being 8.

The programs for A015755, there is no canonical definition to state claims against.
-/

/-! ## A015755.P11949909075401536111

`A015743(n+8)`
-/

namespace A015755.P11949909075401536111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015743 (n + 8)

end

end A015755.P11949909075401536111

/-! ## A015755.P15615924614182529722

`A000009(n)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3, a(6)=4, a(7)=5`
-/

namespace A015755.P15615924614182529722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 3, 4, 5] fun n a =>
  A000009 n - a (n - 8)

end

end A015755.P15615924614182529722

/-! ## A015755.P6587136782373275132

`A000009(n)-A015743(A028310(n))`
-/

namespace A015755.P6587136782373275132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A015743 (A028310 n).toNat

end

end A015755.P6587136782373275132

/-! ## A015755.P18378522716369165418

`abs(A081360(n))-A015743(A028310(n))`
-/

namespace A015755.P18378522716369165418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A015743 (A028310 n).toNat

end

end A015755.P18378522716369165418

/-! ## A015755.P176831537755382912

`∑[A087897(n)]-A015743(A028310(n))`
-/

namespace A015755.P176831537755382912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015743 (A028310 n).toNat

end

end A015755.P176831537755382912

/-! ## A015755.P8900949521718404381

`A000009(n)-A015743(A065033(2*n))`
-/

namespace A015755.P8900949521718404381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A015743 (A065033 (2 * n)).toNat

end

end A015755.P8900949521718404381

/-! ## A015755.P1551716661085863899

`A015716(A167499(n+6)+3)`
-/

namespace A015755.P1551716661085863899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A167499 (n + 6) + 3).toNat

end

end A015755.P1551716661085863899

/-! ## A015755.P6218684545876185202

`A015716(A133263(n+7)+6)`
-/

namespace A015755.P6218684545876185202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A133263 (n + 7) + 6).toNat

end

end A015755.P6218684545876185202

/-! ## A015755.P9187377513022151992

`A015716(A000124(n+7)+7)`
-/

namespace A015755.P9187377513022151992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000124 (n + 7) + 7).toNat

end

end A015755.P9187377513022151992

/-! ## A015755.P695306392936517496

`A015716(A000217(n+7)+8)`
-/

namespace A015755.P695306392936517496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000217 (n + 7) + 8).toNat

end

end A015755.P695306392936517496

/-!
# A015757: Inverse of 1748th cyclotomic polynomial.

The programs for A015757, there is no canonical definition to state claims against.
-/

/-! ## A015757.P14176645799214927341

`A016213(n)%A073261(n)`
-/

namespace A015757.P14176645799214927341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016213 n) (A073261 n)

end

end A015757.P14176645799214927341

/-! ## A015757.P16027967927776884610

`A000007(A034487(n+1))*A056594(n)`
-/

namespace A015757.P16027967927776884610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A034487 (n + 1)).toNat * A056594 n

end

end A015757.P16027967927776884610

/-! ## A015757.P12369413355666269557

`A016171(A159633(2*n+1))*A016213(n)`
-/

namespace A015757.P12369413355666269557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016171 (A159633 (2 * n + 1)).toNat * A016213 n

end

end A015757.P12369413355666269557

/-! ## A015757.P11155823413819128351

`A302110(n+3)^A034487(n+1)*A056594(n)`
-/

namespace A015757.P11155823413819128351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302110 (n + 3) : ℚ) ^ (A034487 (n + 1) : ℤ) * (A056594 n : ℚ)

end

end A015757.P11155823413819128351

/-! ## A015757.P14795913137442467190

`A101455(lt[A025154(n), A070667(2*(n+1))])`
-/

namespace A015757.P14795913137442467190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015757.P14795913137442467190

/-!
# A015758: Inverse of 1749th cyclotomic polynomial.

The programs for A015758, there is no canonical definition to state claims against.
-/

/-! ## A015758.P6987179651933250550

`A015956(A004767(n)-A337244(n+1))`
-/

namespace A015758.P6987179651933250550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015956 (A004767 n - A337244 (n + 1)).toNat

end

end A015758.P6987179651933250550

/-! ## A015758.P8378101107244149034

`A016022(n)*A157221(A140256(2*n+1))`
-/

namespace A015758.P8378101107244149034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016022 n * A157221 (A140256 (2 * n + 1)).toNat

end

end A015758.P8378101107244149034

/-! ## A015758.P7251191765862553872

`A015956(n)+A010054(A015992(n))`
-/

namespace A015758.P7251191765862553872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015956 n + A010054 (A015992 n).toNat

end

end A015758.P7251191765862553872

/-! ## A015758.P16185333803201982741

`A016023(A105126(n+1))+A016022(n)`
-/

namespace A015758.P16185333803201982741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016023 (A105126 (n + 1)).toNat + A016022 n

end

end A015758.P16185333803201982741

/-! ## A015758.P931084407165139057

`A016022(n)^A293521(n)^A016044(n)`
-/

namespace A015758.P931084407165139057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016022 n : ℝ) ^ ((A293521 n : ℚ) ^ (A016044 n : ℤ) : ℝ)

end

end A015758.P931084407165139057

/-! ## A015758.P17867729260283526583

`A016022(n)+A293521(n)%A034947(n+1)`
-/

namespace A015758.P17867729260283526583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016022 n + Int.tmod (A293521 n) (A034947 (n + 1))

end

end A015758.P17867729260283526583

/-! ## A015758.P10637740044027844739

`A016022(n)^A293521(n)^A015014(n+2)`
-/

namespace A015758.P10637740044027844739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016022 n : ℝ) ^ ((A293521 n : ℚ) ^ (A015014 (n + 2) : ℤ) : ℝ)

end

end A015758.P10637740044027844739

/-! ## A015758.P5639093135713412718

`A016022(n)^A293521(n)^A015021(3*n+1)`
-/

namespace A015758.P5639093135713412718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016022 n : ℝ) ^ ((A293521 n : ℚ) ^ (A015021 (3 * n + 1) : ℤ) : ℝ)

end

end A015758.P5639093135713412718

/-! ## A015758.P2392392520052508951

`A015956(n)*A048143(A360672(n))`
-/

namespace A015758.P2392392520052508951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015956 n * A048143 (A360672 n).toNat

end

end A015758.P2392392520052508951

/-! ## A015758.P9757072435559833499

`A015956(n)^A335124(A077110(n))`
-/

namespace A015758.P9757072435559833499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015956 n : ℚ) ^ (A335124 (A077110 n).toNat : ℤ)

end

end A015758.P9757072435559833499

/-!
# A015759: Numbers k such that phi(k) | sigma_2(k).

The programs for A015759, there is no canonical definition to state claims against.
-/

/-! ## A015759.P7216319189518774535

`∩[A015768(n+1), A015773(n+1)]`
-/

namespace A015759.P7216319189518774535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015759.P7216319189518774535

/-! ## A015759.P16460481349345757161

`∩[A015768(n+1), A094470(n+1)]`
-/

namespace A015759.P16460481349345757161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015759.P16460481349345757161

/-! ## A015759.P11955034300289570328

`∩[A015773(n+1), A094470(n+1)]`
-/

namespace A015759.P11955034300289570328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015759.P11955034300289570328

/-! ## A015759.P13452007359101320335

`∩[A015764(n+1), A015768(n+1)]`
-/

namespace A015759.P13452007359101320335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015759.P13452007359101320335

/-! ## A015759.P9128584401096206101

`∩[A015764(n+1), A015773(n+1)]`
-/

namespace A015759.P9128584401096206101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015759.P9128584401096206101

/-!
# A015760: Inverse of 1751st cyclotomic polynomial.

The programs for A015760, there is no canonical definition to state claims against.
-/

/-! ## A015760.P6559649125951011322

`A015966(A107821(n+1)+A016011(n))`
-/

namespace A015760.P6559649125951011322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015966 (A107821 (n + 1) + A016011 n).toNat

end

end A015760.P6559649125951011322

/-! ## A015760.P1944298948539292590

`A016042(A015952(n)+comp[A198778(3*n+2)])`
-/

namespace A015760.P1944298948539292590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016042 (A015952 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A015760.P1944298948539292590

/-! ## A015760.P5996794871234078655

`A016042(A016042(n)+comp[A198778(3*n+2)])`
-/

namespace A015760.P5996794871234078655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198778 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016042 (A016042 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A015760.P5996794871234078655

/-! ## A015760.P1070596330932467716

`C(2, ∑[∑{p}[n, A015161(#)]])`
-/

namespace A015760.P1070596330932467716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A015161 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015760.P1070596330932467716

/-! ## A015760.P10093707962866943467

`C(n+4, A326540(n+4))`
-/

namespace A015760.P10093707962866943467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) (A326540 (n + 4)).toNat

end

end A015760.P10093707962866943467

/-! ## A015760.P17906416893050473118

`C(n, comp[A270660(n+2)-1])`
-/

namespace A015760.P17906416893050473118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270660 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015760.P17906416893050473118

/-! ## A015760.P6249834141806755776

`C(2, A090318(n+1-a(n-1-char[n²])))` with `a(0)=1, a(1)=1`
-/

namespace A015760.P6249834141806755776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose 2 (A090318 (n + 1 - a ((n : ℤ) - 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat)).toNat

end

end A015760.P6249834141806755776

/-! ## A015760.P15629223130793517147

`C(2, A064707(A308978(n)))`
-/

namespace A015760.P15629223130793517147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A064707 (A308978 n).toNat).toNat

end

end A015760.P15629223130793517147

/-! ## A015760.P4641861321928808571

`C(2, A326463(A333777(n)))`
-/

namespace A015760.P4641861321928808571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326463 (A333777 n).toNat).toNat

end

end A015760.P4641861321928808571

/-! ## A015760.P16038172995486760756

`A000007(C(A092695(n), 4))`
-/

namespace A015760.P16038172995486760756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose (A092695 n).toNat 4)

end

end A015760.P16038172995486760756

/-! ## A015760.P11407683426888716843

`A053250(row(row(A319951(n))))`
-/

namespace A015760.P11407683426888716843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053250 (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A319951 n).toNat))

end

end A015760.P11407683426888716843

/-! ## A015760.P13769751079919664859

`A015885(∑[A187795(n+1)])`
-/

namespace A015760.P13769751079919664859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015760.P13769751079919664859

/-! ## A015760.P14069323895026479007

`C(A090318(n+1), ∑[A090318(n+1)])`
-/

namespace A015760.P14069323895026479007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090318 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015760.P14069323895026479007

/-! ## A015760.P16513791143124424681

`C(A108497(n+1), A069905(A033110(n+1)))`
-/

namespace A015760.P16513791143124424681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A108497 (n + 1)).toNat (A069905 (A033110 (n + 1)).toNat).toNat

end

end A015760.P16513791143124424681

/-! ## A015760.P18062095964713820022

`C(A307200(A250120(2*n+3)), A307637(n))`
-/

namespace A015760.P18062095964713820022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A307200 (A250120 (2 * n + 3)).toNat).toNat (A307637 n).toNat

end

end A015760.P18062095964713820022

/-! ## A015760.P10556622987552096837

`A288682(and(A032545(2*n+3), A235310(3*n+5)))`
-/

namespace A015760.P10556622987552096837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288682 (Int.land (A032545 (2 * n + 3)) (A235310 (3 * n + 5))).toNat

end

end A015760.P10556622987552096837

/-! ## A015760.P5556775522221911774

`A302374(and(A032545(2*n+3), A235310(3*n+5)))`
-/

namespace A015760.P5556775522221911774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302374 (Int.land (A032545 (2 * n + 3)) (A235310 (3 * n + 5))).toNat

end

end A015760.P5556775522221911774

/-! ## A015760.P5791762492030088058

`A010076(C(2, A373069(n+1)))`
-/

namespace A015760.P5791762492030088058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010076 (Nat.choose 2 (A373069 (n + 1)).toNat)

end

end A015760.P5791762492030088058

/-! ## A015760.P14791140076077589428

`A276153(C(2, A373069(n+1)))`
-/

namespace A015760.P14791140076077589428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276153 (Nat.choose 2 (A373069 (n + 1)).toNat)

end

end A015760.P14791140076077589428

/-! ## A015760.P18137156642957007576

`C(A054977(n+1), ∑[A015161(n)])`
-/

namespace A015760.P18137156642957007576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054977 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015760.P18137156642957007576

/-!
# A015761: Numbers k such that phi(k) | sigma_3(k).

The programs for A015761, the canonical program `A015761.P5986724967069183809` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015761 has offset 1).

The definition of A015761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015761.P5986724967069183809

`record[gcd(n+1, A001158(n+1)%A000010(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015761

/-- `record[gcd(n+1, A001158(n+1)%A000010(n+1))]` -/
def P5986724967069183809.Spec : Prop :=
  ∀ n, (P5986724967069183809.a n : ℤ) = A015761 (n + 1)

theorem P5986724967069183809.correct : P5986724967069183809.Spec := by
  intro n
  simp only [A015761, Nat.add_sub_cancel]

end A015761

/-! ## A015761.P14846381258555823581

`∩[A015774(n+1)%A015773(n+5), A015767(n+1)]`
-/

namespace A015761.P14846381258555823581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015774 (n + 1)) (A015773 (n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015761.P14846381258555823581

namespace A015761

/-- `∩[A015774(n+1)%A015773(n+5), A015767(n+1)]` -/
def P14846381258555823581.Spec : Prop :=
  ∀ n, (P14846381258555823581.a n : ℤ) = A015761 (n + 1)

end A015761

/-! ## A015761.P8671481167318756729

`∩[A015767(n+1), A015774(n+1)]%A015768(3*(n+1))`
-/

namespace A015761.P8671481167318756729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015774 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A015768 (3 * (n + 1)))

end

end A015761.P8671481167318756729

namespace A015761

/-- `∩[A015767(n+1), A015774(n+1)]%A015768(3*(n+1))` -/
def P8671481167318756729.Spec : Prop :=
  ∀ n, P8671481167318756729.a n = A015761 (n + 1)

end A015761

/-! ## A015761.P13482448477805019065

`∩[A015767(n+1)%A015768(3*(n+1)), A015774(n+1)]`
-/

namespace A015761.P13482448477805019065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015767 (n + 1)) (A015768 (3 * (n + 1)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015761.P13482448477805019065

namespace A015761

/-- `∩[A015767(n+1)%A015768(3*(n+1)), A015774(n+1)]` -/
def P13482448477805019065.Spec : Prop :=
  ∀ n, (P13482448477805019065.a n : ℤ) = A015761 (n + 1)

end A015761

/-! ## A015761.P4069160102375372345

`∩[A015767(n+1), A015774(n+1)]%A094470(n+2)`
-/

namespace A015761.P4069160102375372345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015774 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094470 (n + 2))

end

end A015761.P4069160102375372345

namespace A015761

/-- `∩[A015767(n+1), A015774(n+1)]%A094470(n+2)` -/
def P4069160102375372345.Spec : Prop :=
  ∀ n, P4069160102375372345.a n = A015761 (n + 1)

end A015761

/-! ## A015761.P1619376124976540880

`∪[A015771(n+1)%A034820(n), A078544(n+1)]`
-/

namespace A015761.P1619376124976540880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015771 (n + 1)) (A034820 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015761.P1619376124976540880

namespace A015761

/-- `∪[A015771(n+1)%A034820(n), A078544(n+1)]` -/
def P1619376124976540880.Spec : Prop :=
  ∀ n, (P1619376124976540880.a n : ℤ) = A015761 (n + 1)

end A015761

/-! ## A015761.P12007046771407862585

`∪[A020492(n+1)%A034820(n), A078544(n+1)]`
-/

namespace A015761.P12007046771407862585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020492 (n + 1)) (A034820 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015761.P12007046771407862585

namespace A015761

/-- `∪[A020492(n+1)%A034820(n), A078544(n+1)]` -/
def P12007046771407862585.Spec : Prop :=
  ∀ n, (P12007046771407862585.a n : ℤ) = A015761 (n + 1)

end A015761

/-! ## A015761.P4605566989306751844

`∪[A020492(n+1)^A185255(n)!, A078544(n+1)]`
-/

namespace A015761.P4605566989306751844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1) ^ Nat.factorial (A185255 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015761.P4605566989306751844

namespace A015761

/-- `∪[A020492(n+1)^A185255(n)!, A078544(n+1)]` -/
def P4605566989306751844.Spec : Prop :=
  ∀ n, (P4605566989306751844.a n : ℤ) = A015761 (n + 1)

end A015761

/-! ## A015761.P870098526292561836

`∪[A020492(n+1)^A233427(n)!, A078544(n+1)]`
-/

namespace A015761.P870098526292561836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1) ^ Nat.factorial (A233427 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015761.P870098526292561836

namespace A015761

/-- `∪[A020492(n+1)^A233427(n)!, A078544(n+1)]` -/
def P870098526292561836.Spec : Prop :=
  ∀ n, (P870098526292561836.a n : ℤ) = A015761 (n + 1)

end A015761

/-!
# A015762: Numbers n such that phi(n) | sigma_4(n).

The programs for A015762, there is no canonical definition to state claims against.
-/

/-! ## A015762.P2324679675419383821

`83*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A015762.P2324679675419383821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  83 * a (n - 2)

end

end A015762.P2324679675419383821

/-!
# A015763: Numbers k such that phi(k) divides sigma_5(k).

The programs for A015763, the canonical program `A015763.P16867863019437908684` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015763 has offset 1).

The definition of A015763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015763.P293818635089782086

`∪[A020492(n+1)%A015773(3*n+4), A074866(n+1)]`
-/

namespace A015763.P293818635089782086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020492 (n + 1)) (A015773 (3 * n + 4))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015763.P293818635089782086

namespace A015763

/-- `∪[A020492(n+1)%A015773(3*n+4), A074866(n+1)]` -/
def P293818635089782086.Spec : Prop :=
  ∀ n, (P293818635089782086.a n : ℤ) = A015763 (n + 1)

end A015763

/-! ## A015763.P16867863019437908684

`lt[A001160(n+1)%A000010(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015763

/-- `lt[A001160(n+1)%A000010(n+1), 1]+1` -/
def P16867863019437908684.Spec : Prop :=
  ∀ n, (P16867863019437908684.a n : ℤ) = A015763 (n + 1)

theorem P16867863019437908684.correct : P16867863019437908684.Spec := by
  intro n
  simp only [A015763, Nat.add_sub_cancel]

end A015763

/-! ## A015763.P1654607815201134121

`∪[A015771(n+1)%A034820(n), A074866(n+1)]`
-/

namespace A015763.P1654607815201134121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015771 (n + 1)) (A034820 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015763.P1654607815201134121

namespace A015763

/-- `∪[A015771(n+1)%A034820(n), A074866(n+1)]` -/
def P1654607815201134121.Spec : Prop :=
  ∀ n, (P1654607815201134121.a n : ℤ) = A015763 (n + 1)

end A015763

/-! ## A015763.P4035186811741441280

`∪[A015771(n+1), A074866(A187829(n+1))]`
-/

namespace A015763.P4035186811741441280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074866 (A187829 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015763.P4035186811741441280

namespace A015763

/-- `∪[A015771(n+1), A074866(A187829(n+1))]` -/
def P4035186811741441280.Spec : Prop :=
  ∀ n, (P4035186811741441280.a n : ℤ) = A015763 (n + 1)

end A015763

/-! ## A015763.P1730692794020064720

`∪[A015771(n+1), A074866(n+1)]%A094470(3*n+4)`
-/

namespace A015763.P1730692794020064720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074866 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094470 (3 * n + 4))

end

end A015763.P1730692794020064720

namespace A015763

/-- `∪[A015771(n+1), A074866(n+1)]%A094470(3*n+4)` -/
def P1730692794020064720.Spec : Prop :=
  ∀ n, P1730692794020064720.a n = A015763 (n + 1)

end A015763

/-!
# A015764: Numbers n such that phi(n) | sigma_6(n).

The programs for A015764, there is no canonical definition to state claims against.
-/

/-! ## A015764.P9247083054543259017

`filter[A094470(n+1), A115789(#)]`
-/

namespace A015764.P9247083054543259017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115789 (f1 j).toNat = 1) n)

end

end A015764.P9247083054543259017

/-! ## A015764.P3747366370261292351

`A094470(A133880(n)+A097855(n+1))`
-/

namespace A015764.P3747366370261292351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094470 (A133880 n + A097855 (n + 1)).toNat

end

end A015764.P3747366370261292351

/-!
# A015766: Numbers k such that phi(k) | sigma_8(k).

The programs for A015766, there is no canonical definition to state claims against.
-/

/-! ## A015766.P9098971022923104748

`∑[3^a(n-1)²]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A015766.P9098971022923104748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  3 ^ f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015766.P9098971022923104748

/-!
# A015767: Numbers k such that phi(k) | sigma_9(k).

The programs for A015767, there is no canonical definition to state claims against.
-/

/-! ## A015767.P10588300466103725067

`∪[A020492(n+1)%A015759(n+4), A077801(n+1)]`
-/

namespace A015767.P10588300466103725067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020492 (n + 1)) (A015759 (n + 4))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015767.P10588300466103725067

/-! ## A015767.P11028854782716610758

`∪[A015771(n+1), A077801(n+1)]%A094470(3*n+4)`
-/

namespace A015767.P11028854782716610758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077801 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094470 (3 * n + 4))

end

end A015767.P11028854782716610758

/-! ## A015767.P10305727083830833390

`∪[A020492(n+1), A077801(n+1)]%A094470(3*n+4)`
-/

namespace A015767.P10305727083830833390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077801 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094470 (3 * n + 4))

end

end A015767.P10305727083830833390

/-! ## A015767.P4786601385104551521

`∪[A052410(A015771(n+1)²), A077801(n+1)]`
-/

namespace A015767.P4786601385104551521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A015771 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015767.P4786601385104551521

/-! ## A015767.P2487769713845080787

`∪[A052410(A020492(n+1)²), A077801(n+1)]`
-/

namespace A015767.P2487769713845080787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A020492 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015767.P2487769713845080787

/-!
# A015768: Numbers k such that phi(k) | sigma_10(k).

The programs for A015768, there is no canonical definition to state claims against.
-/

/-! ## A015768.P8543941355030679872

`A015773(n+1)+A006925(A006925(n))`
-/

namespace A015768.P8543941355030679872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015773 (n + 1) + A006925 (A006925 n).toNat

end

end A015768.P8543941355030679872

/-! ## A015768.P8864813912407792236

`A331299(A015759(n+1))+A107246(n)`
-/

namespace A015768.P8864813912407792236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331299 (A015759 (n + 1)).toNat + A107246 n

end

end A015768.P8864813912407792236

/-! ## A015768.P2469592877016495056

`A018795(A018799(n+1))+A015773(n+1)`
-/

namespace A015768.P2469592877016495056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018795 (A018799 (n + 1)).toNat + A015773 (n + 1)

end

end A015768.P2469592877016495056

/-! ## A015768.P16619330102156823118

`A296894(A015759(n+1))%A130445(n+1)`
-/

namespace A015768.P16619330102156823118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296894 (A015759 (n + 1)).toNat) (A130445 (n + 1))

end

end A015768.P16619330102156823118

/-!
# A015769: Numbers k such that phi(k) | sigma_11(k).

The programs for A015769, there is no canonical definition to state claims against.
-/

/-! ## A015769.P10516528648998231764

`∪[A020492(n+1), A077803(n+1)]`
-/

namespace A015769.P10516528648998231764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015769.P10516528648998231764

/-! ## A015769.P15304754888364564223

`∪[A015771(n+1)%A034820(n), A077803(n+1)]`
-/

namespace A015769.P15304754888364564223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015771 (n + 1)) (A034820 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015769.P15304754888364564223

/-! ## A015769.P18071309502813884968

`∪[A015771(n+1), A077803(n+1)]%A015764(n+2)`
-/

namespace A015769.P18071309502813884968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077803 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A015764 (n + 2))

end

end A015769.P18071309502813884968

/-! ## A015769.P17688534555803701844

`∪[A015771(n+1), A077803(n+1)]%A034820(n)`
-/

namespace A015769.P17688534555803701844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077803 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A034820 n)

end

end A015769.P17688534555803701844

/-! ## A015769.P7590122370374465144

`A052410(∪[A015771(n+1), A077803(n+1)]²)`
-/

namespace A015769.P7590122370374465144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077803 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2)

end

end A015769.P7590122370374465144

/-!
# A015771: Numbers k such that phi(k) | sigma_13(k).

The programs for A015771, there is no canonical definition to state claims against.
-/

/-! ## A015771.P16049559336310433433

`∪[A020492(n+1), A078549(n+1)]`
-/

namespace A015771.P16049559336310433433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015771.P16049559336310433433

/-!
# A015772: Inverse of 1763rd cyclotomic polynomial.

The programs for A015772, there is no canonical definition to state claims against.
-/

/-! ## A015772.P984141491511580198

`A014908(round(sqrt(A306597(1+n))))`
-/

namespace A015772.P984141491511580198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014908 (SequenceMachineLib.roundAway (Real.sqrt (A306597 (1 + n) : ℝ))).toNat

end

end A015772.P984141491511580198

/-! ## A015772.P11122876134031130682

`A014908(A073719(n))`
-/

namespace A015772.P11122876134031130682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014908 (A073719 n).toNat

end

end A015772.P11122876134031130682

/-! ## A015772.P18377734049542970642

`A015526(A351290(1+n)-A227568(n))`
-/

namespace A015772.P18377734049542970642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 (A351290 (1 + n) - A227568 n).toNat

end

end A015772.P18377734049542970642

/-! ## A015772.P14070252126362133445

`A016030(lt[A308906(n), A016087(3*(n+1))])`
-/

namespace A015772.P14070252126362133445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016087 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015772.P14070252126362133445

/-! ## A015772.P14692241035911816252

`or(A015600(n), A015600(A152977(n)))`
-/

namespace A015772.P14692241035911816252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015600 n) (A015600 (A152977 n).toNat)

end

end A015772.P14692241035911816252

/-! ## A015772.P5840301615448719356

`1-∑[A365429(A115887(n+3)+1)]`
-/

namespace A015772.P5840301615448719356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365429 (A115887 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015772.P5840301615448719356

/-! ## A015772.P9762350058874615804

`A016030(lt[A326544(n), A193975(2*(n+2))])`
-/

namespace A015772.P9762350058874615804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193975 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015772.P9762350058874615804

/-! ## A015772.P6730247750159253518

`or(A015600(n), A340374(A331965(n+1)))`
-/

namespace A015772.P6730247750159253518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015600 n) (A340374 (A331965 (n + 1)).toNat)

end

end A015772.P6730247750159253518

/-! ## A015772.P7169342142981084396

`A016030(A167025(n))`
-/

namespace A015772.P7169342142981084396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (A167025 n).toNat

end

end A015772.P7169342142981084396

/-!
# A015773: Numbers k such that phi(k) | sigma_14(k).

The programs for A015773, there is no canonical definition to state claims against.
-/

/-! ## A015773.P4676793336069653698

`record[gcd(A000009(n), A295592(n+1))]`
-/

namespace A015773.P4676793336069653698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000009 n) (A295592 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015773.P4676793336069653698

/-! ## A015773.P12309909090004082926

`A015759(n+1)%A169757(A290890(n))`
-/

namespace A015773.P12309909090004082926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015759 (n + 1)) (A169757 (A290890 n).toNat)

end

end A015773.P12309909090004082926

/-! ## A015773.P4342181133592806820

`A015764(n+1)%A247640(A049915(n+1))`
-/

namespace A015773.P4342181133592806820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015764 (n + 1)) (A247640 (A049915 (n + 1)).toNat)

end

end A015773.P4342181133592806820

/-! ## A015773.P15819841436386698233

`A094470(n+1)%A360248(A173404(n+1))`
-/

namespace A015773.P15819841436386698233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094470 (n + 1)) (A360248 (A173404 (n + 1)).toNat)

end

end A015773.P15819841436386698233

/-!
# A015774: Numbers k such that phi(k) | sigma_15(k).

The programs for A015774, there is no canonical definition to state claims against.
-/

/-! ## A015774.P8613445357894521935

`∪[A074866(n+1)%A015770(n+5), A015761(n+1)]`
-/

namespace A015774.P8613445357894521935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074866 (n + 1)) (A015770 (n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015774.P8613445357894521935

/-! ## A015774.P10314455882579946721

`∪[A015761(n+1), A074866(n+1)]%A094470(3*n+4)`
-/

namespace A015774.P10314455882579946721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074866 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094470 (3 * n + 4))

end

end A015774.P10314455882579946721

/-! ## A015774.P11107413978851051985

`∪[A015765(n+1), A078550(n+1)]%A094470(3*n+4)`
-/

namespace A015774.P11107413978851051985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078550 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094470 (3 * n + 4))

end

end A015774.P11107413978851051985

/-! ## A015774.P13599039082785960427

`∪[A015771(n+1), A078550(n+1)]%A094470(3*n+4)`
-/

namespace A015774.P13599039082785960427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078550 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094470 (3 * n + 4))

end

end A015774.P13599039082785960427

/-! ## A015774.P5942558866104389796

`∪[A020492(n+1), A078550(n+1)]%A094470(3*n+4)`
-/

namespace A015774.P5942558866104389796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078550 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A094470 (3 * n + 4))

end

end A015774.P5942558866104389796

/-!
# A015775: Numbers j such that (phi(j) + 1) | sigma(j + 1), where phi is Euler's totient function A000010.

The programs for A015775, there is no canonical definition to state claims against.
-/

/-! ## A015775.P4873401049050607227

`A256439(n+1)-1`
-/

namespace A015775.P4873401049050607227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256439 (n + 1) - 1

end

end A015775.P4873401049050607227

/-! ## A015775.P2167449711946633330

`record[A256439(A065648(n))-1]`
-/

namespace A015775.P2167449711946633330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256439 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015775.P2167449711946633330

/-! ## A015775.P16962427715824174875

`A321804(∑{d}[n, #])+A256439(n+1)`
-/

namespace A015775.P16962427715824174875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (∑ d ∈ Nat.divisors (f1 n), d) + A256439 (n + 1)

end

end A015775.P16962427715824174875

/-! ## A015775.P7982225598190309497

`abs(A256439(n+1)+A057428(n+1))`
-/

namespace A015775.P7982225598190309497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256439 (n + 1) + A057428 (n + 1)|

end

end A015775.P7982225598190309497

/-! ## A015775.P18087784686261770738

`A321804(A000196(n))+A256439(n+1)`
-/

namespace A015775.P18087784686261770738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000196 n).toNat + A256439 (n + 1)

end

end A015775.P18087784686261770738

/-!
# A015776: Inverse of 1767th cyclotomic polynomial.

The programs for A015776, there is no canonical definition to state claims against.
-/

/-! ## A015776.P16235262991818035200

`A016118(∑[(A185255(n)+1)%(n+1)])`
-/

namespace A015776.P16235262991818035200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185255 n + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016118 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015776.P16235262991818035200

/-! ## A015776.P13721266477756464517

`A016118(n)%A322348(n)`
-/

namespace A015776.P13721266477756464517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016118 n) (A322348 n)

end

end A015776.P13721266477756464517

/-! ## A015776.P11695996676017286636

`A016272(n)^A011646(2*n)*A016118(n)`
-/

namespace A015776.P11695996676017286636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016272 n : ℚ) ^ (A011646 (2 * n) : ℤ) * (A016118 n : ℚ)

end

end A015776.P11695996676017286636

/-! ## A015776.P2967326826977059003

`A016118(n)^A015082(n)^A011646(2*n)`
-/

namespace A015776.P2967326826977059003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016118 n : ℝ) ^ ((A015082 n : ℚ) ^ (A011646 (2 * n) : ℤ) : ℝ)

end

end A015776.P2967326826977059003

/-! ## A015776.P6097397539841388235

`A016118(n)^A015546(n)^A011646(2*n)`
-/

namespace A015776.P6097397539841388235
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016118 n : ℝ) ^ ((A015546 n : ℚ) ^ (A011646 (2 * n) : ℤ) : ℝ)

end

end A015776.P6097397539841388235

/-!
# A015777: Inverse of 1768th cyclotomic polynomial.

The programs for A015777, there is no canonical definition to state claims against.
-/

/-! ## A015777.P14440894576962134979

`A014893(gcd(n, ∑[n]))`
-/

namespace A015777.P14440894576962134979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014893 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015777.P14440894576962134979

/-! ## A015777.P14956935958423715916

`A033999(A015727(n+5))²*A015985(n)`
-/

namespace A015777.P14956935958423715916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A015727 (n + 5)).toNat ^ 2 * A015985 n

end

end A015777.P14956935958423715916

/-! ## A015777.P1787988817685340391

`A015985(n)^gcd(7, A283657(n+1))`
-/

namespace A015777.P1787988817685340391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015985 n ^ Int.gcd 7 (A283657 (n + 1))

end

end A015777.P1787988817685340391

/-! ## A015777.P2182266201018915497

`A015985(n)^A283657(n+1)^A015989(n)`
-/

namespace A015777.P2182266201018915497
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A015985 n : ℝ) ^ ((A283657 (n + 1) : ℚ) ^ (A015989 n : ℤ) : ℝ)

end

end A015777.P2182266201018915497

/-! ## A015777.P13284264418188742411

`A283657(n+1)^A015985(n+2)*A015985(n)`
-/

namespace A015777.P13284264418188742411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283657 (n + 1) : ℚ) ^ (A015985 (n + 2) : ℤ) * (A015985 n : ℚ)

end

end A015777.P13284264418188742411

/-! ## A015777.P15866656376017621853

`A015985(n)+A016053(2*n+3)*A283657(n+1)`
-/

namespace A015777.P15866656376017621853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015985 n + A016053 (2 * n + 3) * A283657 (n + 1)

end

end A015777.P15866656376017621853

/-! ## A015777.P9954002697975993353

`A015985(n)+A010054(A015988(n))`
-/

namespace A015777.P9954002697975993353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015985 n + A010054 (A015988 n).toNat

end

end A015777.P9954002697975993353

/-! ## A015777.P10481192934184181356

`A015985(n)+A010054(A015990(n+1))`
-/

namespace A015777.P10481192934184181356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015985 n + A010054 (A015990 (n + 1)).toNat

end

end A015777.P10481192934184181356

/-! ## A015777.P2957740716298356338

`A015985(xor(n, n+1)*n)`
-/

namespace A015777.P2957740716298356338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015985 (Nat.xor n (n + 1) * n)

end

end A015777.P2957740716298356338

/-! ## A015777.P4397306755217196601

`A121373(A015988(n+1))+A015985(n)`
-/

namespace A015777.P4397306755217196601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A015988 (n + 1)).toNat + A015985 n

end

end A015777.P4397306755217196601

/-!
# A015778: Inverse of 1769th cyclotomic polynomial.

The programs for A015778, there is no canonical definition to state claims against.
-/

/-! ## A015778.P2314074050908931970

`A014262(A026405(n+1)%A197299(n+1))`
-/

namespace A015778.P2314074050908931970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014262 (Int.tmod (A026405 (n + 1)) (A197299 (n + 1))).toNat

end

end A015778.P2314074050908931970

/-! ## A015778.P14966509014000780052

`A016272(lt[A112762(n+1)², A143117(n+1)])`
-/

namespace A015778.P14966509014000780052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112762 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015778.P14966509014000780052

/-! ## A015778.P10032858942100469993

`A016272(lt[A152844(n), A143117(n+1)])`
-/

namespace A015778.P10032858942100469993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015778.P10032858942100469993

/-! ## A015778.P10127319930933997111

`A343190(A114886(3+n)-n)`
-/

namespace A015778.P10127319930933997111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343190 (A114886 (3 + n) - (n : ℤ)).toNat

end

end A015778.P10127319930933997111

/-! ## A015778.P10384569155018869872

`A016068(lt[col(n)-5, A334028(n)])`
-/

namespace A015778.P10384569155018869872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015778.P10384569155018869872

/-! ## A015778.P13596831619928941428

`A332251(floor((A196026(n+1)+8)/9))`
-/

namespace A015778.P13596831619928941428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332251 ⌊(A196026 (n + 1) + 8 : ℚ) / 9⌋.toNat

end

end A015778.P13596831619928941428

/-! ## A015778.P9604089752925957912

`A016272(A347457(n+1)-A015546(n))`
-/

namespace A015778.P9604089752925957912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 (A347457 (n + 1) - A015546 n).toNat

end

end A015778.P9604089752925957912

/-! ## A015778.P13730324061546974743

`A016068(lt[A322268(n)-(n²+1), A160411(n+1)])`
-/

namespace A015778.P13730324061546974743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322268 n - (n ^ 2 + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015778.P13730324061546974743

/-!
# A015779: Inverse of 1770th cyclotomic polynomial.

The programs for A015779, there is no canonical definition to state claims against.
-/

/-! ## A015779.P18036538339447458862

`A014894(n)*A033999(n)`
-/

namespace A015779.P18036538339447458862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014894 n * A033999 n

end

end A015779.P18036538339447458862

/-! ## A015779.P6899304862740739533

`A016019(lcm(n, A103205(n)))`
-/

namespace A015779.P6899304862740739533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016019 (Int.lcm (n : ℤ) (A103205 n))

end

end A015779.P6899304862740739533

/-! ## A015779.P6737670566446593196

`A016019(n)^(A300331(n+1)+n)`
-/

namespace A015779.P6737670566446593196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016019 n : ℚ) ^ (A300331 (n + 1) + (n : ℤ) : ℤ)

end

end A015779.P6737670566446593196

/-! ## A015779.P10400292425828519716

`A015546(∑[A144064(n)])*A016139(n)`
-/

namespace A015779.P10400292425828519716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015546 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A016139 n

end

end A015779.P10400292425828519716

/-! ## A015779.P11233714423631118475

`A015952(∑[A144064(n)])*A016139(n)`
-/

namespace A015779.P11233714423631118475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015952 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A016139 n

end

end A015779.P11233714423631118475

/-! ## A015779.P4932810059501310842

`A016016(A016006(n+1))*A016019(n)`
-/

namespace A015779.P4932810059501310842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A016006 (n + 1)).toNat * A016019 n

end

end A015779.P4932810059501310842

/-! ## A015779.P14351721429668353339

`A016016(A016007(n+1))*A016019(n)`
-/

namespace A015779.P14351721429668353339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A016007 (n + 1)).toNat * A016019 n

end

end A015779.P14351721429668353339

/-! ## A015779.P529628949622802550

`A014579(n)*A014594(A339170(n+1))`
-/

namespace A015779.P529628949622802550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014579 n * A014594 (A339170 (n + 1)).toNat

end

end A015779.P529628949622802550

/-! ## A015779.P18247327359475071246

`A014560(A350356(n+1))*A014579(n)`
-/

namespace A015779.P18247327359475071246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 (A350356 (n + 1)).toNat * A014579 n

end

end A015779.P18247327359475071246

/-! ## A015779.P13700534026374816918

`A015012(A386296(n+1))*A016019(n)`
-/

namespace A015779.P13700534026374816918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 (A386296 (n + 1)).toNat * A016019 n

end

end A015779.P13700534026374816918

/-!
# A015780: Inverse of 1771st cyclotomic polynomial.

The programs for A015780, there is no canonical definition to state claims against.
-/

/-! ## A015780.P14529831663912919352

`A011642(n)+Δ[A167965(A318037(n+1))]`
-/

namespace A015780.P14529831663912919352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A318037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 n + (f1 (n + 1) - f1 n)

end

end A015780.P14529831663912919352

/-! ## A015780.P17739528044320012454

`A011670(A229429(n))+A011642(n)`
-/

namespace A015780.P17739528044320012454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011670 (A229429 n).toNat + A011642 n

end

end A015780.P17739528044320012454

/-!
# A015784: Phi(n) + 5 | sigma(n + 5).

The programs for A015784, there is no canonical definition to state claims against.
-/

/-! ## A015784.P9075916883510471560

`∑[A000203(A035093(∑{d}[n+1, #]²))]`
-/

namespace A015784.P9075916883510471560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A035093 ((∑ d ∈ Nat.divisors (f2 n), d) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015784.P9075916883510471560

/-!
# A015790: Inverse of 1781st cyclotomic polynomial.

The programs for A015790, there is no canonical definition to state claims against.
-/

/-! ## A015790.P15820417825662730277

`C(2, A308979(n+1)²)`
-/

namespace A015790.P15820417825662730277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308979 (n + 1) ^ 2).toNat

end

end A015790.P15820417825662730277

/-! ## A015790.P2528486799721676623

`C(n+1, ∑[A215788(n+4)])`
-/

namespace A015790.P2528486799721676623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015790.P2528486799721676623

/-! ## A015790.P3154065215929170325

`C(n, comp[A290250(3*n+2)])`
-/

namespace A015790.P3154065215929170325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290250 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015790.P3154065215929170325

/-! ## A015790.P6429090776479369757

`C(n, comp[A320048(3*n+4)])`
-/

namespace A015790.P6429090776479369757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320048 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015790.P6429090776479369757

/-! ## A015790.P12057581227232446589

`round(sqrt(1/A027594(n)*(n+1)))`
-/

namespace A015790.P12057581227232446589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (1 / (A027594 n : ℚ) * (n + 1 : ℚ) : ℝ))

end

end A015790.P12057581227232446589

/-! ## A015790.P17211834729627023383

`A000007(floor(A053251(n)/7))`
-/

namespace A015790.P17211834729627023383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(A053251 n : ℚ) / 7⌋.toNat

end

end A015790.P17211834729627023383

/-! ## A015790.P5418421486590346429

`C(2, A309273(A003056(2*n+3)))`
-/

namespace A015790.P5418421486590346429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A309273 (A003056 (2 * n + 3)).toNat).toNat

end

end A015790.P5418421486590346429

/-! ## A015790.P4312715131544382486

`C(A122840(n+1), A308979(n+1))`
-/

namespace A015790.P4312715131544382486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122840 (n + 1)).toNat (A308979 (n + 1)).toNat

end

end A015790.P4312715131544382486

/-! ## A015790.P14359754365386191447

`A209229(∏[char[A050717(n+1)]+1]+1)`
-/

namespace A015790.P14359754365386191447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050717 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A015790.P14359754365386191447

/-! ## A015790.P14635043504512695135

`round(5/A001358(A000700(n+3)))`
-/

namespace A015790.P14635043504512695135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 / (A001358 (A000700 (n + 3)).toNat : ℚ))

end

end A015790.P14635043504512695135

/-! ## A015790.P17341564056432996482

`C(A325683(A320332(n)), A345166(n))`
-/

namespace A015790.P17341564056432996482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325683 (A320332 n).toNat).toNat (A345166 n).toNat

end

end A015790.P17341564056432996482

/-! ## A015790.P9225037477624916011

`C(A180501(A002262(n)), A224813(n))`
-/

namespace A015790.P9225037477624916011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A180501 (A002262 n).toNat).toNat (A224813 n).toNat

end

end A015790.P9225037477624916011

/-! ## A015790.P11598288639823280376

`C(A324288(A059268(n)), A345166(n))`
-/

namespace A015790.P11598288639823280376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A324288 (A059268 n).toNat).toNat (A345166 n).toNat

end

end A015790.P11598288639823280376

/-! ## A015790.P3633202114904111325

`C(A052419(n+1), record[A235487(n)])`
-/

namespace A015790.P3633202114904111325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052419 (n + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015790.P3633202114904111325

/-!
# A015793: Numbers n such that phi(n) + 4 divides sigma(n).

The programs for A015793, there is no canonical definition to state claims against.
-/

/-! ## A015793.P7128606725638560882

`eq[A040758(2*n), A366808(A320198(n))]`
-/

namespace A015793.P7128606725638560882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040758 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366808 (A320198 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015793.P7128606725638560882

/-! ## A015793.P4873523452704308365

`∑[A180593(A105633(n)+1)]`
-/

namespace A015793.P4873523452704308365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180593 (A105633 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015793.P4873523452704308365

/-! ## A015793.P11634189830445988110

`record[lcm(3, A096288(A000124(n)))]`
-/

namespace A015793.P11634189830445988110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A096288 (A000124 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015793.P11634189830445988110

/-! ## A015793.P10523815903254972703

`record[A007953(A062800(n+1))*3]`
-/

namespace A015793.P10523815903254972703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A062800 (n + 1)).toNat * 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015793.P10523815903254972703

/-! ## A015793.P10977227298325024634

`∩[A016051(n+1), A178096(n+1)]`
-/

namespace A015793.P10977227298325024634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015793.P10977227298325024634

/-!
# A015795: Inverse of 1786th cyclotomic polynomial.

The programs for A015795, there is no canonical definition to state claims against.
-/

/-! ## A015795.P5220338155273904843

`A014902(n)*A033999(n)`
-/

namespace A015795.P5220338155273904843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 n * A033999 n

end

end A015795.P5220338155273904843

/-! ## A015795.P17369307030291116166

`A014902(n)*A154341(A020639(3*(n+1)))`
-/

namespace A015795.P17369307030291116166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 n * A154341 (A020639 (3 * (n + 1))).toNat

end

end A015795.P17369307030291116166

/-!
# A015799: Numbers k such that phi(k) + 8 | sigma(k).

The programs for A015799, there is no canonical definition to state claims against.
-/

/-! ## A015799.P2674671570434759116

`A256482(n+4)-A000122(A006118(n))`
-/

namespace A015799.P2674671570434759116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 4) - A000122 (A006118 n).toNat

end

end A015799.P2674671570434759116

