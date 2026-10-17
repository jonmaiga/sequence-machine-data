import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B007.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A251802: Number of (2+1)X(n+1) 0..3 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251802, there is no canonical definition to state claims against.
-/

/-! ## A251802.P13653421632907883766

`A251801(∑[n+1]+2)`
-/

namespace A251802.P13653421632907883766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251802.P13653421632907883766

/-! ## A251802.P15209632559709369272

`A251801(A133263(n+1))%A251797(n+1)`
-/

namespace A251802.P15209632559709369272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251801 (A133263 (n + 1)).toNat) (A251797 (n + 1))

end

end A251802.P15209632559709369272

/-! ## A251802.P3564838336730731500

`A251801(A133263(n+1))+A063524(2*(n+2))`
-/

namespace A251802.P3564838336730731500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A133263 (n + 1)).toNat + A063524 (2 * (n + 2))

end

end A251802.P3564838336730731500

/-! ## A251802.P18387552689917642559

`A251801(A133263(n+1))*A329314(3*n+1)`
-/

namespace A251802.P18387552689917642559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A133263 (n + 1)).toNat * A329314 (3 * n + 1)

end

end A251802.P18387552689917642559

/-!
# A251803: Number of (3+1)X(n+1) 0..3 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251803, there is no canonical definition to state claims against.
-/

/-! ## A251803.P2419422761712651763

`A251801(∑[n+2]+4)`
-/

namespace A251803.P2419422761712651763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251803.P2419422761712651763

/-! ## A251803.P5460369350682945332

`lcm((n+1)/∏{p}[n+1, #], A251801(A167614(n+1)))`
-/

namespace A251803.P5460369350682945332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A251801 (A167614 (n + 1)).toNat)

end

end A251803.P5460369350682945332

/-! ## A251803.P14508553928720187628

`lcm(A033999(n), A251801(A167614(n+1)))`
-/

namespace A251803.P14508553928720187628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251801 (A167614 (n + 1)).toNat)

end

end A251803.P14508553928720187628

/-! ## A251803.P3940841188946587684

`or(A000007(n), A251801(A167614(n+1)))`
-/

namespace A251803.P3940841188946587684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251801 (A167614 (n + 1)).toNat)

end

end A251803.P3940841188946587684

/-! ## A251803.P16229687815880598849

`A326291(n+1)+A251801(A167614(n+1))`
-/

namespace A251803.P16229687815880598849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A251801 (A167614 (n + 1)).toNat

end

end A251803.P16229687815880598849

/-!
# A251804: Number of (4+1)X(n+1) 0..3 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251804, there is no canonical definition to state claims against.
-/

/-! ## A251804.P16019654749881431027

`A251801(A141214(n)+7)`
-/

namespace A251804.P16019654749881431027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A141214 n + 7).toNat

end

end A251804.P16019654749881431027

/-! ## A251804.P14031317922808138931

`A251801(A052905(n)+9)`
-/

namespace A251804.P14031317922808138931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A052905 n + 9).toNat

end

end A251804.P14031317922808138931

/-! ## A251804.P2728236701333774266

`A251801(A055999(n)+10)`
-/

namespace A251804.P2728236701333774266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A055999 n + 10).toNat

end

end A251804.P2728236701333774266

/-! ## A251804.P4431875928638603242

`A251801(A167614(n+2)+1)`
-/

namespace A251804.P4431875928638603242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A167614 (n + 2) + 1).toNat

end

end A251804.P4431875928638603242

/-! ## A251804.P13801070314031106432

`A251801(A166136(n+2)-2)`
-/

namespace A251804.P13801070314031106432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (A166136 (n + 2) - 2).toNat

end

end A251804.P13801070314031106432

/-!
# A251805: Number of (5+1)X(n+1) 0..3 arrays with no 2X2 subblock having x11-x00 less than x10-x01.

The programs for A251805, there is no canonical definition to state claims against.
-/

/-! ## A251805.P1039270856763135140

`A251801(eq[6, A131818(n+1)])`
-/

namespace A251805.P1039270856763135140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251805.P1039270856763135140

/-!
# A251808: Numbers n such that if m = reverse(phi(n)) then n = reverse(phi(m)).

The programs for A251808, there is no canonical definition to state claims against.
-/

/-! ## A251808.P15509550694677073285

`record[A072395(n+1)-A293553(A044046(n))]`
-/

namespace A251808.P15509550694677073285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072395 (n + 1) - A293553 (A044046 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251808.P15509550694677073285

/-!
# A251811: Number of (n+2)X(n+2) 0..2 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251811, there is no canonical definition to state claims against.
-/

/-! ## A251811.P13024093646445534874

`A251819(∑[4*n]+1)`
-/

namespace A251811.P13024093646445534874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251811.P13024093646445534874

/-! ## A251811.P17244791629088899308

`record[gcd(A114327(n), A251819(n+1))]`
-/

namespace A251811.P17244791629088899308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251819 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251811.P17244791629088899308

/-! ## A251811.P14466485106998457635

`lcm(A033999(n), A251819(A001844(n)))`
-/

namespace A251811.P14466485106998457635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251819 (A001844 n).toNat)

end

end A251811.P14466485106998457635

/-! ## A251811.P5283278091159667346

`A251819(A001844(n))+A008683(60*(n+1))`
-/

namespace A251811.P5283278091159667346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A001844 n).toNat + A008683 (60 * (n + 1))

end

end A251811.P5283278091159667346

/-! ## A251811.P15827188085089701205

`A251819(A001844(n))+(2*A000005(n+1))%2`
-/

namespace A251811.P15827188085089701205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A001844 n).toNat + Int.tmod (2 * A000005 (n + 1)) 2

end

end A251811.P15827188085089701205

/-!
# A251812: Number of (n+2)X(1+2) 0..2 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251812, there is no canonical definition to state claims against.
-/

/-! ## A251812.P3546804122069802555

`A251819(∑[n]+1)`
-/

namespace A251812.P3546804122069802555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251812.P3546804122069802555

/-! ## A251812.P14424553481558382233

`or(char[3], A251819(A000124(n)))`
-/

namespace A251812.P14424553481558382233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A251819 (A000124 n).toNat)

end

end A251812.P14424553481558382233

/-! ## A251812.P7815567312571445685

`record[A176270(n)*A251819(n+1)]`
-/

namespace A251812.P7815567312571445685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A251819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251812.P7815567312571445685

/-! ## A251812.P9136226439560121275

`record[root(A251819(n+1), A026300(n))]`
-/

namespace A251812.P9136226439560121275
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251819 (n + 1) : ℝ) ^ (1 / (A026300 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251812.P9136226439560121275

/-! ## A251812.P3460562916811777621

`record[root(A251819(n+1), A135226(n))]`
-/

namespace A251812.P3460562916811777621
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251819 (n + 1) : ℝ) ^ (1 / (A135226 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251812.P3460562916811777621

/-!
# A251813: Number of (n+2)X(2+2) 0..2 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251813, there is no canonical definition to state claims against.
-/

/-! ## A251813.P3587653935770121619

`A251819(∑[n+1]+2)`
-/

namespace A251813.P3587653935770121619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251813.P3587653935770121619

/-! ## A251813.P2340827729343270522

`record[A251819(A025796(n)+2)]`
-/

namespace A251813.P2340827729343270522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A025796 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251813.P2340827729343270522

/-! ## A251813.P12897427779559271202

`A033999(n)²*A251819(A133263(n+1))`
-/

namespace A251813.P12897427779559271202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A251819 (A133263 (n + 1)).toNat

end

end A251813.P12897427779559271202

/-! ## A251813.P17070376811675796767

`A251819(A133263(n+1))%A251785(n+1)`
-/

namespace A251813.P17070376811675796767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251819 (A133263 (n + 1)).toNat) (A251785 (n + 1))

end

end A251813.P17070376811675796767

/-! ## A251813.P14022888604422203238

`A008304(A127739(n+1))*A251819(A133263(n+1))`
-/

namespace A251813.P14022888604422203238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A127739 (n + 1)).toNat * A251819 (A133263 (n + 1)).toNat

end

end A251813.P14022888604422203238

/-!
# A251814: Number of (n+2)X(3+2) 0..2 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251814, there is no canonical definition to state claims against.
-/

/-! ## A251814.P3469443897190668655

`A251819(∑[n+2]+4)`
-/

namespace A251814.P3469443897190668655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251814.P3469443897190668655

/-! ## A251814.P10769326013969688828

`lcm(A158388(n), A251819(A167614(n+1)))`
-/

namespace A251814.P10769326013969688828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A251819 (A167614 (n + 1)).toNat)

end

end A251814.P10769326013969688828

/-! ## A251814.P4039160108266161943

`or(A113217(n), A251819(A167614(n+1)))`
-/

namespace A251814.P4039160108266161943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113217 n) (A251819 (A167614 (n + 1)).toNat)

end

end A251814.P4039160108266161943

/-! ## A251814.P12085356665192071948

`A251819(A167614(n+1))+A034541(n+1)`
-/

namespace A251814.P12085356665192071948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A167614 (n + 1)).toNat + A034541 (n + 1)

end

end A251814.P12085356665192071948

/-! ## A251814.P7772051093624942050

`A251819(A167614(n+1))%A251815(n+1)`
-/

namespace A251814.P7772051093624942050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251819 (A167614 (n + 1)).toNat) (A251815 (n + 1))

end

end A251814.P7772051093624942050

/-!
# A251815: Number of (n+2)X(4+2) 0..2 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251815, there is no canonical definition to state claims against.
-/

/-! ## A251815.P7775672218598368070

`A251819(A374004(n+1))`
-/

namespace A251815.P7775672218598368070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A374004 (n + 1)).toNat

end

end A251815.P7775672218598368070

/-! ## A251815.P7486239994333833846

`A251819(A167614(n+2)+1)`
-/

namespace A251815.P7486239994333833846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A167614 (n + 2) + 1).toNat

end

end A251815.P7486239994333833846

/-! ## A251815.P16780489270771523238

`A251819(A080036(A167614(n+1)))`
-/

namespace A251815.P16780489270771523238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A251815.P16780489270771523238

/-! ## A251815.P17579090952769784541

`A251819(A141214(n+1))`
-/

namespace A251815.P17579090952769784541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A141214 (n + 1)).toNat

end

end A251815.P17579090952769784541

/-! ## A251815.P17949885440774605988

`A251819(A055998(n+2))`
-/

namespace A251815.P17949885440774605988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A055998 (n + 2)).toNat

end

end A251815.P17949885440774605988

/-!
# A251816: Number of (n+2)X(5+2) 0..2 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251816, there is no canonical definition to state claims against.
-/

/-! ## A251816.P15386937362727660637

`A251819(A374005(n+1))`
-/

namespace A251816.P15386937362727660637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A374005 (n + 1)).toNat

end

end A251816.P15386937362727660637

/-! ## A251816.P3440306081618883389

`A251819(A167499(n+3))`
-/

namespace A251816.P3440306081618883389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A167499 (n + 3)).toNat

end

end A251816.P3440306081618883389

/-! ## A251816.P2303099980188014238

`A251819(A000217(n+4)+5)`
-/

namespace A251816.P2303099980188014238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A000217 (n + 4) + 5).toNat

end

end A251816.P2303099980188014238

/-! ## A251816.P9654247307898364487

`A251819(A055998(n+2)+8)`
-/

namespace A251816.P9654247307898364487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A055998 (n + 2) + 8).toNat

end

end A251816.P9654247307898364487

/-! ## A251816.P12245751692450733910

`A251819(A052905(n+1)+10)`
-/

namespace A251816.P12245751692450733910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A052905 (n + 1) + 10).toNat

end

end A251816.P12245751692450733910

/-!
# A251817: Number of (n+2)X(6+2) 0..2 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251817, there is no canonical definition to state claims against.
-/

/-! ## A251817.P12055058509785110599

`A251819(A374007(n+1))`
-/

