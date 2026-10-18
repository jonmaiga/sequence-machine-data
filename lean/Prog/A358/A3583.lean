import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A358300: Row 1 of array in A358298.

The programs for A358300, there is no canonical definition to state claims against.
-/

/-! ## A358300.P8493297336297212778

`A005728(n)+2*(∑[n]+1)`
-/

namespace A358300.P8493297336297212778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n + ((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ)

end

end A358300.P8493297336297212778

/-! ## A358300.P3605812714733774897

`∑[2*n]+A002088(n)+3`
-/

namespace A358300.P3605812714733774897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A002088 n + 3)

end

end A358300.P3605812714733774897

/-! ## A358300.P4598490642724893710

`2*n+A000010(n)+a(n-1)` with `a(0)=3`
-/

namespace A358300.P4598490642724893710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (2 * n : ℤ) + (A000010 n + a (n - 1))

end

end A358300.P4598490642724893710

/-! ## A358300.P5258938231822821825

`a(n-1)+A109606(n)+1+n+n` with `a(0)=3`
-/

namespace A358300.P5258938231822821825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A109606 n + 1) + (n : ℤ) + (n : ℤ)

end

end A358300.P5258938231822821825

/-! ## A358300.P9430279328024237896

`2*n+a(n-1)+n-A051953(n)` with `a(0)=3`
-/

namespace A358300.P9430279328024237896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (2 * n : ℤ) + (a (n - 1) + ((n : ℤ) - A051953 n))

end

end A358300.P9430279328024237896

/-! ## A358300.P7395563090833423093

`A014206(n)+A005728(n)`
-/

namespace A358300.P7395563090833423093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n + A005728 n

end

end A358300.P7395563090833423093

/-! ## A358300.P4380297251932886247

`A027688(n)+A002088(n)`
-/

namespace A358300.P4380297251932886247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n + A002088 n

end

end A358300.P4380297251932886247

/-! ## A358300.P2100058890731359656

`∑[A000010(A000038(n)+n)+2*n]+2`
-/

namespace A358300.P2100058890731359656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000038 n + (n : ℤ)).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A358300.P2100058890731359656

/-! ## A358300.P7650453026202196912

`A005408(A000124(n))+A002088(n)`
-/

namespace A358300.P7650453026202196912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000124 n).toNat + A002088 n

end

end A358300.P7650453026202196912

/-!
# A358301: Main diagonal of array in A358298.

The programs for A358301, there is no canonical definition to state claims against.
-/

/-! ## A358301.P13032965845625477767

`A358299(∑[n]+n)`
-/

namespace A358301.P13032965845625477767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358299 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A358301.P13032965845625477767

/-! ## A358301.P16460776543603758279

`record[A358299(n)*A359902(n+1)]`
-/

namespace A358301.P16460776543603758279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358299 n * A359902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358301.P16460776543603758279

/-! ## A358301.P10054165188047295427

`record[A358299(n)/A210287(n+1)]`
-/

namespace A358301.P10054165188047295427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358299 n : ℚ) / (A210287 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358301.P10054165188047295427

/-! ## A358301.P13494691272321976442

`record[A358299(n)/A264017(n+1)]`
-/

namespace A358301.P13494691272321976442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358299 n : ℚ) / (A264017 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358301.P13494691272321976442

/-! ## A358301.P10212833654895459079

`record[A358299(n)/A285280(n+3)]`
-/

namespace A358301.P10212833654895459079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358299 n : ℚ) / (A285280 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358301.P10212833654895459079

/-!
# A358302: Number of triangular regions in the Farey Diagram Farey(n,n), divided by 4.

The programs for A358302, there is no canonical definition to state claims against.
-/

/-! ## A358302.P3017327696456729068

`record[A358885(n+1)/4]`
-/

namespace A358302.P3017327696456729068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358885 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358302.P3017327696456729068

/-!
# A358303: Number of 4-sided regions in the Farey Diagram Farey(n,n), divided by 8.

The programs for A358303, there is no canonical definition to state claims against.
-/

/-! ## A358303.P1391393197862411356

`A358885(2*n+3)/8`
-/

namespace A358303.P1391393197862411356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358885 (2 * n + 3) : ℚ) / 8

end

end A358303.P1391393197862411356

/-!
# A358304: Array read by antidiagonals: T(n,k) (n>=0, k>=0) = number of decreasing lines defining the Farey diagram Farey(n,k) of order (n,k).

The programs for A358304, there is no canonical definition to state claims against.
-/

/-! ## A358304.P10097596205750359436

`A062537(A156950(n))`
-/

namespace A358304.P10097596205750359436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A156950 n).toNat

end

end A358304.P10097596205750359436

/-! ## A358304.P12020743307714130569

`A191362(A119307(n))`
-/

namespace A358304.P12020743307714130569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191362 (A119307 n).toNat

end

end A358304.P12020743307714130569

/-! ## A358304.P10661172591338394350

`A319246(A176157(n))`
-/

namespace A358304.P10661172591338394350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319246 (A176157 n).toNat

end

end A358304.P10661172591338394350

/-! ## A358304.P8405915934852180158

`A338648(A342890(n))`
-/

namespace A358304.P8405915934852180158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338648 (A342890 n).toNat

end

end A358304.P8405915934852180158

/-! ## A358304.P18298242210457942996

`A359359(A202549(n+1))`
-/

namespace A358304.P18298242210457942996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359359 (A202549 (n + 1)).toNat

end

end A358304.P18298242210457942996

/-!
# A358305: Triangle read by rows: T(n,k) (n>=0, 0 <= k <= n) = number of decreasing lines defining the Farey diagram Farey(n,k) of order (n,k).

The programs for A358305, there is no canonical definition to state claims against.
-/

/-! ## A358305.P9516479266391713720

`A358304(A245300(n))`
-/

namespace A358305.P9516479266391713720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358304 (A245300 n).toNat

end

end A358305.P9516479266391713720

/-!
# A358306: Second row of array in A358304.

The programs for A358306, there is no canonical definition to state claims against.
-/

/-! ## A358306.P4448136197267595107

`∑[gcd(n, ∑[n])+n]+ceil(5*n/2)`
-/

namespace A358306.P4448136197267595107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈5 * ((n : ℚ) / 2)⌉

end

end A358306.P4448136197267595107

/-! ## A358306.P5828431060383362405

`(n+2)²-3-C(floor(n/2)+2, 2)`
-/

namespace A358306.P5828431060383362405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 3 - (Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2 : ℤ)

end

end A358306.P5828431060383362405

/-! ## A358306.P13727616625889851863

`∑[lcm(2, n+2)/2]+∑[n+1]-2`
-/

namespace A358306.P13727616625889851863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) - 2

end

end A358306.P13727616625889851863

/-! ## A358306.P10643049116746020801

`∑[floor(3*(n+1)²/a(n-1))]` with `a(0)=0, a(1)=5`
-/

namespace A358306.P10643049116746020801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  ⌊3 * (((n + 1) ^ 2 : ℚ) / (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358306.P10643049116746020801

/-! ## A358306.P15832560821869316882

`∑[4*(n+1)]-3-∑[n²%(or(1, n)+n)+1+n]`
-/

namespace A358306.P15832560821869316882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (Nat.lor 1 n + n) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A358306.P15832560821869316882

/-! ## A358306.P7163652207127833851

`A210978(n+1)-1+n`
-/

namespace A358306.P7163652207127833851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210978 (n + 1) - 1 + (n : ℤ)

end

end A358306.P7163652207127833851

/-! ## A358306.P17231544369896361758

`∑[A145051(n+1)+n+1]-2`
-/

namespace A358306.P17231544369896361758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A358306.P17231544369896361758

/-! ## A358306.P2652674037311922725

`∑[A026741(n+2)+n+1]-2`
-/

namespace A358306.P2652674037311922725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A358306.P2652674037311922725

/-! ## A358306.P15565220627731978712

`A251418(A047355(n+2))`
-/

namespace A358306.P15565220627731978712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251418 (A047355 (n + 2)).toNat

end

end A358306.P15565220627731978712

/-! ## A358306.P11059693290916180106

`A059993(n)-A213479(n)`
-/

namespace A358306.P11059693290916180106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n - A213479 n

end

end A358306.P11059693290916180106

/-!
# A358307: Main diagonal of array in A358304, divided by 2.

The programs for A358307, there is no canonical definition to state claims against.
-/

/-! ## A358307.P701826319898748481

`A133725(n)+a(n-1)` with `a(0)=0`
-/

namespace A358307.P701826319898748481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A133725 n + a (n - 1)

end

end A358307.P701826319898748481

/-! ## A358307.P10274148931767899507

`A321879(n)+∑[A102309(n)]`
-/

namespace A358307.P10274148931767899507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358307.P10274148931767899507

/-! ## A358307.P12253198158362947028

`∑[A133725(n+1)]-A133725(n+1)`
-/

namespace A358307.P12253198158362947028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133725 (n + 1)

end

end A358307.P12253198158362947028

/-!
# A358308: Numbers k such that sigma(2*k) > 2*k*sqrt(gamma(2*k)), where sigma(k) = A000203(k) is the sum of the divisors of k and gamma(k) = A007947(k) is the greatest squarefree divisor of k.

The programs for A358308, there is no canonical definition to state claims against.
-/

/-! ## A358308.P914321397808419822

`A007694(round(n*ratio[n+3])+1)`
-/

namespace A358308.P914321397808419822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) + 1).toNat

end

end A358308.P914321397808419822

/-! ## A358308.P8171675722789260440

`∪[A007694(A184117(n+1)), A007694(n+5)]`
-/

namespace A358308.P8171675722789260440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A184117 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A358308.P8171675722789260440

/-! ## A358308.P5849458782609204497

`∩[A007694(n+1), A343013(n+1)]`
-/

namespace A358308.P5849458782609204497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358308.P5849458782609204497

/-! ## A358308.P7290512492418032203

`∩[A007694(n+1), A212165(n+1)]`
-/

namespace A358308.P7290512492418032203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358308.P7290512492418032203

/-! ## A358308.P2185239355508367713

`∩[A007694(n+1), A344586(n+1)]`
-/

namespace A358308.P2185239355508367713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358308.P2185239355508367713

/-! ## A358308.P11057148022856199324

`∩[A007694(n+1), A363597(n+1)]`
-/

namespace A358308.P11057148022856199324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358308.P11057148022856199324

/-! ## A358308.P12508181987102273910

`∩[A007694(n+1), A246716(n+1)]`
-/

namespace A358308.P12508181987102273910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358308.P12508181987102273910

/-! ## A358308.P16378150509937381279

`∩[A007694(n+1), A079298(n+1)]`
-/

namespace A358308.P16378150509937381279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358308.P16378150509937381279

/-! ## A358308.P602625863132545539

`∩[A007694(n+1), A000394(n)]`
-/

namespace A358308.P602625863132545539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358308.P602625863132545539

/-! ## A358308.P14102890177714293158

`∩[A007694(n+1), A129487(n+1)]`
-/

namespace A358308.P14102890177714293158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358308.P14102890177714293158

/-!
# A358309: a(n) = floor(n*sqrt(gamma(n))) - sigma(n), where sigma(n) = A000203(n) is the sum of the divisors of n and gamma(n) = A007947(n) is the greatest squarefree divisor of n.

The programs for A358309, there is no canonical definition to state claims against.
-/

/-! ## A358309.P5684723463386336504

`A000196((n+1)²*∏{p}[n+1, #])-∑{d}[n+1, #]`
-/

namespace A358309.P5684723463386336504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f1 n), p)) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A358309.P5684723463386336504

/-! ## A358309.P2251684616977031372

`A000196(A355038(n+1))-A000203(n+1)`
-/

namespace A358309.P2251684616977031372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A355038 (n + 1)).toNat - A000203 (n + 1)

end

end A358309.P2251684616977031372

/-!
# A358311: Lucas numbers that are not the sum of two squares.

The programs for A358311, there is no canonical definition to state claims against.
-/

/-! ## A358311.P16515113571782813579

`A000032(comp[A124130(n+1)])`
-/

namespace A358311.P16515113571782813579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A358311.P16515113571782813579

/-! ## A358311.P13684061646296987207

`A000204(comp[A124130(n+1)])`
-/

namespace A358311.P13684061646296987207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A358311.P13684061646296987207

/-! ## A358311.P16413820034072681879

`eq[A102460(n), A340078(n+1)]`
-/

namespace A358311.P16413820034072681879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358311.P16413820034072681879

/-! ## A358311.P15835247860237795262

`eq[A116543(n), A359781(n+1)]`
-/

namespace A358311.P15835247860237795262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358311.P15835247860237795262

/-! ## A358311.P3322008570544165730

`eq[A116543(n), A359792(n+1)]`
-/

namespace A358311.P3322008570544165730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359792 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358311.P3322008570544165730

/-!
# A358313: Primes p such that 24*p is the difference of two squares of primes in three different ways.

The programs for A358313, there is no canonical definition to state claims against.
-/

/-! ## A358313.P3857814074267365079

