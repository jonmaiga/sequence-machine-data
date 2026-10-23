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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A198002: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,3,1,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A198002, there is no canonical definition to state claims against.
-/

/-! ## A198002.P5327672627226791740

`or(A131529(A346658(n)), A237616(n))`
-/

namespace A198002.P5327672627226791740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131529 (A346658 n).toNat) (A237616 n)

end

end A198002.P5327672627226791740

/-!
# A198005: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,0,2,1,1,1,2 for x=0,1,2,3,4,5,6.

The programs for A198005, there is no canonical definition to state claims against.
-/

/-! ## A198005.P12688436644830521590

`A267187((n+2)*A145087(n))`
-/

namespace A198005.P12688436644830521590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267187 ((n + 2 : ℤ) * A145087 n).toNat

end

end A198005.P12688436644830521590

/-!
# A198007: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,1,2 for x=0,1,2,3,4.

The programs for A198007, there is no canonical definition to state claims against.
-/

/-! ## A198007.P17916621201644720166

`A198013(∑[4*n]+1)`
-/

namespace A198007.P17916621201644720166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198007.P17916621201644720166

/-! ## A198007.P13264797832127788911

`record[A198013(A152271(n²))]`
-/

namespace A198007.P13264797832127788911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198007.P13264797832127788911

/-! ## A198007.P4434835092692907189

`A198013(A001844(n))*A260340(n)`
-/

namespace A198007.P4434835092692907189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A001844 n).toNat * A260340 n

end

end A198007.P4434835092692907189

/-! ## A198007.P7373715745451116793

`A198013(A001844(n))^A040790(n)`
-/

namespace A198007.P7373715745451116793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198013 (A001844 n).toNat : ℚ) ^ (A040790 n : ℤ)

end

end A198007.P7373715745451116793

/-! ## A198007.P9986666505339039059

`A000108(C(n, 64))*A198013(A001844(n))`
-/

namespace A198007.P9986666505339039059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64) * A198013 (A001844 n).toNat

end

end A198007.P9986666505339039059

/-!
# A198008: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,2 for x=0,1,2,3,4.

The programs for A198008, there is no canonical definition to state claims against.
-/

/-! ## A198008.P6137218753853483657

`A198013(∑[n+2]+4)`
-/

namespace A198008.P6137218753853483657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198008.P6137218753853483657

/-! ## A198008.P11944784444716550559

`A015156(n)*A198013(A167614(n+1))`
-/

namespace A198008.P11944784444716550559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015156 n * A198013 (A167614 (n + 1)).toNat

end

end A198008.P11944784444716550559

/-! ## A198008.P10814006911607855196

`lcm(A140356(n), A198013(A167614(n+1)))`
-/

namespace A198008.P10814006911607855196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140356 n) (A198013 (A167614 (n + 1)).toNat)

end

end A198008.P10814006911607855196

/-! ## A198008.P14337186989661994460

`A198013(A167614(n+1))+A010894(n+1)`
-/

namespace A198008.P14337186989661994460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A167614 (n + 1)).toNat + A010894 (n + 1 + 21)

end

end A198008.P14337186989661994460

/-! ## A198008.P11146679050521393314

`A198013(A167614(n+1))%A002281(n+1)`
-/

namespace A198008.P11146679050521393314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198013 (A167614 (n + 1)).toNat) (A002281 (n + 1))

end

end A198008.P11146679050521393314

/-!
# A198009: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,2 for x=0,1,2,3,4.

The programs for A198009, there is no canonical definition to state claims against.
-/

/-! ## A198009.P10324606717571959611

`A198013(A374004(n+1))`
-/

namespace A198009.P10324606717571959611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A374004 (n + 1)).toNat

end

end A198009.P10324606717571959611

/-! ## A198009.P5563650681458492529

`A198013(A141214(n)+7)`
-/

namespace A198009.P5563650681458492529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A141214 n + 7).toNat

end

end A198009.P5563650681458492529

/-! ## A198009.P6713981435678813258

`A198013(A052905(n)+9)`
-/

namespace A198009.P6713981435678813258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A052905 n + 9).toNat

end

end A198009.P6713981435678813258

/-! ## A198009.P10864689689075077622

`A198013(A167614(n+2)+1)`
-/

namespace A198009.P10864689689075077622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A167614 (n + 2) + 1).toNat

end

end A198009.P10864689689075077622

/-! ## A198009.P8593832821977593056

`A198013(Δ[A264443(n)-n²])`
-/

namespace A198009.P8593832821977593056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (f1 (n + 1) - f1 n).toNat

end

end A198009.P8593832821977593056

/-!
# A198010: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,2 for x=0,1,2,3,4.

The programs for A198010, there is no canonical definition to state claims against.
-/

/-! ## A198010.P3171314358550045050

`A198013(A374005(n+1))`
-/

namespace A198010.P3171314358550045050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A374005 (n + 1)).toNat

end

end A198010.P3171314358550045050

/-! ## A198010.P16417774906438911934

`A198013(A167499(n+3))`
-/

namespace A198010.P16417774906438911934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A167499 (n + 3)).toNat

end

end A198010.P16417774906438911934

/-! ## A198010.P10872235012463413780

`A198013(A056000(n)+15)`
-/

namespace A198010.P10872235012463413780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A056000 n + 15).toNat

end

end A198010.P10872235012463413780

/-! ## A198010.P18228462054270017645

`A198013(A000217(n+4)+5)`
-/

namespace A198010.P18228462054270017645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A000217 (n + 4) + 5).toNat

end

end A198010.P18228462054270017645

/-! ## A198010.P14039230529684300501

`A198013(A052905(n+3)-record[A093178(n)])`
-/

namespace A198010.P14039230529684300501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A052905 (n + 3) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A198010.P14039230529684300501

/-!
# A198011: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,2 for x=0,1,2,3,4.

The programs for A198011, there is no canonical definition to state claims against.
-/

/-! ## A198011.P9865205355637606537

`A198013(A374007(n+1))`
-/

namespace A198011.P9865205355637606537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A374007 (n + 1)).toNat

end

end A198011.P9865205355637606537

/-! ## A198011.P4829408087183227826

`A198013(eq[7, A131818(n+1)])`
-/

namespace A198011.P4829408087183227826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198011.P4829408087183227826

/-! ## A198011.P10080359802692950299

`A198013(A056119(n)+16)`
-/

namespace A198011.P10080359802692950299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A056119 n + 16).toNat

end

end A198011.P10080359802692950299

/-! ## A198011.P13690230075249328171

`A198013(eq[6, A200370(n+1)])`
-/

namespace A198011.P13690230075249328171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198011.P13690230075249328171

/-! ## A198011.P11020111378964174543

`A198013(eq[8, A185782(n+1)])`
-/

namespace A198011.P11020111378964174543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198011.P11020111378964174543

/-!
# A198012: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,2 for x=0,1,2,3,4.

The programs for A198012, there is no canonical definition to state claims against.
-/

/-! ## A198012.P15491498843216831721

`A198013(A374008(n+1))`
-/

namespace A198012.P15491498843216831721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A374008 (n + 1)).toNat

end

end A198012.P15491498843216831721

/-! ## A198012.P1510020990409419930

`A198013(eq[8, A131818(n+1)])`
-/

namespace A198012.P1510020990409419930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198012.P1510020990409419930

/-! ## A198012.P7423021493006789898

`A198013(A055999(n+4))`
-/

namespace A198012.P7423021493006789898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (A055999 (n + 4)).toNat

end

end A198012.P7423021493006789898

/-! ## A198012.P3810937982493095463

`A198013(eq[6, A193592(n)])`
-/

namespace A198012.P3810937982493095463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198012.P3810937982493095463

/-! ## A198012.P945367869980141921

`A198013(eq[7, A200370(n+1)])`
-/

namespace A198012.P945367869980141921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198012.P945367869980141921

/-!
# A198013: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,1,2 for x=0,1,2,3,4.

The programs for A198013, there is no canonical definition to state claims against.
-/

/-! ## A198013.P2230518959327787535

`A197896(n+1)+A186034(A022167(n))`
-/

namespace A198013.P2230518959327787535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (n + 1) + A186034 (A022167 n).toNat

end

end A198013.P2230518959327787535

/-! ## A198013.P4201017266101118144

`A197896(n+1)+A037800(A176791(n))`
-/

namespace A198013.P4201017266101118144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (n + 1) + A037800 (A176791 n).toNat

end

end A198013.P4201017266101118144

/-! ## A198013.P3505498635754019603

`A197896(n+1)+A184159(A099594(n))`
-/

namespace A198013.P3505498635754019603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (n + 1) + A184159 (A099594 n).toNat

end

end A198013.P3505498635754019603

/-! ## A198013.P8985938584788428124

`A318950(A008459(n))+A197896(n+1)`
-/

namespace A198013.P8985938584788428124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (A008459 n).toNat + A197896 (n + 1)

end

end A198013.P8985938584788428124

/-! ## A198013.P8226483845347630668

`A197235(n+1)-A236109(A197235(n+1))`
-/

namespace A198013.P8226483845347630668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (n + 1) - A236109 (A197235 (n + 1)).toNat

end

end A198013.P8226483845347630668

/-!
# A198014: Number of isomorphism classes of nanocones with 3 pentagons and a nearsymmetric boundary of length n.

The programs for A198014, there is no canonical definition to state claims against.
-/

/-! ## A198014.P24477202774787488

`A008620(A114364(n+1))+gcd(n, ∑[n])`
-/

namespace A198014.P24477202774787488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A114364 (n + 1)).toNat + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A198014.P24477202774787488

/-! ## A198014.P6254212581855957415

`A026741(n)+A008620(A114364(n+1))`
-/

namespace A198014.P6254212581855957415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + A008620 (A114364 (n + 1)).toNat

end

end A198014.P6254212581855957415

/-! ## A198014.P14802175994023354622

`A291769(n+1)+record[(A004523(A006002(n))-A248034(n))*A016236(n)]`
-/

namespace A198014.P14802175994023354622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004523 (A006002 n).toNat - A248034 n) * A016236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198014.P14802175994023354622

/-! ## A198014.P14870446450968823703

`A348553(n+1)+record[(A004523(A006002(n))-A248034(n))*A016236(n)]`
-/

namespace A198014.P14870446450968823703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004523 (A006002 n).toNat - A248034 n) * A016236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198014.P14870446450968823703

/-! ## A198014.P11176898084027731364

`A219902(n+1)+2+n`
-/

namespace A198014.P11176898084027731364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219902 (n + 1) + 2 + (n : ℤ)

end

end A198014.P11176898084027731364

/-!
# A198015: Number of isomorphism classes of nanocones with 4 pentagons and a symmetric boundary of length n.

The programs for A198015, there is no canonical definition to state claims against.
-/

/-! ## A198015.P14722164441963378605

`A298538(A008205(n))`
-/

namespace A198015.P14722164441963378605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (A008205 n).toNat

end

end A198015.P14722164441963378605

/-! ## A198015.P8502657311391014264

`A298538(∑[∑[A143097(n+1)]])`
-/

namespace A198015.P8502657311391014264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198015.P8502657311391014264

/-!
# A198016: Number of isomorphism classes of nanocones with 4 pentagons and a nearsymmetric boundary of length n.

The programs for A198016, there is no canonical definition to state claims against.
-/

/-! ## A198016.P15888078145809188037

`A164996(A000984(n+1))+A141255(n+1)`
-/

namespace A198016.P15888078145809188037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164996 (A000984 (n + 1)).toNat + A141255 (n + 1)

end

end A198016.P15888078145809188037

/-! ## A198016.P10471375253243755650

`A333416(A023149(n+1))+A114043(n+1)`
-/

namespace A198016.P10471375253243755650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333416 (A023149 (n + 1)).toNat + A114043 (n + 1)

end

end A198016.P10471375253243755650

/-!
# A198017: a(n) = n*(7*n + 11)/2 + 1.

The programs for A198017, the canonical program `A198017.P9965256411261852462` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198017 has offset 0).

The definition of A198017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198017.P9965256411261852462

`n*(7*n+11)/2+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198017

/-- `n*(7*n+11)/2+1` -/
def P9965256411261852462.Spec : Prop :=
  ∀ n, P9965256411261852462.a n = (A198017 n : ℚ)

end A198017

/-! ## A198017.P9597814743392291086

`∑[a(n-1)+7]` with `a(0)=1, a(1)=9`
-/

namespace A198017.P9597814743392291086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198017.P9597814743392291086

namespace A198017

/-- `∑[a(n-1)+7]` -/
def P9597814743392291086.Spec : Prop :=
  ∀ n, (P9597814743392291086.a n : ℤ) = A198017 n

end A198017

/-! ## A198017.P17933438024110359383

`∑[ogf((1+7x-x^2)/(1-2x+x^2))]`
-/

namespace A198017.P17933438024110359383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198017.P17933438024110359383

namespace A198017

/-- `∑[ogf((1+7x-x^2)/(1-2x+x^2))]` -/
def P17933438024110359383.Spec : Prop :=
  ∀ n, P17933438024110359383.a n = A198017 n

end A198017

/-! ## A198017.P12367534308004216947

`ogf((1+7x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A198017.P12367534308004216947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -1] [1, -3, 3, -1] n

end

end A198017.P12367534308004216947

namespace A198017

/-- `ogf((1+7x-x^2)/(1-3x+3x^2-x^3))` -/
def P12367534308004216947.Spec : Prop :=
  ∀ n, P12367534308004216947.a n = A198017 n

end A198017

/-! ## A198017.P11235367890808243115

`∑[7*n+ceil(abs(sin(n)))+1]`
-/

namespace A198017.P11235367890808243115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) + (⌈|Real.sin (n : ℝ)|⌉ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198017.P11235367890808243115

namespace A198017

/-- `∑[7*n+ceil(abs(sin(n)))+1]` -/
def P11235367890808243115.Spec : Prop :=
  ∀ n, P11235367890808243115.a n = A198017 n

end A198017

/-! ## A198017.P3060869950671951015

`abs(a(n-1)+7*n+2)` with `a(0)=1`
-/

namespace A198017.P3060869950671951015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (7 * n + 2)

end

end A198017.P3060869950671951015

namespace A198017

/-- `abs(a(n-1)+7*n+2)` -/
def P3060869950671951015.Spec : Prop :=
  ∀ n, (P3060869950671951015.a n : ℤ) = A198017 n

end A198017

/-! ## A198017.P6408248938085100539

`floor(7*n+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A198017.P6408248938085100539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * n + (a (n - 1) + 2)

end

end A198017.P6408248938085100539

namespace A198017

/-- `floor(7*n+a(n-1)+2)` -/
def P6408248938085100539.Spec : Prop :=
  ∀ n, (P6408248938085100539.a n : ℤ) = A198017 n

end A198017

/-! ## A198017.P14276054207732509476

`ceil(a(n-1)+7*n+2)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A198017.P14276054207732509476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (7 * n + 2)

end

end A198017.P14276054207732509476

namespace A198017

/-- `ceil(a(n-1)+7*n+2)` -/
def P14276054207732509476.Spec : Prop :=
  ∀ n, (P14276054207732509476.a n : ℤ) = A198017 n

end A198017

/-! ## A198017.P13483471985618904287

`∑[7*n+floor(atan(n+1))+1]`
-/

namespace A198017.P13483471985618904287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) + (⌊Real.arctan (n + 1 : ℝ)⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198017.P13483471985618904287

namespace A198017

/-- `∑[7*n+floor(atan(n+1))+1]` -/
def P13483471985618904287.Spec : Prop :=
  ∀ n, P13483471985618904287.a n = A198017 n

end A198017

/-! ## A198017.P16340402947262441260

`abs(C(n, 2)-(2*n+1)²-n)`
-/

namespace A198017.P16340402947262441260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) - ((2 * n + 1) ^ 2 : ℤ) - (n : ℤ)|