namespace A251817.P12055058509785110599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A374007 (n + 1)).toNat

end

end A251817.P12055058509785110599

/-! ## A251817.P10523750113619866744

`A251819(A167499(n+4)+1)`
-/

namespace A251817.P10523750113619866744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A167499 (n + 4) + 1).toNat

end

end A251817.P10523750113619866744

/-! ## A251817.P14986715158175814338

`A251819(A133263(n+5)+4)`
-/

namespace A251817.P14986715158175814338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A133263 (n + 5) + 4).toNat

end

end A251817.P14986715158175814338

/-! ## A251817.P17192483002987768145

`A251819(A000124(n+5)+5)`
-/

namespace A251817.P17192483002987768145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A000124 (n + 5) + 5).toNat

end

end A251817.P17192483002987768145

/-! ## A251817.P16708982038157469940

`A251819(A000217(n+5)+6)`
-/

namespace A251817.P16708982038157469940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A000217 (n + 5) + 6).toNat

end

end A251817.P16708982038157469940

/-!
# A251818: Number of (n+2)X(7+2) 0..2 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251818, there is no canonical definition to state claims against.
-/

/-! ## A251818.P6780995464965486545

`A251819(A374008(n+1))`
-/

namespace A251818.P6780995464965486545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A374008 (n + 1)).toNat

end

end A251818.P6780995464965486545

/-! ## A251818.P2318873587160822791

`A251819(A000217(n+6)+7)`
-/

namespace A251818.P2318873587160822791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A000217 (n + 6) + 7).toNat

end

end A251818.P2318873587160822791

/-! ## A251818.P9469735434305288455

`A251819(eq[8, A131818(n+1)])`
-/

namespace A251818.P9469735434305288455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251818.P9469735434305288455

/-! ## A251818.P16067298849019963135

`A251819(A055999(n+4))`
-/

namespace A251818.P16067298849019963135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (A055999 (n + 4)).toNat

end

end A251818.P16067298849019963135

/-! ## A251818.P12743976756994697886

`A251819(eq[6, A193592(n)])`
-/

namespace A251818.P12743976756994697886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251818.P12743976756994697886

/-!
# A251821: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not 3 or 6 and every diagonal and antidiagonal sum 3 or 6.

The programs for A251821, there is no canonical definition to state claims against.
-/

/-! ## A251821.P7238028687729991174

`A251829(∑[4*n]+1)`
-/

namespace A251821.P7238028687729991174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251821.P7238028687729991174

/-! ## A251821.P7357168203272905266

`lcm(2, A251829(A001844(n)))`
-/

namespace A251821.P7357168203272905266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251829 (A001844 n).toNat)

end

end A251821.P7357168203272905266

/-! ## A251821.P10218945790420208665

`record[gcd(A114327(n), A251829(n+1))]`
-/

namespace A251821.P10218945790420208665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A251829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251821.P10218945790420208665

/-! ## A251821.P5750623327590365323

`A052307(n)*A251829(A001844(n))`
-/

namespace A251821.P5750623327590365323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n * A251829 (A001844 n).toNat

end

end A251821.P5750623327590365323

/-! ## A251821.P10911127453573120772

`and(A251829(A001844(n)), A321804(n))`
-/

namespace A251821.P10911127453573120772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A251829 (A001844 n).toNat) (A321804 n)

end

end A251821.P10911127453573120772

/-!
# A251822: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not 3 or 6 and every diagonal and antidiagonal sum 3 or 6.

The programs for A251822, there is no canonical definition to state claims against.
-/

/-! ## A251822.P4266601786993875180

`A251829(∑[n]+1)`
-/

namespace A251822.P4266601786993875180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251822.P4266601786993875180

/-! ## A251822.P4092582366008881924

`or(2, A251829(A000124(n)))`
-/

namespace A251822.P4092582366008881924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A251829 (A000124 n).toNat)

end

end A251822.P4092582366008881924

/-! ## A251822.P3403703277541006202

`char[A292371(n)]*A251829(A000124(n))`
-/

namespace A251822.P3403703277541006202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A251829 (A000124 n).toNat

end

end A251822.P3403703277541006202

/-! ## A251822.P3423565903736647255

`A251829(A000124(n))+A000007(n+1)`
-/

namespace A251822.P3423565903736647255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A000124 n).toNat + A000007 (n + 1)

end

end A251822.P3423565903736647255

/-! ## A251822.P14719403329426892465

`A251829(A000124(n))+and(2, A000290(n))`
-/

namespace A251822.P14719403329426892465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A000124 n).toNat + Int.land 2 (A000290 n)

end

end A251822.P14719403329426892465

/-!
# A251823: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not 3 or 6 and every diagonal and antidiagonal sum 3 or 6.

The programs for A251823, there is no canonical definition to state claims against.
-/

/-! ## A251823.P18309124106971273416

`A251829(∑[n+1]+2)`
-/

namespace A251823.P18309124106971273416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251823.P18309124106971273416

/-! ## A251823.P15280424183967962727

`A251829(A133263(n+1))%A251787(n+1)`
-/

namespace A251823.P15280424183967962727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251829 (A133263 (n + 1)).toNat) (A251787 (n + 1))

end

end A251823.P15280424183967962727

/-! ## A251823.P10155226653808282922

`lcm(2, A251829(A000096(n+1)))`
-/

namespace A251823.P10155226653808282922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251829 (A000096 (n + 1)).toNat)

end

end A251823.P10155226653808282922

/-! ## A251823.P17794174186251989646

`A000034(2*n)*A251829(A000096(n+1))`
-/

namespace A251823.P17794174186251989646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A251829 (A000096 (n + 1)).toNat

end

end A251823.P17794174186251989646

/-! ## A251823.P7218637806372825153

`A014963(12*(n+1))*A251829(A000096(n+1))`
-/

namespace A251823.P7218637806372825153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A251829 (A000096 (n + 1)).toNat

end

end A251823.P7218637806372825153

/-!
# A251824: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not 3 or 6 and every diagonal and antidiagonal sum 3 or 6.

The programs for A251824, there is no canonical definition to state claims against.
-/

/-! ## A251824.P7643184355522553927

`A251829(∑[n+2]+4)`
-/

namespace A251824.P7643184355522553927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251824.P7643184355522553927

/-! ## A251824.P18239896494233365936

`lcm(2, A251829(A167614(n+1)))`
-/

namespace A251824.P18239896494233365936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251829 (A167614 (n + 1)).toNat)

end

end A251824.P18239896494233365936

/-! ## A251824.P11948403598499294701

`A251829(A167614(n+1))+A184946(n)`
-/

namespace A251824.P11948403598499294701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A167614 (n + 1)).toNat + A184946 n

end

end A251824.P11948403598499294701

/-! ## A251824.P4523498696955554216

`or(A000038(n), A251829(A167614(n+1)))`
-/

namespace A251824.P4523498696955554216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251829 (A167614 (n + 1)).toNat)

end

end A251824.P4523498696955554216

/-! ## A251824.P17652313537486432969

`A251829(A167614(n+1))+A034471(n+1)`
-/

namespace A251824.P17652313537486432969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A167614 (n + 1)).toNat + A034471 (n + 1)

end

end A251824.P17652313537486432969

/-!
# A251825: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 3 or 6 and every diagonal and antidiagonal sum 3 or 6.

The programs for A251825, there is no canonical definition to state claims against.
-/

/-! ## A251825.P5488025850832826323

`A251829(A141214(n)+7)`
-/

namespace A251825.P5488025850832826323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A141214 n + 7).toNat

end

end A251825.P5488025850832826323

/-! ## A251825.P13957234252748101938

`A251829(A052905(n)+9)`
-/

namespace A251825.P13957234252748101938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A052905 n + 9).toNat

end

end A251825.P13957234252748101938

/-! ## A251825.P4661602895148910674

`A251829(A055999(n)+10)`
-/

namespace A251825.P4661602895148910674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A055999 n + 10).toNat

end

end A251825.P4661602895148910674

/-! ## A251825.P17266019312885836652

`A251829(A167614(n+2)+1)`
-/

namespace A251825.P17266019312885836652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A167614 (n + 2) + 1).toNat

end

end A251825.P17266019312885836652

/-! ## A251825.P7244457408260324376

`A251829(A166136(n+2)-2)`
-/

namespace A251825.P7244457408260324376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A166136 (n + 2) - 2).toNat

end

end A251825.P7244457408260324376

/-!
# A251826: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not 3 or 6 and every diagonal and antidiagonal sum 3 or 6.

The programs for A251826, there is no canonical definition to state claims against.
-/

/-! ## A251826.P8058497553262226924

`A251829(A167499(n+3))`
-/

namespace A251826.P8058497553262226924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A167499 (n + 3)).toNat

end

end A251826.P8058497553262226924

/-! ## A251826.P8251391850908624215

`A251829(eq[6, A131818(n+1)])`
-/

namespace A251826.P8251391850908624215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251826.P8251391850908624215

/-! ## A251826.P2855988596330962853

`A251829(A374005(n+1))`
-/

namespace A251826.P2855988596330962853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A374005 (n + 1)).toNat

end

end A251826.P2855988596330962853

/-! ## A251826.P9685443405074583394

`A251829(eq[4, A193592(n)])`
-/

namespace A251826.P9685443405074583394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251826.P9685443405074583394

/-! ## A251826.P3080606284278098906

`A251829(eq[5, A239144(n)])`
-/

namespace A251826.P3080606284278098906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251826.P3080606284278098906

/-!
# A251827: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not 3 or 6 and every diagonal and antidiagonal sum 3 or 6.

The programs for A251827, there is no canonical definition to state claims against.
-/

/-! ## A251827.P1067940679120361100

`A251829(eq[7, A131818(n+1)])`
-/

namespace A251827.P1067940679120361100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251827.P1067940679120361100

/-! ## A251827.P6021607142126554786

`A251829(A374007(n+1))`
-/

namespace A251827.P6021607142126554786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A374007 (n + 1)).toNat

end

end A251827.P6021607142126554786

/-! ## A251827.P6909281193230233787

`A251829(A052905(n+3))`
-/

namespace A251827.P6909281193230233787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A052905 (n + 3)).toNat

end

end A251827.P6909281193230233787

/-! ## A251827.P5050701235091298392

`A251829(eq[3, A219347(n)])`
-/

namespace A251827.P5050701235091298392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251827.P5050701235091298392

/-! ## A251827.P1346760836031791409

`A251829(eq[5, A193592(n)])`
-/

namespace A251827.P1346760836031791409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251827.P1346760836031791409

/-!
# A251828: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 3 or 6 and every diagonal and antidiagonal sum 3 or 6.

The programs for A251828, there is no canonical definition to state claims against.
-/

/-! ## A251828.P8108922120138618037

`A251829(A374008(n+1))`
-/

namespace A251828.P8108922120138618037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A374008 (n + 1)).toNat

end

end A251828.P8108922120138618037

/-! ## A251828.P8930253113201352086

`A251829(A055999(n+4))`
-/

namespace A251828.P8930253113201352086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (A055999 (n + 4)).toNat

end

end A251828.P8930253113201352086

/-! ## A251828.P12872288413116846951

`A251829(eq[4, A219347(n)])`
-/

namespace A251828.P12872288413116846951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251828.P12872288413116846951

/-! ## A251828.P17763091819732186702

`A251829(eq[6, A193592(n)])`
-/

namespace A251828.P17763091819732186702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251828.P17763091819732186702

/-! ## A251828.P17812186899657141587

`A251829(eq[7, A200370(n+1)])`
-/

namespace A251828.P17812186899657141587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251828.P17812186899657141587

/-!
# A251830: Number of (n+2) X (1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3 X 3 subblock summing to 3 4 5 or 6.

The programs for A251830, there is no canonical definition to state claims against.
-/

/-! ## A251830.P17659033498445199119

`2*A252441(n+1)`
-/

namespace A251830.P17659033498445199119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252441 (n + 1)

end

end A251830.P17659033498445199119