`A020602(A049915(n+1))`
-/

namespace A358313.P3857814074267365079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020602 (A049915 (n + 1)).toNat

end

end A358313.P3857814074267365079

/-! ## A358313.P15554953262038251547

`filter[A125772(n+3), A089829(#)]`
-/

namespace A358313.P15554953262038251547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125772 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089829 (f1 j).toNat = 1) n)

end

end A358313.P15554953262038251547

/-!
# A358316: Number of edge-4-critical graphs on n unlabeled vertices.

The programs for A358316, there is no canonical definition to state claims against.
-/

/-! ## A358316.P10916496801234601074

`A389841(∑[n]+4)`
-/

namespace A358316.P10916496801234601074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389841 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A358316.P10916496801234601074

/-! ## A358316.P3642979232518578045

`A296610(A307316(n))`
-/

namespace A358316.P3642979232518578045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296610 (A307316 n).toNat

end

end A358316.P3642979232518578045

/-! ## A358316.P6142177258096450740

`A335372(A378110(n))`
-/

namespace A358316.P6142177258096450740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335372 (A378110 n).toNat

end

end A358316.P6142177258096450740

/-!
# A358317: Ordered squares of the chord lengths of the parabola y=x^2, where the chord ends are all possible points of the parabola with integer coordinates.

The programs for A358317, there is no canonical definition to state claims against.
-/

/-! ## A358317.P5060376123006399046

`2*(A001222(A065731(n))+n)`
-/

namespace A358317.P5060376123006399046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001222 (A065731 n).toNat + (n : ℤ))

end

end A358317.P5060376123006399046

/-! ## A358317.P15327296992976156992

`record[and(A048614(n+1), A059885(n+1))]`
-/

namespace A358317.P15327296992976156992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048614 (n + 1)) (A059885 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358317.P15327296992976156992

/-! ## A358317.P12152311037453237555

`record[and(A020639(n+1), A130734(3*n+1))]`
-/

namespace A358317.P12152311037453237555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (n + 1)) (A130734 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358317.P12152311037453237555

/-!
# A358318: For n >= 5, a(n) is the number of zeros that need to be inserted to the left of the ones digit of the n-th prime so that the result is composite.

The programs for A358318, there is no canonical definition to state claims against.
-/

/-! ## A358318.P10958336992023327613

`A290174(n+5)+A000035(A195892(n+1))`
-/

namespace A358318.P10958336992023327613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290174 (n + 5) + A000035 (A195892 (n + 1)).toNat

end

end A358318.P10958336992023327613

/-! ## A358318.P9333324601921194933

`A325567(A290163(2*n+1))+A290174(n+5)`
-/

namespace A358318.P9333324601921194933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (A290163 (2 * n + 1)).toNat + A290174 (n + 5)

end

end A358318.P9333324601921194933

/-! ## A358318.P9717133936721118715

`(A290174(n+5)+1)%A158470(n+4)`
-/

namespace A358318.P9717133936721118715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290174 (n + 5) + 1) (A158470 (n + 4))

end

end A358318.P9717133936721118715

/-! ## A358318.P5669871646773809581

`A305300(A293199(3*n+2))+A290174(n+5)`
-/

namespace A358318.P5669871646773809581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305300 (A293199 (3 * n + 2)).toNat + A290174 (n + 5)

end

end A358318.P5669871646773809581

/-! ## A358318.P7686117924405880336

`A326851(A000040(3*n+5))+A290174(n+5)`
-/

namespace A358318.P7686117924405880336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326851 (A000040 (3 * n + 5)).toNat + A290174 (n + 5)

end

end A358318.P7686117924405880336

/-!
# A358322: Interlopers in sexy prime quadruples.

The programs for A358322, there is no canonical definition to state claims against.
-/

/-! ## A358322.P11737437521203941167

`A179429(A192294(n+1))`
-/

namespace A358322.P11737437521203941167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179429 (A192294 (n + 1)).toNat

end

end A358322.P11737437521203941167

/-!
# A358326: a(n) is the minimal permanent of an n X n symmetric Toeplitz matrix using the integers 0 to n - 1.

The programs for A358326, there is no canonical definition to state claims against.
-/

/-! ## A358326.P6377575249764995977

`A129012(A175941(n))-n`
-/

namespace A358326.P6377575249764995977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129012 (A175941 n).toNat - (n : ℤ)

end

end A358326.P6377575249764995977

/-! ## A358326.P15396990694761899790

`and(xor(n, -1), A323467(A221844(n+1)))`
-/

namespace A358326.P15396990694761899790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor (n : ℤ) (-1)) (A323467 (A221844 (n + 1)).toNat)

end

end A358326.P15396990694761899790

/-!
# A358327: a(n) is the maximal permanent of an n X n symmetric Toeplitz matrix using the integers 0 to n - 1.

The programs for A358327, there is no canonical definition to state claims against.
-/

/-! ## A358327.P4327811056705003272

`A059126(n)*A350489(A100793(n))`
-/

namespace A358327.P4327811056705003272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n * A350489 (A100793 n).toNat

end

end A358327.P4327811056705003272

/-!
# A358330: By concatenating the standard compositions of each part of the a(n)-th standard composition, we get a weakly increasing sequence.

The programs for A358330, there is no canonical definition to state claims against.
-/

/-! ## A358330.P13077024057491176633

`lt[A124766(A357134(n)), 2]`
-/

namespace A358330.P13077024057491176633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A357134 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358330.P13077024057491176633

/-!
# A358331: Number of integer partitions of n with arithmetic and geometric mean differing by one.

The programs for A358331, there is no canonical definition to state claims against.
-/

/-! ## A358331.P15307212545542727249

`ceil(A326642(n)/A105540(3*n+1))`
-/

namespace A358331.P15307212545542727249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326642 n : ℚ) / (A105540 (3 * n + 1) : ℚ)⌉

end

end A358331.P15307212545542727249

/-! ## A358331.P16522170289936582076

`A001221(A070939(n+4)^A326642(n))`
-/

namespace A358331.P16522170289936582076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A070939 (n + 4) : ℚ) ^ (A326642 n : ℤ))).toNat

end

end A358331.P16522170289936582076

/-! ## A358331.P15030749820069496378

`A326644(A018219(3*n+4)*A326642(n))`
-/

namespace A358331.P15030749820069496378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 (A018219 (3 * n + 4) * A326642 n).toNat

end

end A358331.P15030749820069496378

/-! ## A358331.P14240653325854629595

`ceil(A326642(n)/A326655(n+1))`
-/

namespace A358331.P14240653325854629595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326642 n : ℚ) / (A326655 (n + 1) : ℚ)⌉

end

end A358331.P14240653325854629595

/-! ## A358331.P14911264747788067141

`ceil(A326642(n)/A340580(n+2))`
-/

namespace A358331.P14911264747788067141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326642 n : ℚ) / (A340580 (n + 2) : ℚ)⌉

end

end A358331.P14911264747788067141

/-!
# A358333: By concatenating the standard compositions for each part of the n-th standard composition, we get a sequence of length a(n). Row-lengths of A357135.

The programs for A358333, there is no canonical definition to state claims against.
-/

/-! ## A358333.P13641050021608321908

`A064547(A057335(n))`
-/

namespace A358333.P13641050021608321908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A057335 n).toNat

end

end A358333.P13641050021608321908

/-! ## A358333.P17553315958899193349

`A325121(A333219(n+1))`
-/

namespace A358333.P17553315958899193349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (A333219 (n + 1)).toNat

end

end A358333.P17553315958899193349

/-! ## A358333.P13677724034231611867

`∑{e}[A057335(n), A000120(#)]`
-/

namespace A358333.P13677724034231611867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A358333.P13677724034231611867

/-! ## A358333.P7616153452253369175

`∑{e}[A334031(n), A000120(#)]`
-/

namespace A358333.P7616153452253369175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A358333.P7616153452253369175

/-! ## A358333.P17807209633044695579

`∑{e}[A057335(n), A333939(#)]`
-/

namespace A358333.P17807209633044695579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A333939 (Nat.factorization (f1 n).natAbs p)

end

end A358333.P17807209633044695579

/-! ## A358333.P14884220241618044606

`A302242(A124758(n))+A000120(n)`
-/

namespace A358333.P14884220241618044606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A124758 n).toNat + A000120 n

end

end A358333.P14884220241618044606

/-! ## A358333.P9567769523631802037

`A064547(A334031(n)%A254907(n+1))`
-/

namespace A358333.P9567769523631802037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (Int.tmod (A334031 n) (A254907 (n + 1))).toNat

end

end A358333.P9567769523631802037

/-! ## A358333.P8827583743827685106

`A064547(A334031(n))`
-/

namespace A358333.P8827583743827685106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A334031 n).toNat

end

end A358333.P8827583743827685106

/-! ## A358333.P10512291927032632391

`A000120(A357134(n))`
-/

namespace A358333.P10512291927032632391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A357134 n).toNat

end

end A358333.P10512291927032632391

/-! ## A358333.P12288398575270928788

`A048881(2*A357134(n))`
-/

namespace A358333.P12288398575270928788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A357134 n).toNat

end

end A358333.P12288398575270928788

/-!
# A358334: Number of twice-partitions of n into odd-length partitions.

The programs for A358334, there is no canonical definition to state claims against.
-/

/-! ## A358334.P12679858456404804051

`or(A063962(A001470(n)), A090427(n+1))`
-/

namespace A358334.P12679858456404804051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063962 (A001470 n).toNat) (A090427 (n + 1))

end

end A358334.P12679858456404804051

/-! ## A358334.P11830419567118729657

`A325364(A325546(n)+A070108(3*(n+1)))`
-/

namespace A358334.P11830419567118729657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (A325546 n + A070108 (3 * (n + 1))).toNat

end

end A358334.P11830419567118729657

/-! ## A358334.P3296566475742886595

`A091010(A026385(n))`
-/

namespace A358334.P3296566475742886595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091010 (A026385 n).toNat

end

end A358334.P3296566475742886595

/-! ## A358334.P11359774734187876666

`A140206(A079960(n))`
-/

namespace A358334.P11359774734187876666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (A079960 n).toNat

end

end A358334.P11359774734187876666

/-! ## A358334.P5919578523826625981

`A368314(A148961(n))`
-/

namespace A358334.P5919578523826625981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368314 (A148961 n).toNat

end

end A358334.P5919578523826625981

/-!
# A358335: Number of integer compositions of n whose parts have weakly decreasing numbers of prime factors (with multiplicity).

The programs for A358335, there is no canonical definition to state claims against.
-/

/-! ## A358335.P4964371949644483754

`A274199(n)+A167613(A002839(n+1))`
-/

namespace A358335.P4964371949644483754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274199 n + A167613 (A002839 (n + 1)).toNat

end

end A358335.P4964371949644483754

/-! ## A358335.P7388396110358786820

`A105223(A185390(n)+A118898(n+4))`
-/

namespace A358335.P7388396110358786820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A185390 n + A118898 (n + 4)).toNat

end

end A358335.P7388396110358786820

/-! ## A358335.P17491933676894449332

`A085736(A099823(n))`
-/

namespace A358335.P17491933676894449332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A099823 n).toNat

end

end A358335.P17491933676894449332

/-! ## A358335.P18170323988209400524

`A085736(A124062(n))`
-/

namespace A358335.P18170323988209400524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A124062 n).toNat

end

end A358335.P18170323988209400524

/-! ## A358335.P15694325409186800144

`A180447(A097550(n))`
-/

namespace A358335.P15694325409186800144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A097550 n).toNat

end

end A358335.P15694325409186800144

/-!
# A358336: Multiplicative sequence with a(p^e) = ((p-1) * (1 + e*(e+1)/2) + e) * p^(e-1) for prime p and e > 0.

The programs for A358336, the canonical program `A358336.P1440461923045548440` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358336 has offset 1).

The definition of A358336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358336.P1440461923045548440

`∑{d}[n+1, A029935(#)*A183097((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A358336

/-- `∑{d}[n+1, A029935(#)*A183097((n+1)/#)]` -/
def P1440461923045548440.Spec : Prop :=
  ∀ n, P1440461923045548440.a n = A358336 (n + 1)

theorem P1440461923045548440.correct : P1440461923045548440.Spec := by
  intro n
  simp only [A358336, Nat.add_sub_cancel]

end A358336

/-!
# A358338: a(n) = abs(a(n-1) - count(a(n-1))) where count(a(n-1)) is the number of times a(n-1) has appeared so far in the sequence, a(1)=0.

The programs for A358338, there is no canonical definition to state claims against.
-/

/-! ## A358338.P3954201100462596633

`A083025(A000217(3*n+1)*A083044(n+3))`
-/

namespace A358338.P3954201100462596633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A000217 (3 * n + 1) * A083044 (n + 3)).toNat

end

end A358338.P3954201100462596633

/-! ## A358338.P12565164687964312655

`A065339(A147305(n+1)*A383721(3*n+5))`
-/

namespace A358338.P12565164687964312655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A147305 (n + 1) * A383721 (3 * n + 5)).toNat