end

end A198017.P16340402947262441260

namespace A198017

/-- `abs(C(n, 2)-(2*n+1)²-n)` -/
def P16340402947262441260.Spec : Prop :=
  ∀ n, P16340402947262441260.a n = A198017 n

end A198017

/-! ## A198017.P17424506021172270593

`Δ[C(n+3, 3)+(n+2)*(1-n)²]`
-/

namespace A198017.P17424506021172270593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) + (n + 2 : ℤ) * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198017.P17424506021172270593

namespace A198017

/-- `Δ[C(n+3, 3)+(n+2)*(1-n)²]` -/
def P17424506021172270593.Spec : Prop :=
  ∀ n, P17424506021172270593.a n = A198017 n

end A198017

/-! ## A198017.P1087613481137400804

`abs(n-a(n-1)-or(2, 4*2*n))` with `a(0)=1`
-/

namespace A198017.P1087613481137400804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(n : ℤ) - a (n - 1) - (Nat.lor 2 (4 * (2 * n)) : ℤ)|

end

end A198017.P1087613481137400804

namespace A198017

/-- `abs(n-a(n-1)-or(2, 4*2*n))` -/
def P1087613481137400804.Spec : Prop :=
  ∀ n, P1087613481137400804.a n = A198017 n

end A198017

/-! ## A198017.P11889624596234389738

`∑[A281813(n)-(n+2)]`
-/

namespace A198017.P11889624596234389738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198017.P11889624596234389738

namespace A198017

/-- `∑[A281813(n)-(n+2)]` -/
def P11889624596234389738.Spec : Prop :=
  ∀ n, P11889624596234389738.a n = A198017 n

end A198017

/-! ## A198017.P1951223467787880999

`∑[A103517(n)+5*n]`
-/

namespace A198017.P1951223467787880999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198017.P1951223467787880999

namespace A198017

/-- `∑[A103517(n)+5*n]` -/
def P1951223467787880999.Spec : Prop :=
  ∀ n, P1951223467787880999.a n = A198017 n

end A198017

/-! ## A198017.P2551773672032456984

`abs(1-∑[A017017(n)-1])`
-/

namespace A198017.P2551773672032456984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A198017.P2551773672032456984

namespace A198017

/-- `abs(1-∑[A017017(n)-1])` -/
def P2551773672032456984.Spec : Prop :=
  ∀ n, P2551773672032456984.a n = A198017 n

end A198017

/-! ## A198017.P4866695916698057193

`∑[A057427(n)+7*n+1]`
-/

namespace A198017.P4866695916698057193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (7 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198017.P4866695916698057193

namespace A198017

/-- `∑[A057427(n)+7*n+1]` -/
def P4866695916698057193.Spec : Prop :=
  ∀ n, P4866695916698057193.a n = A198017 n

end A198017

/-! ## A198017.P15943083115085611319

`abs(∑[n-(1-A016945(n))]-1)`
-/

namespace A198017.P15943083115085611319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - A016945 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A198017.P15943083115085611319

namespace A198017

/-- `abs(∑[n-(1-A016945(n))]-1)` -/
def P15943083115085611319.Spec : Prop :=
  ∀ n, P15943083115085611319.a n = A198017 n

end A198017

/-! ## A198017.P13456678993155249512

`A108928(n+1)%A283394(n)`
-/

namespace A198017.P13456678993155249512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108928 (n + 1)) (A283394 n)

end

end A198017.P13456678993155249512

namespace A198017

/-- `A108928(n+1)%A283394(n)` -/
def P13456678993155249512.Spec : Prop :=
  ∀ n, P13456678993155249512.a n = A198017 n

end A198017

/-! ## A198017.P5081181519986282757

`A158491(n+1)%A026817(n+1)`
-/

namespace A198017.P5081181519986282757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158491 (n + 1)) (A026817 (n + 1))

end

end A198017.P5081181519986282757

namespace A198017

/-- `A158491(n+1)%A026817(n+1)` -/
def P5081181519986282757.Spec : Prop :=
  ∀ n, P5081181519986282757.a n = A198017 n

end A198017

/-!
# A198018: Yet unseen primes occurring within the first 1,2,3,4,... digits of Pi, A000796 (ordered according to position of last, then initial digit).

The programs for A198018, there is no canonical definition to state claims against.
-/

/-! ## A198018.P17904414862848623578

`p?[A322777(n+1)+char[18]]`
-/

namespace A198018.P17904414862848623578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322777 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A198018.P17904414862848623578

/-! ## A198018.P15797239030608618148

`p?[A322777(∑[A047996(n)])]`
-/

namespace A198018.P15797239030608618148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322777 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A198018.P15797239030608618148

/-! ## A198018.P17496207114085014315

`p?[A322777(∑[A133687(n)])]`
-/

namespace A198018.P17496207114085014315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322777 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A198018.P17496207114085014315

/-!
# A198019: Primes occurring in the decimal expansion of Pi (A000796), ordered by position of last digit, then by size.

The programs for A198019, there is no canonical definition to state claims against.
-/

/-! ## A198019.P5437260158322535279

`A198187(A342951(n+1))`
-/

namespace A198019.P5437260158322535279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198187 (A342951 (n + 1)).toNat

end

end A198019.P5437260158322535279

/-! ## A198019.P8686133961836514919

`or(A113240(A000429(n+1)), A198187(n+1))`
-/

namespace A198019.P8686133961836514919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113240 (A000429 (n + 1)).toNat) (A198187 (n + 1))

end

end A198019.P8686133961836514919

/-! ## A198019.P12031076277851985581

`A198187(A024653(n+1))`
-/

namespace A198019.P12031076277851985581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198187 (A024653 (n + 1)).toNat

end

end A198019.P12031076277851985581

/-! ## A198019.P7101281233108054863

`A198187(A024654(n+1))`
-/

namespace A198019.P7101281233108054863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198187 (A024654 (n + 1)).toNat

end

end A198019.P7101281233108054863

/-!
# A198023: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,0,2,2,0,0 for x=0,1,2,3,4,5,6.

The programs for A198023, there is no canonical definition to state claims against.
-/

/-! ## A198023.P12967861454774774048

`A057503(A348702(n+4)+A007778(n))`
-/

namespace A198023.P12967861454774774048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 (A348702 (n + 4) + A007778 n).toNat

end

end A198023.P12967861454774774048

/-!
# A198024: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,6,1,0,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A198024, there is no canonical definition to state claims against.
-/

/-! ## A198024.P4822780815544728199

`A093886(ceil(exp(n-1)))`
-/

namespace A198024.P4822780815544728199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093886 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A198024.P4822780815544728199

/-!
# A198025: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,0,1,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A198025, there is no canonical definition to state claims against.
-/

/-! ## A198025.P11595551624137641150

`∑[3^a(n-1)+1]` with `a(0)=1, a(1)=3, a(2)=0, a(3)=5`
-/

namespace A198025.P11595551624137641150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0, 5] fun n f1 =>
  3 ^ f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198025.P11595551624137641150

/-!
# A198026: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,2,0,2,2,1 for x=0,1,2,3,4,5,6.

The programs for A198026, there is no canonical definition to state claims against.
-/

/-! ## A198026.P7687416407931045627

`A235992(A038062(n))+A070557(n)`
-/

namespace A198026.P7687416407931045627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (A038062 n).toNat + A070557 n

end

end A198026.P7687416407931045627

/-!
# A198027: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,2,1,0,0,2 for x=0,1,2,3,4,5,6.

The programs for A198027, there is no canonical definition to state claims against.
-/

/-! ## A198027.P13191200609690189575

`A329839(A256750(n)+A232468(n))`
-/

namespace A198027.P13191200609690189575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329839 (A256750 n + A232468 n).toNat

end

end A198027.P13191200609690189575

/-!
# A198028: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,1,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A198028, there is no canonical definition to state claims against.
-/

/-! ## A198028.P11022461588380518068

`A357185(a(n-1))` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A198028.P11022461588380518068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A357185 (a (n - 1)).toNat

end

end A198028.P11022461588380518068

/-!
# A198031: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,0,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A198031, there is no canonical definition to state claims against.
-/

/-! ## A198031.P1738505622152696393

`or(A060737(A060744(n+1)), A060765(3*n+1))`
-/

namespace A198031.P1738505622152696393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060737 (A060744 (n + 1)).toNat) (A060765 (3 * n + 1))

end

end A198031.P1738505622152696393

/-!
# A198032: Numbers m such that the number of distinct residues of the congruence x^m (mod 2m+1) equals 2m+1, x=0..2m.

The programs for A198032, there is no canonical definition to state claims against.
-/

/-! ## A198032.P16534101278033593241

`lt[2*n, A198020(n)]`
-/

namespace A198032.P16534101278033593241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A198032.P16534101278033593241

/-! ## A198032.P9633337206903054735

`eq[A005408(n), A198020(n)]`
-/

namespace A198032.P9633337206903054735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198032.P9633337206903054735

/-! ## A198032.P355935801552536355

`eq[A198020(n), A266437(n)]`
-/

namespace A198032.P355935801552536355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198032.P355935801552536355

/-! ## A198032.P8685436104378755217

`eq[A047544(n+1), A198020(n)]`
-/

namespace A198032.P8685436104378755217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198032.P8685436104378755217

/-! ## A198032.P1515397960314088490

`eq[A047558(n+1), A198020(n)]`
-/

namespace A198032.P1515397960314088490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198032.P1515397960314088490

/-! ## A198032.P6730486599821833952

`eq[A099984(n+1), A198020(n)]`
-/

namespace A198032.P6730486599821833952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198032.P6730486599821833952

/-! ## A198032.P333354952045807381

`eq[A153285(n+1), A198020(n)]`
-/

namespace A198032.P333354952045807381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198032.P333354952045807381

/-! ## A198032.P1427566220921098895

`eq[A178414(n+1), A198020(n)]`
-/

namespace A198032.P1427566220921098895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198032.P1427566220921098895

/-! ## A198032.P10195008035705064326

`eq[A198020(n), A299231(n+1)]`
-/

namespace A198032.P10195008035705064326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198032.P10195008035705064326

/-! ## A198032.P10854795969292021214

`lt[A198033(n), A198020(n)+1]`
-/

namespace A198032.P10854795969292021214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A198032.P10854795969292021214

/-! ## A198032.P38030659010330361

`A198033(lt[A198033(n), A198020(n)])/2`
-/

namespace A198032.P38030659010330361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198033 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 2

end

end A198032.P38030659010330361

/-! ## A198032.P13364129482051902323

`eq[A198020(n), A215457(n+1)]`
-/

namespace A198032.P13364129482051902323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198032.P13364129482051902323

/-!
# A198034: Positions of records in A066674.

The programs for A198034, there is no canonical definition to state claims against.
-/

/-! ## A198034.P3919746987478052208

`A061395(A125879(n+1)-1)`
-/

namespace A198034.P3919746987478052208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A125879 (n + 1) - 1).toNat

end

end A198034.P3919746987478052208

/-! ## A198034.P13286287715158914896

`A061395(xor(1, A125879(n+1)))`
-/

namespace A198034.P13286287715158914896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.xor 1 (A125879 (n + 1))).toNat

end

end A198034.P13286287715158914896

/-! ## A198034.P3330482107052933690

`A061395(record[A035095(n+1)-1])`
-/

namespace A198034.P3330482107052933690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035095 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A198034.P3330482107052933690

/-! ## A198034.P15767573288174428736

`A061395(record[xor(1, A035095(n+1))])`
-/

namespace A198034.P15767573288174428736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A035095 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A198034.P15767573288174428736

/-! ## A198034.P6913126743081874634

`A061395(record[A000040(n+1)*A035096(n+1)])`
-/

namespace A198034.P6913126743081874634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A035096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A198034.P6913126743081874634

/-!
# A198035: Numbers n such that n^2 is a concatenation of two nonzero squares with no trailing zeros in n.

The programs for A198035, there is no canonical definition to state claims against.
-/

/-! ## A198035.P6535559364178607321

`∩[A048375(n+1), A367733(n+1)]`
-/

namespace A198035.P6535559364178607321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198035.P6535559364178607321

/-! ## A198035.P3535974040598314306

`sqrt(∩[A009404(n+1), A039686(n+1)])`
-/

namespace A198035.P3535974040598314306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039686 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A198035.P3535974040598314306

/-! ## A198035.P10783273188717180077

`∩[A048375(n+1), A067251(n+1)]`
-/

namespace A198035.P10783273188717180077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198035.P10783273188717180077

/-! ## A198035.P804659419428371935

`∩[A048375(n+1), A342851(n+1)]`
-/

namespace A198035.P804659419428371935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198035.P804659419428371935

/-!
# A198037: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,1,2,1,1,0,2 for x=0,1,2,3,4,5,6.

The programs for A198037, there is no canonical definition to state claims against.
-/

/-! ## A198037.P14600382751912235792