/-! ## A251830.P6583854104753045688

`4*A252441(Δ[n²]-n)/2`
-/

namespace A251830.P6583854104753045688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A252441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2

end

end A251830.P6583854104753045688

/-! ## A251830.P8632024298417617568

`A252441(n+1)+A252441(Δ[n²]-n)`
-/

namespace A251830.P8632024298417617568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252441 (n + 1) + A252441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A251830.P8632024298417617568

/-! ## A251830.P13809229369958556725

`A252441(n+1)+record[A252441(A300835(n+1))]`
-/

namespace A251830.P13809229369958556725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252441 (A300835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252441 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251830.P13809229369958556725

/-! ## A251830.P14044702064096608385

`A252441(n+1)+A252441(n+1)%A252454(n+1)`
-/

namespace A251830.P14044702064096608385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252441 (n + 1) + Int.tmod (A252441 (n + 1)) (A252454 (n + 1))

end

end A251830.P14044702064096608385

/-! ## A251830.P4840453000294457243

`A252441(n+1)+A252441(n+1)+A121454(A017017(n))`
-/

namespace A251830.P4840453000294457243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252441 (n + 1) + (A252441 (n + 1) + A121454 (A017017 n).toNat)

end

end A251830.P4840453000294457243

/-!
# A251831: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 4 5 or 6.

The programs for A251831, there is no canonical definition to state claims against.
-/

/-! ## A251831.P7034889739222894538

`2*A252442(n+1)`
-/

namespace A251831.P7034889739222894538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252442 (n + 1)

end

end A251831.P7034889739222894538

/-! ## A251831.P17100532606327260416

`A252442(A000027(n+1))+A252442(n+1)`
-/

namespace A251831.P17100532606327260416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252442 (A000027 (n + 1)).toNat + A252442 (n + 1)

end

end A251831.P17100532606327260416

/-! ## A251831.P6823471841507037827

`A252442(n+1)+A252442(n+1)%A252443(n+1)`
-/

namespace A251831.P6823471841507037827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252442 (n + 1) + Int.tmod (A252442 (n + 1)) (A252443 (n + 1))

end

end A251831.P6823471841507037827

/-! ## A251831.P1676912383621068146

`A252442(A187829(n+1))+A252442(n+1)`
-/

namespace A251831.P1676912383621068146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252442 (A187829 (n + 1)).toNat + A252442 (n + 1)

end

end A251831.P1676912383621068146

/-! ## A251831.P7433085942490812898

`A251836(∑[n+1]+2)`
-/

namespace A251831.P7433085942490812898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251836 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251831.P7433085942490812898

/-!
# A251832: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 4 5 or 6.

The programs for A251832, there is no canonical definition to state claims against.
-/

/-! ## A251832.P7953636741274674243

`2*A252443(n+1)`
-/

namespace A251832.P7953636741274674243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252443 (n + 1)

end

end A251832.P7953636741274674243

/-! ## A251832.P2595792182383889752

`A252443(n+1)+A252443(n+1)+A005843(n)%2`
-/

namespace A251832.P2595792182383889752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252443 (n + 1) + (A252443 (n + 1) + Int.tmod (A005843 n) 2)

end

end A251832.P2595792182383889752

/-! ## A251832.P12394355510910575359

`A252443(n+1)+A252443(n+1)+A000038(A235697(n+1))`
-/

namespace A251832.P12394355510910575359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252443 (n + 1) + (A252443 (n + 1) + A000038 (A235697 (n + 1)).toNat)

end

end A251832.P12394355510910575359

/-! ## A251832.P1411290604366500004

`A252443(n+1)+A252443(A328617(n+1))`
-/

namespace A251832.P1411290604366500004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252443 (n + 1) + A252443 (A328617 (n + 1)).toNat

end

end A251832.P1411290604366500004

/-! ## A251832.P4590980744137250170

`A251836(∑[n+2]+4)`
-/

namespace A251832.P4590980744137250170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251836 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251832.P4590980744137250170

/-!
# A251833: Number of (n+2)X(4+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 4 5 or 6.

The programs for A251833, there is no canonical definition to state claims against.
-/

/-! ## A251833.P6040182912223053562

`2*A252444(n+1)`
-/

namespace A251833.P6040182912223053562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252444 (n + 1)

end

end A251833.P6040182912223053562

/-! ## A251833.P6253752475210861866

`A252444(A187829(n+1))+A252444(n+1)`
-/

namespace A251833.P6253752475210861866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252444 (A187829 (n + 1)).toNat + A252444 (n + 1)

end

end A251833.P6253752475210861866

/-! ## A251833.P10141188912271346135

`A251836(A374004(n+1))`
-/

namespace A251833.P10141188912271346135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251836 (A374004 (n + 1)).toNat

end

end A251833.P10141188912271346135

/-! ## A251833.P13466481860120697239

`A251836(A052905(n)+9)`
-/

namespace A251833.P13466481860120697239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251836 (A052905 n + 9).toNat

end

end A251833.P13466481860120697239

/-! ## A251833.P8947446320166739263

`A251836(A055999(n)+10)`
-/

namespace A251833.P8947446320166739263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251836 (A055999 n + 10).toNat

end

end A251833.P8947446320166739263

/-!
# A251834: Number of (n+2)X(5+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 4 5 or 6.

The programs for A251834, there is no canonical definition to state claims against.
-/

/-! ## A251834.P9340796733527094494

`2*A252445(n+1)`
-/

namespace A251834.P9340796733527094494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252445 (n + 1)

end

end A251834.P9340796733527094494

/-! ## A251834.P3777295141028271390

`A252445(A000027(n+1))+A252445(n+1)`
-/

namespace A251834.P3777295141028271390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252445 (A000027 (n + 1)).toNat + A252445 (n + 1)

end

end A251834.P3777295141028271390

/-! ## A251834.P7204500200862684308

`A252445(A130446(n+1))+A252445(n+1)`
-/

namespace A251834.P7204500200862684308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252445 (A130446 (n + 1)).toNat + A252445 (n + 1)

end

end A251834.P7204500200862684308

/-! ## A251834.P14591342433428199163

`A252445(n+1)+lcm(A057077(n), A252445(n+1))`
-/

namespace A251834.P14591342433428199163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252445 (n + 1) + (Int.lcm (A057077 n) (A252445 (n + 1)) : ℤ)

end

end A251834.P14591342433428199163

/-! ## A251834.P15093877133086619172

`A252445(A187829(n+1))+A252445(n+1)`
-/

namespace A251834.P15093877133086619172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252445 (A187829 (n + 1)).toNat + A252445 (n + 1)

end

end A251834.P15093877133086619172

/-!
# A251835: Number of (n+2)X(6+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 4 5 or 6.

The programs for A251835, there is no canonical definition to state claims against.
-/

/-! ## A251835.P16701492548961613117

`2*A252446(n+1)`
-/

namespace A251835.P16701492548961613117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252446 (n + 1)

end

end A251835.P16701492548961613117

/-! ## A251835.P11709038321062939112

`A251836(A374007(n+1))`
-/

namespace A251835.P11709038321062939112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251836 (A374007 (n + 1)).toNat

end

end A251835.P11709038321062939112

/-! ## A251835.P1542960373859165372

`A251836(A052905(n+3))`
-/

namespace A251835.P1542960373859165372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251836 (A052905 (n + 3)).toNat

end

end A251835.P1542960373859165372

/-!
# A251836: T(n,k)=Number of (n+2)X(k+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 4 5 or 6.

The programs for A251836, there is no canonical definition to state claims against.
-/

/-! ## A251836.P694733016809425371

`2*A252447(n+1)`
-/

namespace A251836.P694733016809425371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252447 (n + 1)

end

end A251836.P694733016809425371

/-! ## A251836.P10179543967402660454

`A252447(char[1]+1+n)+A252447(n+1)`
-/

namespace A251836.P10179543967402660454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A252447 (n + 1)

end

end A251836.P10179543967402660454

/-! ## A251836.P1439743146450831965

`A252447(n+1)+lcm(A057077(n), A252447(n+1))`
-/

namespace A251836.P1439743146450831965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252447 (n + 1) + (Int.lcm (A057077 n) (A252447 (n + 1)) : ℤ)

end

end A251836.P1439743146450831965

/-! ## A251836.P4541149530489924946

`A252447(n+1)+A252447(n+1)/A178334(n+1)`
-/

namespace A251836.P4541149530489924946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252447 (n + 1) : ℚ) + (A252447 (n + 1) : ℚ) / (A178334 (n + 1) : ℚ)

end

end A251836.P4541149530489924946

/-!
# A251837: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A251837, there is no canonical definition to state claims against.
-/

/-! ## A251837.P15908871647755542616

`A251845((n+1)²+n²)`
-/

namespace A251837.P15908871647755542616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 ((n + 1) ^ 2 + n ^ 2)

end

end A251837.P15908871647755542616

/-! ## A251837.P9312863918197351347

`lcm(A033999(n), A251845(A001844(n)))`
-/

namespace A251837.P9312863918197351347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251845 (A001844 n).toNat)

end

end A251837.P9312863918197351347

/-! ## A251837.P6643447470615709827

`or(A000038(n), A251845(A001844(n)))`
-/

namespace A251837.P6643447470615709827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251845 (A001844 n).toNat)

end

end A251837.P6643447470615709827

/-! ## A251837.P8487761747483353921

`A251845(A001844(n))+A034547(n+1)`
-/

namespace A251837.P8487761747483353921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A001844 n).toNat + A034547 (n + 1)

end

end A251837.P8487761747483353921

/-! ## A251837.P13797759636325531697

`A007318(C(2, n))*A251845(A001844(n))`
-/

namespace A251837.P13797759636325531697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251845 (A001844 n).toNat

end

end A251837.P13797759636325531697

/-!
# A251838: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A251838, there is no canonical definition to state claims against.
-/

/-! ## A251838.P17584870082822483126

`A251845(∑[n]+1)`
-/

namespace A251838.P17584870082822483126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251838.P17584870082822483126

/-! ## A251838.P16444224413786137725

`A251845(A000124(n))+A185284(n)`
-/

namespace A251838.P16444224413786137725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A000124 n).toNat + A185284 n

end

end A251838.P16444224413786137725

/-! ## A251838.P17600545382709492697

`lcm(A100051(n), A251845(A000124(n)))`
-/

namespace A251838.P17600545382709492697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100051 n) (A251845 (A000124 n).toNat)

end

end A251838.P17600545382709492697

/-! ## A251838.P8480661050615984362

`A251845(A000124(n))+A000038(n+1)`
-/

namespace A251838.P8480661050615984362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A000124 n).toNat + A000038 (n + 1)

end

end A251838.P8480661050615984362

/-! ## A251838.P4465281039807232692

`and(1, A060391(n))*A251845(A000124(n))`
-/

namespace A251838.P4465281039807232692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A060391 n) * A251845 (A000124 n).toNat

end

end A251838.P4465281039807232692

/-!
# A251839: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A251839, there is no canonical definition to state claims against.
-/

/-! ## A251839.P17659810997186122154

`A251845(∑[n+1]+2)`
-/

namespace A251839.P17659810997186122154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251839.P17659810997186122154

/-! ## A251839.P6672043520241857160

`A010137(2*n+1)*A251845(A000096(n+1))`
-/

namespace A251839.P6672043520241857160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (2 * n + 1) * A251845 (A000096 (n + 1)).toNat

end

end A251839.P6672043520241857160

/-! ## A251839.P4652367664580804140

`A000027(A251845(∑[n+2]))`
-/

namespace A251839.P4652367664580804140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A251845 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A251839.P4652367664580804140

/-!
# A251840: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A251840, there is no canonical definition to state claims against.
-/

/-! ## A251840.P7226359113670273426

`A251845(∑[n+2]+4)`
-/

namespace A251840.P7226359113670273426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251840.P7226359113670273426

/-! ## A251840.P2953119330379915786