end

end A358338.P12565164687964312655

/-! ## A358338.P17524185769034895062

`A344309(A043318(n+2))`
-/

namespace A358338.P17524185769034895062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344309 (A043318 (n + 2)).toNat

end

end A358338.P17524185769034895062

/-! ## A358338.P3530523729160417640

`A344309(A044915(n+2))`
-/

namespace A358338.P3530523729160417640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344309 (A044915 (n + 2)).toNat

end

end A358338.P3530523729160417640

/-! ## A358338.P151932211098641746

`A344309(A161951(n+2))`
-/

namespace A358338.P151932211098641746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344309 (A161951 (n + 2)).toNat

end

end A358338.P151932211098641746

/-!
# A358340: a(n) is the smallest n-digit number whose fourth power is zeroless.

The programs for A358340, there is no canonical definition to state claims against.
-/

/-! ## A358340.P15020576788292478833

`A084407(A011557(n))+A000142(n)`
-/

namespace A358340.P15020576788292478833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084407 (A011557 n).toNat + A000142 n

end

end A358340.P15020576788292478833

/-!
# A358345: a(n) is the number of even square divisors of n.

The programs for A358345, the canonical program `A358345.P3459524119190626708` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358345 has offset 1).

The definition of A358345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A298735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358345.P3459524119190626708

`A046951(n+1)-A298735(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A358345

/-- `A046951(n+1)-A298735(n+1)` -/
def P3459524119190626708.Spec : Prop :=
  ∀ n, P3459524119190626708.a n = A358345 (n + 1)

theorem P3459524119190626708.correct : P3459524119190626708.Spec := by
  intro n
  simp only [A358345, Nat.add_sub_cancel]

end A358345

/-! ## A358345.P8976316691178375767

`2*A046951(n+1)-A046951(4*(n+1))`
-/

namespace A358345.P8976316691178375767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046951 (n + 1) - A046951 (4 * (n + 1))

end

end A358345.P8976316691178375767

namespace A358345

/-- `2*A046951(n+1)-A046951(4*(n+1))` -/
def P8976316691178375767.Spec : Prop :=
  ∀ n, P8976316691178375767.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P14202740005523912269

`∑{d}[n+1, val(#², 4*(n+1))]`
-/

namespace A358345.P14202740005523912269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2) (4 * (n + 1))

end

end A358345.P14202740005523912269

namespace A358345

/-- `∑{d}[n+1, val(#², 4*(n+1))]` -/
def P14202740005523912269.Spec : Prop :=
  ∀ n, (P14202740005523912269.a n : ℤ) = A358345 (n + 1)

end A358345

/-! ## A358345.P3657437229161217924

`A183063(A000188(n+1))`
-/

namespace A358345.P3657437229161217924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A000188 (n + 1)).toNat

end

end A358345.P3657437229161217924

namespace A358345

/-- `A183063(A000188(n+1))` -/
def P3657437229161217924.Spec : Prop :=
  ∀ n, P3657437229161217924.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P6062394738687438517

`A183063(A337101(2*(n+1)))`
-/

namespace A358345.P6062394738687438517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A337101 (2 * (n + 1))).toNat

end

end A358345.P6062394738687438517

namespace A358345

/-- `A183063(A337101(2*(n+1)))` -/
def P6062394738687438517.Spec : Prop :=
  ∀ n, P6062394738687438517.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P11407875497910789255

`A298735(n+1)-A344299(n+1)`
-/

namespace A358345.P11407875497910789255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (n + 1) - A344299 (n + 1)

end

end A358345.P11407875497910789255

namespace A358345

/-- `A298735(n+1)-A344299(n+1)` -/
def P11407875497910789255.Spec : Prop :=
  ∀ n, P11407875497910789255.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P3638898513115073566

`A235127(n+1)*A298735(n+1)`
-/

namespace A358345.P3638898513115073566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (n + 1) * A298735 (n + 1)

end

end A358345.P3638898513115073566

namespace A358345

/-- `A235127(n+1)*A298735(n+1)` -/
def P3638898513115073566.Spec : Prop :=
  ∀ n, P3638898513115073566.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P4204551159531892854

`(A115362(n)-1)*A298735(n+1)`
-/

namespace A358345.P4204551159531892854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115362 n - 1) * A298735 (n + 1)

end

end A358345.P4204551159531892854

namespace A358345

/-- `(A115362(n)-1)*A298735(n+1)` -/
def P4204551159531892854.Spec : Prop :=
  ∀ n, P4204551159531892854.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P6604241761626789353

`∑{d}[n+1, A053866(#)*A328981((n+1)/#)]`
-/

namespace A358345.P6604241761626789353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A328981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358345.P6604241761626789353

namespace A358345

/-- `∑{d}[n+1, A053866(#)*A328981((n+1)/#)]` -/
def P6604241761626789353.Spec : Prop :=
  ∀ n, P6604241761626789353.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P1629254719963311707

`A046951(n+1)-A046951(A000265(n+1))`
-/

namespace A358345.P1629254719963311707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A046951 (A000265 (n + 1)).toNat

end

end A358345.P1629254719963311707

namespace A358345

/-- `A046951(n+1)-A046951(A000265(n+1))` -/
def P1629254719963311707.Spec : Prop :=
  ∀ n, P1629254719963311707.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P7111612292458989948

`A046951(n+1)-A046951(A064989(n+1))`
-/

namespace A358345.P7111612292458989948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A046951 (A064989 (n + 1)).toNat

end

end A358345.P7111612292458989948

namespace A358345

/-- `A046951(n+1)-A046951(A064989(n+1))` -/
def P7111612292458989948.Spec : Prop :=
  ∀ n, P7111612292458989948.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P7610606982825858640

`A046951(n+1)-A046951(n+1)/A115362(n)`
-/

namespace A358345.P7610606982825858640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046951 (n + 1) : ℚ) - (A046951 (n + 1) : ℚ) / (A115362 n : ℚ)

end

end A358345.P7610606982825858640

namespace A358345

/-- `A046951(n+1)-A046951(n+1)/A115362(n)` -/
def P7610606982825858640.Spec : Prop :=
  ∀ n, P7610606982825858640.a n = (A358345 (n + 1) : ℚ)

end A358345

/-! ## A358345.P4256223276820477815

`∑{d}[A008833(n+1), A010052(2*#)]`
-/

namespace A358345.P4256223276820477815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010052 (2 * d)

end

end A358345.P4256223276820477815

namespace A358345

/-- `∑{d}[A008833(n+1), A010052(2*#)]` -/
def P4256223276820477815.Spec : Prop :=
  ∀ n, P4256223276820477815.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P11683911044575713121

`A065704(n+1)-A046951(2*(n+1))`
-/

namespace A358345.P11683911044575713121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065704 (n + 1) - A046951 (2 * (n + 1))

end

end A358345.P11683911044575713121

namespace A358345

/-- `A065704(n+1)-A046951(2*(n+1))` -/
def P11683911044575713121.Spec : Prop :=
  ∀ n, P11683911044575713121.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P6372422238420489157

`A298735(A003961(n+1))-A298735(n+1)`
-/

namespace A358345.P6372422238420489157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A003961 (n + 1)).toNat - A298735 (n + 1)

end

end A358345.P6372422238420489157

namespace A358345

/-- `A298735(A003961(n+1))-A298735(n+1)` -/
def P6372422238420489157.Spec : Prop :=
  ∀ n, P6372422238420489157.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P5847168915594197160

`A298735(A045965(n+1))-A298735(n+1)`
-/

namespace A358345.P5847168915594197160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A045965 (n + 1)).toNat - A298735 (n + 1)

end

end A358345.P5847168915594197160

namespace A358345

/-- `A298735(A045965(n+1))-A298735(n+1)` -/
def P5847168915594197160.Spec : Prop :=
  ∀ n, P5847168915594197160.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P12076957768333207166

`A298735(A064988(n+1))-A298735(n+1)`
-/

namespace A358345.P12076957768333207166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A064988 (n + 1)).toNat - A298735 (n + 1)

end

end A358345.P12076957768333207166

namespace A358345

/-- `A298735(A064988(n+1))-A298735(n+1)` -/
def P12076957768333207166.Spec : Prop :=
  ∀ n, P12076957768333207166.a n = A358345 (n + 1)

end A358345

/-! ## A358345.P2771383474399050080

`A298735(A045966(n+1))-A298735(n+1)`
-/

namespace A358345.P2771383474399050080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (A045966 (n + 1)).toNat - A298735 (n + 1)

end

end A358345.P2771383474399050080

namespace A358345

/-- `A298735(A045966(n+1))-A298735(n+1)` -/
def P2771383474399050080.Spec : Prop :=
  ∀ n, P2771383474399050080.a n = A358345 (n + 1)

end A358345

/-!
# A358346: a(n) is the sum of the unitary divisors of n that are exponentially odd (A268335).

The programs for A358346, the canonical program `A358346.P10429080455784404753` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358346 has offset 1).

The definition of A358346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358346.P10429080455784404753

`A034448(A350389(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A358346

/-- `A034448(A350389(n+1))` -/
def P10429080455784404753.Spec : Prop :=
  ∀ n, P10429080455784404753.a n = A358346 (n + 1)

theorem P10429080455784404753.correct : P10429080455784404753.Spec := by
  intro n
  simp only [A358346, Nat.add_sub_cancel]

end A358346

/-! ## A358346.P1850417044638288175

`A034448(n+1)/A358347(n+1)`
-/

namespace A358346.P1850417044638288175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A358347 (n + 1) : ℚ)

end

end A358346.P1850417044638288175

namespace A358346

/-- `A034448(n+1)/A358347(n+1)` -/
def P1850417044638288175.Spec : Prop :=
  ∀ n, P1850417044638288175.a n = (A358346 (n + 1) : ℚ)

end A358346

/-! ## A358346.P16941744838256331156

`A034448((n+1)/A350388(n+1))`
-/

namespace A358346.P16941744838256331156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A358346.P16941744838256331156

namespace A358346

/-- `A034448((n+1)/A350388(n+1))` -/
def P16941744838256331156.Spec : Prop :=
  ∀ n, P16941744838256331156.a n = A358346 (n + 1)

end A358346

/-! ## A358346.P5082016814502314029

`(A345451(n+1)+1)/A358347(n+1)`
-/

namespace A358346.P5082016814502314029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1 : ℚ) / (A358347 (n + 1) : ℚ)

end

end A358346.P5082016814502314029

namespace A358346

/-- `(A345451(n+1)+1)/A358347(n+1)` -/
def P5082016814502314029.Spec : Prop :=
  ∀ n, P5082016814502314029.a n = (A358346 (n + 1) : ℚ)

end A358346

/-! ## A358346.P2081235197841386698

`∑{d}[n+1, A254503(#)]/A358347(n+1)`
-/

namespace A358346.P2081235197841386698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A254503 d : ℤ) : ℚ) / (A358347 (n + 1) : ℚ)

end

end A358346.P2081235197841386698

namespace A358346

/-- `∑{d}[n+1, A254503(#)]/A358347(n+1)` -/
def P2081235197841386698.Spec : Prop :=
  ∀ n, P2081235197841386698.a n = (A358346 (n + 1) : ℚ)

end A358346

/-! ## A358346.P15898823556344381527

`(A034460(n+1)+1+n)/A358347(n+1)`
-/

namespace A358346.P15898823556344381527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + 1 + (n : ℤ) : ℚ) / (A358347 (n + 1) : ℚ)

end

end A358346.P15898823556344381527

namespace A358346

/-- `(A034460(n+1)+1+n)/A358347(n+1)` -/
def P15898823556344381527.Spec : Prop :=
  ∀ n, P15898823556344381527.a n = (A358346 (n + 1) : ℚ)

end A358346

/-! ## A358346.P17733510146068391349

`floor(A064971(n+1)/(n+1))/A358347(n+1)`
-/

namespace A358346.P17733510146068391349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A064971 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / (A358347 (n + 1) : ℚ)

end

end A358346.P17733510146068391349

namespace A358346

/-- `floor(A064971(n+1)/(n+1))/A358347(n+1)` -/
def P17733510146068391349.Spec : Prop :=
  ∀ n, P17733510146068391349.a n = (A358346 (n + 1) : ℚ)

end A358346

/-! ## A358346.P18048677033632116455

`A034448(n+1)/A034448(A071974(n+1)²)`
-/

namespace A358346.P18048677033632116455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A034448 (A071974 (n + 1) ^ 2).toNat : ℚ)

end

end A358346.P18048677033632116455

namespace A358346

/-- `A034448(n+1)/A034448(A071974(n+1)²)` -/
def P18048677033632116455.Spec : Prop :=
  ∀ n, P18048677033632116455.a n = (A358346 (n + 1) : ℚ)

end A358346

/-! ## A358346.P3194998070391698455

`(A325814(n+1)+A001065(n+1))/A358347(n+1)`
-/

namespace A358346.P3194998070391698455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325814 (n + 1) + A001065 (n + 1) : ℚ) / (A358347 (n + 1) : ℚ)