`xor(A203213(n+1), A326249(A059346(2*(n+2))))`
-/

namespace A198037.P14600382751912235792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A203213 (n + 1)) (A326249 (A059346 (2 * (n + 2))).toNat)

end

end A198037.P14600382751912235792

/-!
# A198039: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,2,1,1,1,2 for x=0,1,2,3,4,5,6.

The programs for A198039, there is no canonical definition to state claims against.
-/

/-! ## A198039.P4059998890676142039

`Δ[A325515(A326020(n+2))]`
-/

namespace A198039.P4059998890676142039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325515 (A326020 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198039.P4059998890676142039

/-!
# A198040: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,5,1,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A198040, there is no canonical definition to state claims against.
-/

/-! ## A198040.P9806732704556906495

`filter[A283255(n), A086747(#)]`
-/

namespace A198040.P9806732704556906495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A198040.P9806732704556906495

/-! ## A198040.P8848253983406401590

`abs(A062967(∑[A102692(n)]))`
-/

namespace A198040.P8848253983406401590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062967 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A198040.P8848253983406401590

/-!
# A198041: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,2,0,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A198041, there is no canonical definition to state claims against.
-/

/-! ## A198041.P12337317194144453160

`A203214(n+1)+A008651(A203225(n+1))`
-/

namespace A198041.P12337317194144453160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203214 (n + 1) + A008651 (A203225 (n + 1)).toNat

end

end A198041.P12337317194144453160

/-!
# A198042: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,2,0,0,1,2 for x=0,1,2,3,4,5,6.

The programs for A198042, there is no canonical definition to state claims against.
-/

/-! ## A198042.P15652651716166126040

`A192983(n+1)+A007949(A002432(n))`
-/

namespace A198042.P15652651716166126040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192983 (n + 1) + A007949 (A002432 n).toNat

end

end A198042.P15652651716166126040

/-!
# A198043: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,3,2,1,1,0,2 for x=0,1,2,3,4,5,6.

The programs for A198043, there is no canonical definition to state claims against.
-/

/-! ## A198043.P11335357921264907303

`A233276(n)+A233276(A274657(n))`
-/

namespace A198043.P11335357921264907303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 n + A233276 (A274657 n).toNat

end

end A198043.P11335357921264907303

/-!
# A198046: Exponential transform of A053549.

The programs for A198046, there is no canonical definition to state claims against.
-/

/-! ## A198046.P5023644161126859310

`A004525(A116432(n²))`
-/

namespace A198046.P5023644161126859310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A116432 (n ^ 2)).toNat

end

end A198046.P5023644161126859310

/-! ## A198046.P4358966342976163634

`or(A126444(n), A329644(A063401(n)))`
-/

namespace A198046.P4358966342976163634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126444 n) (A329644 (A063401 n).toNat)

end

end A198046.P4358966342976163634

/-!
# A198049: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,5,2,2,0,2,0 for x=0,1,2,3,4,5,6.

The programs for A198049, there is no canonical definition to state claims against.
-/

/-! ## A198049.P4460424236342055755

`∑[A128556((2*n+1)*lcm(n, a(n-1))/n)]` with `a(0)=1, a(1)=1`
-/

namespace A198049.P4460424236342055755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A128556 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) * ((Int.lcm (n : ℤ) (f1 (n - 1)) : ℚ) / (n : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198049.P4460424236342055755

/-!
# A198050: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,3,0,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A198050, there is no canonical definition to state claims against.
-/

/-! ## A198050.P10932687728109681892

`A327231(n)+A064413(A327231(n+2))`
-/

namespace A198050.P10932687728109681892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327231 n + A064413 (A327231 (n + 2)).toNat

end

end A198050.P10932687728109681892

/-!
# A198051: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,0,0,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A198051, there is no canonical definition to state claims against.
-/

/-! ## A198051.P5119756539117394681

`A238896(A081698(n))+1`
-/

namespace A198051.P5119756539117394681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238896 (A081698 n).toNat + 1

end

end A198051.P5119756539117394681

/-!
# A198053: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,2,1,1,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A198053, there is no canonical definition to state claims against.
-/

/-! ## A198053.P18302491631275670712

`A275721(A217757(n))-A321653(n)`
-/

namespace A198053.P18302491631275670712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275721 (A217757 n).toNat - A321653 n

end

end A198053.P18302491631275670712

/-!
# A198055: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,0,1,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A198055, there is no canonical definition to state claims against.
-/

/-! ## A198055.P3822106485780470351

`A297330(A036217(n))+A158833(n+1)`
-/

namespace A198055.P3822106485780470351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A036217 n).toNat + A158833 (n + 1)

end

end A198055.P3822106485780470351

/-!
# A198056: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,5,0,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A198056, there is no canonical definition to state claims against.
-/

/-! ## A198056.P930537125556810497

`A061395(round(cosh(A151497(n))))`
-/

namespace A198056.P930537125556810497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (Real.cosh (A151497 n : ℝ))).toNat

end

end A198056.P930537125556810497

/-! ## A198056.P570334778070042792

`A341450(A285003(n+1)+3)`
-/

namespace A198056.P570334778070042792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 (A285003 (n + 1) + 3).toNat

end

end A198056.P570334778070042792

/-! ## A198056.P8486380306056651501

`A344612(A133111(n+1)+n)`
-/

namespace A198056.P8486380306056651501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A133111 (n + 1) + (n : ℤ)).toNat

end

end A198056.P8486380306056651501

/-!
# A198057: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,6,0,2,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A198057, there is no canonical definition to state claims against.
-/

/-! ## A198057.P8726349949143649035

`∑[A064800(A132186(n))]`
-/

namespace A198057.P8726349949143649035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (A132186 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198057.P8726349949143649035

/-!
# A198059: a(n) = Sum_{k=1..n} binomial(2*k, n-k)^2 * n/k.

The programs for A198059, there is no canonical definition to state claims against.
-/

/-! ## A198059.P354126322293837624

`A156077(A006370(n)+A000045(3*n+4))`
-/

namespace A198059.P354126322293837624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A006370 n + A000045 (3 * n + 4)).toNat

end

end A198059.P354126322293837624

/-!
# A198060: Array read by antidiagonals, m>=0, n>=0, A(m,n) = Sum_{k=0..n} Sum_{j=0..m} Sum_{i=0..m} (-1)^(j+i)*C(i,j)*C(n,k)^(m+1)*(n+1)^j*(k+1)^(-j).

The programs for A198060, there is no canonical definition to state claims against.
-/

/-! ## A198060.P5120319777240778233

`A353303(A035470(n+4))+A244832(n+1)-A193862(n)`
-/

namespace A198060.P5120319777240778233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A035470 (n + 4)).toNat + A244832 (n + 1) - A193862 n

end

end A198060.P5120319777240778233

/-! ## A198060.P6782232611612170548

`A250351(A187829(n+1))-A193862(n)`
-/

namespace A198060.P6782232611612170548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A187829 (n + 1)).toNat - A193862 n

end

end A198060.P6782232611612170548

/-! ## A198060.P12392715332825777633

`A250351(A077168(n))-A193862(n)`
-/

namespace A198060.P12392715332825777633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250351 (A077168 n).toNat - A193862 n

end

end A198060.P12392715332825777633

/-! ## A198060.P10403229180356825158

`A244832(n+1)+A025465(A077168(n))-A193862(n)`
-/

namespace A198060.P10403229180356825158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (n + 1) + (A025465 (A077168 n).toNat - A193862 n)

end

end A198060.P10403229180356825158

/-! ## A198060.P16013266372632938417

`A244832(n+1)+A025465(A099962(n))-A193862(n)`
-/

namespace A198060.P16013266372632938417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244832 (n + 1) + (A025465 (A099962 n).toNat - A193862 n)

end

end A198060.P16013266372632938417

/-!
# A198061: Array read by antidiagonals, m>=0, n>=0, A(m,n) = sum{k=0..n} sum{j=0..m} sum{i=0..m} (-1)^(j+i)*C(i,j)*n^j*k^(m-j).

The programs for A198061, there is no canonical definition to state claims against.
-/

/-! ## A198061.P15453860353846974450

`A343723(A299504(n))+A127954(n+1)`
-/

namespace A198061.P15453860353846974450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343723 (A299504 n).toNat + A127954 (n + 1)

end

end A198061.P15453860353846974450

/-! ## A198061.P3669879467467573524

`A127954(n+1)+A018843(A155864(n))`
-/

namespace A198061.P3669879467467573524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127954 (n + 1) + A018843 (A155864 n).toNat

end

end A198061.P3669879467467573524

/-! ## A198061.P610289474693902580

`A265583(n+1)+A016389(A022166(n))`
-/

namespace A198061.P610289474693902580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265583 (n + 1) + A016389 (A022166 n).toNat

end

end A198061.P610289474693902580

/-! ## A198061.P3291833603765531510

`A265583(n+1)+A056594(A157149(n))`
-/

namespace A198061.P3291833603765531510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265583 (n + 1) + A056594 (A157149 n).toNat

end

end A198061.P3291833603765531510

/-! ## A198061.P10985345083415427660

`A339166(A331278(n))+A127954(n+1)`
-/

namespace A198061.P10985345083415427660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 (A331278 n).toNat + A127954 (n + 1)

end

end A198061.P10985345083415427660

/-!
# A198062: Array read by antidiagonals, m>=0, n>=0, k>=0, A(m, n, k) = sum{j=0..m} sum{i=0..m} (-1)^(j+i)*C(i,j)*n^j*k^(m-j).

The programs for A198062, there is no canonical definition to state claims against.
-/

/-! ## A198062.P1219556458571862266

`gcd(A033045(A281891(n)), A091480(n+1))`
-/

namespace A198062.P1219556458571862266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033045 (A281891 n).toNat) (A091480 (n + 1))

end

end A198062.P1219556458571862266

/-! ## A198062.P511471840109442824

`A372543(A103631(n)%A127399(n+2))`
-/

namespace A198062.P511471840109442824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372543 (Int.tmod (A103631 n) (A127399 (n + 2))).toNat

end

end A198062.P511471840109442824

/-! ## A198062.P3224821462625549960

`A029907(A103631(n))%A341126(2*n+11)`
-/

namespace A198062.P3224821462625549960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029907 (A103631 n).toNat) (A341126 (2 * n + 11))

end

end A198062.P3224821462625549960

/-! ## A198062.P17763479181002119876

`A029907(A103631(n))^A014963(A036695(n+1))`
-/

namespace A198062.P17763479181002119876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029907 (A103631 n).toNat : ℚ) ^ (A014963 (A036695 (n + 1)).toNat : ℤ)

end

end A198062.P17763479181002119876

/-! ## A198062.P10091620166065782216

`A007400(A133607(n)^A002322(2*(n+2)))`
-/

namespace A198062.P10091620166065782216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (SequenceMachineLib.roundAway ((A133607 n : ℚ) ^ (A002322 (2 * (n + 2)) : ℤ))).toNat

end

end A198062.P10091620166065782216

/-!
# A198063: Triangle read by rows (n >= 0, 0 <= k <= n, m = 3); T(n,k) = Sum{j=0..m} Sum{i=0..m} (-1)^(j+i)*C(i,j)*n^j*k^(m-j).

The programs for A198063, the canonical program `A198063.P43002539216638676` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198063 has offset 0).

The definition of A198063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198063.P43002539216638676