`lcm(A033999(n), A251845(A167614(n+1)))`
-/

namespace A251840.P2953119330379915786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251845 (A167614 (n + 1)).toNat)

end

end A251840.P2953119330379915786

/-! ## A251840.P10360807551818224567

`A251845(A167614(n+1))+A238403(n+1)`
-/

namespace A251840.P10360807551818224567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A167614 (n + 1)).toNat + A238403 (n + 1)

end

end A251840.P10360807551818224567

/-! ## A251840.P9679604315384008337

`A033999(2*n)*A251845(A167614(n+1))`
-/

namespace A251840.P9679604315384008337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A251845 (A167614 (n + 1)).toNat

end

end A251840.P9679604315384008337

/-! ## A251840.P12414868959650696013

`A001221(A107178(n+1))*A251845(A167614(n+1))`
-/

namespace A251840.P12414868959650696013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A107178 (n + 1)).toNat * A251845 (A167614 (n + 1)).toNat

end

end A251840.P12414868959650696013

/-!
# A251841: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A251841, there is no canonical definition to state claims against.
-/

/-! ## A251841.P13137055513576486958

`A251845(A141214(n)+7)`
-/

namespace A251841.P13137055513576486958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A141214 n + 7).toNat

end

end A251841.P13137055513576486958

/-! ## A251841.P18179036383554315903

`A251845(A167614(n+2)+1)`
-/

namespace A251841.P18179036383554315903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A167614 (n + 2) + 1).toNat

end

end A251841.P18179036383554315903

/-! ## A251841.P4090244298955203052

`A251845(A167499(n+2)-1)`
-/

namespace A251841.P4090244298955203052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A167499 (n + 2) - 1).toNat

end

end A251841.P4090244298955203052

/-! ## A251841.P9949034952868024364

`A251845(A166136(n+2)-2)`
-/

namespace A251841.P9949034952868024364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A166136 (n + 2) - 2).toNat

end

end A251841.P9949034952868024364

/-! ## A251841.P12761734099306451682

`A251845(A166136(n+1)+1+n)`
-/

namespace A251841.P12761734099306451682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A251841.P12761734099306451682

/-!
# A251842: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A251842, there is no canonical definition to state claims against.
-/

/-! ## A251842.P13324109291382417143

`A251845(A167499(n+3))`
-/

namespace A251842.P13324109291382417143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A167499 (n + 3)).toNat

end

end A251842.P13324109291382417143

/-! ## A251842.P4529874675874788156

`A251845(A077169(n+5))`
-/

namespace A251842.P4529874675874788156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A077169 (n + 5)).toNat

end

end A251842.P4529874675874788156

/-! ## A251842.P5858871893672324760

`A251845(A000217(n+4)+5)`
-/

namespace A251842.P5858871893672324760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A000217 (n + 4) + 5).toNat

end

end A251842.P5858871893672324760

/-! ## A251842.P9737230395045543582

`A251845(A000124(n+5)-(n+1))`
-/

namespace A251842.P9737230395045543582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A251842.P9737230395045543582

/-! ## A251842.P34933767182540263

`A251845(A374005(n+1))`
-/

namespace A251842.P34933767182540263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A374005 (n + 1)).toNat

end

end A251842.P34933767182540263

/-!
# A251843: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A251843, there is no canonical definition to state claims against.
-/

/-! ## A251843.P12122440057994134329

`A251845(A166136(n+4))`
-/

namespace A251843.P12122440057994134329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A166136 (n + 4)).toNat

end

end A251843.P12122440057994134329

/-! ## A251843.P13972847743663444884

`A251845(A167499(n+4)+1)`
-/

namespace A251843.P13972847743663444884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A167499 (n + 4) + 1).toNat

end

end A251843.P13972847743663444884

/-! ## A251843.P2158053200462946769

`A251845(A000124(n+5)+5)`
-/

namespace A251843.P2158053200462946769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A000124 (n + 5) + 5).toNat

end

end A251843.P2158053200462946769

/-! ## A251843.P1896024104316679765

`A251845(A141214(n+2)+9)`
-/

namespace A251843.P1896024104316679765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A141214 (n + 2) + 9).toNat

end

end A251843.P1896024104316679765

/-! ## A251843.P9512817917439441703

`record[A251845(n+16)/A074909(n+10)]`
-/

namespace A251843.P9512817917439441703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251845 (n + 16) : ℚ) / (A074909 (n + 10) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251843.P9512817917439441703

/-!
# A251844: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum nonprime and every diagonal and antidiagonal sum prime.

The programs for A251844, there is no canonical definition to state claims against.
-/

/-! ## A251844.P10201175770374365769

`A251845(A167499(n+5)+2)`
-/

namespace A251844.P10201175770374365769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A167499 (n + 5) + 2).toNat

end

end A251844.P10201175770374365769

/-! ## A251844.P3609593254698406499

`A251845(A000217(n+6)+7)`
-/

namespace A251844.P3609593254698406499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A000217 (n + 6) + 7).toNat

end

end A251844.P3609593254698406499

/-! ## A251844.P3738783820589030621

`A251845(A000124(n+7)-(n+1))`
-/

namespace A251844.P3738783820589030621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A251844.P3738783820589030621

/-! ## A251844.P11020620274788721362

`A251845(A167614(n+3)+A005408(n+7))`
-/

namespace A251844.P11020620274788721362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A167614 (n + 3) + A005408 (n + 7)).toNat

end

end A251844.P11020620274788721362

/-! ## A251844.P3275231168966074596

`A251845(A374008(n+1))`
-/

namespace A251844.P3275231168966074596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251845 (A374008 (n + 1)).toNat

end

end A251844.P3275231168966074596

/-!
# A251846: Number of (n+2)X(1+2) 0..3 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251846, there is no canonical definition to state claims against.
-/

/-! ## A251846.P10871713597298171337

`A251852(∑[n]+1)`
-/

namespace A251846.P10871713597298171337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251846.P10871713597298171337

/-! ## A251846.P9758948563005341349

`record[A251852(n+1)/A015117(n)]`
-/

namespace A251846.P9758948563005341349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251852 (n + 1) : ℚ) / (A015117 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251846.P9758948563005341349

/-! ## A251846.P160059975815529879

`record[A251852(n+1)/A176639(n)]`
-/

namespace A251846.P160059975815529879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251852 (n + 1) : ℚ) / (A176639 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251846.P160059975815529879

/-! ## A251846.P12804159590897599165

`record[A251852(n+1)/A202549(n+1)]`
-/

namespace A251846.P12804159590897599165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251852 (n + 1) : ℚ) / (A202549 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251846.P12804159590897599165

/-! ## A251846.P12997632768896766975

`record[A251852(n+1)/A268056(n+1)]`
-/

namespace A251846.P12997632768896766975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251852 (n + 1) : ℚ) / (A268056 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251846.P12997632768896766975

/-!
# A251847: Number of (n+2)X(2+2) 0..3 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251847, there is no canonical definition to state claims against.
-/

/-! ## A251847.P14761559819084638779

`A251852(∑[n+1]+2)`
-/

namespace A251847.P14761559819084638779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251847.P14761559819084638779

/-! ## A251847.P1403525352854823008

`record[A251852(lt[A176639(n), n])]`
-/

namespace A251847.P1403525352854823008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176639 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251847.P1403525352854823008

/-! ## A251847.P7154766704066870969

`record[A251852(lt[A183413(n+1), n])]`
-/

namespace A251847.P7154766704066870969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183413 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251847.P7154766704066870969

/-! ## A251847.P12651605136758550495

`A251852(A000096(n+1))+A185715(n+1)`
-/

namespace A251847.P12651605136758550495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A000096 (n + 1)).toNat + A185715 (n + 1)

end

end A251847.P12651605136758550495

/-! ## A251847.P14086830996599030694

`A007877(2*n+1)*A251852(A000096(n+1))`
-/

namespace A251847.P14086830996599030694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (2 * n + 1) * A251852 (A000096 (n + 1)).toNat

end

end A251847.P14086830996599030694

/-!
# A251848: Number of (n+2)X(3+2) 0..3 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251848, there is no canonical definition to state claims against.
-/

/-! ## A251848.P18072780893966087145

`A251852(∑[n+2]+4)`
-/

namespace A251848.P18072780893966087145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251848.P18072780893966087145

/-! ## A251848.P5176666391981092769

`A251852(A167614(n+1))+A025444(n)`
-/

namespace A251848.P5176666391981092769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A167614 (n + 1)).toNat + A025444 n

end

end A251848.P5176666391981092769

/-! ## A251848.P11781561469917215465

`A251852(A167614(n+1))+A090620(n)`
-/

namespace A251848.P11781561469917215465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A167614 (n + 1)).toNat + A090620 n

end

end A251848.P11781561469917215465

/-! ## A251848.P10194601706119170180

`A014902(n)*A251852(A167614(n+1))`
-/

namespace A251848.P10194601706119170180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 n * A251852 (A167614 (n + 1)).toNat

end

end A251848.P10194601706119170180

/-! ## A251848.P5732026666924338995

`lcm(A033999(n), A251852(A167614(n+1)))`
-/

namespace A251848.P5732026666924338995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A251852 (A167614 (n + 1)).toNat)

end

end A251848.P5732026666924338995

/-!
# A251849: Number of (n+2)X(4+2) 0..3 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251849, there is no canonical definition to state claims against.
-/

/-! ## A251849.P4244859400001505535

`A251852(A141214(n)+7)`
-/

namespace A251849.P4244859400001505535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A141214 n + 7).toNat

end

end A251849.P4244859400001505535

/-! ## A251849.P11499249168103075091

`A251852(A052905(n)+9)`
-/

namespace A251849.P11499249168103075091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A052905 n + 9).toNat

end

end A251849.P11499249168103075091

/-! ## A251849.P9247005509048234868

`A251852(A055999(n)+10)`
-/

namespace A251849.P9247005509048234868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A055999 n + 10).toNat

end

end A251849.P9247005509048234868

/-! ## A251849.P7298066191102699466

`A251852(A167614(n+2)+1)`
-/

namespace A251849.P7298066191102699466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A167614 (n + 2) + 1).toNat

end

end A251849.P7298066191102699466

/-! ## A251849.P16856323009873555098

`A251852(Δ[A264443(n)-n²])`
-/

namespace A251849.P16856323009873555098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (f1 (n + 1) - f1 n).toNat

end

end A251849.P16856323009873555098

/-!
# A251850: Number of (n+2)X(5+2) 0..3 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251850, there is no canonical definition to state claims against.
-/

/-! ## A251850.P15148802164088203914

`A251852(A000124(n+4)+4)`
-/

namespace A251850.P15148802164088203914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A000124 (n + 4) + 4).toNat

end

end A251850.P15148802164088203914

/-! ## A251850.P11297287430033610070

`A251852(eq[6, A131818(n+1)])`
-/

namespace A251850.P11297287430033610070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251850.P11297287430033610070

/-! ## A251850.P5068196485545094534

`A251852(Δ[A264443(n)])`
-/

namespace A251850.P5068196485545094534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (f1 (n + 1) - f1 n).toNat

end

end A251850.P5068196485545094534

/-! ## A251850.P18400200239740545264

`A251852(A374005(n+1))`
-/

namespace A251850.P18400200239740545264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A374005 (n + 1)).toNat

end

end A251850.P18400200239740545264

/-! ## A251850.P16167981978873932955

`A251852(Δ[A023545(n+1)])`
-/

namespace A251850.P16167981978873932955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (f1 (n + 1) - f1 n).toNat

end

end A251850.P16167981978873932955

/-!
# A251851: Number of (n+2)X(6+2) 0..3 arrays with every row, column, diagonal or antidiagonal in each 3X3 subblock summing to a prime.

The programs for A251851, there is no canonical definition to state claims against.
-/

/-! ## A251851.P15736224974646001368

`A251852(A374007(n+1))`
-/

namespace A251851.P15736224974646001368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (A374007 (n + 1)).toNat

end