end

end A358346.P3194998070391698455

namespace A358346

/-- `(A325814(n+1)+A001065(n+1))/A358347(n+1)` -/
def P3194998070391698455.Spec : Prop :=
  ∀ n, P3194998070391698455.a n = (A358346 (n + 1) : ℚ)

end A358346

/-! ## A358346.P13149493085930417497

`(A000203(n+1)-A048146(n+1))/A358347(n+1)`
-/

namespace A358346.P13149493085930417497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A048146 (n + 1) : ℚ) / (A358347 (n + 1) : ℚ)

end

end A358346.P13149493085930417497

namespace A358346

/-- `(A000203(n+1)-A048146(n+1))/A358347(n+1)` -/
def P13149493085930417497.Spec : Prop :=
  ∀ n, P13149493085930417497.a n = (A358346 (n + 1) : ℚ)

end A358346

/-! ## A358346.P4804668151480246797

`A385045(n+1)/A358347(n+1)*A385046(n+1)`
-/

namespace A358346.P4804668151480246797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385045 (n + 1) : ℚ) / (A358347 (n + 1) : ℚ) * (A385046 (n + 1) : ℚ)

end

end A358346.P4804668151480246797

namespace A358346

/-- `A385045(n+1)/A358347(n+1)*A385046(n+1)` -/
def P4804668151480246797.Spec : Prop :=
  ∀ n, P4804668151480246797.a n = (A358346 (n + 1) : ℚ)

end A358346

/-!
# A358347: a(n) is the sum of the unitary divisors of n that are squares.

The programs for A358347, the canonical program `A358347.P10314352344576710281` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358347 has offset 1).

The definition of A358347 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A358346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358347.P11137429260602832554

`A034448(A350388(n+1))`
-/

namespace A358347.P11137429260602832554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A350388 (n + 1)).toNat

end

end A358347.P11137429260602832554

namespace A358347

/-- `A034448(A350388(n+1))` -/
def P11137429260602832554.Spec : Prop :=
  ∀ n, P11137429260602832554.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P10314352344576710281

`A034448(n+1)/A358346(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A358347

/-- `A034448(n+1)/A358346(n+1)` -/
def P10314352344576710281.Spec : Prop :=
  ∀ n, P10314352344576710281.a n = (A358347 (n + 1) : ℚ)

end A358347

/-! ## A358347.P8129921658442745334

`A034676(A071974(n+1))`
-/

namespace A358347.P8129921658442745334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A071974 (n + 1)).toNat

end

end A358347.P8129921658442745334

namespace A358347

/-- `A034676(A071974(n+1))` -/
def P8129921658442745334.Spec : Prop :=
  ∀ n, P8129921658442745334.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P8063257313516260431

`A034448(A071974(n+1)²)`
-/

namespace A358347.P8063257313516260431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A071974 (n + 1) ^ 2).toNat

end

end A358347.P8063257313516260431

namespace A358347

/-- `A034448(A071974(n+1)²)` -/
def P8063257313516260431.Spec : Prop :=
  ∀ n, P8063257313516260431.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P12227293356625462341

`A034676(sqrt(A350388(n+1)))`
-/

namespace A358347.P12227293356625462341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (SequenceMachineLib.roundAway (Real.sqrt (A350388 (n + 1) : ℝ))).toNat

end

end A358347.P12227293356625462341

namespace A358347

/-- `A034676(sqrt(A350388(n+1)))` -/
def P12227293356625462341.Spec : Prop :=
  ∀ n, P12227293356625462341.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P15269214058418346132

`∑{d}[A071974(n+1)², A254503(#)]`
-/

namespace A358347.P15269214058418346132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A254503 d

end

end A358347.P15269214058418346132

namespace A358347

/-- `∑{d}[A071974(n+1)², A254503(#)]` -/
def P15269214058418346132.Spec : Prop :=
  ∀ n, P15269214058418346132.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P1118045641443622188

`A034448((n+1)/A350389(n+1))`
-/

namespace A358347.P1118045641443622188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A358347.P1118045641443622188

namespace A358347

/-- `A034448((n+1)/A350389(n+1))` -/
def P1118045641443622188.Spec : Prop :=
  ∀ n, P1118045641443622188.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P10469309336827694943

`A380400(A350388(2*n+1-n))`
-/

namespace A358347.P10469309336827694943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380400 (A350388 (2 * n + 1 - n)).toNat

end

end A358347.P10469309336827694943

namespace A358347

/-- `A380400(A350388(2*n+1-n))` -/
def P10469309336827694943.Spec : Prop :=
  ∀ n, P10469309336827694943.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P9096318821254541228

`(A345451(n+1)+1)/A358346(n+1)`
-/

namespace A358347.P9096318821254541228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1 : ℚ) / (A358346 (n + 1) : ℚ)

end

end A358347.P9096318821254541228

namespace A358347

/-- `(A345451(n+1)+1)/A358346(n+1)` -/
def P9096318821254541228.Spec : Prop :=
  ∀ n, P9096318821254541228.a n = (A358347 (n + 1) : ℚ)

end A358347

/-! ## A358347.P13655742744810839547

`2*A360160(n+1)-A360161(n+1)`
-/

namespace A358347.P13655742744810839547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360160 (n + 1) - A360161 (n + 1)

end

end A358347.P13655742744810839547

namespace A358347

/-- `2*A360160(n+1)-A360161(n+1)` -/
def P13655742744810839547.Spec : Prop :=
  ∀ n, P13655742744810839547.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P11200389906117556284

`(A034460(n+1)+1+n)/A358346(n+1)`
-/

namespace A358347.P11200389906117556284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + 1 + (n : ℤ) : ℚ) / (A358346 (n + 1) : ℚ)

end

end A358347.P11200389906117556284

namespace A358347

/-- `(A034460(n+1)+1+n)/A358346(n+1)` -/
def P11200389906117556284.Spec : Prop :=
  ∀ n, P11200389906117556284.a n = (A358347 (n + 1) : ℚ)

end A358347

/-! ## A358347.P4290519205077522579

`∑{d}[n+1, A358272(#)*A359302((n+1)/#)]`
-/

namespace A358347.P4290519205077522579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358272 d * A359302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358347.P4290519205077522579

namespace A358347

/-- `∑{d}[n+1, A358272(#)*A359302((n+1)/#)]` -/
def P4290519205077522579.Spec : Prop :=
  ∀ n, P4290519205077522579.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P1715955049323599764

`floor(A064971(n+1)/(n+1))/A358346(n+1)`
-/

namespace A358347.P1715955049323599764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A064971 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / (A358346 (n + 1) : ℚ)

end

end A358347.P1715955049323599764

namespace A358347

/-- `floor(A064971(n+1)/(n+1))/A358346(n+1)` -/
def P1715955049323599764.Spec : Prop :=
  ∀ n, P1715955049323599764.a n = (A358347 (n + 1) : ℚ)

end A358347

/-! ## A358347.P17454203074688647629

`A034448(gcd(A000188(n+1), A331738(n+1))²)`
-/

namespace A358347.P17454203074688647629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.gcd (A000188 (n + 1)) (A331738 (n + 1)) ^ 2)

end

end A358347.P17454203074688647629

namespace A358347

/-- `A034448(gcd(A000188(n+1), A331738(n+1))²)` -/
def P17454203074688647629.Spec : Prop :=
  ∀ n, P17454203074688647629.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P1903454295890279610

`(A000203(n+1)-A048146(n+1))/A358346(n+1)`
-/

namespace A358347.P1903454295890279610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A048146 (n + 1) : ℚ) / (A358346 (n + 1) : ℚ)

end

end A358347.P1903454295890279610

namespace A358347

/-- `(A000203(n+1)-A048146(n+1))/A358346(n+1)` -/
def P1903454295890279610.Spec : Prop :=
  ∀ n, P1903454295890279610.a n = (A358347 (n + 1) : ℚ)

end A358347

/-! ## A358347.P16025098669963026726

`A385045(n+1)/A358346(n+1)*A385046(n+1)`
-/

namespace A358347.P16025098669963026726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385045 (n + 1) : ℚ) / (A358346 (n + 1) : ℚ) * (A385046 (n + 1) : ℚ)

end

end A358347.P16025098669963026726

namespace A358347

/-- `A385045(n+1)/A358346(n+1)*A385046(n+1)` -/
def P16025098669963026726.Spec : Prop :=
  ∀ n, P16025098669963026726.a n = (A358347 (n + 1) : ℚ)

end A358347

/-! ## A358347.P1015862441815384106

`A305461(A350388(n+1)²)`
-/

namespace A358347.P1015862441815384106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A350388 (n + 1) ^ 2).toNat

end

end A358347.P1015862441815384106

namespace A358347

/-- `A305461(A350388(n+1)²)` -/
def P1015862441815384106.Spec : Prop :=
  ∀ n, P1015862441815384106.a n = A358347 (n + 1)

end A358347

/-! ## A358347.P10813735348521066832

`A305461(A071974(n+1)²²)`
-/

namespace A358347.P10813735348521066832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 ((A071974 (n + 1) ^ 2) ^ 2).toNat

end

end A358347.P10813735348521066832

namespace A358347

/-- `A305461(A071974(n+1)²²)` -/
def P10813735348521066832.Spec : Prop :=
  ∀ n, P10813735348521066832.a n = A358347 (n + 1)

end A358347

/-!
# A358348: Numbers k such that k == k^k (mod 9).

The programs for A358348, the canonical program `A358348.P4471490983168396238` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358348 has offset 1).

The definition of A358348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358348.P4471490983168396238

`∪[A056991(n+1), A239129(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A358348

/-- `∪[A056991(n+1), A239129(n+1)]` -/
def P4471490983168396238.Spec : Prop :=
  ∀ n, (P4471490983168396238.a n : ℤ) = A358348 (n + 1)

theorem P4471490983168396238.correct : P4471490983168396238.Spec := by
  intro n
  simp only [A358348, Nat.add_sub_cancel]

end A358348

/-! ## A358348.P14754937302532410413

`lt[A066659(n+5), A007918(A023920(n))]`
-/

namespace A358348.P14754937302532410413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A023920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358348.P14754937302532410413

namespace A358348

/-- `lt[A066659(n+5), A007918(A023920(n))]` -/
def P14754937302532410413.Spec : Prop :=
  ∀ n, (P14754937302532410413.a n : ℤ) = A358348 (n + 1)

end A358348

/-! ## A358348.P3158254253406008073

`lt[A011655(2*(n+2)), A309400(3*n+1)]`
-/

namespace A358348.P3158254253406008073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309400 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358348.P3158254253406008073

namespace A358348

/-- `lt[A011655(2*(n+2)), A309400(3*n+1)]` -/
def P3158254253406008073.Spec : Prop :=
  ∀ n, (P3158254253406008073.a n : ℤ) = A358348 (n + 1)

end A358348

/-!
# A358349: A puzzle array read by antidiagonals.

The programs for A358349, there is no canonical definition to state claims against.
-/

/-! ## A358349.P5838215669810759008

`A350066(A388052(n+1))`
-/

namespace A358349.P5838215669810759008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350066 (A388052 (n + 1)).toNat

end

end A358349.P5838215669810759008

/-! ## A358349.P13568745220759694959

`A240062(A075195(n+1)%A270613(3*n+4))`
-/

namespace A358349.P13568745220759694959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240062 (Int.tmod (A075195 (n + 1)) (A270613 (3 * n + 4))).toNat

end

end A358349.P13568745220759694959

/-! ## A358349.P12415245654113100761

`A240062(A034356(n+1)%A319061(3*n+5))`
-/

namespace A358349.P12415245654113100761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240062 (Int.tmod (A034356 (n + 1)) (A319061 (3 * n + 5))).toNat

end

end A358349.P12415245654113100761

/-!
# A358350: Numbers that can be written as (m + sum of digits of m + product of digits of m) for some m.

The programs for A358350, the canonical program `A358350.P1332157614416825726` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358350 has offset 1).

The definition of A358350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358350.P1332157614416825726

`eq[1, char[A161351(n+1)]]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A358350

/-- `eq[1, char[A161351(n+1)]]` -/
def P1332157614416825726.Spec : Prop :=
  ∀ n, (P1332157614416825726.a n : ℤ) = A358350 (n + 1)

theorem P1332157614416825726.correct : P1332157614416825726.Spec := by
  intro n
  simp only [A358350, Nat.add_sub_cancel]

end A358350

/-! ## A358350.P16309860881280225592

`lt[0, char[A061762(n+1)+1+n]]`
-/

namespace A358350.P16309860881280225592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (n + 1) + 1 + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358350.P16309860881280225592

namespace A358350

/-- `lt[0, char[A061762(n+1)+1+n]]` -/
def P16309860881280225592.Spec : Prop :=
  ∀ n, (P16309860881280225592.a n : ℤ) = A358350 (n + 1)

end A358350

/-! ## A358350.P17226044980641765954

`lt[0, char[2*(n+1)-A249121(n+1)]]`
-/