`A003056(n)*A048147(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A198063

/-- `A003056(n)*A048147(n)` -/
def P43002539216638676.Spec : Prop :=
  ∀ n, P43002539216638676.a n = A198063 n

theorem P43002539216638676.correct : P43002539216638676.Spec := by
  intro n
  simp only [A198063]

end A198063

/-! ## A198063.P14914551452194289791

`(n-A083920(n))*A048147(n)`
-/

namespace A198063.P14914551452194289791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A083920 n) * A048147 n

end

end A198063.P14914551452194289791

namespace A198063

/-- `(n-A083920(n))*A048147(n)` -/
def P14914551452194289791.Spec : Prop :=
  ∀ n, P14914551452194289791.a n = A198063 n

end A198063

/-! ## A198063.P16037528616804316056

`A003056(n)*A163531(A163334(n))`
-/

namespace A198063.P16037528616804316056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A163531 (A163334 n).toNat

end

end A198063.P16037528616804316056

namespace A198063

/-- `A003056(n)*A163531(A163334(n))` -/
def P16037528616804316056.Spec : Prop :=
  ∀ n, P16037528616804316056.a n = A198063 n

end A198063

/-! ## A198063.P14393962631272001373

`A003056(n)*A163547(A163357(n))`
-/

namespace A198063.P14393962631272001373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A163547 (A163357 n).toNat

end

end A198063.P14393962631272001373

namespace A198063

/-- `A003056(n)*A163547(A163357(n))` -/
def P14393962631272001373.Spec : Prop :=
  ∀ n, P14393962631272001373.a n = A198063 n

end A198063

/-! ## A198063.P11219271544727103556

`A003056(n)*A163547(A163359(n))`
-/

namespace A198063.P11219271544727103556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A163547 (A163359 n).toNat

end

end A198063.P11219271544727103556

namespace A198063

/-- `A003056(n)*A163547(A163359(n))` -/
def P11219271544727103556.Spec : Prop :=
  ∀ n, P11219271544727103556.a n = A198063 n

end A198063

/-! ## A198063.P5937731227631619384

`(A349039(n)+A004247(n))*A003056(n)`
-/

namespace A198063.P5937731227631619384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349039 n + A004247 n) * A003056 n

end

end A198063.P5937731227631619384

namespace A198063

/-- `(A349039(n)+A004247(n))*A003056(n)` -/
def P5937731227631619384.Spec : Prop :=
  ∀ n, P5937731227631619384.a n = A198063 n

end A198063

/-! ## A198063.P17572755680901445417

`(A073254(n)-A004247(n))*A003056(n)`
-/

namespace A198063.P17572755680901445417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073254 n - A004247 n) * A003056 n

end

end A198063.P17572755680901445417

namespace A198063

/-- `(A073254(n)-A004247(n))*A003056(n)` -/
def P17572755680901445417.Spec : Prop :=
  ∀ n, P17572755680901445417.a n = A198063 n

end A198063

/-! ## A198063.P8402235094590306931

`A163530(A163334(n))*A163547(A163357(n))`
-/

namespace A198063.P8402235094590306931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 (A163334 n).toNat * A163547 (A163357 n).toNat

end

end A198063.P8402235094590306931

namespace A198063

/-- `A163530(A163334(n))*A163547(A163357(n))` -/
def P8402235094590306931.Spec : Prop :=
  ∀ n, P8402235094590306931.a n = A198063 n

end A198063

/-! ## A198063.P6630698524566049383

`A003056(n)*A163531(A163336(n))`
-/

namespace A198063.P6630698524566049383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A163531 (A163336 n).toNat

end

end A198063.P6630698524566049383

namespace A198063

/-- `A003056(n)*A163531(A163336(n))` -/
def P6630698524566049383.Spec : Prop :=
  ∀ n, P6630698524566049383.a n = A198063 n

end A198063

/-! ## A198063.P1964068536054244404

`A003056(n)*A289506(A146985(n))`
-/

namespace A198063.P1964068536054244404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A289506 (A146985 n).toNat

end

end A198063.P1964068536054244404

namespace A198063

/-- `A003056(n)*A289506(A146985(n))` -/
def P1964068536054244404.Spec : Prop :=
  ∀ n, P1964068536054244404.a n = A198063 n

end A198063

/-!
# A198064: Triangle read by rows (n >= 0, 0 <= k <= n, m = 4); T(n,k) = Sum{j=0..m} Sum{i=0..m} (-1)^(j+i)*C(i,j)*n^j*k^(m-j).

The programs for A198064, there is no canonical definition to state claims against.
-/

/-! ## A198064.P3686598701705659520

`A048147(n)²+A004247(n)*A349039(n)`
-/

namespace A198064.P3686598701705659520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n ^ 2 + A004247 n * A349039 n

end

end A198064.P3686598701705659520

/-! ## A198064.P13880948469372066401

`A048147(n)*A073254(n)-A004247(n)²`
-/

namespace A198064.P13880948469372066401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n * A073254 n - A004247 n ^ 2

end

end A198064.P13880948469372066401

/-! ## A198064.P3737395760333197188

`A004247(n)*A048147(n)+A073254(n)*A349039(n)`
-/

namespace A198064.P3737395760333197188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A048147 n + A073254 n * A349039 n

end

end A198064.P3737395760333197188

/-! ## A198064.P18098326817398177516

`A198062(A056115(n)+10)`
-/

namespace A198064.P18098326817398177516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198062 (A056115 n + 10).toNat

end

end A198064.P18098326817398177516

/-! ## A198064.P13544111345136460113

`A198062(eq[9, A099375(n)])`
-/

namespace A198064.P13544111345136460113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198064.P13544111345136460113

/-!
# A198065: Triangle read by rows (n >= 0, 0 <= k <= n, m = 5); T(n,k) = Sum{j=0..m} Sum{i=0..m} (-1)^(j+i)*C(i,j)*n^j*k^(m-j).

The programs for A198065, there is no canonical definition to state claims against.
-/

/-! ## A198065.P6808730894956689325

`A003056(n)*A073254(n)*A349039(n)`
-/

namespace A198065.P6808730894956689325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A073254 n * A349039 n

end

end A198065.P6808730894956689325

/-! ## A198065.P16623588296374252637

`A073254(n)*A349039(n)*∑[A073424(n)]`
-/

namespace A198065.P16623588296374252637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n * A349039 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198065.P16623588296374252637

/-! ## A198065.P140085772376710501

`(A002024(n+1)-1)*A073254(n)*A349039(n)`
-/

namespace A198065.P140085772376710501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - 1) * (A073254 n * A349039 n)

end

end A198065.P140085772376710501

/-! ## A198065.P1328457666818379791

`A114327(A057944(n))*A349039(n)*A073254(n)`
-/

namespace A198065.P1328457666818379791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A057944 n).toNat * A349039 n * A073254 n

end

end A198065.P1328457666818379791

/-! ## A198065.P5294144031365349646

`A073254(n)*A349039(n)*A004736(1-A051162(n)+n)`
-/

namespace A198065.P5294144031365349646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n * A349039 n * A004736 (1 - A051162 n + (n : ℤ)).toNat

end

end A198065.P5294144031365349646

/-!
# A198066: Square array read by antidiagonals, n>=1, k>=1; T(n,k) is the number of primes which are prime to n and are not strong divisors of k.

The programs for A198066, there is no canonical definition to state claims against.
-/

/-! ## A198066.P5289767143869989482

`A000720(A004736(n+1))-A198068(n+1)`
-/

namespace A198066.P5289767143869989482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004736 (n + 1)).toNat - A198068 (n + 1)

end

end A198066.P5289767143869989482

/-! ## A198066.P2716555712987850030

`A193592(A193804(n+1)+n)-A198067(n+1)`
-/

namespace A198066.P2716555712987850030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A193804 (n + 1) + (n : ℤ)).toNat - A198067 (n + 1)

end

end A198066.P2716555712987850030

/-! ## A198066.P17859718889519408814

`A193739(A193804(n+1)+n)-A198067(n+1)`
-/

namespace A198066.P17859718889519408814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A193804 (n + 1) + (n : ℤ)).toNat - A198067 (n + 1)

end

end A198066.P17859718889519408814

/-! ## A198066.P2032346330370331047

`A004736(n+1)-(A198067(n+1)+A193804(n+1))`
-/

namespace A198066.P2032346330370331047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - (A198067 (n + 1) + A193804 (n + 1))

end

end A198066.P2032346330370331047

/-! ## A198066.P16685365148514495010

`A025581(n)+1-A193804(n+1)-A198067(n+1)`
-/

namespace A198066.P16685365148514495010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (1 - A193804 (n + 1)) - A198067 (n + 1)

end

end A198066.P16685365148514495010

/-! ## A198066.P7115631898892068331

`sqrt(A055461(n+1))-(A198067(n+1)+A193804(n+1))`
-/

namespace A198066.P7115631898892068331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) - (A198067 (n + 1) + A193804 (n + 1) : ℝ)

end

end A198066.P7115631898892068331

/-! ## A198066.P3320467539884148077

`A000005(A130321(n))-(A198067(n+1)+A193804(n+1))`
-/

namespace A198066.P3320467539884148077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat - (A198067 (n + 1) + A193804 (n + 1))

end

end A198066.P3320467539884148077

/-! ## A198066.P4136443279425266560

`A193805(n+1)-A198067(n+1)`
-/

namespace A198066.P4136443279425266560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193805 (n + 1) - A198067 (n + 1)

end

end A198066.P4136443279425266560

/-!
# A198067: Square array read by antidiagonals, n>=1, k>=1; T(n,k) is the number of nonprime numbers which are prime to n and are not strong divisors of k.

The programs for A198067, there is no canonical definition to state claims against.
-/

/-! ## A198067.P10642343667338253088

`A193739(A193804(n+1)+n)-A198066(n+1)`
-/

namespace A198067.P10642343667338253088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A193804 (n + 1) + (n : ℤ)).toNat - A198066 (n + 1)

end

end A198067.P10642343667338253088

/-! ## A198067.P11742827917799878130

`A193805(n+1)-A198066(n+1)`
-/

namespace A198067.P11742827917799878130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193805 (n + 1) - A198066 (n + 1)

end

end A198067.P11742827917799878130

/-! ## A198067.P15569792298929084676

`A151552(gcd(A027293(n+1), A239315(n)))`
-/

namespace A198067.P15569792298929084676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (Int.gcd (A027293 (n + 1)) (A239315 n))

end

end A198067.P15569792298929084676

/-! ## A198067.P1949028904139932016

`gcd(A243748(A319704(3*(n+1))), A282749(n+2))`
-/

namespace A198067.P1949028904139932016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243748 (A319704 (3 * (n + 1))).toNat) (A282749 (n + 2))

end

end A198067.P1949028904139932016

/-! ## A198067.P4389615115247457670

`A146292(A189231(n+1))`
-/

namespace A198067.P4389615115247457670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146292 (A189231 (n + 1)).toNat

end

end A198067.P4389615115247457670

/-!
# A198068: Square array read by antidiagonals, n>=1, k>=1; T(n,k) is the number of primes which are prime to n and are not strong divisors of k.

The programs for A198068, there is no canonical definition to state claims against.
-/

/-! ## A198068.P370484136125986911

`A000720(A004736(n+1))-A198066(n+1)`
-/

namespace A198068.P370484136125986911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004736 (n + 1)).toNat - A198066 (n + 1)

end

end A198068.P370484136125986911

/-! ## A198068.P13712044064293824101

`A001221(gcd(A004736(n+1)!, A003991(n+1)))`
-/

namespace A198068.P13712044064293824101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (Nat.factorial (A004736 (n + 1)).toNat : ℤ) (A003991 (n + 1)))

end

end A198068.P13712044064293824101

/-! ## A198068.P16741260020536902083

`A000720(A004736(n+1))+A198067(n+1)-A193805(n+1)`
-/

namespace A198068.P16741260020536902083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004736 (n + 1)).toNat + (A198067 (n + 1) - A193805 (n + 1))

end

end A198068.P16741260020536902083

/-! ## A198068.P6511333944657555629

`A001221(gcd(A003991(n+1), A066121(n+1)))`
-/

namespace A198068.P6511333944657555629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A003991 (n + 1)) (A066121 (n + 1)))

end

end A198068.P6511333944657555629

/-! ## A198068.P12957174720852234814

`A305079(or(A008284(n+1), A225117(n)))`
-/

namespace A198068.P12957174720852234814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (Int.lor (A008284 (n + 1)) (A225117 n)).toNat

end

end A198068.P12957174720852234814

/-!
# A198069: Table read by rows, T(0,0) = 1 and for n>0, 0<=k<=2^(n-1) T(n,k) = gcd(k,2^(n-1)).

The programs for A198069, the canonical program `A198069.P6078617313314915995` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198069 has offset 0).

The definition of A198069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198069.P6143799979486866714

`A135517(eq[1, A135517(A030109(n+1))])`
-/

namespace A198069.P6143799979486866714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (A030109 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198069.P6143799979486866714

namespace A198069

/-- `A135517(eq[1, A135517(A030109(n+1))])` -/
def P6143799979486866714.Spec : Prop :=
  ∀ n, P6143799979486866714.a n = A198069 n

end A198069

/-! ## A198069.P6078617313314915995

`A135517(lt[A006257(n), A053644(n+1)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A198069

/-- `A135517(lt[A006257(n), A053644(n+1)])` -/
def P6078617313314915995.Spec : Prop :=
  ∀ n, P6078617313314915995.a n = A198069 n

theorem P6078617313314915995.correct : P6078617313314915995.Spec := by
  intro n
  simp only [A198069]

end A198069

/-! ## A198069.P14683508928261954968

`A135517(eq[A053645(n+1), A053646(n+1)])`
-/

namespace A198069.P14683508928261954968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A198069.P14683508928261954968

namespace A198069

/-- `A135517(eq[A053645(n+1), A053646(n+1)])` -/
def P14683508928261954968.Spec : Prop :=
  ∀ n, P14683508928261954968.a n = A198069 n

end A198069

/-! ## A198069.P5943346032433764683

`A135517(record[A132196(n)]-A053644(n))`
-/

namespace A198069.P5943346032433764683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A053644 n).toNat

end

end A198069.P5943346032433764683

namespace A198069

/-- `A135517(record[A132196(n)]-A053644(n))` -/
def P5943346032433764683.Spec : Prop :=
  ∀ n, P5943346032433764683.a n = A198069 n

end A198069

/-! ## A198069.P17738487869994021016

`A135517(lt[A164089(2*n+1), A080079(n+1)])`
-/

namespace A198069.P17738487869994021016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A198069.P17738487869994021016

namespace A198069

/-- `A135517(lt[A164089(2*n+1), A080079(n+1)])` -/
def P17738487869994021016.Spec : Prop :=
  ∀ n, P17738487869994021016.a n = A198069 n

end A198069

/-! ## A198069.P16222276792463512723

`gcd(A103354(n+1), A322832(A109965(n)))`
-/

namespace A198069.P16222276792463512723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103354 (n + 1)) (A322832 (A109965 n).toNat)

end

end A198069.P16222276792463512723

namespace A198069

/-- `gcd(A103354(n+1), A322832(A109965(n)))` -/
def P16222276792463512723.Spec : Prop :=
  ∀ n, (P16222276792463512723.a n : ℤ) = A198069 n

end A198069

/-!
# A198070: a(n) = round((n+1/n)^5).

The programs for A198070, the canonical program `A198070.P2565830518777055435` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198070 has offset 1).

The definition of A198070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1+1/(n+1))^5)` (program `A198070.P2565830518777055435`, by `A198070.P2565830518777055435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198070.P2565830518777055435