end A251851.P15736224974646001368

/-! ## A251851.P13571761207926550147

`A251852(eq[3, A219347(n)])`
-/

namespace A251851.P13571761207926550147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251851.P13571761207926550147

/-! ## A251851.P5877478520770708761

`A251852(Δ[Δ[A006504(n+1)]])`
-/

namespace A251851.P5877478520770708761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251852 (f1 (n + 1) - f1 n).toNat

end

end A251851.P5877478520770708761

/-!
# A251853: Nonnegative numbers n with all even digits such that the digital sum of the digits' sum is even.

The programs for A251853, the canonical program `A251853.P16956309281830742699` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251853 has offset 1).

The definition of A251853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251853.P16956309281830742699

`2*eq[A010888(n), A092196(A092196(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251853

/-- `2*eq[A010888(n), A092196(A092196(n))]` -/
def P16956309281830742699.Spec : Prop :=
  ∀ n, (P16956309281830742699.a n : ℤ) = A251853 (n + 1)

theorem P16956309281830742699.correct : P16956309281830742699.Spec := by
  intro n
  simp only [A251853, Nat.add_sub_cancel]

end A251853

/-! ## A251853.P12443543171971602978

`eq[A059628(n), A113217(A059628(n)+n)]`
-/

namespace A251853.P12443543171971602978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113217 (A059628 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A251853.P12443543171971602978

namespace A251853

/-- `eq[A059628(n), A113217(A059628(n)+n)]` -/
def P12443543171971602978.Spec : Prop :=
  ∀ n, (P12443543171971602978.a n : ℤ) = A251853 (n + 1)

end A251853

/-! ## A251853.P8751691646800665213

`eq[2*A136614(A008587(n)), A136614(n)]`
-/

namespace A251853.P8751691646800665213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136614 (A008587 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A251853.P8751691646800665213

namespace A251853

/-- `eq[2*A136614(A008587(n)), A136614(n)]` -/
def P8751691646800665213.Spec : Prop :=
  ∀ n, (P8751691646800665213.a n : ℤ) = A251853 (n + 1)

end A251853

/-! ## A251853.P14804282302326171858

`eq[A007953(n), A054683(A007953(5*n+1))]`
-/

namespace A251853.P14804282302326171858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (A007953 (5 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A251853.P14804282302326171858

namespace A251853

/-- `eq[A007953(n), A054683(A007953(5*n+1))]` -/
def P14804282302326171858.Spec : Prop :=
  ∀ n, (P14804282302326171858.a n : ℤ) = A251853 (n + 1)

end A251853

/-! ## A251853.P11648271172879562459

`A310155(A052218(n+1))%A052218(n+1)`
-/

namespace A251853.P11648271172879562459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310155 (A052218 (n + 1)).toNat) (A052218 (n + 1))

end

end A251853.P11648271172879562459

namespace A251853

/-- `A310155(A052218(n+1))%A052218(n+1)` -/
def P11648271172879562459.Spec : Prop :=
  ∀ n, P11648271172879562459.a n = A251853 (n + 1)

end A251853

/-!
# A251854: Number of (n+2) X (1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3 X 3 subblock summing to 4 or more.

The programs for A251854, there is no canonical definition to state claims against.
-/

/-! ## A251854.P4934795688040355022

`A251858(∑[n]+1)`
-/

namespace A251854.P4934795688040355022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251854.P4934795688040355022

/-! ## A251854.P14320726861107651373

`record[A010054(n)*A251858(n+1)]`
-/

namespace A251854.P14320726861107651373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251854.P14320726861107651373

/-! ## A251854.P6586905401853767984

`record[gcd(A002262(n), A251858(n+1))]`
-/

namespace A251854.P6586905401853767984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251858 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251854.P6586905401853767984

/-! ## A251854.P818605837441594868

`record[root(A251858(n+1), A200057(n+1))]`
-/

namespace A251854.P818605837441594868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251858 (n + 1) : ℝ) ^ (1 / (A200057 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251854.P818605837441594868

/-! ## A251854.P13449518381857194546

`record[root(A251858(n+1), A247045(n+1))]`
-/

namespace A251854.P13449518381857194546
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251858 (n + 1) : ℝ) ^ (1 / (A247045 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251854.P13449518381857194546

/-!
# A251855: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 4 or more.

The programs for A251855, there is no canonical definition to state claims against.
-/

/-! ## A251855.P2968540896661826313

`A251858(∑[n+1]+2)`
-/

namespace A251855.P2968540896661826313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251858 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251855.P2968540896661826313

/-! ## A251855.P14015070953179980521

`record[A010054(n)*A251858(n+2)]`
-/

namespace A251855.P14015070953179980521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251858 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251855.P14015070953179980521

/-! ## A251855.P10106985886372593009

`record[gcd(A002262(n), A251858(n+2))]`
-/

namespace A251855.P10106985886372593009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251858 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251855.P10106985886372593009

/-!
# A251856: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 4 or more.

The programs for A251856, there is no canonical definition to state claims against.
-/

/-! ## A251856.P15682458522810770050

`A251858(∑[n+2]+4)`
-/

namespace A251856.P15682458522810770050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251858 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251856.P15682458522810770050

/-! ## A251856.P12139190181946574007

`A251858(A167614(n+1))+A184955(n)`
-/

namespace A251856.P12139190181946574007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251858 (A167614 (n + 1)).toNat + A184955 n

end

end A251856.P12139190181946574007

/-! ## A251856.P129632943798635524

`A251858(A167614(n+1))+A185036(n)`
-/

namespace A251856.P129632943798635524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251858 (A167614 (n + 1)).toNat + A185036 n

end

end A251856.P129632943798635524

/-! ## A251856.P17748564952442401700

`A350139(n+1)+A251858(A167614(n+1))`
-/

namespace A251856.P17748564952442401700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (n + 1) + A251858 (A167614 (n + 1)).toNat

end

end A251856.P17748564952442401700

/-! ## A251856.P3914695189716886784

`lcm(A251858(A167614(n+1)), A347811(n+1))`
-/

namespace A251856.P3914695189716886784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A251858 (A167614 (n + 1)).toNat) (A347811 (n + 1))

end

end A251856.P3914695189716886784

/-!
# A251857: Number of (n+2)X(4+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 4 or more.

The programs for A251857, there is no canonical definition to state claims against.
-/

/-! ## A251857.P18291607422661197904

`A251858(A141214(n)+7)`
-/

namespace A251857.P18291607422661197904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251858 (A141214 n + 7).toNat

end

end A251857.P18291607422661197904

/-! ## A251857.P3518440194066258658

`A251858(A055999(n)+10)`
-/

namespace A251857.P3518440194066258658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251858 (A055999 n + 10).toNat

end

end A251857.P3518440194066258658

/-!
# A251861: Number of non-palindromic words (length n>0) over the alphabet of 26 letters.

The programs for A251861, there is no canonical definition to state claims against.
-/

/-! ## A251861.P1258828789764755651

`record[Δ[26^A117910(n)]]`
-/

namespace A251861.P1258828789764755651
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (26 : ℚ) ^ (A117910 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251861.P1258828789764755651

/-! ## A251861.P9250430508931904021

`record[Δ[A009970(A117910(n))]]`
-/

namespace A251861.P9250430508931904021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009970 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251861.P9250430508931904021

/-! ## A251861.P6416753073068796047

`A009970(n+1)-A009970(A008619(n))`
-/

namespace A251861.P6416753073068796047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009970 (n + 1) - A009970 (A008619 n).toNat

end

end A251861.P6416753073068796047

/-!
# A251862: Numbers m such that m + 3 divides m^m - 3.

The programs for A251862, there is no canonical definition to state claims against.
-/

/-! ## A251862.P9605969954888600192

`A132582(a(n-1)-(n-2))+13` with `a(0)=3, a(1)=7, a(2)=10`
-/

namespace A251862.P9605969954888600192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 10] fun n a =>
  A132582 (a (n - 1) - ((n : ℤ) - 2)).toNat + 13

end

end A251862.P9605969954888600192

/-!
# A251863: Numbers n such that the sum of the octagonal numbers N(n), N(n+1) and N(n+2) is equal to the sum of the pentagonal numbers P(m), P(m+1), P(m+2) for some m.

The programs for A251863, there is no canonical definition to state claims against.
-/

/-! ## A251863.P11226715959320127464

`floor(A251864(n+1)/sqrt(2))`
-/

namespace A251863.P11226715959320127464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251864 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A251863.P11226715959320127464

/-!
# A251864: Numbers n such that the sum of the pentagonal numbers P(n), P(n+1) and P(n+2) is equal to the sum of the octagonal numbers N(m), N(m+1) and N(m+2) for some m.

The programs for A251864, there is no canonical definition to state claims against.
-/

/-! ## A251864.P12394601541713734738

`ceil(sqrt(2)*A251863(n+1))`
-/

namespace A251864.P12394601541713734738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A251863 (n + 1) : ℝ)⌉

end

end A251864.P12394601541713734738

/-!
# A251867: Numbers n such that n^2 + (n+1)^2 is equal to the sum of the hexagonal numbers H(m) and H(m+1) for some m.

The programs for A251867, the canonical program `A251867.P16106857954171248714` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251867 has offset 1).

The definition of A251867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251867.P16106857954171248714

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=0, a(1)=14, a(2)=492`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A251867

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P16106857954171248714.Spec : Prop :=
  ∀ n, P16106857954171248714.a n = A251867 (n + 1)

theorem P16106857954171248714.correct : P16106857954171248714.Spec := by
  intro n
  simp only [A251867, Nat.add_sub_cancel]

end A251867

/-! ## A251867.P4012484410494140828

`A105635(4*n)`
-/

namespace A251867.P4012484410494140828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 (4 * n)

end

end A251867.P4012484410494140828

namespace A251867

/-- `A105635(4*n)` -/
def P4012484410494140828.Spec : Prop :=
  ∀ n, P4012484410494140828.a n = A251867 (n + 1)

end A251867

/-! ## A251867.P11421791546064451427

`A053141(2*n)`
-/

namespace A251867.P11421791546064451427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 (2 * n)

end

end A251867.P11421791546064451427

namespace A251867

/-- `A053141(2*n)` -/
def P11421791546064451427.Spec : Prop :=
  ∀ n, P11421791546064451427.a n = A251867 (n + 1)

end A251867

/-! ## A251867.P10641751556451046602

`floor(A316708(n)/2)`
-/

namespace A251867.P10641751556451046602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A316708 n : ℚ) / 2⌋

end

end A251867.P10641751556451046602

namespace A251867

/-- `floor(A316708(n)/2)` -/
def P10641751556451046602.Spec : Prop :=
  ∀ n, P10641751556451046602.a n = A251867 (n + 1)

end A251867

/-! ## A251867.P3734923281470518289

`A011900(2*n)-1`
-/

namespace A251867.P3734923281470518289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 (2 * n) - 1

end

end A251867.P3734923281470518289

namespace A251867

/-- `A011900(2*n)-1` -/
def P3734923281470518289.Spec : Prop :=
  ∀ n, P3734923281470518289.a n = A251867 (n + 1)

end A251867

/-! ## A251867.P6252460490682095477

`A108475(2*n)-1`
-/

namespace A251867.P6252460490682095477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108475 (2 * n) - 1

end

end A251867.P6252460490682095477

namespace A251867

/-- `A108475(2*n)-1` -/
def P6252460490682095477.Spec : Prop :=
  ∀ n, P6252460490682095477.a n = A251867 (n + 1)

end A251867

/-! ## A251867.P16023782363860282127

`2*A053142(2*n)`
-/

namespace A251867.P16023782363860282127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053142 (2 * n)

end

end A251867.P16023782363860282127

namespace A251867

/-- `2*A053142(2*n)` -/
def P16023782363860282127.Spec : Prop :=
  ∀ n, P16023782363860282127.a n = A251867 (n + 1)

end A251867

/-! ## A251867.P5677270468010596926