namespace A358350.P17226044980641765954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A249121 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358350.P17226044980641765954

namespace A358350

/-- `lt[0, char[2*(n+1)-A249121(n+1)]]` -/
def P17226044980641765954.Spec : Prop :=
  ∀ n, (P17226044980641765954.a n : ℤ) = A358350 (n + 1)

end A358350

/-! ## A358350.P10298468448581842881

`lt[0, char[A230099(n+1)+A007953(n+1)]]`
-/

namespace A358350.P10298468448581842881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (n + 1) + A007953 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358350.P10298468448581842881

namespace A358350

/-- `lt[0, char[A230099(n+1)+A007953(n+1)]]` -/
def P10298468448581842881.Spec : Prop :=
  ∀ n, (P10298468448581842881.a n : ℤ) = A358350 (n + 1)

end A358350

/-! ## A358350.P14861814109736697735

`lt[0, char[n+1+A007954(n+1)+A007953(n+1)]]`
-/

namespace A358350.P14861814109736697735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A007954 (n + 1) + A007953 (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358350.P14861814109736697735

namespace A358350

/-- `lt[0, char[n+1+A007954(n+1)+A007953(n+1)]]` -/
def P14861814109736697735.Spec : Prop :=
  ∀ n, (P14861814109736697735.a n : ℤ) = A358350 (n + 1)

end A358350

/-!
# A358351: Number of values of m such that m + (sum of digits of m) + (product of digits of m) is n.

The programs for A358351, there is no canonical definition to state claims against.
-/

/-! ## A358351.P4354058664369567118

`A245938(A389717(n+1))`
-/

namespace A358351.P4354058664369567118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245938 (A389717 (n + 1)).toNat

end

end A358351.P4354058664369567118

/-! ## A358351.P14456268271576792049

`A025429(n+3)-A055641(A245823(n+1))`
-/

namespace A358351.P14456268271576792049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (n + 3) - A055641 (A245823 (n + 1)).toNat

end

end A358351.P14456268271576792049

/-! ## A358351.P12546083987883510274

`A246106(A103380(n+5)-A286656(3*n+4))`
-/

namespace A358351.P12546083987883510274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A103380 (n + 5) - A286656 (3 * n + 4)).toNat

end

end A358351.P12546083987883510274

/-! ## A358351.P7543275484309052957

`gcd(A046778(A346702(3*(n+1))), A097795(n+1))`
-/

namespace A358351.P7543275484309052957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046778 (A346702 (3 * (n + 1))).toNat) (A097795 (n + 1))

end

end A358351.P7543275484309052957

/-! ## A358351.P7456437974769634364

`A278759(A263787(n+1)^A341808(2*n+11))`
-/

namespace A358351.P7456437974769634364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278759 (SequenceMachineLib.roundAway ((A263787 (n + 1) : ℚ) ^ (A341808 (2 * n + 11) : ℤ))).toNat

end

end A358351.P7456437974769634364

/-!
# A358352: a(n) is the smallest number k such that A358351(k) = n.

The programs for A358352, there is no canonical definition to state claims against.
-/

/-! ## A358352.P2214972812369199422

`∑[A000010(((n-3)*a(n-1)+n+3)²)]` with `a(0)=1, a(1)=2, a(2)=23`
-/

namespace A358352.P2214972812369199422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 23] fun n f1 =>
  A000010 ((((n : ℤ) - 3) * f1 (n - 1) + (n + 3 : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358352.P2214972812369199422

/-!
# A358353: Numbers that are not of the form m + (sum of digits of m) + (product of digits of m) for any m.

The programs for A358353, there is no canonical definition to state claims against.
-/

/-! ## A358353.P7074027360544024857

`eq[0, A358351(n+1)]+1`
-/

namespace A358353.P7074027360544024857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358351 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358353.P7074027360544024857

/-! ## A358353.P12675389052718665882

`lt[A358351(n+1), A006519(2*n+3)]+1`
-/

namespace A358353.P12675389052718665882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358353.P12675389052718665882

/-! ## A358353.P8286717008952026996

`lt[A358351(A028310(n)), A057427(n)]`
-/

namespace A358353.P8286717008952026996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358351 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358353.P8286717008952026996

/-! ## A358353.P13049747773760127310

`eq[A011739(n), A025858(n)]`
-/

namespace A358353.P13049747773760127310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358353.P13049747773760127310

/-! ## A358353.P5758454595353748714

`eq[A025858(n), A235044(n)]`
-/

namespace A358353.P5758454595353748714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358353.P5758454595353748714

/-!
# A358359: a(n) = number of occurrences of n in A128440; i.e., as a number [k*r^m], where r = golden ratio = (1+sqrt(5))/2, k and m are positive integers, and [ ] = floor.

The programs for A358359, there is no canonical definition to state claims against.
-/

/-! ## A358359.P9144055677587414539

`A252229(n+1)-1`
-/

namespace A358359.P9144055677587414539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 (n + 1) - 1

end

end A358359.P9144055677587414539

/-! ## A358359.P2528451682160005023

`∑[Δ[A252229(n)]%3]`
-/

namespace A358359.P2528451682160005023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358359.P2528451682160005023

/-! ## A358359.P8539418882305402330

`Δ[A020959(n+1)]-1`
-/

namespace A358359.P8539418882305402330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A358359.P8539418882305402330

/-! ## A358359.P14690525298705153480

`Δ[A020960(n+1)+ceil(ϕ*xor(n, -1))]-1`
-/

namespace A358359.P14690525298705153480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) + ⌈Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A358359.P14690525298705153480

/-! ## A358359.P1324122588385766276

`A000045(Δ[A020959(n+1)])`
-/

namespace A358359.P1324122588385766276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A358359.P1324122588385766276

/-! ## A358359.P17500595688679955973

`A005206(Δ[A020959(n+1)])`
-/

namespace A358359.P17500595688679955973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f1 (n + 1) - f1 n).toNat

end

end A358359.P17500595688679955973

/-! ## A358359.P18032575574542280020

`A020990(Δ[A020959(n+1)])`
-/

namespace A358359.P18032575574542280020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020990 (f1 (n + 1) - f1 n).toNat

end

end A358359.P18032575574542280020

/-! ## A358359.P11512370266186012055

`A059036(Δ[A020959(n+1)])`
-/

namespace A358359.P11512370266186012055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 (f1 (n + 1) - f1 n).toNat

end

end A358359.P11512370266186012055

/-! ## A358359.P16461512056487082440

`A020943(Δ[A020959(n+1)]!)`
-/

namespace A358359.P16461512056487082440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020943 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A358359.P16461512056487082440

/-! ## A358359.P5026557551278573433

`A209278(Δ[A020959(n+1)]+1)`
-/

namespace A358359.P5026557551278573433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (f1 (n + 1) - f1 n + 1).toNat

end

end A358359.P5026557551278573433

/-!
# A358360: The 3-adic valuation of the central Delannoy numbers (sequence A001850).

The programs for A358360, the canonical program `A358360.P603606278871448` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358360 has offset 0).

The definition of A358360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168570, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358360.P603606278871448

`A000989(floor((n+1)/2))+A168570(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358360

/-- `A000989(floor((n+1)/2))+A168570(n+1)` -/
def P603606278871448.Spec : Prop :=
  ∀ n, P603606278871448.a n = A358360 n

theorem P603606278871448.correct : P603606278871448.Spec := by
  intro n
  simp only [A358360]

end A358360

/-! ## A358360.P1649057551686548147

`a(floor(n/3))+n%2` with `a(0)=0`
-/

namespace A358360.P1649057551686548147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + n % 2

end

end A358360.P1649057551686548147

namespace A358360

/-- `a(floor(n/3))+n%2` -/
def P1649057551686548147.Spec : Prop :=
  ∀ n, (P1649057551686548147.a n : ℤ) = A358360 n

end A358360

/-! ## A358360.P7098616779111857637

`a(floor(n/3))+and(1, n)` with `a(0)=0`
-/

namespace A358360.P7098616779111857637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + Nat.land 1 n

end

end A358360.P7098616779111857637

namespace A358360

/-- `a(floor(n/3))+and(1, n)` -/
def P7098616779111857637.Spec : Prop :=
  ∀ n, (P7098616779111857637.a n : ℤ) = A358360 n

end A358360

/-! ## A358360.P13640303153350408063

`char[Δ[n²]]+a(floor(n/3))` with `a(0)=0`
-/

namespace A358360.P13640303153350408063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a ⌊(n : ℚ) / 3⌋.toNat

end

end A358360.P13640303153350408063

namespace A358360

/-- `char[Δ[n²]]+a(floor(n/3))` -/
def P13640303153350408063.Spec : Prop :=
  ∀ n, (P13640303153350408063.a n : ℤ) = A358360 n

end A358360

/-! ## A358360.P3358121451826746768

`a(floor(n/3))+gcd(2, n+1)-1` with `a(0)=0, a(1)=1`
-/

namespace A358360.P3358121451826746768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + (Nat.gcd 2 (n + 1) : ℤ) - 1

end

end A358360.P3358121451826746768

namespace A358360

/-- `a(floor(n/3))+gcd(2, n+1)-1` -/
def P3358121451826746768.Spec : Prop :=
  ∀ n, P3358121451826746768.a n = A358360 n

end A358360

/-! ## A358360.P16340336050790568295

`A000989(A007494(n))`
-/

namespace A358360.P16340336050790568295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A007494 n).toNat

end

end A358360.P16340336050790568295

namespace A358360

/-- `A000989(A007494(n))` -/
def P16340336050790568295.Spec : Prop :=
  ∀ n, P16340336050790568295.a n = A358360 n

end A358360

/-! ## A358360.P14250667857872540129

`A000989(A014682(n))`
-/

namespace A358360.P14250667857872540129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A014682 n).toNat

end

end A358360.P14250667857872540129

namespace A358360

/-- `A000989(A014682(n))` -/
def P14250667857872540129.Spec : Prop :=
  ∀ n, P14250667857872540129.a n = A358360 n

end A358360

/-! ## A358360.P5844103148095694218

`A000989(A185727(n))`
-/

namespace A358360.P5844103148095694218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A185727 n).toNat

end

end A358360.P5844103148095694218

namespace A358360

/-- `A000989(A185727(n))` -/
def P5844103148095694218.Spec : Prop :=
  ∀ n, P5844103148095694218.a n = A358360 n

end A358360

/-! ## A358360.P13324018659051891705

`A000120(A332497(n))`
-/

namespace A358360.P13324018659051891705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A332497 n).toNat

end

end A358360.P13324018659051891705

namespace A358360

/-- `A000120(A332497(n))` -/
def P13324018659051891705.Spec : Prop :=
  ∀ n, P13324018659051891705.a n = A358360 n

end A358360

/-! ## A358360.P11645008129621366568

`A209281(A356248(n))`
-/

namespace A358360.P11645008129621366568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (A356248 n).toNat

end

end A358360.P11645008129621366568

namespace A358360

/-- `A209281(A356248(n))` -/
def P11645008129621366568.Spec : Prop :=
  ∀ n, P11645008129621366568.a n = A358360 n

end A358360

/-! ## A358360.P95798756788318227

`A000989(A001651(n+1))`
-/

namespace A358360.P95798756788318227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A001651 (n + 1)).toNat

end

end A358360.P95798756788318227

namespace A358360

/-- `A000989(A001651(n+1))` -/
def P95798756788318227.Spec : Prop :=
  ∀ n, P95798756788318227.a n = A358360 n

end A358360

/-! ## A358360.P3541428865250216393

`A000989(A016051(n+1))`
-/

namespace A358360.P3541428865250216393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A016051 (n + 1)).toNat

end

end A358360.P3541428865250216393

namespace A358360

/-- `A000989(A016051(n+1))` -/
def P3541428865250216393.Spec : Prop :=
  ∀ n, P3541428865250216393.a n = A358360 n

end A358360

/-! ## A358360.P540716246416880189

`A000989(A026194(n+1))`
-/

namespace A358360.P540716246416880189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A026194 (n + 1)).toNat

end

end A358360.P540716246416880189

namespace A358360

/-- `A000989(A026194(n+1))` -/
def P540716246416880189.Spec : Prop :=
  ∀ n, P540716246416880189.a n = A358360 n

end A358360

/-! ## A358360.P6266178553249892455

`A000989(A047255(n+1))`
-/

namespace A358360.P6266178553249892455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A047255 (n + 1)).toNat

end

end A358360.P6266178553249892455

namespace A358360

/-- `A000989(A047255(n+1))` -/
def P6266178553249892455.Spec : Prop :=
  ∀ n, P6266178553249892455.a n = A358360 n

end A358360

/-! ## A358360.P3989857632428909010

`A000989(A047262(n+1))`
-/

namespace A358360.P3989857632428909010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A047262 (n + 1)).toNat

end

end A358360.P3989857632428909010

namespace A358360

/-- `A000989(A047262(n+1))` -/
def P3989857632428909010.Spec : Prop :=
  ∀ n, P3989857632428909010.a n = A358360 n

end A358360

/-! ## A358360.P16617049128250101031

`A000989(A125758(n+1))`
-/

namespace A358360.P16617049128250101031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A125758 (n + 1)).toNat

end

end A358360.P16617049128250101031

namespace A358360

/-- `A000989(A125758(n+1))` -/
def P16617049128250101031.Spec : Prop :=
  ∀ n, P16617049128250101031.a n = A358360 n

end A358360

/-! ## A358360.P10961617349515004679

`A000989(A189796(n+1))`
-/

namespace A358360.P10961617349515004679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A189796 (n + 1)).toNat

end

end A358360.P10961617349515004679

namespace A358360

/-- `A000989(A189796(n+1))` -/
def P10961617349515004679.Spec : Prop :=
  ∀ n, P10961617349515004679.a n = A358360 n

end A358360

/-! ## A358360.P1430512838113222300

`A067397(A130877(n+1))`
-/

namespace A358360.P1430512838113222300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067397 (A130877 (n + 1)).toNat

end

end A358360.P1430512838113222300

namespace A358360

/-- `A067397(A130877(n+1))` -/
def P1430512838113222300.Spec : Prop :=
  ∀ n, P1430512838113222300.a n = A358360 n

end A358360

/-! ## A358360.P5406993197495578027

`A067397(A156638(n+1))`
-/

namespace A358360.P5406993197495578027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067397 (A156638 (n + 1)).toNat

end

end A358360.P5406993197495578027

namespace A358360

/-- `A067397(A156638(n+1))` -/
def P5406993197495578027.Spec : Prop :=
  ∀ n, P5406993197495578027.a n = A358360 n

end A358360

/-! ## A358360.P16810790129064173559

`A067397(A193910(n+1))`
-/

namespace A358360.P16810790129064173559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067397 (A193910 (n + 1)).toNat

end

end A358360.P16810790129064173559

namespace A358360

/-- `A067397(A193910(n+1))` -/
def P16810790129064173559.Spec : Prop :=
  ∀ n, P16810790129064173559.a n = A358360 n

end A358360

/-!
# A358362: a(n) = 16^n * Sum_{k=0..n} (-1)^k*binomial(-1/2, k)^2.

The programs for A358362, the canonical program `A358362.P1876469184516276486` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358362 has offset 0).

The definition of A358362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358362.P1876469184516276486

`(64*(2*n-1)²*a(n-2)+(16*n-4)*a(n-1))/n²` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A358362

/-- `(64*(2*n-1)²*a(n-2)+(16*n-4)*a(n-1))/n²` -/
def P1876469184516276486.Spec : Prop :=
  ∀ n, P1876469184516276486.a n = (A358362 n : ℚ)

end A358362

/-!
# A358363: a(n) = 16^n * Sum_{k=0..n} (-1)^k*binomial(1/2, k)^2.

The programs for A358363, the canonical program `A358363.P12916811928402978587` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358363 has offset 0).

The definition of A358363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358363.P12916811928402978587

`(64*(2*n-3)²*a(n-2)+12*(4*n-3)*a(n-1))/n²` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A358363

/-- `(64*(2*n-3)²*a(n-2)+12*(4*n-3)*a(n-1))/n²` -/
def P12916811928402978587.Spec : Prop :=
  ∀ n, P12916811928402978587.a n = (A358363 n : ℚ)

end A358363

/-!
# A358364: a(n) = 16^n * Sum_{k=0..n} binomial(1/2, k)^2.

The programs for A358364, the canonical program `A358364.P3550125214057407112` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358364 has offset 0).

The definition of A358364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358364.P3550125214057407112

`(16*n+4)*(2*n-1)²*a(n-1)/((4*n-3)*n²)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A358364