`round((n+1+1/(n+1))^5)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198070

/-- `round((n+1+1/(n+1))^5)` -/
def P2565830518777055435.Spec : Prop :=
  ∀ n, P2565830518777055435.a n = A198070 (n + 1)

theorem P2565830518777055435.correct : P2565830518777055435.Spec := by
  intro n
  simp only [A198070, Nat.add_sub_cancel]

end A198070

/-! ## A198070.P8368672540273835546

`floor(A197711(n+1)/A197604(n+1))`
-/

namespace A198070.P8368672540273835546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A197711 (n + 1) : ℚ) / (A197604 (n + 1) : ℚ)⌋

end

end A198070.P8368672540273835546

namespace A198070

/-- `floor(A197711(n+1)/A197604(n+1))` -/
def P8368672540273835546.Spec : Prop :=
  ∀ n, P8368672540273835546.a n = A198070 (n + 1)

end A198070

/-! ## A198070.P17341097533926937408

`floor(A197909(n+1)/A197604(n+1))`
-/

namespace A198070.P17341097533926937408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A197909 (n + 1) : ℚ) / (A197604 (n + 1) : ℚ)⌋

end

end A198070.P17341097533926937408

namespace A198070

/-- `floor(A197909(n+1)/A197604(n+1))` -/
def P17341097533926937408.Spec : Prop :=
  ∀ n, P17341097533926937408.a n = A198070 (n + 1)

end A198070

/-! ## A198070.P10077278787487913560

`ceil(A197711(n+1)/A197904(n+1))`
-/

namespace A198070.P10077278787487913560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A197711 (n + 1) : ℚ) / (A197904 (n + 1) : ℚ)⌉

end

end A198070.P10077278787487913560

namespace A198070

/-- `ceil(A197711(n+1)/A197904(n+1))` -/
def P10077278787487913560.Spec : Prop :=
  ∀ n, P10077278787487913560.a n = A198070 (n + 1)

end A198070

/-! ## A198070.P5702154920186029985

`ceil(A197909(n+1)/A197904(n+1))`
-/

namespace A198070.P5702154920186029985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A197909 (n + 1) : ℚ) / (A197904 (n + 1) : ℚ)⌉

end

end A198070.P5702154920186029985

namespace A198070

/-- `ceil(A197909(n+1)/A197904(n+1))` -/
def P5702154920186029985.Spec : Prop :=
  ∀ n, P5702154920186029985.a n = A198070 (n + 1)

end A198070

/-!
# A198071: Round((n+1/n)^6).

The programs for A198071, the canonical program `A198071.P17834390872367916818` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198071 has offset 1).

The definition of A198071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1+1/(n+1))^6)` (program `A198071.P17834390872367916818`, by `A198071.P17834390872367916818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198071.P17834390872367916818

`round((n+1+1/(n+1))^6)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198071

/-- `round((n+1+1/(n+1))^6)` -/
def P17834390872367916818.Spec : Prop :=
  ∀ n, P17834390872367916818.a n = A198071 (n + 1)

theorem P17834390872367916818.correct : P17834390872367916818.Spec := by
  intro n
  simp only [A198071, Nat.add_sub_cancel]

end A198071

/-! ## A198071.P13784929478666755255

`A197605(n+1)+char[A319442(A306317(n+1))]`
-/

namespace A198071.P13784929478666755255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (A306317 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197605 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A198071.P13784929478666755255

namespace A198071

/-- `A197605(n+1)+char[A319442(A306317(n+1))]` -/
def P13784929478666755255.Spec : Prop :=
  ∀ n, P13784929478666755255.a n = A198071 (n + 1)

end A198071

/-! ## A198071.P4999305121264380026

`A197605(n+1)+char[A319442(A323065(n+1))]`
-/

namespace A198071.P4999305121264380026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (A323065 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197605 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A198071.P4999305121264380026

namespace A198071

/-- `A197605(n+1)+char[A319442(A323065(n+1))]` -/
def P4999305121264380026.Spec : Prop :=
  ∀ n, P4999305121264380026.a n = A198071 (n + 1)

end A198071

/-! ## A198071.P1265488412255395067

`A197605(n+1)+A197605(A008620(n+4))%2`
-/

namespace A198071.P1265488412255395067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197605 (n + 1) + Int.tmod (A197605 (A008620 (n + 4)).toNat) 2

end

end A198071.P1265488412255395067

namespace A198071

/-- `A197605(n+1)+A197605(A008620(n+4))%2` -/
def P1265488412255395067.Spec : Prop :=
  ∀ n, P1265488412255395067.a n = A198071 (n + 1)

end A198071

/-!
# A198072: Round((n+1/n)^7).

The programs for A198072, the canonical program `A198072.P1179959764686978776` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198072 has offset 1).

The definition of A198072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198072.P1179959764686978776

`round((ratio[n+1]+n)^7)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198072

/-- `round((ratio[n+1]+n)^7)` -/
def P1179959764686978776.Spec : Prop :=
  ∀ n, P1179959764686978776.a n = A198072 (n + 1)

theorem P1179959764686978776.correct : P1179959764686978776.Spec := by
  intro n
  simp only [A198072, Nat.add_sub_cancel]

end A198072

/-! ## A198072.P8296264855679891337

`A197906(n+1)-A286665(A091629(n+1))`
-/

namespace A198072.P8296264855679891337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197906 (n + 1) - A286665 (A091629 (n + 1)).toNat

end

end A198072.P8296264855679891337

namespace A198072

/-- `A197906(n+1)-A286665(A091629(n+1))` -/
def P8296264855679891337.Spec : Prop :=
  ∀ n, P8296264855679891337.a n = A198072 (n + 1)

end A198072

/-! ## A198072.P15446373024070279821

`A326499(A001037(n+2))+A197708(n+1)`
-/

namespace A198072.P15446373024070279821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326499 ((A001037 (n + 2)).toNat + 50) + A197708 (n + 1)

end

end A198072.P15446373024070279821

namespace A198072

/-- `A326499(A001037(n+2))+A197708(n+1)` -/
def P15446373024070279821.Spec : Prop :=
  ∀ n, P15446373024070279821.a n = A198072 (n + 1)

end A198072

/-! ## A198072.P15268725844213865880

`A025466(A000984(n))+floor((ratio[n+1]+n)^7)`
-/

namespace A198072.P15268725844213865880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A000984 n).toNat + ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ 7⌋

end

end A198072.P15268725844213865880

namespace A198072

/-- `A025466(A000984(n))+floor((ratio[n+1]+n)^7)` -/
def P15268725844213865880.Spec : Prop :=
  ∀ n, P15268725844213865880.a n = A198072 (n + 1)

end A198072

/-!
# A198073: Round((n+1/n)^8).

The programs for A198073, the canonical program `A198073.P7002594565286085954` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198073 has offset 1).

The definition of A198073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198073.P7002594565286085954

`round((ratio[n+1]+n)^8)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198073

/-- `round((ratio[n+1]+n)^8)` -/
def P7002594565286085954.Spec : Prop :=
  ∀ n, P7002594565286085954.a n = A198073 (n + 1)

theorem P7002594565286085954.correct : P7002594565286085954.Spec := by
  intro n
  simp only [A198073, Nat.add_sub_cancel]

end A198073

/-! ## A198073.P2185120156676717828

`ceil((ratio[n+1]+n)^8)-A144597(A077458(n+1))`
-/

namespace A198073.P2185120156676717828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ 8⌉ - A144597 (A077458 (n + 1)).toNat

end

end A198073.P2185120156676717828

namespace A198073

/-- `ceil((ratio[n+1]+n)^8)-A144597(A077458(n+1))` -/
def P2185120156676717828.Spec : Prop :=
  ∀ n, P2185120156676717828.a n = A198073 (n + 1)

end A198073

/-! ## A198073.P12640019167873789161

`ceil((ratio[n+1]+n)^8)-A342023(A000272(n))`
-/

namespace A198073.P12640019167873789161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ 8⌉ - A342023 (A000272 n).toNat

end

end A198073.P12640019167873789161

namespace A198073

/-- `ceil((ratio[n+1]+n)^8)-A342023(A000272(n))` -/
def P12640019167873789161.Spec : Prop :=
  ∀ n, P12640019167873789161.a n = A198073 (n + 1)

end A198073

/-! ## A198073.P5543967910356004445

`A197907(n+1)-A010060(A000249(2*n))`
-/

namespace A198073.P5543967910356004445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197907 (n + 1) - A010060 (A000249 (2 * n)).toNat

end

end A198073.P5543967910356004445

namespace A198073

/-- `A197907(n+1)-A010060(A000249(2*n))` -/
def P5543967910356004445.Spec : Prop :=
  ∀ n, P5543967910356004445.a n = A198073 (n + 1)

end A198073

/-!
# A198074: Round((n+1/n)^9).

The programs for A198074, the canonical program `A198074.P17042390245160994620` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198074 has offset 1).

The definition of A198074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198074.P17042390245160994620

`round((ratio[n+1]+n)^9)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198074

/-- `round((ratio[n+1]+n)^9)` -/
def P17042390245160994620.Spec : Prop :=
  ∀ n, P17042390245160994620.a n = A198074 (n + 1)

theorem P17042390245160994620.correct : P17042390245160994620.Spec := by
  intro n
  simp only [A198074, Nat.add_sub_cancel]

end A198074

/-! ## A198074.P2708972137464023253

`A262855(A336139(n+2))+A197710(n+1)`
-/

namespace A198074.P2708972137464023253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262855 (A336139 (n + 2)).toNat + A197710 (n + 1)

end

end A198074.P2708972137464023253

namespace A198074

/-- `A262855(A336139(n+2))+A197710(n+1)` -/
def P2708972137464023253.Spec : Prop :=
  ∀ n, P2708972137464023253.a n = A198074 (n + 1)

end A198074

/-! ## A198074.P12742474012244197986

`A197908(n+1)-A197879(A022493(n))`
-/

namespace A198074.P12742474012244197986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197908 (n + 1) - A197879 (A022493 n).toNat

end

end A198074.P12742474012244197986

namespace A198074

/-- `A197908(n+1)-A197879(A022493(n))` -/
def P12742474012244197986.Spec : Prop :=
  ∀ n, P12742474012244197986.a n = A198074 (n + 1)

end A198074

/-! ## A198074.P15430377035963948617

`ceil((ratio[n+1]+n)^9)-A051341(A051334(n+1))`
-/

namespace A198074.P15430377035963948617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) ^ 9⌉ - A051341 (A051334 (n + 1)).toNat

end

end A198074.P15430377035963948617

namespace A198074

/-- `ceil((ratio[n+1]+n)^9)-A051341(A051334(n+1))` -/
def P15430377035963948617.Spec : Prop :=
  ∀ n, P15430377035963948617.a n = A198074 (n + 1)

end A198074

/-!
# A198075: Round((n+1/n)^10).

The programs for A198075, the canonical program `A198075.P4807599962509491835` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198075 has offset 1).

The definition of A198075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198075.P4807599962509491835

`round((1/(n+1)+n+1)^10)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198075

/-- `round((1/(n+1)+n+1)^10)` -/
def P4807599962509491835.Spec : Prop :=
  ∀ n, P4807599962509491835.a n = A198075 (n + 1)

theorem P4807599962509491835.correct : P4807599962509491835.Spec := by
  intro n
  simp only [A198075, Nat.add_sub_cancel]

end A198075

/-! ## A198075.P12614575001147429390

`ceil((1/(n+1)+n+1)^10)-A341618(A120588(n))`
-/

namespace A198075.P12614575001147429390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / (n + 1 : ℚ) + (n + 1 : ℚ)) ^ 10⌉ - A341618 (A120588 n).toNat

end

end A198075.P12614575001147429390

namespace A198075

/-- `ceil((1/(n+1)+n+1)^10)-A341618(A120588(n))` -/
def P12614575001147429390.Spec : Prop :=
  ∀ n, P12614575001147429390.a n = A198075 (n + 1)

end A198075

/-! ## A198075.P17222433431455210918

`A197711(n+1)+A057427(n)-A244735(A001779(n))`
-/

namespace A198075.P17222433431455210918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197711 (n + 1) + A057427 n - A244735 (A001779 n).toNat

end

end A198075.P17222433431455210918

namespace A198075

/-- `A197711(n+1)+A057427(n)-A244735(A001779(n))` -/
def P17222433431455210918.Spec : Prop :=
  ∀ n, P17222433431455210918.a n = A198075 (n + 1)

end A198075

/-! ## A198075.P3243472323254739307

`ceil((1/(n+1)+n+1)^10)-A341618(A305336(n+1))`
-/

namespace A198075.P3243472323254739307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / (n + 1 : ℚ) + (n + 1 : ℚ)) ^ 10⌉ - A341618 (A305336 (n + 1)).toNat

end

end A198075.P3243472323254739307

namespace A198075

/-- `ceil((1/(n+1)+n+1)^10)-A341618(A305336(n+1))` -/
def P3243472323254739307.Spec : Prop :=
  ∀ n, P3243472323254739307.a n = A198075 (n + 1)

end A198075

/-! ## A198075.P10907191272788487297

`ceil((1/(n+1)+n+1)^10)-A351319(A351318(n+1))`
-/

namespace A198075.P10907191272788487297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / (n + 1 : ℚ) + (n + 1 : ℚ)) ^ 10⌉ - A351319 (A351318 (n + 1)).toNat

end

end A198075.P10907191272788487297

namespace A198075

/-- `ceil((1/(n+1)+n+1)^10)-A351319(A351318(n+1))` -/
def P10907191272788487297.Spec : Prop :=
  ∀ n, P10907191272788487297.a n = A198075 (n + 1)

end A198075

/-!
# A198076: Round((n+1/2)^n).

The programs for A198076, the canonical program `A198076.P4343474163402622396` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198076 has offset 1).

The definition of A198076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1+1/2)^(n+1))` (program `A198076.P4343474163402622396`, by `A198076.P4343474163402622396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198076.P4343474163402622396