`A182190(2*n)/2`
-/

namespace A251867.P5677270468010596926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182190 (2 * n) : ℚ) / 2

end

end A251867.P5677270468010596926

namespace A251867

/-- `A182190(2*n)/2` -/
def P5677270468010596926.Spec : Prop :=
  ∀ n, P5677270468010596926.a n = (A251867 (n + 1) : ℚ)

end A251867

/-! ## A251867.P4057233251756731654

`floor(A001653(2*n+1)/2)`
-/

namespace A251867.P4057233251756731654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001653 (2 * n + 1) : ℚ) / 2⌋

end

end A251867.P4057233251756731654

namespace A251867

/-- `floor(A001653(2*n+1)/2)` -/
def P4057233251756731654.Spec : Prop :=
  ∀ n, P4057233251756731654.a n = A251867 (n + 1)

end A251867

/-! ## A251867.P9804211818808895043

`A001542(n)*A002315(n)`
-/

namespace A251867.P9804211818808895043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n * A002315 n

end

end A251867.P9804211818808895043

namespace A251867

/-- `A001542(n)*A002315(n)` -/
def P9804211818808895043.Spec : Prop :=
  ∀ n, P9804211818808895043.a n = A251867 (n + 1)

end A251867

/-!
# A251868: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not 2 4 5 or 7 and every diagonal and antidiagonal sum 2 4 5 or 7.

The programs for A251868, there is no canonical definition to state claims against.
-/

/-! ## A251868.P3919266031854056929

`A251876(∑[4*n]+1)`
-/

namespace A251868.P3919266031854056929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251868.P3919266031854056929

/-! ## A251868.P12612755614102982132

`lcm(2, A251876(A001844(n)))`
-/

namespace A251868.P12612755614102982132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251876 (A001844 n).toNat)

end

end A251868.P12612755614102982132

/-! ## A251868.P2314207904517172054

`record[A003982(n)*A251876(n+1)]`
-/

namespace A251868.P2314207904517172054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A251876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251868.P2314207904517172054

/-! ## A251868.P647752250392205832

`record[A214505(n)*A251876(n+1)]`
-/

namespace A251868.P647752250392205832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A251876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251868.P647752250392205832

/-! ## A251868.P14866019568653658987

`record[gcd(A003987(n), A251876(n+1))]`
-/

namespace A251868.P14866019568653658987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A251876 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251868.P14866019568653658987

/-!
# A251869: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not 2 4 5 or 7 and every diagonal and antidiagonal sum 2 4 5 or 7.

The programs for A251869, there is no canonical definition to state claims against.
-/

/-! ## A251869.P12268556565149208482

`A251876(∑[n]+1)`
-/

namespace A251869.P12268556565149208482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251869.P12268556565149208482

/-! ## A251869.P46552415708277799

`lcm(2, A251876(A000124(n)))`
-/

namespace A251869.P46552415708277799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251876 (A000124 n).toNat)

end

end A251869.P46552415708277799

/-! ## A251869.P15331111589448994914

`record[A251876(A114091(n+1))]`
-/

namespace A251869.P15331111589448994914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251869.P15331111589448994914

/-! ## A251869.P7127814938247237106

`record[A251876(A267104(n+1))]`
-/

namespace A251869.P7127814938247237106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251869.P7127814938247237106

/-! ## A251869.P14351031749270975829

`record[A010054(n)*A251876(n+1)]`
-/

namespace A251869.P14351031749270975829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251869.P14351031749270975829

/-!
# A251870: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not 2 4 5 or 7 and every diagonal and antidiagonal sum 2 4 5 or 7.

The programs for A251870, there is no canonical definition to state claims against.
-/

/-! ## A251870.P3767008731392085234

`A251876(∑[n+1]+2)`
-/

namespace A251870.P3767008731392085234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251870.P3767008731392085234

/-! ## A251870.P12913905869000557847

`record[A251876(A114091(n+1)+1)]`
-/

namespace A251870.P12913905869000557847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251870.P12913905869000557847

/-! ## A251870.P1585160482067201206

`record[A010054(n+1)*A251876(n+3)]`
-/

namespace A251870.P1585160482067201206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A251876 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251870.P1585160482067201206

/-! ## A251870.P17445837069883409821

`record[A251876(A117142(n+2))]`
-/

namespace A251870.P17445837069883409821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251870.P17445837069883409821

/-! ## A251870.P10387226733774232328

`lcm(2, A251876(A000096(n+1)))`
-/

namespace A251870.P10387226733774232328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251876 (A000096 (n + 1)).toNat)

end

end A251870.P10387226733774232328

/-!
# A251871: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not 2 4 5 or 7 and every diagonal and antidiagonal sum 2 4 5 or 7.

The programs for A251871, there is no canonical definition to state claims against.
-/

/-! ## A251871.P288241010907715568

`A251876(∑[n+2]+4)`
-/

namespace A251871.P288241010907715568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251871.P288241010907715568

/-! ## A251871.P16964860144514156861

`lcm(2, A251876(A167614(n+1)))`
-/

namespace A251871.P16964860144514156861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251876 (A167614 (n + 1)).toNat)

end

end A251871.P16964860144514156861

/-! ## A251871.P6953046851753822047

`A251876(A167614(n+1))+A138364(2*n)`
-/

namespace A251871.P6953046851753822047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A167614 (n + 1)).toNat + A138364 (2 * n)

end

end A251871.P6953046851753822047

/-! ## A251871.P8064606071810892547

`A251876(A167614(n+1))%A251872(n+1)`
-/

namespace A251871.P8064606071810892547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251876 (A167614 (n + 1)).toNat) (A251872 (n + 1))

end

end A251871.P8064606071810892547

/-! ## A251871.P2608309386820179769

`A007318(C(2, n))*A251876(A167614(n+1))`
-/

namespace A251871.P2608309386820179769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251876 (A167614 (n + 1)).toNat

end

end A251871.P2608309386820179769

/-!
# A251872: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not 2 4 5 or 7 and every diagonal and antidiagonal sum 2 4 5 or 7.

The programs for A251872, there is no canonical definition to state claims against.
-/

/-! ## A251872.P13221311011592352797

`A251876(∑[n+3]+7)`
-/

namespace A251872.P13221311011592352797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251872.P13221311011592352797

/-! ## A251872.P7306872231559666522

`lcm(2, A251876(A145018(n+4)))`
-/

namespace A251872.P7306872231559666522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251876 (A145018 (n + 4)).toNat)

end

end A251872.P7306872231559666522

/-! ## A251872.P17777258397206572227

`A251876(A145018(n+4))%A251875(n+1)`
-/

namespace A251872.P17777258397206572227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251876 (A145018 (n + 4)).toNat) (A251875 (n + 1))

end

end A251872.P17777258397206572227

/-! ## A251872.P2423098759955311056

`A007318(C(2, n))*A251876(A027379(n+2))`
-/

namespace A251872.P2423098759955311056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251876 (A027379 (n + 2)).toNat

end

end A251872.P2423098759955311056

/-! ## A251872.P14066815528567423064

`and(-A000005(n+1), A251876(A027379(n+2)))`
-/

namespace A251872.P14066815528567423064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000005 (n + 1)) (A251876 (A027379 (n + 2)).toNat)

end

end A251872.P14066815528567423064

/-!
# A251873: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not 2 4 5 or 7 and every diagonal and antidiagonal sum 2 4 5 or 7.

The programs for A251873, there is no canonical definition to state claims against.
-/

/-! ## A251873.P1642248345567584117

`A251876(A167499(n+3))`
-/

namespace A251873.P1642248345567584117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A167499 (n + 3)).toNat

end

end A251873.P1642248345567584117

/-! ## A251873.P10364087807365824707

`A251876(A155212(n)+13)`
-/

namespace A251873.P10364087807365824707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A155212 n + 13).toNat

end

end A251873.P10364087807365824707

/-! ## A251873.P13122963499138152843

`A251876(A056000(n)+15)`
-/

namespace A251873.P13122963499138152843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A056000 n + 15).toNat

end

end A251873.P13122963499138152843

/-! ## A251873.P4665501513547217298

`A251876(A167614(n+3)+2)`
-/

namespace A251873.P4665501513547217298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A167614 (n + 3) + 2).toNat

end

end A251873.P4665501513547217298

/-! ## A251873.P7905279634730520216

`A251876(A145018(n+5)+1)`
-/

namespace A251873.P7905279634730520216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A145018 (n + 5) + 1).toNat

end

end A251873.P7905279634730520216

/-!
# A251874: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not 2 4 5 or 7 and every diagonal and antidiagonal sum 2 4 5 or 7.

The programs for A251874, there is no canonical definition to state claims against.
-/

/-! ## A251874.P3627188909407102779

`A251876(∑[n+5]+16)`
-/

namespace A251874.P3627188909407102779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251874.P3627188909407102779

/-!
# A251875: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not 2 4 5 or 7 and every diagonal and antidiagonal sum 2 4 5 or 7.

The programs for A251875, there is no canonical definition to state claims against.
-/

/-! ## A251875.P8599455345899676925

`A251876(A167487(n+5))`
-/

namespace A251875.P8599455345899676925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A167487 (n + 5)).toNat

end

end A251875.P8599455345899676925

/-! ## A251875.P2077227067314749955

`A251876(A166136(n+5)+1)`
-/

namespace A251875.P2077227067314749955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A166136 (n + 5) + 1).toNat

end

end A251875.P2077227067314749955

/-! ## A251875.P8413881191788684589

`A251876(A167614(n+5)+4)`
-/

namespace A251875.P8413881191788684589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A167614 (n + 5) + 4).toNat

end

end A251875.P8413881191788684589

/-! ## A251875.P6192147959449008499

`A251876(A145018(n+7)+3)`
-/

namespace A251875.P6192147959449008499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A145018 (n + 7) + 3).toNat

end

end A251875.P6192147959449008499

/-! ## A251875.P17945714227224042295

`A251876(A133263(n+6)+5)`
-/

namespace A251875.P17945714227224042295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251876 (A133263 (n + 6) + 5).toNat

end

end A251875.P17945714227224042295

/-!
# A251877: Number of (n+2)X(n+2) 0..4 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251877, there is no canonical definition to state claims against.
-/

/-! ## A251877.P11977247339740199929

`A251885(∑[4*n]+1)`
-/

namespace A251877.P11977247339740199929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251877.P11977247339740199929

/-! ## A251877.P16380252812402612227

`record[gcd(A049581(n), A251885(n+1))]`
-/

namespace A251877.P16380252812402612227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A251885 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251877.P16380252812402612227

/-! ## A251877.P3019893863827779304

`A251885(A001844(n))+A011856(n)`
-/

namespace A251877.P3019893863827779304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A001844 n).toNat + A011856 n

end

end A251877.P3019893863827779304

/-! ## A251877.P5737060182903076359

`A133880(n)*A251885(A001844(n))`
-/

namespace A251877.P5737060182903076359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 n * A251885 (A001844 n).toNat

end

end A251877.P5737060182903076359

/-! ## A251877.P3650227949373624953

`A001222(or(3, n))*A251885(A001844(n))`
-/

namespace A251877.P3650227949373624953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 3 n) * A251885 (A001844 n).toNat

end

end A251877.P3650227949373624953

/-!
# A251878: Number of (n+2) X (1+2) 0..4 arrays with every 3 X 3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251878, there is no canonical definition to state claims against.
-/

/-! ## A251878.P17844694611474399574

`A251885(∑[n]+1)`
-/

namespace A251878.P17844694611474399574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251878.P17844694611474399574

/-! ## A251878.P14904885108259670121

`record[A251885(A246276(n+1))]`
-/

namespace A251878.P14904885108259670121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251878.P14904885108259670121

/-! ## A251878.P7728138345531136063

`record[A010054(n)*A251885(n+1)]`
-/

namespace A251878.P7728138345531136063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251878.P7728138345531136063

/-! ## A251878.P17266981234603414029