/-- `(16*n+4)*(2*n-1)²*a(n-1)/((4*n-3)*n²)` -/
def P3550125214057407112.Spec : Prop :=
  ∀ n, P3550125214057407112.a n = (A358364 n : ℚ)

end A358364

/-! ## A358364.P4212022721915392254

`C(2*n, n)²*(4*n+1)`
-/

namespace A358364.P4212022721915392254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n ^ 2 * (4 * n + 1)

end

end A358364.P4212022721915392254

namespace A358364

/-- `C(2*n, n)²*(4*n+1)` -/
def P4212022721915392254.Spec : Prop :=
  ∀ n, (P4212022721915392254.a n : ℤ) = A358364 n

end A358364

/-! ## A358364.P13047176687624591563

`(4*n+1)*A002894(n)`
-/

namespace A358364.P13047176687624591563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A002894 n

end

end A358364.P13047176687624591563

namespace A358364

/-- `(4*n+1)*A002894(n)` -/
def P13047176687624591563.Spec : Prop :=
  ∀ n, P13047176687624591563.a n = A358364 n

end A358364

/-! ## A358364.P1722435090977530349

`(4*n+1)*A018224(2*n)`
-/

namespace A358364.P1722435090977530349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A018224 (2 * n)

end

end A358364.P1722435090977530349

namespace A358364

/-- `(4*n+1)*A018224(2*n)` -/
def P1722435090977530349.Spec : Prop :=
  ∀ n, P1722435090977530349.a n = A358364 n

end A358364

/-! ## A358364.P17072748664965178472

`(4*n+1)*A241530(2*n)`
-/

namespace A358364.P17072748664965178472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A241530 (2 * n)

end

end A358364.P17072748664965178472

namespace A358364

/-- `(4*n+1)*A241530(2*n)` -/
def P17072748664965178472.Spec : Prop :=
  ∀ n, P17072748664965178472.a n = A358364 n

end A358364

/-! ## A358364.P18220636417397225697

`(4*n+1)*A056040(2*n)²`
-/

namespace A358364.P18220636417397225697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A056040 (2 * n) ^ 2

end

end A358364.P18220636417397225697

namespace A358364

/-- `(4*n+1)*A056040(2*n)²` -/
def P18220636417397225697.Spec : Prop :=
  ∀ n, P18220636417397225697.a n = A358364 n

end A358364

/-! ## A358364.P16235182986136501939

`(4*n+1)*((n+1)*A000108(n))²`
-/

namespace A358364.P16235182986136501939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * ((n + 1 : ℤ) * A000108 n) ^ 2

end

end A358364.P16235182986136501939

namespace A358364

/-- `(4*n+1)*((n+1)*A000108(n))²` -/
def P16235182986136501939.Spec : Prop :=
  ∀ n, P16235182986136501939.a n = A358364 n

end A358364

/-! ## A358364.P3286958077999133097

`A002894(n)*A016813(n)`
-/

namespace A358364.P3286958077999133097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 n * A016813 n

end

end A358364.P3286958077999133097

namespace A358364

/-- `A002894(n)*A016813(n)` -/
def P3286958077999133097.Spec : Prop :=
  ∀ n, P3286958077999133097.a n = A358364 n

end A358364

/-! ## A358364.P6188966250328774606

`(A008586(n)+1)*A000984(n)²`
-/

namespace A358364.P6188966250328774606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008586 n + 1) * A000984 n ^ 2

end

end A358364.P6188966250328774606

namespace A358364

/-- `(A008586(n)+1)*A000984(n)²` -/
def P6188966250328774606.Spec : Prop :=
  ∀ n, P6188966250328774606.a n = A358364 n

end A358364

/-! ## A358364.P6289765246648895514

`A000984(n)²*A005408(2*n)`
-/

namespace A358364.P6289765246648895514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2 * A005408 (2 * n)

end

end A358364.P6289765246648895514

namespace A358364

/-- `A000984(n)²*A005408(2*n)` -/
def P6289765246648895514.Spec : Prop :=
  ∀ n, P6289765246648895514.a n = A358364 n

end A358364

/-!
# A358365: a(n) = 16^n * Sum_{k=0..n} binomial(-1/2, k)^2.

The programs for A358365, there is no canonical definition to state claims against.
-/

/-! ## A358365.P18134278454184407067

`A002894(n)+16*a(n-1)` with `a(0)=1`
-/

namespace A358365.P18134278454184407067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002894 n + 16 * a (n - 1)

end

end A358365.P18134278454184407067

/-! ## A358365.P2326448573483451327

`A000984(n)²+16*a(n-1)` with `a(0)=1`
-/

namespace A358365.P2326448573483451327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n ^ 2 + 16 * a (n - 1)

end

end A358365.P2326448573483451327

/-! ## A358365.P7935786942204957503

`A102376(n)*A277233(n)`
-/

namespace A358365.P7935786942204957503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n * A277233 n

end

end A358365.P7935786942204957503

/-! ## A358365.P15998067827915859491

`A001316(n)²*A277233(n)`
-/

namespace A358365.P15998067827915859491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2 * A277233 n

end

end A358365.P15998067827915859491

/-! ## A358365.P9201649697181328609

`A048896(2*n)²*A277233(n)`
-/

namespace A358365.P9201649697181328609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * n) ^ 2 * A277233 n

end

end A358365.P9201649697181328609

/-!
# A358366: Table read by rows. T(n, k) = [x^k] n! * Sum_{j=0..n} binomial(n*x, j).

The programs for A358366, there is no canonical definition to state claims against.
-/

/-! ## A358366.P13142541539187124070

`A079901(n)*A190782(n)`
-/

namespace A358366.P13142541539187124070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 n * A190782 n

end

end A358366.P13142541539187124070

/-!
# A358367: a(n) = 8^n * binomial(n * 3/2, n).

The programs for A358367, there is no canonical definition to state claims against.
-/

/-! ## A358367.P16904949984466697552

`2^n*A244038(n)`
-/

namespace A358367.P16904949984466697552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A244038 n

end

end A358367.P16904949984466697552

/-! ## A358367.P7588898873489508183

`∑[n+1]*A002005(n)`
-/

namespace A358367.P7588898873489508183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002005 n

end

end A358367.P7588898873489508183

/-! ## A358367.P17612595915973551926

`(n+1)*2^n*A085614(n+1)`
-/

namespace A358367.P17612595915973551926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ n : ℤ) * A085614 (n + 1)

end

end A358367.P17612595915973551926

/-! ## A358367.P11174048021736717785

`A002005(n)*A008805(2*n)`
-/

namespace A358367.P11174048021736717785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002005 n * A008805 (2 * n)

end

end A358367.P11174048021736717785

/-! ## A358367.P4296672967100531254

`(C(n+1, 2)+n+1)*A266240(A024206(n+1))`
-/

namespace A358367.P4296672967100531254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 + (n + 1) : ℤ) * A266240 (A024206 (n + 1)).toNat

end

end A358367.P4296672967100531254

/-!
# A358368: a(n) = Sum_{k=0..n} C(n)^2 * binomial(n + k, k), where C(n) is the n-th Catalan number.

The programs for A358368, the canonical program `A358368.P13008709193828809765` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358368 has offset 0).

The definition of A358368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358368.P13008709193828809765