`round((n+1+1/2)^(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198076

/-- `round((n+1+1/2)^(n+1))` -/
def P4343474163402622396.Spec : Prop :=
  ∀ n, P4343474163402622396.a n = A198076 (n + 1)

theorem P4343474163402622396.correct : P4343474163402622396.Spec := by
  intro n
  simp only [A198076, Nat.add_sub_cancel]

end A198076

/-! ## A198076.P10115680869194667384

`A197910(n+1)-A354927(A197884(n+2))`
-/

namespace A198076.P10115680869194667384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197910 (n + 1) - A354927 (A197884 (n + 2)).toNat

end

end A198076.P10115680869194667384

namespace A198076

/-- `A197910(n+1)-A354927(A197884(n+2))` -/
def P10115680869194667384.Spec : Prop :=
  ∀ n, P10115680869194667384.a n = A198076 (n + 1)

end A198076

/-! ## A198076.P11526655308767339135

`A197910(n+1)-A353494(A026905(3*n+4))`
-/

namespace A198076.P11526655308767339135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197910 (n + 1) - A353494 (A026905 (3 * n + 4)).toNat

end

end A198076.P11526655308767339135

namespace A198076

/-- `A197910(n+1)-A353494(A026905(3*n+4))` -/
def P11526655308767339135.Spec : Prop :=
  ∀ n, P11526655308767339135.a n = A198076 (n + 1)

end A198076

/-! ## A198076.P6656856745176801117

`floor((3/2+n)^(n+1))+1-A360128(A214397(n+2))`
-/

namespace A198076.P6656856745176801117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) ^ (n + 1)⌋ + 1 - A360128 (A214397 (n + 2)).toNat

end

end A198076.P6656856745176801117

namespace A198076

/-- `floor((3/2+n)^(n+1))+1-A360128(A214397(n+2))` -/
def P6656856745176801117.Spec : Prop :=
  ∀ n, P6656856745176801117.a n = A198076 (n + 1)

end A198076

/-! ## A198076.P7311907642626867834

`A197712(n+1)+A000035(A218213(n+1))`
-/

namespace A198076.P7311907642626867834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197712 (n + 1) + A000035 (A218213 (n + 1)).toNat

end

end A198076.P7311907642626867834

namespace A198076

/-- `A197712(n+1)+A000035(A218213(n+1))` -/
def P7311907642626867834.Spec : Prop :=
  ∀ n, P7311907642626867834.a n = A198076 (n + 1)

end A198076

/-!
# A198077: Round((n+1/3)^n).

The programs for A198077, the canonical program `A198077.P4774179970851860460` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198077 has offset 1).

The definition of A198077 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1+1/3)^(n+1))` (program `A198077.P4774179970851860460`, by `A198077.P4774179970851860460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198077.P4774179970851860460

`round((n+1+1/3)^(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198077

/-- `round((n+1+1/3)^(n+1))` -/
def P4774179970851860460.Spec : Prop :=
  ∀ n, P4774179970851860460.a n = A198077 (n + 1)

theorem P4774179970851860460.correct : P4774179970851860460.Spec := by
  intro n
  simp only [A198077, Nat.add_sub_cancel]

end A198077

/-! ## A198077.P3612104914712041440

`A197972(n+1)-A000035(A075834(n))`
-/

namespace A198077.P3612104914712041440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197972 (n + 1) - A000035 (A075834 n).toNat

end

end A198077.P3612104914712041440

namespace A198077

/-- `A197972(n+1)-A000035(A075834(n))` -/
def P3612104914712041440.Spec : Prop :=
  ∀ n, P3612104914712041440.a n = A198077 (n + 1)

end A198077

/-! ## A198077.P5037095120771157611

`A197972(n+1)-A178225(A197959(n+1))`
-/

namespace A198077.P5037095120771157611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197972 (n + 1) - A178225 (A197959 (n + 1)).toNat

end

end A198077.P5037095120771157611

namespace A198077

/-- `A197972(n+1)-A178225(A197959(n+1))` -/
def P5037095120771157611.Spec : Prop :=
  ∀ n, P5037095120771157611.a n = A198077 (n + 1)

end A198077

/-! ## A198077.P6527806706816157424

`A197972(n+1)-A275601(A324763(3*n+5))`
-/

namespace A198077.P6527806706816157424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197972 (n + 1) - A275601 (A324763 (3 * n + 5)).toNat

end

end A198077.P6527806706816157424

namespace A198077

/-- `A197972(n+1)-A275601(A324763(3*n+5))` -/
def P6527806706816157424.Spec : Prop :=
  ∀ n, P6527806706816157424.a n = A198077 (n + 1)

end A198077

/-!
# A198078: a(n) = round((n+1/4)^n).

The programs for A198078, the canonical program `A198078.P6362543506870260190` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198078 has offset 1).

The definition of A198078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1+1/4)^(n+1))` (program `A198078.P6362543506870260190`, by `A198078.P6362543506870260190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198078.P6362543506870260190

`round((n+1+1/4)^(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198078

/-- `round((n+1+1/4)^(n+1))` -/
def P6362543506870260190.Spec : Prop :=
  ∀ n, P6362543506870260190.a n = A198078 (n + 1)

theorem P6362543506870260190.correct : P6362543506870260190.Spec := by
  intro n
  simp only [A198078, Nat.add_sub_cancel]

end A198078

/-! ## A198078.P9729685464473500641

`A011558(A077393(n+1))+floor((5/4+n)^(n+1))`
-/

namespace A198078.P9729685464473500641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A077393 (n + 1)).toNat + ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋

end

end A198078.P9729685464473500641

namespace A198078

/-- `A011558(A077393(n+1))+floor((5/4+n)^(n+1))` -/
def P9729685464473500641.Spec : Prop :=
  ∀ n, P9729685464473500641.a n = A198078 (n + 1)

end A198078

/-! ## A198078.P3479614697597519254

`A118135(A107587(n))+floor((5/4+n)^(n+1))`
-/

namespace A198078.P3479614697597519254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118135 (A107587 n).toNat + ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋

end

end A198078.P3479614697597519254

namespace A198078

/-- `A118135(A107587(n))+floor((5/4+n)^(n+1))` -/
def P3479614697597519254.Spec : Prop :=
  ∀ n, P3479614697597519254.a n = A198078 (n + 1)

end A198078

/-! ## A198078.P18264373178001338659

`A267676(A186649(n+1))+floor((5/4+n)^(n+1))`
-/

namespace A198078.P18264373178001338659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267676 (A186649 (n + 1)).toNat + ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌋

end

end A198078.P18264373178001338659

namespace A198078

/-- `A267676(A186649(n+1))+floor((5/4+n)^(n+1))` -/
def P18264373178001338659.Spec : Prop :=
  ∀ n, P18264373178001338659.a n = A198078 (n + 1)

end A198078

/-!
# A198079: Round((n+1/5)^n).

The programs for A198079, the canonical program `A198079.P14396346279991107331` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198079 has offset 1).

The definition of A198079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1+1/5)^(n+1))` (program `A198079.P14396346279991107331`, by `A198079.P14396346279991107331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198079.P14396346279991107331

`round((n+1+1/5)^(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198079

/-- `round((n+1+1/5)^(n+1))` -/
def P14396346279991107331.Spec : Prop :=
  ∀ n, P14396346279991107331.a n = A198079 (n + 1)

theorem P14396346279991107331.correct : P14396346279991107331.Spec := by
  intro n
  simp only [A198079, Nat.add_sub_cancel]

end A198079

/-! ## A198079.P4220286528589308024

`A197974(n+1)-floor(sqrt(A198025(n+1)))%2`
-/

namespace A198079.P4220286528589308024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197974 (n + 1) - Int.tmod (Int.sqrt (A198025 (n + 1))) 2

end

end A198079.P4220286528589308024

namespace A198079

/-- `A197974(n+1)-floor(sqrt(A198025(n+1)))%2` -/
def P4220286528589308024.Spec : Prop :=
  ∀ n, P4220286528589308024.a n = A198079 (n + 1)

end A198079

/-! ## A198079.P4082578222732601795

`or(A197715(n+1), A342025(A174085(n)))`
-/

namespace A198079.P4082578222732601795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197715 (n + 1)) (A342025 (A174085 n).toNat)

end

end A198079.P4082578222732601795

namespace A198079

/-- `or(A197715(n+1), A342025(A174085(n)))` -/
def P4082578222732601795.Spec : Prop :=
  ∀ n, P4082578222732601795.a n = A198079 (n + 1)

end A198079

/-! ## A198079.P5067307706129276626

`A197715(n+1)+A188034(A197603(n+1))`
-/

namespace A198079.P5067307706129276626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197715 (n + 1) + A188034 (A197603 (n + 1)).toNat

end

end A198079.P5067307706129276626

namespace A198079

/-- `A197715(n+1)+A188034(A197603(n+1))` -/
def P5067307706129276626.Spec : Prop :=
  ∀ n, P5067307706129276626.a n = A198079 (n + 1)

end A198079

/-!
# A198080: a(n) = (3^(3*n + 3)- 26*n - 27)/169.

The programs for A198080, the canonical program `A198080.P9521293919140138106` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198080 has offset 0).

The definition of A198080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198080.P9521293919140138106

`(3^(3*n+3)-26*n-27)/169`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198080

/-- `(3^(3*n+3)-26*n-27)/169` -/
def P9521293919140138106.Spec : Prop :=
  ∀ n, P9521293919140138106.a n = (A198080 n : ℚ)

end A198080

/-! ## A198080.P1568566770761091127

`∑[27*a(n-1)+4]` with `a(0)=0`
-/

namespace A198080.P1568566770761091127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  27 * f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198080.P1568566770761091127

namespace A198080

/-- `∑[27*a(n-1)+4]` -/
def P1568566770761091127.Spec : Prop :=
  ∀ n, (P1568566770761091127.a n : ℤ) = A198080 n

end A198080

/-! ## A198080.P322252046010672653

`∑[lcm(27, a(n-1))+4]` with `a(0)=0`
-/

namespace A198080.P322252046010672653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lcm 27 (f1 (n - 1)) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198080.P322252046010672653

namespace A198080

/-- `∑[lcm(27, a(n-1))+4]` -/
def P322252046010672653.Spec : Prop :=
  ∀ n, (P322252046010672653.a n : ℤ) = A198080 n

end A198080

/-! ## A198080.P18325930234765358044

`4*n+27*a(n-1)` with `a(0)=0`
-/

namespace A198080.P18325930234765358044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * n + 27 * a (n - 1)

end

end A198080.P18325930234765358044

namespace A198080

/-- `4*n+27*a(n-1)` -/
def P18325930234765358044.Spec : Prop :=
  ∀ n, (P18325930234765358044.a n : ℤ) = A198080 n

end A198080

/-! ## A198080.P10195209369820216074

`∑[4*A218730(n)]`
-/

namespace A198080.P10195209369820216074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A218730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198080.P10195209369820216074

namespace A198080

/-- `∑[4*A218730(n)]` -/
def P10195209369820216074.Spec : Prop :=
  ∀ n, P10195209369820216074.a n = A198080 n

end A198080

/-! ## A198080.P1103207855318777452

`∑[∑[A326339(A008486(n))]]`
-/

namespace A198080.P1103207855318777452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198080.P1103207855318777452

namespace A198080

/-- `∑[∑[A326339(A008486(n))]]` -/
def P1103207855318777452.Spec : Prop :=
  ∀ n, P1103207855318777452.a n = A198080 n

end A198080

/-!
# A198081: a(n) = ceiling(n*sqrt(3)).

The programs for A198081, the canonical program `A198081.P4251584572868697765` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198081 has offset 0).

The definition of A198081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(3))` (program `A198081.P4251584572868697765`, by `A198081.P4251584572868697765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198081.P4251584572868697765

`ceil(n*sqrt(3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198081

/-- `ceil(n*sqrt(3))` -/
def P4251584572868697765.Spec : Prop :=
  ∀ n, P4251584572868697765.a n = A198081 n

theorem P4251584572868697765.correct : P4251584572868697765.Spec := by
  intro n
  simp only [A198081]

end A198081

/-! ## A198081.P5300343930508952652

`(floor(n*sqrt(3))+1)%(2*n+1)`
-/

namespace A198081.P5300343930508952652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ + 1) (2 * n + 1 : ℤ)

end

end A198081.P5300343930508952652

namespace A198081

/-- `(floor(n*sqrt(3))+1)%(2*n+1)` -/
def P5300343930508952652.Spec : Prop :=
  ∀ n, P5300343930508952652.a n = A198081 n

end A198081

/-! ## A198081.P14160535430366435863

`A215781(n)+n`
-/

namespace A198081.P14160535430366435863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 n + (n : ℤ)

end

end A198081.P14160535430366435863

namespace A198081

/-- `A215781(n)+n` -/
def P14160535430366435863.Spec : Prop :=
  ∀ n, P14160535430366435863.a n = A198081 n

end A198081

/-! ## A198081.P12503809445268721405

`floor((A198269(n)+1)/2)`
-/

namespace A198081.P12503809445268721405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198269 n + 1 : ℚ) / 2⌋

end

end A198081.P12503809445268721405

namespace A198081

/-- `floor((A198269(n)+1)/2)` -/
def P12503809445268721405.Spec : Prop :=
  ∀ n, P12503809445268721405.a n = A198081 n

end A198081

/-! ## A198081.P8424986191811991841

`comp[comp[A022838(n+1)]+1]`
-/

namespace A198081.P8424986191811991841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A198081.P8424986191811991841

namespace A198081

/-- `comp[comp[A022838(n+1)]+1]` -/
def P8424986191811991841.Spec : Prop :=
  ∀ n, (P8424986191811991841.a n : ℤ) = A198081 n

end A198081

/-! ## A198081.P4869481531102232609

`A080590(n+1)-Δ[n²]`
-/

namespace A198081.P4869481531102232609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A198081.P4869481531102232609

namespace A198081

/-- `A080590(n+1)-Δ[n²]` -/
def P4869481531102232609.Spec : Prop :=
  ∀ n, P4869481531102232609.a n = A198081 n

end A198081

/-! ## A198081.P13499991741353131098

`floor(n*sqrt(3))+A000040(n+1)%2`
-/

namespace A198081.P13499991741353131098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ + Int.tmod (A000040 (n + 1)) 2

end

end A198081.P13499991741353131098

namespace A198081

/-- `floor(n*sqrt(3))+A000040(n+1)%2` -/
def P13499991741353131098.Spec : Prop :=
  ∀ n, P13499991741353131098.a n = A198081 n

end A198081

/-! ## A198081.P13623007259598474471

`A198269(n)-A022847(n)`
-/

namespace A198081.P13623007259598474471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 n - A022847 n

end

end A198081.P13623007259598474471

namespace A198081

/-- `A198269(n)-A022847(n)` -/
def P13623007259598474471.Spec : Prop :=
  ∀ n, P13623007259598474471.a n = A198081 n

end A198081

/-! ## A198081.P5226033579401971354

`A188069(n+1)-A004277(n)`
-/

namespace A198081.P5226033579401971354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) - A004277 n

end

end A198081.P5226033579401971354

namespace A198081

/-- `A188069(n+1)-A004277(n)` -/
def P5226033579401971354.Spec : Prop :=
  ∀ n, P5226033579401971354.a n = A198081 n

end A198081

/-! ## A198081.P10004267251922912317

`A005843(n)-(n-A215781(n))`
-/

namespace A198081.P10004267251922912317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A215781 n)

end

end A198081.P10004267251922912317

namespace A198081

/-- `A005843(n)-(n-A215781(n))` -/
def P10004267251922912317.Spec : Prop :=
  ∀ n, P10004267251922912317.a n = A198081 n

end A198081

/-! ## A198081.P10791666546199358829

`A188069(n+1)+n-A008486(n)`
-/

namespace A198081.P10791666546199358829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) + ((n : ℤ) - A008486 n)

end

end A198081.P10791666546199358829

namespace A198081

/-- `A188069(n+1)+n-A008486(n)` -/
def P10791666546199358829.Spec : Prop :=
  ∀ n, P10791666546199358829.a n = A198081 n

end A198081

/-! ## A198081.P7001078324319510669

`A087156(n+1)+n-A195120(n)`
-/

namespace A198081.P7001078324319510669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + ((n : ℤ) - A195120 n)

end

end A198081.P7001078324319510669

namespace A198081

/-- `A087156(n+1)+n-A195120(n)` -/
def P7001078324319510669.Spec : Prop :=
  ∀ n, P7001078324319510669.a n = A198081 n

end A198081

/-! ## A198081.P11160665628187336158

`A022838(n+1)+A275855(n+1)-1`
-/

namespace A198081.P11160665628187336158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + (A275855 (n + 1) - 1)

end

end A198081.P11160665628187336158

namespace A198081

/-- `A022838(n+1)+A275855(n+1)-1` -/
def P11160665628187336158.Spec : Prop :=
  ∀ n, P11160665628187336158.a n = A198081 n

end A198081

/-! ## A198081.P6680423463890038197

`comp[A054406(n+1)]+∑[A028815(n)]%2`
-/

namespace A198081.P6680423463890038197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

end

end A198081.P6680423463890038197

namespace A198081

/-- `comp[A054406(n+1)]+∑[A028815(n)]%2` -/
def P6680423463890038197.Spec : Prop :=
  ∀ n, P6680423463890038197.a n = A198081 n

end A198081

/-! ## A198081.P5178520846305216063

`A172475(2*n)+A057427(n)`
-/

namespace A198081.P5178520846305216063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (2 * n) + A057427 n

end

end A198081.P5178520846305216063

namespace A198081

/-- `A172475(2*n)+A057427(n)` -/
def P5178520846305216063.Spec : Prop :=
  ∀ n, P5178520846305216063.a n = A198081 n

end A198081

/-! ## A198081.P7648702718588389809

`A171970(A275855(n+1)+2*n+1)`
-/

namespace A198081.P7648702718588389809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A275855 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A198081.P7648702718588389809

namespace A198081

/-- `A171970(A275855(n+1)+2*n+1)` -/
def P7648702718588389809.Spec : Prop :=
  ∀ n, P7648702718588389809.a n = A198081 n

end A198081

/-! ## A198081.P3113192035145164792

`A195120(A008585(n)-A195120(n))+n`
-/

namespace A198081.P3113192035145164792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A008585 n - A195120 n).toNat + (n : ℤ)

end

end A198081.P3113192035145164792

namespace A198081

/-- `A195120(A008585(n)-A195120(n))+n` -/
def P3113192035145164792.Spec : Prop :=
  ∀ n, P3113192035145164792.a n = A198081 n

end A198081

/-! ## A198081.P5487329664408413859

`A195120(A005843(n)+n-A195120(n))+n`
-/

namespace A198081.P5487329664408413859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A005843 n + ((n : ℤ) - A195120 n)).toNat + (n : ℤ)

end

end A198081.P5487329664408413859

namespace A198081

/-- `A195120(A005843(n)+n-A195120(n))+n` -/
def P5487329664408413859.Spec : Prop :=
  ∀ n, P5487329664408413859.a n = A198081 n

end A198081

/-!
# A198082: Ceiling(n*Sqrt(5)).

The programs for A198082, the canonical program `A198082.P3564800651178384978` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198082 has offset 0).

The definition of A198082 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(5))` (program `A198082.P3564800651178384978`, by `A198082.P3564800651178384978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198082.P3564800651178384978

`ceil(n*sqrt(5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198082

/-- `ceil(n*sqrt(5))` -/
def P3564800651178384978.Spec : Prop :=
  ∀ n, P3564800651178384978.a n = A198082 n

theorem P3564800651178384978.correct : P3564800651178384978.Spec := by
  intro n
  simp only [A198082]

end A198082

/-! ## A198082.P274191635993578487

`ceil(lcm(2, 2*n)/ϕ)+n`
-/

namespace A198082.P274191635993578487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (2 * n) : ℝ) / Real.goldenRatio⌉ + (n : ℤ)

end

end A198082.P274191635993578487

namespace A198082

/-- `ceil(lcm(2, 2*n)/ϕ)+n` -/
def P274191635993578487.Spec : Prop :=
  ∀ n, P274191635993578487.a n = A198082 n

end A198082

/-! ## A198082.P13764656181072866866

`ceil(xor(1, 2*n+1)/ϕ)+n`
-/

namespace A198082.P13764656181072866866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n + 1) : ℝ) / Real.goldenRatio⌉ + (n : ℤ)