`record[A251885(n+1)/A063007(n)]`
-/

namespace A251878.P17266981234603414029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251885 (n + 1) : ℚ) / (A063007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251878.P17266981234603414029

/-! ## A251878.P236127266813907874

`record[root(A251885(n+1), A007318(n))]`
-/

namespace A251878.P236127266813907874
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251885 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251878.P236127266813907874

/-!
# A251879: Number of (n+2)X(2+2) 0..4 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251879, there is no canonical definition to state claims against.
-/

/-! ## A251879.P404606216524480324

`A251885(∑[n+1]+2)`
-/

namespace A251879.P404606216524480324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251879.P404606216524480324

/-! ## A251879.P12382677015317768040

`record[A251885(A130270(n+1)+2)]`
-/

namespace A251879.P12382677015317768040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251879.P12382677015317768040

/-! ## A251879.P8963304288613353002

`record[A010054(n)*A251885(n+2)]`
-/

namespace A251879.P8963304288613353002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251879.P8963304288613353002

/-! ## A251879.P13086699171931686913

`record[A251885(n+2)/A063007(n)]`
-/

namespace A251879.P13086699171931686913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251885 (n + 2) : ℚ) / (A063007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251879.P13086699171931686913

/-! ## A251879.P440613806129844724

`record[A251885(A133263(A008624(n)))]`
-/

namespace A251879.P440613806129844724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A133263 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251879.P440613806129844724

/-!
# A251880: Number of (n+2)X(3+2) 0..4 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251880, there is no canonical definition to state claims against.
-/

/-! ## A251880.P17566414062132598615

`A251885(∑[n+2]+4)`
-/

namespace A251880.P17566414062132598615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251880.P17566414062132598615

/-! ## A251880.P8004341143208706410

`or(A000007(n), A251885(A167614(n+1)))`
-/

namespace A251880.P8004341143208706410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251885 (A167614 (n + 1)).toNat)

end

end A251880.P8004341143208706410

/-! ## A251880.P9844584359931299595

`A014826(n)*A251885(A167499(n)+n)`
-/

namespace A251880.P9844584359931299595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014826 n * A251885 (A167499 n + (n : ℤ)).toNat

end

end A251880.P9844584359931299595

/-! ## A251880.P6834400520126303992

`A251885(A167614(n+1))+A034462(n+1)`
-/

namespace A251880.P6834400520126303992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A167614 (n + 1)).toNat + A034462 (n + 1)

end

end A251880.P6834400520126303992

/-! ## A251880.P5577085703467999922

`or(A117370(n+1), A251885(A167614(n+1)))`
-/

namespace A251880.P5577085703467999922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117370 (n + 1)) (A251885 (A167614 (n + 1)).toNat)

end

end A251880.P5577085703467999922

/-!
# A251881: Number of (n+2)X(4+2) 0..4 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251881, there is no canonical definition to state claims against.
-/

/-! ## A251881.P547064470901494755

`A251885(A145018(n+4))`
-/

namespace A251881.P547064470901494755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A145018 (n + 4)).toNat

end

end A251881.P547064470901494755

/-! ## A251881.P8409701712661171590

`A251885(A167614(n+2)+1)`
-/

namespace A251881.P8409701712661171590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A167614 (n + 2) + 1).toNat

end

end A251881.P8409701712661171590

/-! ## A251881.P14688126657069533370

`A251885(Δ[A264443(n)-n²])`
-/

namespace A251881.P14688126657069533370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (f1 (n + 1) - f1 n).toNat

end

end A251881.P14688126657069533370

/-! ## A251881.P10497924759062722796

`or(A000007(n), A251885(A055999(n)+10))`
-/

namespace A251881.P10497924759062722796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A251885 (A055999 n + 10).toNat)

end

end A251881.P10497924759062722796

/-! ## A251881.P13562593638170904328

`A251885(A141214(n+1))`
-/

namespace A251881.P13562593638170904328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A141214 (n + 1)).toNat

end

end A251881.P13562593638170904328

/-!
# A251882: Number of (n+2)X(5+2) 0..4 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251882, there is no canonical definition to state claims against.
-/

/-! ## A251882.P13355438233377817914

`A251885(A077169(n+5))`
-/

namespace A251882.P13355438233377817914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A077169 (n + 5)).toNat

end

end A251882.P13355438233377817914

/-! ## A251882.P18236069354719535381

`A251885(A155212(n)+13)`
-/

namespace A251882.P18236069354719535381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A155212 n + 13).toNat

end

end A251882.P18236069354719535381

/-! ## A251882.P13280261374080748844

`A251885(A000096(n+3)+6)`
-/

namespace A251882.P13280261374080748844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A000096 (n + 3) + 6).toNat

end

end A251882.P13280261374080748844

/-! ## A251882.P4613757467411217493

`A251885(A000124(n+5)-(n+1))`
-/

namespace A251882.P4613757467411217493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A251882.P4613757467411217493

/-! ## A251882.P14706962013162307120

`A251885(A056119(n)+15-2*n)`
-/

namespace A251882.P14706962013162307120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A056119 n + 15 - (2 * n : ℤ)).toNat

end

end A251882.P14706962013162307120

/-!
# A251883: Number of (n+2)X(6+2) 0..4 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251883, there is no canonical definition to state claims against.
-/

/-! ## A251883.P10965371639609949297

`A251885(∑[n+5]+16)`
-/

namespace A251883.P10965371639609949297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A251883.P10965371639609949297

/-!
# A251884: Number of (n+2)X(7+2) 0..4 arrays with every 3X3 subblock row and column sum prime and every diagonal and antidiagonal sum nonprime.

The programs for A251884, there is no canonical definition to state claims against.
-/

/-! ## A251884.P14347935798399320704

`A251885(eq[11, A066657(n)])`
-/

namespace A251884.P14347935798399320704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251884.P14347935798399320704

/-! ## A251884.P7292363205465373172

`A251885(A133263(n+6)+5)`
-/

namespace A251884.P7292363205465373172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A133263 (n + 6) + 5).toNat

end

end A251884.P7292363205465373172

/-! ## A251884.P13468137730859607892

`A251885(eq[8, A131818(n+1)])`
-/

namespace A251884.P13468137730859607892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251884.P13468137730859607892

/-! ## A251884.P8006440453020829491

`A251885(A374008(n+1))`
-/

namespace A251884.P8006440453020829491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (A374008 (n + 1)).toNat

end

end A251884.P8006440453020829491

/-! ## A251884.P8774942684120751827

`A251885(eq[4, A219347(n)])`
-/

namespace A251884.P8774942684120751827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251884.P8774942684120751827

/-!
# A251886: Number of (n+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 2 3 6 or 7 and every diagonal and antidiagonal sum 2 3 6 or 7.

The programs for A251886, there is no canonical definition to state claims against.
-/

/-! ## A251886.P164977174806274955

`A251894(∑[4*n]+1)`
-/

namespace A251886.P164977174806274955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251886.P164977174806274955

/-! ## A251886.P711090091954925141

`lcm(2, A251894((n+1)²+n²))`
-/

namespace A251886.P711090091954925141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251894 ((n + 1) ^ 2 + n ^ 2))

end

end A251886.P711090091954925141

/-! ## A251886.P18039120466834252897

`and(-2, A251894(Δ[A005900(n)]))`
-/

namespace A251886.P18039120466834252897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A251894 (f1 (n + 1) - f1 n).toNat)

end

end A251886.P18039120466834252897

/-! ## A251886.P8958610534839788144

`A251894(A001844(n))+A011732(n)`
-/

namespace A251886.P8958610534839788144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A001844 n).toNat + A011732 n

end

end A251886.P8958610534839788144

/-! ## A251886.P14196966110265882287

`A251894(A001844(n))+A000045(n)%-1`
-/

namespace A251886.P14196966110265882287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A001844 n).toNat + Int.tmod (A000045 n) (-1)

end

end A251886.P14196966110265882287

/-!
# A251887: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not 2 3 6 or 7 and every diagonal and antidiagonal sum 2 3 6 or 7.

The programs for A251887, there is no canonical definition to state claims against.
-/

/-! ## A251887.P731021553144436829

`A251894(∑[n]+1)`
-/

namespace A251887.P731021553144436829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251887.P731021553144436829

/-! ## A251887.P14302134736253926025

`lcm(2, A251894(A000124(n)))`
-/

namespace A251887.P14302134736253926025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251894 (A000124 n).toNat)

end

end A251887.P14302134736253926025

/-! ## A251887.P885919121752893344

`A007318(∑[n])*A251894(A000124(n))`
-/

namespace A251887.P885919121752893344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A251894 (A000124 n).toNat

end

end A251887.P885919121752893344

/-! ## A251887.P8614822175537938197

`A251894(A000124(n))%A251892(n+3)`
-/

namespace A251887.P8614822175537938197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251894 (A000124 n).toNat) (A251892 (n + 3))

end

end A251887.P8614822175537938197

/-! ## A251887.P17167002009958697333

`A251894(A000124(n))/A007318(C(n, 2))`
-/

namespace A251887.P17167002009958697333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251894 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A251887.P17167002009958697333

/-!
# A251888: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 2 3 6 or 7 and every diagonal and antidiagonal sum 2 3 6 or 7.

The programs for A251888, there is no canonical definition to state claims against.
-/

/-! ## A251888.P8672226489387717006

`A251894(∑[n+1]+2)`
-/

namespace A251888.P8672226489387717006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251888.P8672226489387717006

/-! ## A251888.P11498104289471330939

`lcm(2, A251894(A000096(n)+3))`
-/

namespace A251888.P11498104289471330939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251894 (A000096 n + 3).toNat)

end

end A251888.P11498104289471330939

/-! ## A251888.P12973397483065527533

`A007318(A000217(n))*A251894(A000096(n)+3)`
-/

namespace A251888.P12973397483065527533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A251894 (A000096 n + 3).toNat

end

end A251888.P12973397483065527533

/-! ## A251888.P8392163029665759291

`A007318(C(2, n))*A251894(A055998(n)+2)`
-/

namespace A251888.P8392163029665759291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A251894 (A055998 n + 2).toNat

end

end A251888.P8392163029665759291

/-! ## A251888.P14683384672839245882

`A000041(C(2, n+2))*A251894(A055998(n)+2)`
-/

namespace A251888.P14683384672839245882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A251894 (A055998 n + 2).toNat

end

end A251888.P14683384672839245882

/-!
# A251889: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 2 3 6 or 7 and every diagonal and antidiagonal sum 2 3 6 or 7.

The programs for A251889, there is no canonical definition to state claims against.
-/

/-! ## A251889.P13586621497333874769

`A251894(∑[n+2]+4)`
-/

namespace A251889.P13586621497333874769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251889.P13586621497333874769

/-! ## A251889.P5403571142823626209

`lcm(2, A251894(A167614(n+1)))`
-/

namespace A251889.P5403571142823626209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251894 (A167614 (n + 1)).toNat)

end

end A251889.P5403571142823626209

/-! ## A251889.P5666932823494363625

`A251894(A167614(n+1))+A000038(n+4)`
-/

namespace A251889.P5666932823494363625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A167614 (n + 1)).toNat + A000038 (n + 4)

end

end A251889.P5666932823494363625

/-! ## A251889.P16906220162024749195

`A251894(A167614(n+1))%A251892(n+1)`
-/

namespace A251889.P16906220162024749195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251894 (A167614 (n + 1)).toNat) (A251892 (n + 1))

end

end A251889.P16906220162024749195

/-! ## A251889.P14707749071457110204

`A007318(C(n, 2))*A251894(A167614(n+1))`
-/

namespace A251889.P14707749071457110204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A251894 (A167614 (n + 1)).toNat

end

end A251889.P14707749071457110204

/-!
# A251890: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 2 3 6 or 7 and every diagonal and antidiagonal sum 2 3 6 or 7.

The programs for A251890, there is no canonical definition to state claims against.
-/

/-! ## A251890.P13091883401634815493