`(64*n^3-32*n²-16*n+8)*a(n-1)/(n+1)^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A358368

/-- `(64*n^3-32*n²-16*n+8)*a(n-1)/(n+1)^3` -/
def P13008709193828809765.Spec : Prop :=
  ∀ n, P13008709193828809765.a n = (A358368 n : ℚ)

end A358368

/-! ## A358368.P16097014439936644225

`(2*n+1)*A033536(n)`
-/

namespace A358368.P16097014439936644225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A033536 n

end

end A358368.P16097014439936644225

namespace A358368

/-- `(2*n+1)*A033536(n)` -/
def P16097014439936644225.Spec : Prop :=
  ∀ n, P16097014439936644225.a n = A358368 n

end A358368

/-! ## A358368.P17461292699124505259

`∏[4-2/(n+1)]/2*A000108(n)²`
-/

namespace A358368.P17461292699124505259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * (A000108 n ^ 2 : ℚ)

end

end A358368.P17461292699124505259

namespace A358368

/-- `∏[4-2/(n+1)]/2*A000108(n)²` -/
def P17461292699124505259.Spec : Prop :=
  ∀ n, P17461292699124505259.a n = (A358368 n : ℚ)

end A358368

/-! ## A358368.P7540635967797444600

`A000108(n)*A000891(n)`
-/

namespace A358368.P7540635967797444600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000891 n

end

end A358368.P7540635967797444600

namespace A358368

/-- `A000108(n)*A000891(n)` -/
def P7540635967797444600.Spec : Prop :=
  ∀ n, P7540635967797444600.a n = A358368 n

end A358368

/-! ## A358368.P7464412214941399265

`A001246(n)*A001700(n)`
-/

namespace A358368.P7464412214941399265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n * A001700 n

end

end A358368.P7464412214941399265

namespace A358368

/-- `A001246(n)*A001700(n)` -/
def P7464412214941399265.Spec : Prop :=
  ∀ n, P7464412214941399265.a n = A358368 n

end A358368

/-! ## A358368.P1213973307212331018

`abs(A000891(n)*A168491(n))`
-/

namespace A358368.P1213973307212331018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000891 n * A168491 n|

end

end A358368.P1213973307212331018

namespace A358368

/-- `abs(A000891(n)*A168491(n))` -/
def P1213973307212331018.Spec : Prop :=
  ∀ n, P1213973307212331018.a n = A358368 n

end A358368

/-! ## A358368.P17527159317840481445

`A000108(n)²*A001700(n)`
-/

namespace A358368.P17527159317840481445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 * A001700 n

end

end A358368.P17527159317840481445

namespace A358368

/-- `A000108(n)²*A001700(n)` -/
def P17527159317840481445.Spec : Prop :=
  ∀ n, P17527159317840481445.a n = A358368 n

end A358368

/-! ## A358368.P5984366148005862354

`A168491(n)²*A001700(n)`
-/

namespace A358368.P5984366148005862354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n ^ 2 * A001700 n

end

end A358368.P5984366148005862354

namespace A358368

/-- `A168491(n)²*A001700(n)` -/
def P5984366148005862354.Spec : Prop :=
  ∀ n, P5984366148005862354.a n = A358368 n

end A358368

/-! ## A358368.P12535335035564005071

`A000891(n)*A120588(n+1)`
-/

namespace A358368.P12535335035564005071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000891 n * A120588 (n + 1)

end

end A358368.P12535335035564005071

namespace A358368

/-- `A000891(n)*A120588(n+1)` -/
def P12535335035564005071.Spec : Prop :=
  ∀ n, P12535335035564005071.a n = A358368 n

end A358368

/-! ## A358368.P7385391634721654164

`A000108(n)*A005558(2*n)`
-/

namespace A358368.P7385391634721654164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A005558 (2 * n)

end

end A358368.P7385391634721654164

namespace A358368

/-- `A000108(n)*A005558(2*n)` -/
def P7385391634721654164.Spec : Prop :=
  ∀ n, P7385391634721654164.a n = A358368 n

end A358368

/-!
# A358370: a(n) is the size of the largest 3-independent set in the cyclic group Zn.

The programs for A358370, there is no canonical definition to state claims against.
-/

/-! ## A358370.P8775539953411288034

`floor(A211316(3*(n+1))/6)`
-/

namespace A358370.P8775539953411288034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211316 (3 * (n + 1)) : ℚ) / 6⌋

end

end A358370.P8775539953411288034

/-! ## A358370.P16354564269656011200

`floor(A289435(3*(n+1))/6)`
-/

namespace A358370.P16354564269656011200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289435 (3 * (n + 1)) : ℚ) / 6⌋

end

end A358370.P16354564269656011200

/-! ## A358370.P8656105374939229955

`A008615(A211316(3*(n+1)))`
-/

namespace A358370.P8656105374939229955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A211316 (3 * (n + 1))).toNat

end

end A358370.P8656105374939229955

/-! ## A358370.P13997954954194717771

`A152467(A289435(3*(n+1)))`
-/

namespace A358370.P13997954954194717771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A289435 (3 * (n + 1))).toNat

end

end A358370.P13997954954194717771

/-! ## A358370.P8604227427358520919

`A124072(2*A290983(2*(n+1)))`
-/

namespace A358370.P8604227427358520919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (2 * A290983 (2 * (n + 1))).toNat

end

end A358370.P8604227427358520919

/-!
# A358371: Number of leaves in the n-th standard ordered rooted tree.

The programs for A358371, there is no canonical definition to state claims against.
-/

/-! ## A358371.P15070919283743352080

`A358372(n+1)-A358553(n+1)`
-/

namespace A358371.P15070919283743352080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (n + 1) - A358553 (n + 1)

end

end A358371.P15070919283743352080

/-! ## A358371.P15354742341700491854

`A323665(Δ[n²])-A358553(n+1)`
-/

namespace A358371.P15354742341700491854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A358553 (n + 1)

end

end A358371.P15354742341700491854

/-! ## A358371.P7828082435227365710

`A109129(A333219(n+1)+floor(1/(n+1)))`
-/

namespace A358371.P7828082435227365710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A333219 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A358371.P7828082435227365710

/-! ## A358371.P5804028088310825629

`A109129(A358506(n+1)+floor(1/(n+1)))`
-/

namespace A358371.P5804028088310825629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A358506 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A358371.P5804028088310825629

/-! ## A358371.P17560264313876344635

`dr(A323665(2*n+1))-A358553(n+1)`
-/

namespace A358371.P17560264313876344635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A323665 (2 * n + 1)) : ℤ) - A358553 (n + 1)

end

end A358371.P17560264313876344635

/-! ## A358371.P4180696735550468863

`A323665(n+1+n)%9-A358553(n+1)`
-/

namespace A358371.P4180696735550468863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323665 (n + 1 + n)) 9 - A358553 (n + 1)

end

end A358371.P4180696735550468863

/-! ## A358371.P15351611504614531831

`A075172(A006068(n))+1-A358553(n+1)`
-/

namespace A358371.P15351611504614531831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (A006068 n).toNat + 1 - A358553 (n + 1)

end

end A358371.P15351611504614531831

/-! ## A358371.P6786884470291789604

`A075172(A341916(n))+1-A358553(n+1)`
-/

namespace A358371.P6786884470291789604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (A341916 n).toNat + 1 - A358553 (n + 1)

end

end A358371.P6786884470291789604

/-! ## A358371.P10602259396733719083

`A161594(A323665(n+1+n))-A358553(n+1)`
-/

namespace A358371.P10602259396733719083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 (A323665 (n + 1 + n)).toNat - A358553 (n + 1)

end

end A358371.P10602259396733719083

/-! ## A358371.P16735004975528645741

`A087116(A358505(n+1))`
-/

namespace A358371.P16735004975528645741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A358505 (n + 1)).toNat

end

end A358371.P16735004975528645741

/-!
# A358372: Number of nodes in the n-th standard ordered rooted tree.

The programs for A358372, there is no canonical definition to state claims against.
-/

/-! ## A358372.P8387713245675890895

`A323665(Δ[n²])`
-/

namespace A358372.P8387713245675890895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A358372.P8387713245675890895

/-! ## A358372.P5942209795033458465

`dr(A323665(2*n+1))`
-/

namespace A358372.P5942209795033458465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A323665 (2 * n + 1))

end

end A358372.P5942209795033458465

/-! ## A358372.P14846679889783541788

`A323665(n+1+n)%9`
-/

namespace A358372.P14846679889783541788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323665 (n + 1 + n)) 9

end

end A358372.P14846679889783541788

/-! ## A358372.P12531351783633644208

`A075172(A006068(n))+1`
-/

namespace A358372.P12531351783633644208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (A006068 n).toNat + 1

end

end A358372.P12531351783633644208

/-! ## A358372.P16611722460952312737

`A061775(A333219(n+1))`
-/

namespace A358372.P16611722460952312737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A333219 (n + 1)).toNat

end

end A358372.P16611722460952312737

/-! ## A358372.P5172508959536410925

`A075172(A341916(n))+1`
-/

namespace A358372.P5172508959536410925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (A341916 n).toNat + 1

end

end A358372.P5172508959536410925

/-! ## A358372.P12659360561977361278

`A061775(A358506(n+1))`
-/

namespace A358372.P12659360561977361278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A358506 (n + 1)).toNat

end

end A358372.P12659360561977361278

/-! ## A358372.P11702376046771872169

`A323665(A016825(n))-1`
-/

namespace A358372.P11702376046771872169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 (A016825 n).toNat - 1

end

end A358372.P11702376046771872169

/-! ## A358372.P11035702317457947152

`A161594(A323665(n+1+n))`
-/

namespace A358372.P11035702317457947152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 (A323665 (n + 1 + n)).toNat

end

end A358372.P11035702317457947152

/-! ## A358372.P4273334057217092728

`A000027(A323665(or(1, n)+n))`
-/

namespace A358372.P4273334057217092728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A323665 (Nat.lor 1 n + n)).toNat

end

end A358372.P4273334057217092728

/-!
# A358373: Triangle read by rows where row n lists the sorted standard ordered rooted tree-numbers of all unlabeled ordered rooted trees with n vertices.

The programs for A358373, there is no canonical definition to state claims against.
-/

/-! ## A358373.P3267620553259039058

`lt[A277324(comp[2*(n+1)]), A273355(n+1)]+1`
-/

namespace A358373.P3267620553259039058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277324 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A358373.P3267620553259039058

/-! ## A358373.P447002268515216894

`lt[A333942(n), 16]+1`
-/

namespace A358373.P447002268515216894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A358373.P447002268515216894

/-! ## A358373.P6153655497421308535

`lt[A358372(n+1), 6]+1`
-/

namespace A358373.P6153655497421308535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A358373.P6153655497421308535

/-! ## A358373.P16444276724473061415

`lt[A123244(n+2), n*cosh(5)]`
-/

namespace A358373.P16444276724473061415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123244 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.cosh (5 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A358373.P16444276724473061415

/-! ## A358373.P15422126240481765159

`lt[∑[A244140(n)/2]², n²]`
-/

namespace A358373.P15422126240481765159
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244140 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A358373.P15422126240481765159

/-!
# A358375: Numbers k such that the k-th standard ordered rooted tree is binary.

The programs for A358375, there is no canonical definition to state claims against.
-/

/-! ## A358375.P7995180017027653771

`A232597(A008061(n))`
-/

namespace A358375.P7995180017027653771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232597 (A008061 n).toNat

end

end A358375.P7995180017027653771

/-!
# A358376: Numbers k such that the k-th standard ordered rooted tree is lone-child-avoiding (counted by A005043).

The programs for A358376, there is no canonical definition to state claims against.
-/

/-! ## A358376.P2480287639134565883

`eq[A093709(n), A153066(n)]`
-/

namespace A358376.P2480287639134565883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358376.P2480287639134565883

/-! ## A358376.P17691502081899631829

`record[and(A239949(n), A347373(2*n+3))]`
-/

namespace A358376.P17691502081899631829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A239949 n) (A347373 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358376.P17691502081899631829

/-! ## A358376.P12858845633807661104

`record[A249327(n+1)%A360646(3*n+2)]`
-/

namespace A358376.P12858845633807661104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249327 (n + 1)) (A360646 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358376.P12858845633807661104

/-!
# A358377: Numbers k such that the k-th standard ordered rooted tree is a generalized Bethe tree (counted by A003238).

The programs for A358377, there is no canonical definition to state claims against.
-/

/-! ## A358377.P12231712580484362482

`∩[A358378(n+1), A358521(n+1)]`
-/

namespace A358377.P12231712580484362482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358377.P12231712580484362482

/-! ## A358377.P12447106606096944177

`record[A375127(n)+A010055(n+1)]`
-/

namespace A358377.P12447106606096944177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375127 n + A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358377.P12447106606096944177

/-! ## A358377.P5721129347817679632

`eq[A034460(n+1), A334028(n)]+1`
-/

namespace A358377.P5721129347817679632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358377.P5721129347817679632

/-! ## A358377.P16905221144137977711

`eq[A034460(n+1), A351014(n)]+1`
-/

namespace A358377.P16905221144137977711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358377.P16905221144137977711

/-! ## A358377.P17426457247225260739

`∩[A004437(n+1), A358459(n+1)]`
-/

namespace A358377.P17426457247225260739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358377.P17426457247225260739

/-!
# A358378: Numbers k such that the k-th standard ordered rooted tree is fully canonically ordered (counted by A000081).

The programs for A358378, there is no canonical definition to state claims against.
-/

/-! ## A358378.P4988321480787347933

`∑{e}[2*a(n-1), A065609(#)]` with `a(0)=3`
-/

namespace A358378.P4988321480787347933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A065609 (Nat.factorization (f1 n) p)

end

end A358378.P4988321480787347933

/-! ## A358378.P16427118274392071709

`record[A375126(n+1)-(2^floor(log2(n+1))-1)]`
-/

namespace A358378.P16427118274392071709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 (n + 1) - ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358378.P16427118274392071709

/-! ## A358378.P16851239396200214975

`A062050(eq[1, A374630(n)])`
-/

namespace A358378.P16851239396200214975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358378.P16851239396200214975

/-! ## A358378.P9359768686754645416

`A162751(eq[1, A374630(n)])`
-/

namespace A358378.P9359768686754645416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358378.P9359768686754645416

/-! ## A358378.P5928999938125877107

`∑{e}[A007283(n), A225620(#)]`
-/

namespace A358378.P5928999938125877107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A225620 (Nat.factorization (f1 n).natAbs p)

end

end A358378.P5928999938125877107

/-!
# A358379: Edge-height (or depth) of the n-th standard ordered rooted tree.

The programs for A358379, there is no canonical definition to state claims against.
-/

/-! ## A358379.P1258104985347395799

`a(A124758(n)-1)+1` with `a(0)=0`
-/

namespace A358379.P1258104985347395799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A124758 n - 1).toNat + 1

end

end A358379.P1258104985347395799

/-! ## A358379.P3768406522983463253

`a(A333226(n)-1)+1` with `a(0)=0`
-/

namespace A358379.P3768406522983463253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A333226 n - 1).toNat + 1

end

end A358379.P3768406522983463253

/-! ## A358379.P3070734304661603382