end

end A198082.P13764656181072866866

namespace A198082

/-- `ceil(xor(1, 2*n+1)/ϕ)+n` -/
def P13764656181072866866.Spec : Prop :=
  ∀ n, P13764656181072866866.a n = A198082 n

end A198082

/-! ## A198082.P4410412027214304113

`ceil(ϕ*xor(1, 2*n+1))-n`
-/

namespace A198082.P4410412027214304113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.xor 1 (2 * n + 1) : ℝ)⌉ - (n : ℤ)

end

end A198082.P4410412027214304113

namespace A198082

/-- `ceil(ϕ*xor(1, 2*n+1))-n` -/
def P4410412027214304113.Spec : Prop :=
  ∀ n, P4410412027214304113.a n = A198082 n

end A198082

/-! ## A198082.P3747213674782251672

`ceil(2*n/ϕ)+gcd(n, 2*n)`
-/

namespace A198082.P3747213674782251672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / Real.goldenRatio⌉ + (Nat.gcd n (2 * n) : ℤ)

end

end A198082.P3747213674782251672

namespace A198082

/-- `ceil(2*n/ϕ)+gcd(n, 2*n)` -/
def P3747213674782251672.Spec : Prop :=
  ∀ n, P3747213674782251672.a n = A198082 n

end A198082

/-! ## A198082.P15512263702117059074

`floor(n*sqrt(5))+(n+2)%(n+1)`
-/

namespace A198082.P15512263702117059074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋ + (((n + 2) % (n + 1) : ℕ) : ℤ)

end

end A198082.P15512263702117059074

namespace A198082

/-- `floor(n*sqrt(5))+(n+2)%(n+1)` -/
def P15512263702117059074.Spec : Prop :=
  ∀ n, P15512263702117059074.a n = A198082 n

end A198082

/-! ## A198082.P2603556021586617418

`ceil(and(2*n+1, 2*n)/ϕ)+n`
-/

namespace A198082.P2603556021586617418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land (2 * n + 1) (2 * n) : ℝ) / Real.goldenRatio⌉ + (n : ℤ)

end

end A198082.P2603556021586617418

namespace A198082

/-- `ceil(and(2*n+1, 2*n)/ϕ)+n` -/
def P2603556021586617418.Spec : Prop :=
  ∀ n, P2603556021586617418.a n = A198082 n

end A198082

/-! ## A198082.P15535761833184174391

`ceil(ϕ*and(2*n+1, 2*n))-n`
-/

namespace A198082.P15535761833184174391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.land (2 * n + 1) (2 * n) : ℝ)⌉ - (n : ℤ)

end

end A198082.P15535761833184174391

namespace A198082

/-- `ceil(ϕ*and(2*n+1, 2*n))-n` -/
def P15535761833184174391.Spec : Prop :=
  ∀ n, P15535761833184174391.a n = A198082 n

end A198082

/-! ## A198082.P2069564940743111843

`record[floor(ϕ*(n+1))-round(xor(1, n)/2)]`
-/

namespace A198082.P2069564940743111843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198082.P2069564940743111843

namespace A198082

/-- `record[floor(ϕ*(n+1))-round(xor(1, n)/2)]` -/
def P2069564940743111843.Spec : Prop :=
  ∀ n, P2069564940743111843.a n = A198082 n

end A198082

/-! ## A198082.P14417205964272555756

`ceil((2*n-C(n%3+1, 4))/ϕ)+n`
-/

namespace A198082.P14417205964272555756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℤ) - (Nat.choose (n % 3 + 1) 4 : ℤ) : ℝ) / Real.goldenRatio⌉ + (n : ℤ)

end

end A198082.P14417205964272555756

namespace A198082

/-- `ceil((2*n-C(n%3+1, 4))/ϕ)+n` -/
def P14417205964272555756.Spec : Prop :=
  ∀ n, P14417205964272555756.a n = A198082 n

end A198082

/-! ## A198082.P12817618950650868549

`A300763(n)+2*n`
-/

namespace A198082.P12817618950650868549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 n + (2 * n : ℤ)

end

end A198082.P12817618950650868549

namespace A198082

/-- `A300763(n)+2*n` -/
def P12817618950650868549.Spec : Prop :=
  ∀ n, P12817618950650868549.a n = A198082 n

end A198082

/-! ## A198082.P9717174231678689146

`A004958(n)-2*n`
-/

namespace A198082.P9717174231678689146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - (2 * n : ℤ)

end

end A198082.P9717174231678689146

namespace A198082

/-- `A004958(n)-2*n` -/
def P9717174231678689146.Spec : Prop :=
  ∀ n, P9717174231678689146.a n = A198082 n

end A198082

/-! ## A198082.P11960871805275164183

`3*n-A187329(n)`
-/

namespace A198082.P11960871805275164183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A187329 n

end

end A198082.P11960871805275164183

namespace A198082

/-- `3*n-A187329(n)` -/
def P11960871805275164183.Spec : Prop :=
  ∀ n, P11960871805275164183.a n = A198082 n

end A198082

/-! ## A198082.P13478181733840720298

`4*n-A187330(n)`
-/

namespace A198082.P13478181733840720298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A187330 n

end

end A198082.P13478181733840720298

namespace A198082

/-- `4*n-A187330(n)` -/
def P13478181733840720298.Spec : Prop :=
  ∀ n, P13478181733840720298.a n = A198082 n

end A198082

/-! ## A198082.P12891827576499581422

`comp[A026352(2*n)]+n`
-/

namespace A198082.P12891827576499581422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A198082.P12891827576499581422

namespace A198082

/-- `comp[A026352(2*n)]+n` -/
def P12891827576499581422.Spec : Prop :=
  ∀ n, (P12891827576499581422.a n : ℤ) = A198082 n

end A198082

/-! ## A198082.P13322501298193088999

`ceil(A005843(n)/ϕ)+n`
-/

namespace A198082.P13322501298193088999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005843 n : ℝ) / Real.goldenRatio⌉ + (n : ℤ)

end

end A198082.P13322501298193088999

namespace A198082

/-- `ceil(A005843(n)/ϕ)+n` -/
def P13322501298193088999.Spec : Prop :=
  ∀ n, P13322501298193088999.a n = A198082 n

end A198082

/-! ## A198082.P13305093809012555080

`A101803(n)+A004956(n)`
-/

namespace A198082.P13305093809012555080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 n + A004956 n

end

end A198082.P13305093809012555080

namespace A198082

/-- `A101803(n)+A004956(n)` -/
def P13305093809012555080.Spec : Prop :=
  ∀ n, P13305093809012555080.a n = A198082 n

end A198082

/-! ## A198082.P6822815985281769556

`A004976(n)-A004273(n)`
-/

namespace A198082.P6822815985281769556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n - A004273 n

end

end A198082.P6822815985281769556

namespace A198082

/-- `A004976(n)-A004273(n)` -/
def P6822815985281769556.Spec : Prop :=
  ∀ n, P6822815985281769556.a n = A198082 n

end A198082

/-! ## A198082.P4913617768141415114

`A004937(n)-A060144(n)`
-/

namespace A198082.P4913617768141415114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n - A060144 n

end

end A198082.P4913617768141415114

namespace A198082

/-- `A004937(n)-A060144(n)` -/
def P4913617768141415114.Spec : Prop :=
  ∀ n, P4913617768141415114.a n = A198082 n

end A198082

/-! ## A198082.P15681331086423097338

`A004957(n)-A334415(n)`
-/

namespace A198082.P15681331086423097338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n - A334415 n

end

end A198082.P15681331086423097338

namespace A198082

/-- `A004957(n)-A334415(n)` -/
def P15681331086423097338.Spec : Prop :=
  ∀ n, P15681331086423097338.a n = A198082 n

end A198082

/-!
# A198083: Ceiling(n*Sqrt(6)).

The programs for A198083, the canonical program `A198083.P2199406623985289841` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198083 has offset 0).

The definition of A198083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(6))` (program `A198083.P2199406623985289841`, by `A198083.P2199406623985289841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198083.P2199406623985289841