`A251894(∑[n+3]+7)`
-/

namespace A251890.P13091883401634815493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A251890.P13091883401634815493

/-! ## A251890.P15455470923416678615

`and(-1, A251894(A052905(n)+9))`
-/

namespace A251890.P15455470923416678615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A251894 (A052905 n + 9).toNat)

end

end A251890.P15455470923416678615

/-! ## A251890.P8925207259448536160

`lcm(2, A251894(A055998(n+2)))`
-/

namespace A251890.P8925207259448536160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251894 (A055998 (n + 2)).toNat)

end

end A251890.P8925207259448536160

/-! ## A251890.P5592199366529098912

`A251894(A056000(n)+7)+A000038(n+1)`
-/

namespace A251890.P5592199366529098912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A056000 n + 7).toNat + A000038 (n + 1)

end

end A251890.P5592199366529098912

/-! ## A251890.P3505985852815535062

`A001222(A141792(n+1))*A251894(A056000(n)+7)`
-/

namespace A251890.P3505985852815535062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141792 (n + 1)).toNat * A251894 (A056000 n + 7).toNat

end

end A251890.P3505985852815535062

/-!
# A251891: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 2 3 6 or 7 and every diagonal and antidiagonal sum 2 3 6 or 7.

The programs for A251891, there is no canonical definition to state claims against.
-/

/-! ## A251891.P15686729332884204847

`A251894(A167499(n+3))`
-/

namespace A251891.P15686729332884204847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A167499 (n + 3)).toNat

end

end A251891.P15686729332884204847

/-! ## A251891.P13130970460553968689

`A251894(A077169(n+5))`
-/

namespace A251891.P13130970460553968689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A077169 (n + 5)).toNat

end

end A251891.P13130970460553968689

/-! ## A251891.P11744429389199798069

`A251894(A155212(n)+13)`
-/

namespace A251891.P11744429389199798069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A155212 n + 13).toNat

end

end A251891.P11744429389199798069

/-! ## A251891.P12807152451075935620

`A251894(A056000(n)+15)`
-/

namespace A251891.P12807152451075935620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A056000 n + 15).toNat

end

end A251891.P12807152451075935620

/-! ## A251891.P17640935747341548737

`A251894(A167614(n+3)+2)`
-/

namespace A251891.P17640935747341548737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A167614 (n + 3) + 2).toNat

end

end A251891.P17640935747341548737

/-!
# A251892: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 2 3 6 or 7 and every diagonal and antidiagonal sum 2 3 6 or 7.

The programs for A251892, there is no canonical definition to state claims against.
-/

/-! ## A251892.P17668672152290295198

`A251894(A056115(n)+21)`
-/

namespace A251892.P17668672152290295198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A056115 n + 21).toNat

end

end A251892.P17668672152290295198

/-! ## A251892.P18416072106454209955

`A251894(A167614(n+4)+3)`
-/

namespace A251892.P18416072106454209955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A167614 (n + 4) + 3).toNat

end

end A251892.P18416072106454209955

/-! ## A251892.P12421026301405217373

`A251894(A133263(n+5)+4)`
-/

namespace A251892.P12421026301405217373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A133263 (n + 5) + 4).toNat

end

end A251892.P12421026301405217373

/-! ## A251892.P11063771260022433990

`A251894(A000124(n+5)+5)`
-/

namespace A251892.P11063771260022433990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A000124 (n + 5) + 5).toNat

end

end A251892.P11063771260022433990

/-! ## A251892.P11517644195954709404

`A251894(A000217(n+5)+6)`
-/

namespace A251892.P11517644195954709404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A000217 (n + 5) + 6).toNat

end

end A251892.P11517644195954709404

/-!
# A251893: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and column sum not 2 3 6 or 7 and every diagonal and antidiagonal sum 2 3 6 or 7.

The programs for A251893, there is no canonical definition to state claims against.
-/

/-! ## A251893.P9307957678054153210

`A251894(eq[11, A066657(n)])`
-/

namespace A251893.P9307957678054153210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251893.P9307957678054153210

/-! ## A251893.P2375849401580824317

`A251894(A077169(n+7)+2)`
-/

namespace A251893.P2375849401580824317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A077169 (n + 7) + 2).toNat

end

end A251893.P2375849401580824317

/-! ## A251893.P6308358412532852476

`A251894(A167614(n+5)+4)`
-/

namespace A251893.P6308358412532852476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A167614 (n + 5) + 4).toNat

end

end A251893.P6308358412532852476

/-! ## A251893.P3642875579935931656

`A251894(A133263(n+6)+5)`
-/

namespace A251893.P3642875579935931656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A133263 (n + 6) + 5).toNat

end

end A251893.P3642875579935931656

/-! ## A251893.P2915293840240970690

`A251894(A000124(n+6)+6)`
-/

namespace A251893.P2915293840240970690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251894 (A000124 (n + 6) + 6).toNat

end

end A251893.P2915293840240970690

/-!
# A251895: Numbers n such that the sum of the octagonal numbers N(n) and N(n+1) is equal to another octagonal number.

The programs for A251895, there is no canonical definition to state claims against.
-/

/-! ## A251895.P3955219120027602664

`floor(A251896(n+1)/sqrt(2))`
-/

namespace A251895.P3955219120027602664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A251896 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A251895.P3955219120027602664

/-! ## A251895.P4621286573385902070

`A006451(n%2+4*n)/3`
-/

namespace A251895.P4621286573385902070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006451 (n % 2 + 4 * n) : ℚ) / 3

end

end A251895.P4621286573385902070

/-! ## A251895.P3073471623901723118

`A006451(A047615(n+1))/3`
-/

namespace A251895.P3073471623901723118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006451 (A047615 (n + 1)).toNat : ℚ) / 3

end

end A251895.P3073471623901723118

/-! ## A251895.P6023765654398137295

`A254136(n+1)-A251896(n+1)`
-/

namespace A251895.P6023765654398137295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254136 (n + 1) - A251896 (n + 1)

end

end A251895.P6023765654398137295

/-! ## A251895.P3621800433256563625

`A006451(A000035(n)+4*n)/3`
-/

namespace A251895.P3621800433256563625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006451 (A000035 n + (4 * n : ℤ)).toNat : ℚ) / 3

end

end A251895.P3621800433256563625

/-! ## A251895.P5810922788682522559

`floor(A254137(n+1)-A251896(n+1)/2)`
-/

namespace A251895.P5810922788682522559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254137 (n + 1) : ℚ) - (A251896 (n + 1) : ℚ) / 2⌋

end

end A251895.P5810922788682522559

/-!
# A251896: Numbers n such that the octagonal number N(n) is equal to the sum of the octagonal numbers N(m) and N(m+1) for some m.

The programs for A251896, there is no canonical definition to state claims against.
-/

/-! ## A251896.P902372744753863458

`A254136(n+1)-A251895(n+1)`
-/

namespace A251896.P902372744753863458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254136 (n + 1) - A251895 (n + 1)

end

end A251896.P902372744753863458

/-! ## A251896.P1455713562298913060

`floor(sqrt(2)*A254137(n+1))-A251895(n+1)`
-/

namespace A251896.P1455713562298913060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A254137 (n + 1) : ℝ)⌋ - A251895 (n + 1)

end

end A251896.P1455713562298913060

/-! ## A251896.P1109472178181551179

`A254136(n+1)-A006451(n%2+4*n)/3`
-/

namespace A251896.P1109472178181551179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254136 (n + 1) : ℚ) - (A006451 (n % 2 + 4 * n) : ℚ) / 3

end

end A251896.P1109472178181551179

/-! ## A251896.P11258970900057943959

`A254136(n+1)-A006451(A047615(n+1))/3`
-/

namespace A251896.P11258970900057943959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254136 (n + 1) : ℚ) - (A006451 (A047615 (n + 1)).toNat : ℚ) / 3

end

end A251896.P11258970900057943959

/-! ## A251896.P4161340675797023055

`A098890(A014601(n))%A350985(n)-A251895(n+1)`
-/

namespace A251896.P4161340675797023055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098890 (A014601 n).toNat) (A350985 n) - A251895 (n + 1)

end

end A251896.P4161340675797023055

/-!
# A251897: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum unequal to 4 or 5 and every diagonal and antidiagonal sum equal to 4 or 5.

The programs for A251897, there is no canonical definition to state claims against.
-/

/-! ## A251897.P8580884855090644188

`A251905((n+1)²+n²)`
-/

namespace A251897.P8580884855090644188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 ((n + 1) ^ 2 + n ^ 2)

end

end A251897.P8580884855090644188

/-! ## A251897.P10838035588107994385

`lcm(2, A251905(A001844(n)))`
-/

namespace A251897.P10838035588107994385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251905 (A001844 n).toNat)

end

end A251897.P10838035588107994385

/-! ## A251897.P5167527593242102347

`A251905(A001844(n))+A025439(n)`
-/

namespace A251897.P5167527593242102347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (A001844 n).toNat + A025439 n

end

end A251897.P5167527593242102347

/-! ## A251897.P13138988205777792002

`A057427(n+1)*A251905(A001844(n))`
-/

namespace A251897.P13138988205777792002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A251905 (A001844 n).toNat

end

end A251897.P13138988205777792002

/-! ## A251897.P3886842417217523272

`A251905(∑[A008574(n)])/(A153671(n+1)-n)`
-/

namespace A251897.P3886842417217523272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251905 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A153671 (n + 1) - (n : ℤ) : ℚ)

end

end A251897.P3886842417217523272

/-!
# A251898: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum unequal to 4 or 5 and every diagonal and antidiagonal sum equal to 4 or 5.

The programs for A251898, there is no canonical definition to state claims against.
-/

/-! ## A251898.P15948270557265594441

`A251905(∑[n]+1)`
-/

namespace A251898.P15948270557265594441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251898.P15948270557265594441

/-! ## A251898.P15188556838706514430

`lcm(2, A251905(A000124(n)))`
-/

namespace A251898.P15188556838706514430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251905 (A000124 n).toNat)

end

end A251898.P15188556838706514430

/-! ## A251898.P16271198402755381074

`record[A010054(n)*A251905(n+1)]`
-/

namespace A251898.P16271198402755381074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251898.P16271198402755381074

/-! ## A251898.P9191056760594999830

`record[gcd(A002262(n), A251905(n+1))]`
-/

namespace A251898.P9191056760594999830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A251905 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251898.P9191056760594999830

/-! ## A251898.P18029108554491576715

`record[A251905(n+1)/A001263(n+1)]`
-/

namespace A251898.P18029108554491576715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251905 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251898.P18029108554491576715

/-!
# A251899: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum unequal to 4 or 5 and every diagonal and antidiagonal sum equal to 4 or 5.

The programs for A251899, there is no canonical definition to state claims against.
-/

/-! ## A251899.P3294779711640210908

`A251905(∑[n+1]+2)`
-/

namespace A251899.P3294779711640210908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251905 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251899.P3294779711640210908

/-! ## A251899.P5687814992399373840

`lcm(2, A251905(C(n+2, 2)+2))`
-/

namespace A251899.P5687814992399373840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251905 (Nat.choose (n + 2) 2 + 2))

end

end A251899.P5687814992399373840

/-! ## A251899.P9196726849123626702

`lcm(2, A251905(A000096(n)+3))`
-/

namespace A251899.P9196726849123626702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251905 (A000096 n + 3).toNat)

end

end A251899.P9196726849123626702

/-! ## A251899.P4855297936266227897

`char[A218978(n)]*A251905(A000096(n)+3)`
-/

namespace A251899.P4855297936266227897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218978 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A251905 (A000096 n + 3).toNat

end

end A251899.P4855297936266227897

/-! ## A251899.P14559534269057553226

`A008683(A014963(n+1))²*A251905(A000096(n)+3)`
-/

namespace A251899.P14559534269057553226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 1)).toNat ^ 2 * A251905 (A000096 n + 3).toNat

end

end A251899.P14559534269057553226