`A109082(A333219(n+1))`
-/

namespace A358379.P3070734304661603382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A333219 (n + 1)).toNat

end

end A358379.P3070734304661603382

/-! ## A358379.P12319139011015177456

`A109082(A358506(n+1))`
-/

namespace A358379.P12319139011015177456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A358506 (n + 1)).toNat

end

end A358379.P12319139011015177456

/-! ## A358379.P6884402989633563929

`A017986(a(A124758(n)-1))` with `a(0)=0`
-/

namespace A358379.P6884402989633563929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A017986 (a (A124758 n - 1).toNat).toNat

end

end A358379.P6884402989633563929

/-! ## A358379.P17483679658453315244

`A132271(a(A124758(n)-1))` with `a(0)=0`
-/

namespace A358379.P17483679658453315244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A132271 (a (A124758 n - 1).toNat).toNat

end

end A358379.P17483679658453315244

/-! ## A358379.P9449887195303585735

`A185974(a(A333226(n)-1))` with `a(0)=0`
-/

namespace A358379.P9449887195303585735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A185974 (a (A333226 n - 1).toNat).toNat

end

end A358379.P9449887195303585735

/-! ## A358379.P17511191450941069691

`A028242(2*a(A124758(n)-1))` with `a(0)=0`
-/

namespace A358379.P17511191450941069691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A028242 (2 * a (A124758 n - 1).toNat).toNat

end

end A358379.P17511191450941069691

/-! ## A358379.P13669760989667183687

`A272604(A358505(n+1))`
-/

namespace A358379.P13669760989667183687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A358505 (n + 1)).toNat

end

end A358379.P13669760989667183687

/-!
# A358380: a(n) = Sum_{d|n} tau(d^5), where tau(n) = number of divisors of n, cf. A000005.

The programs for A358380, the canonical program `A358380.P3103493124036931773` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358380 has offset 1).

The definition of A358380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358380.P3103493124036931773

`∑{d}[n+1, A344328(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A358380

/-- `∑{d}[n+1, A344328(#)]` -/
def P3103493124036931773.Spec : Prop :=
  ∀ n, P3103493124036931773.a n = A358380 (n + 1)

theorem P3103493124036931773.correct : P3103493124036931773.Spec := by
  intro n
  simp only [A358380, Nat.add_sub_cancel]

end A358380

/-! ## A358380.P11828249223222319939

`∏{e}[n+1, A000566(#+1)]`
-/

namespace A358380.P11828249223222319939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000566 (Nat.factorization (f1 n) p + 1)

end

end A358380.P11828249223222319939

namespace A358380

/-- `∏{e}[n+1, A000566(#+1)]` -/
def P11828249223222319939.Spec : Prop :=
  ∀ n, P11828249223222319939.a n = A358380 (n + 1)

end A358380

/-! ## A358380.P11556113149375959908

`∑{d}[n+1, A000005(#)*A082476((n+1)/#)]`
-/

namespace A358380.P11556113149375959908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A082476 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358380.P11556113149375959908

namespace A358380

/-- `∑{d}[n+1, A000005(#)*A082476((n+1)/#)]` -/
def P11556113149375959908.Spec : Prop :=
  ∀ n, P11556113149375959908.a n = A358380 (n + 1)

end A358380

/-! ## A358380.P12634815386172956308

`∑{d}[n+1, A007425(#)*A351521((n+1)/#)]`
-/

namespace A358380.P12634815386172956308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A351521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358380.P12634815386172956308

namespace A358380

/-- `∑{d}[n+1, A007425(#)*A351521((n+1)/#)]` -/
def P12634815386172956308.Spec : Prop :=
  ∀ n, P12634815386172956308.a n = A358380 (n + 1)

end A358380

/-! ## A358380.P3687140708722933285

`∑{d}[n+1, A008683(#)*A397645((n+1)/#)]`
-/

namespace A358380.P3687140708722933285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A397645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358380.P3687140708722933285

namespace A358380

/-- `∑{d}[n+1, A008683(#)*A397645((n+1)/#)]` -/
def P3687140708722933285.Spec : Prop :=
  ∀ n, P3687140708722933285.a n = A358380 (n + 1)

end A358380

/-! ## A358380.P9784274986198400955

`∑{d}[n+1, A124508(#)*A326815((n+1)/#)]`
-/

namespace A358380.P9784274986198400955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124508 d * A326815 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358380.P9784274986198400955

namespace A358380

/-- `∑{d}[n+1, A124508(#)*A326815((n+1)/#)]` -/
def P9784274986198400955.Spec : Prop :=
  ∀ n, P9784274986198400955.a n = A358380 (n + 1)

end A358380

/-! ## A358380.P12728128738802130315

`∑{d}[(n+1)^3, A000005(gcd(#, n+1))]`
-/

namespace A358380.P12728128738802130315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (Nat.gcd d (n + 1))

end

end A358380.P12728128738802130315

namespace A358380

/-- `∑{d}[(n+1)^3, A000005(gcd(#, n+1))]` -/
def P12728128738802130315.Spec : Prop :=
  ∀ n, P12728128738802130315.a n = A358380 (n + 1)

end A358380

/-!
# A358381: Primes p such that q1=6*p-1 and q2=6*p+1 are also primes (twin primes) and q1 is a Sophie Germain prime (i.e., 2*q1+1 is prime).

The programs for A358381, there is no canonical definition to state claims against.
-/

/-! ## A358381.P2565024809646112914

`A069675(n*a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A358381.P2565024809646112914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A069675 ((n : ℤ) * a (n - 2)).toNat

end

end A358381.P2565024809646112914

/-!
# A358382: First of three consecutive primes p,q,r such that r*(p+q) + p*q and r*(p+q) - p*q are prime.

The programs for A358382, there is no canonical definition to state claims against.
-/

/-! ## A358382.P4079596962958381269

`record[A014963(A124540(n)+3)]`
-/

namespace A358382.P4079596962958381269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124540 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358382.P4079596962958381269

/-! ## A358382.P17916704992911314752

`A073350(A134512(n)+char[1])`
-/

namespace A358382.P17916704992911314752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073350 (A134512 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A358382.P17916704992911314752

/-! ## A358382.P7983562477708686869

`p?[A301801(n)+A000045(n)]`
-/

namespace A358382.P7983562477708686869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301801 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358382.P7983562477708686869

/-!
# A358385: Number of automorphism group Gamma(n)-orbits of regular triangulations of the vertex set of the n-dimensional cube.

The programs for A358385, there is no canonical definition to state claims against.
-/

/-! ## A358385.P18012883479852871129

`A297446(A231619(n))+A025427(n)`
-/

namespace A358385.P18012883479852871129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297446 (A231619 n).toNat + A025427 n

end

end A358385.P18012883479852871129

/-!
# A358388: a(n) = hypergeom([n, -n, 1/2], [1, 1], -8).

The programs for A358388, there is no canonical definition to state claims against.
-/

/-! ## A358388.P4588857066715105469

`A002002(n)²+A123164(n)²`
-/

namespace A358388.P4588857066715105469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n ^ 2 + A123164 n ^ 2

end

end A358388.P4588857066715105469

/-!
# A358389: a(n) = n * Sum_{d|n} (d + n/d - 2)!/d!.

The programs for A358389, the canonical program `A358389.P2898089005160825838` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358389 has offset 1).

The definition of A358389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358389.P2898089005160825838

`(n+1)*∑{d}[n+1, (#+(n+1)/#-2)!/#!]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A358389

/-- `(n+1)*∑{d}[n+1, (#+(n+1)/#-2)!/#!]` -/
def P2898089005160825838.Spec : Prop :=
  ∀ n, P2898089005160825838.a n = (A358389 (n + 1) : ℚ)

end A358389

/-! ## A358389.P5600919693372223919

`A225529(A062318(n+1)+A014137(n))`
-/

namespace A358389.P5600919693372223919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225529 (A062318 (n + 1) + A014137 n).toNat

end

end A358389.P5600919693372223919

namespace A358389

/-- `A225529(A062318(n+1)+A014137(n))` -/
def P5600919693372223919.Spec : Prop :=
  ∀ n, P5600919693372223919.a n = A358389 (n + 1)

end A358389

/-! ## A358389.P18103787240725422118

`A358279(n+1)-A185344(A051301(n))`
-/

namespace A358389.P18103787240725422118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358279 (n + 1) - A185344 (A051301 n).toNat

end

end A358389.P18103787240725422118

namespace A358389

/-- `A358279(n+1)-A185344(A051301(n))` -/
def P18103787240725422118.Spec : Prop :=
  ∀ n, P18103787240725422118.a n = A358389 (n + 1)

end A358389

/-!
# A358390: The number of maximal antichains in the Kreweras lattice of non-crossing set partitions of an n-element set.

The programs for A358390, there is no canonical definition to state claims against.
-/

/-! ## A358390.P7284348813478837830

`A266195(∑[A045689(n)])`
-/

namespace A358390.P7284348813478837830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266195 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A358390.P7284348813478837830

/-!
# A358392: Number of nonempty subsets of {1, 2, ..., n} with GCD equal to 1 and containing the sum of any two elements whenever it is at most n.

The programs for A358392, there is no canonical definition to state claims against.
-/

/-! ## A358392.P2056782953479793498

`A222048(n)+A030308(A002064(n))`
-/

namespace A358392.P2056782953479793498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222048 n + A030308 (A002064 n).toNat

end

end A358392.P2056782953479793498

/-! ## A358392.P18286039889725549428

`A249351(A050355(n+1))+A222048(n)`
-/

namespace A358392.P18286039889725549428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A050355 (n + 1)).toNat + A222048 n

end

end A358392.P18286039889725549428

/-! ## A358392.P10403816496390333124

`A222048(n)+A059841(A018794(2*n))`
-/

namespace A358392.P10403816496390333124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222048 n + A059841 (A018794 (2 * n)).toNat

end

end A358392.P10403816496390333124

/-! ## A358392.P4999944317656530125

`A222048(n)+A008966(A151575(2*n))`
-/

namespace A358392.P4999944317656530125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222048 n + A008966 (A151575 (2 * n)).toNat

end

end A358392.P4999944317656530125

/-! ## A358392.P15073299246707538484

`A351018(n)+A037808(A056273(n))`
-/

namespace A358392.P15073299246707538484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351018 n + A037808 (A056273 n).toNat

end

end A358392.P15073299246707538484

/-!
# A358396: Even numbers k such that sigma(k) + sigma(k+2) < 2*sigma(k+1); even terms in A053229.

The programs for A358396, the canonical program `A358396.P11595349240715137252` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358396 has offset 1).

The definition of A358396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358396.P11595349240715137252

`∩[2*n, A053229(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A358396

/-- `∩[2*n, A053229(n+1)]` -/
def P11595349240715137252.Spec : Prop :=
  ∀ n, (P11595349240715137252.a n : ℤ) = A358396 (n + 1)

theorem P11595349240715137252.correct : P11595349240715137252.Spec := by
  intro n
  simp only [A358396, Nat.add_sub_cancel]

end A358396

/-! ## A358396.P11958919181916012652

`∩[A053229(n+1), A005843(n)]`
-/

namespace A358396.P11958919181916012652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358396.P11958919181916012652

namespace A358396

/-- `∩[A053229(n+1), A005843(n)]` -/
def P11958919181916012652.Spec : Prop :=
  ∀ n, (P11958919181916012652.a n : ℤ) = A358396 (n + 1)

end A358396

/-! ## A358396.P13212317411345514431

`∩[A053229(n+1), A004277(n+1)]`
-/

namespace A358396.P13212317411345514431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358396.P13212317411345514431

namespace A358396

/-- `∩[A053229(n+1), A004277(n+1)]` -/
def P13212317411345514431.Spec : Prop :=
  ∀ n, (P13212317411345514431.a n : ℤ) = A358396 (n + 1)

end A358396

/-! ## A358396.P17606895578534882160

`∩[A053229(n+1), A000027(n+1)+n+1]`
-/

namespace A358396.P17606895578534882160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358396.P17606895578534882160

namespace A358396

/-- `∩[A053229(n+1), A000027(n+1)+n+1]` -/
def P17606895578534882160.Spec : Prop :=
  ∀ n, (P17606895578534882160.a n : ℤ) = A358396 (n + 1)

end A358396

/-!
# A358397: Number of pairs of partitions (A<=B, that is, A is a refinement of B) of [n] such that A is noncrossing and its nontrivial blocks are of type {a,b} with a <= n and b > n.

The programs for A358397, there is no canonical definition to state claims against.
-/

/-! ## A358397.P2497654693032736990

`A351532(A003418(2*n))+A000142(n)`
-/

namespace A358397.P2497654693032736990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351532 (A003418 (2 * n)).toNat + A000142 n

end

end A358397.P2497654693032736990

/-! ## A358397.P17732294721891122783

`A156077(A213427(n+2)*A336022(n))`
-/

namespace A358397.P17732294721891122783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A213427 (n + 2) * A336022 n).toNat

end

end A358397.P17732294721891122783