`ceil(n*sqrt(6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198083

/-- `ceil(n*sqrt(6))` -/
def P2199406623985289841.Spec : Prop :=
  ∀ n, P2199406623985289841.a n = A198083 n

theorem P2199406623985289841.correct : P2199406623985289841.Spec := by
  intro n
  simp only [A198083]

end A198083

/-! ## A198083.P5418409750562987526

`floor(n*(acot(n)+sqrt(6)))`
-/

namespace A198083.P5418409750562987526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (SequenceMachineLib.acot (n : ℝ) + Real.sqrt (6 : ℝ))⌋

end

end A198083.P5418409750562987526

namespace A198083

/-- `floor(n*(acot(n)+sqrt(6)))` -/
def P5418409750562987526.Spec : Prop :=
  ∀ n, P5418409750562987526.a n = A198083 n

end A198083

/-! ## A198083.P1136196026009579921

`floor(n*sqrt(6))-A057428(n)`
-/

namespace A198083.P1136196026009579921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋ - A057428 n

end

end A198083.P1136196026009579921

namespace A198083

/-- `floor(n*sqrt(6))-A057428(n)` -/
def P1136196026009579921.Spec : Prop :=
  ∀ n, P1136196026009579921.a n = A198083 n

end A198083

/-! ## A198083.P13371956378826678508

`floor(n*sqrt(6))+1-A000007(n)`
-/

namespace A198083.P13371956378826678508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋ + (1 - A000007 n)

end

end A198083.P13371956378826678508

namespace A198083

/-- `floor(n*sqrt(6))+1-A000007(n)` -/
def P13371956378826678508.Spec : Prop :=
  ∀ n, P13371956378826678508.a n = A198083 n

end A198083

/-! ## A198083.P16941834119986353465

`(floor(n*sqrt(6))+1)%A001157(n+1)`
-/

namespace A198083.P16941834119986353465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋ + 1) (A001157 (n + 1))

end

end A198083.P16941834119986353465

namespace A198083

/-- `(floor(n*sqrt(6))+1)%A001157(n+1)` -/
def P16941834119986353465.Spec : Prop :=
  ∀ n, P16941834119986353465.a n = A198083 n

end A198083

/-! ## A198083.P2360176884858461524

`A001221(A000961(n+1))+floor(n*sqrt(6))`
-/

namespace A198083.P2360176884858461524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat + ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

end

end A198083.P2360176884858461524

namespace A198083

/-- `A001221(A000961(n+1))+floor(n*sqrt(6))` -/
def P2360176884858461524.Spec : Prop :=
  ∀ n, P2360176884858461524.a n = A198083 n

end A198083

/-! ## A198083.P4793166588982771417

`A344682(A344682(ceil(n*root(6, 2))))`
-/

namespace A198083.P4793166588982771417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (A344682 ⌈(n : ℝ) * (6 : ℝ) ^ (1 / (2 : ℝ))⌉.toNat).toNat

end

end A198083.P4793166588982771417

namespace A198083

/-- `A344682(A344682(ceil(n*root(6, 2))))` -/
def P4793166588982771417.Spec : Prop :=
  ∀ n, P4793166588982771417.a n = A198083 n

end A198083

/-! ## A198083.P9794741143899134473

`record[2*A285686(n+1)+n]`
-/

namespace A198083.P9794741143899134473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285686 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198083.P9794741143899134473

namespace A198083

/-- `record[2*A285686(n+1)+n]` -/
def P9794741143899134473.Spec : Prop :=
  ∀ n, P9794741143899134473.a n = A198083 n

end A198083

/-! ## A198083.P2989966958722147810

`record[n%2*A194986(3*(n+1))]`
-/

namespace A198083.P2989966958722147810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A194986 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198083.P2989966958722147810

namespace A198083

/-- `record[n%2*A194986(3*(n+1))]` -/
def P2989966958722147810.Spec : Prop :=
  ∀ n, P2989966958722147810.a n = A198083 n

end A198083

/-! ## A198083.P17629087595715580612

`A036496(ceil(n²/2))`
-/

namespace A198083.P17629087595715580612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

end

end A198083.P17629087595715580612

namespace A198083

/-- `A036496(ceil(n²/2))` -/
def P17629087595715580612.Spec : Prop :=
  ∀ n, P17629087595715580612.a n = A198083 n

end A198083

/-!
# A198084: Ceiling(n*sqrt(7)).

The programs for A198084, the canonical program `A198084.P14640582915126375749` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198084 has offset 0).

The definition of A198084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(7))` (program `A198084.P14640582915126375749`, by `A198084.P14640582915126375749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198084.P14640582915126375749

`ceil(n*sqrt(7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198084

/-- `ceil(n*sqrt(7))` -/
def P14640582915126375749.Spec : Prop :=
  ∀ n, P14640582915126375749.a n = A198084 n

theorem P14640582915126375749.correct : P14640582915126375749.Spec := by
  intro n
  simp only [A198084]

end A198084

/-! ## A198084.P13966140537624978900

`round(sqrt(a(n-1)+7*n²))` with `a(0)=0`
-/

namespace A198084.P13966140537624978900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) + (7 * n ^ 2 : ℤ) : ℝ))

end

end A198084.P13966140537624978900

namespace A198084

/-- `round(sqrt(a(n-1)+7*n²))` -/
def P13966140537624978900.Spec : Prop :=
  ∀ n, P13966140537624978900.a n = A198084 n

end A198084

/-! ## A198084.P14529659138637297843

`a(n-1)-floor(a(n-1)-n*sqrt(7))` with `a(0)=0`
-/

namespace A198084.P14529659138637297843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℝ) - (n : ℝ) * Real.sqrt (7 : ℝ)⌋

end

end A198084.P14529659138637297843

namespace A198084

/-- `a(n-1)-floor(a(n-1)-n*sqrt(7))` -/
def P14529659138637297843.Spec : Prop :=
  ∀ n, P14529659138637297843.a n = A198084 n

end A198084

/-! ## A198084.P11993269630794890706

`floor(n*sqrt(7)+1-A000007(n))`
-/

namespace A198084.P11993269630794890706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ) + 1 - (A000007 n : ℝ)⌋

end

end A198084.P11993269630794890706

namespace A198084

/-- `floor(n*sqrt(7)+1-A000007(n))` -/
def P11993269630794890706.Spec : Prop :=
  ∀ n, P11993269630794890706.a n = A198084 n

end A198084

/-! ## A198084.P13661598937659025669

`floor((n*sqrt(7)+1)*A057427(n))`
-/

namespace A198084.P13661598937659025669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) * Real.sqrt (7 : ℝ) + 1) * (A057427 n : ℝ)⌋

end

end A198084.P13661598937659025669

namespace A198084

/-- `floor((n*sqrt(7)+1)*A057427(n))` -/
def P13661598937659025669.Spec : Prop :=
  ∀ n, P13661598937659025669.a n = A198084 n

end A198084

/-! ## A198084.P12874693612983669630

`ceil(sqrt(A247541(n)))%A247541(n)`
-/

namespace A198084.P12874693612983669630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A247541 n : ℝ)⌉ (A247541 n)

end

end A198084.P12874693612983669630

namespace A198084

/-- `ceil(sqrt(A247541(n)))%A247541(n)` -/
def P12874693612983669630.Spec : Prop :=
  ∀ n, P12874693612983669630.a n = A198084 n

end A198084

/-! ## A198084.P15440521351367463585

`char[A020703(n+1)]+floor(n*sqrt(7))`
-/

namespace A198084.P15440521351367463585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

end

end A198084.P15440521351367463585

namespace A198084

/-- `char[A020703(n+1)]+floor(n*sqrt(7))` -/
def P15440521351367463585.Spec : Prop :=
  ∀ n, P15440521351367463585.a n = A198084 n

end A198084

/-! ## A198084.P4189432468349674403

`record[2*A286654(n+1)+n]`
-/

namespace A198084.P4189432468349674403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286654 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198084.P4189432468349674403

namespace A198084

/-- `record[2*A286654(n+1)+n]` -/
def P4189432468349674403.Spec : Prop :=
  ∀ n, P4189432468349674403.a n = A198084 n

end A198084

/-! ## A198084.P4886490552253820310

`A202306(n²)+A048766(A048766(n))`
-/

namespace A198084.P4886490552253820310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 (n ^ 2) + A048766 (A048766 n).toNat

end

end A198084.P4886490552253820310

namespace A198084

/-- `A202306(n²)+A048766(A048766(n))` -/
def P4886490552253820310.Spec : Prop :=
  ∀ n, P4886490552253820310.a n = A198084 n

end A198084

/-! ## A198084.P15124480228841312669

`round(log(A220611(2*n+1)))`
-/

namespace A198084.P15124480228841312669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A220611 (2 * n + 1) : ℝ))

end

end A198084.P15124480228841312669

namespace A198084

/-- `round(log(A220611(2*n+1)))` -/
def P15124480228841312669.Spec : Prop :=
  ∀ n, P15124480228841312669.a n = A198084 n

end A198084

/-!
# A198085: Number of nonempty connected, containment-free subsets of 2^[n]. Total number of clutters on all subsets of [n]. Number of connected antichains in the Boolean algebra B_n (the poset of subsets of [n] ordered by containment).

The programs for A198085, there is no canonical definition to state claims against.
-/

/-! ## A198085.P11131678324959384810

`∑[abs(Δ[A304986(n)])]`
-/

namespace A198085.P11131678324959384810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304986 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198085.P11131678324959384810

/-! ## A198085.P9969482386354379881

`A304986(n+1)-1`
-/

namespace A198085.P9969482386354379881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304986 (n + 1) - 1

end

end A198085.P9969482386354379881

/-! ## A198085.P13303254546289696828

`A305005(n+1)+n`
-/

namespace A198085.P13303254546289696828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305005 (n + 1) + (n : ℤ)

end

end A198085.P13303254546289696828

/-! ## A198085.P1422600162675348983

`record[Δ[A304986(val(n+1, 2))]]`
-/

namespace A198085.P1422600162675348983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304986 (SequenceMachineLib.valuation (n + 1) 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198085.P1422600162675348983

/-!
# A198086: Number of isomorphism classes of nanocones with 5 pentagons and a symmetric boundary of length n.

The programs for A198086, there is no canonical definition to state claims against.
-/

/-! ## A198086.P14590570497479643804

`A305891(A002110(n)*A045572(n+1))`
-/

namespace A198086.P14590570497479643804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305891 (A002110 n * A045572 (n + 1)).toNat

end

end A198086.P14590570497479643804

/-! ## A198086.P6692340810534702145

`A002487(A123168(n+1)+A077616(n+1))`
-/

namespace A198086.P6692340810534702145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A123168 (n + 1) + A077616 (n + 1)).toNat

end

end A198086.P6692340810534702145

/-!
# A198087: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,5,4,0,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A198087, there is no canonical definition to state claims against.
-/

/-! ## A198087.P16312545316382659323

`A123108(n*(∑[n^n]+1))`
-/

namespace A198087.P16312545316382659323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A198087.P16312545316382659323

/-!
# A198088: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,2,0,1,2,0 for x=0,1,2,3,4,5,6.

The programs for A198088, there is no canonical definition to state claims against.
-/

/-! ## A198088.P8534589425925891946

`A278950(A004110(n+4))`
-/

namespace A198088.P8534589425925891946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278950 (A004110 (n + 4)).toNat

end

end A198088.P8534589425925891946

/-!
# A198089: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,2,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A198089, there is no canonical definition to state claims against.
-/

/-! ## A198089.P18239855971825955182

`A153396(n*(n*(n-5)+5)²)+∑{digits}[n, #%2]`
-/

namespace A198089.P18239855971825955182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153396 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % 2).sum : ℕ) : ℤ)

end

end A198089.P18239855971825955182

/-!
# A198090: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,2,1,0,0,2 for x=0,1,2,3,4,5,6.

The programs for A198090, there is no canonical definition to state claims against.
-/

/-! ## A198090.P9038873489219168828

`∑[A156165(∑[A102864(n)])]`
-/

namespace A198090.P9038873489219168828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156165 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198090.P9038873489219168828

/-!
# A198091: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,2,1,1,1,2 for x=0,1,2,3,4,5,6.

The programs for A198091, there is no canonical definition to state claims against.
-/

/-! ## A198091.P12040201928496332729

`A026179(A208650(n+1)+A015464(n))`
-/

namespace A198091.P12040201928496332729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (A208650 (n + 1) + A015464 n).toNat

end

end A198091.P12040201928496332729

/-!
# A198092: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,3,2,2,0,0,2 for x=0,1,2,3,4,5,6.

The programs for A198092, there is no canonical definition to state claims against.
-/

/-! ## A198092.P420988946420244622

`A004001(n*∑[a(n-1)²]+1)` with `a(0)=1, a(1)=2`
-/

namespace A198092.P420988946420244622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A198092.P420988946420244622

/-!
# A198093: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,2,0,2,2,1 for x=0,1,2,3,4,5,6.

The programs for A198093, there is no canonical definition to state claims against.
-/

/-! ## A198093.P18369950009540443854

`A218034(n)+A057360(A007004(n))`
-/

namespace A198093.P18369950009540443854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218034 n + A057360 (A007004 n).toNat

end

end A198093.P18369950009540443854

/-!
# A198094: 3rd term of continued fraction for sqrt(2)^sqrt(2)^...^sqrt(2) with n sqrt(2)'s.

The programs for A198094, there is no canonical definition to state claims against.
-/

/-! ## A198094.P9791705299999454829

`A280918(n+1)-A158388(n)`
-/

namespace A198094.P9791705299999454829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280918 (n + 1) - A158388 n

end

end A198094.P9791705299999454829

/-! ## A198094.P15315628567226605049

`A280918(n+1)+A153881(n+1)`
-/

namespace A198094.P15315628567226605049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280918 (n + 1) + A153881 (n + 1)

end

end A198094.P15315628567226605049

/-! ## A198094.P12429152548885253013

`A280918(n+1)-A033999(A033718(n))`
-/

namespace A198094.P12429152548885253013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280918 (n + 1) - A033999 (A033718 n).toNat

end

end A198094.P12429152548885253013

/-! ## A198094.P7972206736690156041

`A280918(n+1)+A008683(A008578(n+1))`
-/

namespace A198094.P7972206736690156041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280918 (n + 1) + A008683 (A008578 (n + 1)).toNat

end

end A198094.P7972206736690156041

/-! ## A198094.P18151985352022495490

`A280918(n+1)+A033999(A033718(n)+1)`
-/

namespace A198094.P18151985352022495490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280918 (n + 1) + A033999 (A033718 n + 1).toNat

end

end A198094.P18151985352022495490

/-! ## A198094.P8936697043276836624

`A280918(n+1)+A209635(A084127(n+1))`
-/

namespace A198094.P8936697043276836624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280918 (n + 1) + A209635 (A084127 (n + 1)).toNat

end

end A198094.P8936697043276836624

/-! ## A198094.P11937345715251283860

`A280918(n+1)-A152849(a(A051903(n)))` with `a(0)=2`
-/

namespace A198094.P11937345715251283860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A280918 (n + 1) - A152849 (a (A051903 n).toNat).toNat

end

end A198094.P11937345715251283860

/-! ## A198094.P12895673883321368253

`A280918(n+1)+A103452(A000217(n))`
-/

namespace A198094.P12895673883321368253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280918 (n + 1) + A103452 (A000217 n).toNat

end

end A198094.P12895673883321368253

/-!
# A198095: a(n) is the smallest number k such that d(1)*1! + d(2)*2! + ... + d(p)*p! = n^2, where d(i) are the decimal digits of k.

The programs for A198095, there is no canonical definition to state claims against.
-/

/-! ## A198095.P8523826434862728690

`A198044((n+1)²)`
-/

namespace A198095.P8523826434862728690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198044 ((n + 1) ^ 2)

end

end A198095.P8523826434862728690

/-! ## A198095.P13915875736286952688

`or(char[2], A198044(∑[2*n+1]))`
-/

namespace A198095.P13915875736286952688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A198044 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A198095.P13915875736286952688

/-! ## A198095.P5982713835204122402

`A007318(C(n, 2))*A198044(∑[2*n+1])`
-/

namespace A198095.P5982713835204122402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A198044 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198095.P5982713835204122402

/-! ## A198095.P9420003928069881888

`A014963(6*(n+1))*A198044(∑[2*n+1])`
-/

namespace A198095.P9420003928069881888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A198044 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198095.P9420003928069881888

/-! ## A198095.P7196981886333795840

`A198044(∑[2*n+1])/A000041(C(2, n+2))`
-/

namespace A198095.P7196981886333795840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198044 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A198095.P7196981886333795840

