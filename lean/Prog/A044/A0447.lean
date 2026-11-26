import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A044700: Numbers k such that string 7,5 occurs in the base 9 representation of k but not of k+1.

The programs for A044700, there is no canonical definition to state claims against.
-/

/-! ## A044700.P10207104029688369561

`A044320(1+n)-1`
-/

namespace A044700.P10207104029688369561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044320 (1 + n) - 1

end

end A044700.P10207104029688369561

/-! ## A044700.P10084491132724239752

`-1+A044320(n+1)`
-/

namespace A044700.P10084491132724239752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044320 (n + 1)

end

end A044700.P10084491132724239752

/-! ## A044700.P3886802663184319460

`A233583(A044320(n+1))`
-/

namespace A044700.P3886802663184319460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044320 (n + 1)).toNat

end

end A044700.P3886802663184319460

/-!
# A044701: Numbers n such that string 7,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044701, there is no canonical definition to state claims against.
-/

/-! ## A044701.P11426203691197509780

`A319021(A044320(n+1)-2)`
-/

namespace A044701.P11426203691197509780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044320 (n + 1) - 2).toNat

end

end A044701.P11426203691197509780

/-! ## A044701.P4039957518673262183

`A264981(A038022(n)+3)+A044700(n+1)`
-/

namespace A044701.P4039957518673262183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264981 (A038022 n + 3).toNat + A044700 (n + 1)

end

end A044701.P4039957518673262183

/-! ## A044701.P12156671056708428600

`A264981(A088211(n))+A044700(n+1)`
-/

namespace A044701.P12156671056708428600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264981 (A088211 n).toNat + A044700 (n + 1)

end

end A044701.P12156671056708428600

/-!
# A044702: Numbers n such that string 7,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044702, there is no canonical definition to state claims against.
-/

/-! ## A044702.P11286695859039578947

`record[A057979(A044692(2+n))]`
-/

namespace A044702.P11286695859039578947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044692 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044702.P11286695859039578947

/-! ## A044702.P18010322666234107534

`A004526(A044692(2*(1+n)))`
-/

namespace A044702.P18010322666234107534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044692 (2 * (1 + n))).toNat

end

end A044702.P18010322666234107534

/-! ## A044702.P1796153496695508534

`A057979(A044692(2*(n+1)))`
-/

namespace A044702.P1796153496695508534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044692 (2 * (n + 1))).toNat

end

end A044702.P1796153496695508534

/-! ## A044702.P7746701588516426283

`record[Δ[A152271(A044692(n+1))]]`
-/

namespace A044702.P7746701588516426283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A044692 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044702.P7746701588516426283

/-! ## A044702.P6702990293618677855

`A032742(A044692(2*(n+1))-1)`
-/

namespace A044702.P6702990293618677855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044692 (2 * (n + 1)) - 1).toNat

end

end A044702.P6702990293618677855

/-! ## A044702.P16484345889559170030

`A152271(A044692(2*(n+1))-2)`
-/

namespace A044702.P16484345889559170030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A044692 (2 * (n + 1)) - 2).toNat

end

end A044702.P16484345889559170030

/-! ## A044702.P5129116388516337758

`A152271(A044692(n+2+n))-1`
-/

namespace A044702.P5129116388516337758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A044692 (n + 2 + n)).toNat - 1

end

end A044702.P5129116388516337758

/-!
# A044703: Numbers n such that string 7,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044703, there is no canonical definition to state claims against.
-/

/-! ## A044703.P12708707547044972620

`∩[A043995(n+1), A056020(n+1)]`
-/

namespace A044703.P12708707547044972620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P12708707547044972620

/-! ## A044703.P415372622203908893

`∩[A043995(n+1), A253195(n+1)]`
-/

namespace A044703.P415372622203908893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P415372622203908893

/-! ## A044703.P16187135610212945326

`∩[A043995(n+1), A274406(n+1)]`
-/

namespace A044703.P16187135610212945326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P16187135610212945326

/-! ## A044703.P3310485520483976183

`∩[A043995(n+1), A319293(n+1)]`
-/

namespace A044703.P3310485520483976183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P3310485520483976183

/-! ## A044703.P686194132179173385

`∩[A043995(n+1), A016789(n)]`
-/

namespace A044703.P686194132179173385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P686194132179173385

/-! ## A044703.P9433269900766601314

`∩[A043995(n+1), A140282(n)]`
-/

namespace A044703.P9433269900766601314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140282 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P9433269900766601314

/-! ## A044703.P7185881700153998660

`∩[A043995(n+1), A350667(n)]`
-/

namespace A044703.P7185881700153998660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P7185881700153998660

/-! ## A044703.P7065904449521696004

`∩[A043995(n+1), A402293(n)]`
-/

namespace A044703.P7065904449521696004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P7065904449521696004

/-! ## A044703.P15612333577764634760

`∩[A003663(n+1), A043995(n+1)]`
-/

namespace A044703.P15612333577764634760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P15612333577764634760

/-! ## A044703.P3482805294668447924

`∩[A043995(n+1), A054966(n+1)]`
-/

namespace A044703.P3482805294668447924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P3482805294668447924

/-! ## A044703.P10637466648953900988

`∩[A043995(n+1), A060470(n+1)]`
-/

namespace A044703.P10637466648953900988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P10637466648953900988

/-! ## A044703.P12692961109993225027

`∩[A043995(n+1), A061570(n+1)]`
-/

namespace A044703.P12692961109993225027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P12692961109993225027

/-! ## A044703.P422413098512895292

`∩[A043995(n+1), A180486(n+1)]`
-/

namespace A044703.P422413098512895292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P422413098512895292

/-! ## A044703.P17043042569059127717

`∩[A043995(n+1), A189670(n+1)]`
-/

namespace A044703.P17043042569059127717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P17043042569059127717

/-! ## A044703.P14887939873430241019

`∩[A043995(n+1), A189724(n+1)]`
-/

namespace A044703.P14887939873430241019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P14887939873430241019

/-! ## A044703.P3645416881688646837

`∩[A043995(n+1), A055048(n+1)]`
-/

namespace A044703.P3645416881688646837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044703.P3645416881688646837

/-! ## A044703.P1856909105614943713

`filter[A043995(n+1), A011672(#)]`
-/

namespace A044703.P1856909105614943713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011672 (f1 j).toNat = 1) n)

end

end A044703.P1856909105614943713

/-! ## A044703.P14875405288696495334

`filter[A043995(n+1), A080846(#)]`
-/

namespace A044703.P14875405288696495334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A044703.P14875405288696495334

/-! ## A044703.P3638363466528543468

`filter[A043995(n+1), A144596(#)]`
-/

namespace A044703.P3638363466528543468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144596 (f1 j).toNat = 1) n)

end

end A044703.P3638363466528543468

/-! ## A044703.P9868731593993932898

`filter[A043995(n+1), A189668(#)]`
-/

namespace A044703.P9868731593993932898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189668 (f1 j).toNat = 1) n)

end

end A044703.P9868731593993932898

/-!
# A044704: Numbers n such that string 8,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044704, there is no canonical definition to state claims against.
-/

/-! ## A044704.P8161702925865790855

`A044324(n+1)-1`
-/

namespace A044704.P8161702925865790855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044324 (n + 1) - 1

end

end A044704.P8161702925865790855

/-! ## A044704.P2552895887400343364

`A113520(A044324(n+1))`
-/

namespace A044704.P2552895887400343364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044324 (n + 1)).toNat

end

end A044704.P2552895887400343364

/-!
# A044705: Numbers n such that string 8,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044705, there is no canonical definition to state claims against.
-/

/-! ## A044705.P15333441603827539937

`A002517(A044324(1+n))-1`
-/

namespace A044705.P15333441603827539937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044324 (1 + n)).toNat - 1

end

end A044705.P15333441603827539937

/-! ## A044705.P14747524216791064438

`-1+A002517(A044324(n+1))`
-/

namespace A044705.P14747524216791064438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044324 (n + 1)).toNat

end

end A044705.P14747524216791064438

/-! ## A044705.P14061685565883199911

`A044325(n+1)-1`
-/

namespace A044705.P14061685565883199911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044325 (n + 1) - 1

end

end A044705.P14061685565883199911

/-! ## A044705.P15923391700016890359

`A233583(A044325(n+1))`
-/

namespace A044705.P15923391700016890359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044325 (n + 1)).toNat

end

end A044705.P15923391700016890359

/-!
# A044706: Numbers n such that string 8,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044706, there is no canonical definition to state claims against.
-/

/-! ## A044706.P13177902783011749295

`A044326(n+1)-1`
-/

namespace A044706.P13177902783011749295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044326 (n + 1) - 1

end

end A044706.P13177902783011749295

/-! ## A044706.P5168105745562545773

`A233583(A044326(n+1))`
-/

namespace A044706.P5168105745562545773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044326 (n + 1)).toNat

end

end A044706.P5168105745562545773

/-!
# A044707: Numbers n such that string 8,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044707, there is no canonical definition to state claims against.
-/

/-! ## A044707.P12118362479579994349

`A044327(n+1)-1`
-/

namespace A044707.P12118362479579994349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044327 (n + 1) - 1

end

end A044707.P12118362479579994349

/-! ## A044707.P6384050747134170102

`A233583(A044327(n+1))`
-/

namespace A044707.P6384050747134170102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044327 (n + 1)).toNat

end

end A044707.P6384050747134170102

/-!
# A044708: Numbers n such that string 8,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044708, there is no canonical definition to state claims against.
-/

/-! ## A044708.P3164353444673782983

`A002517(A044327(n+1))-1`
-/

namespace A044708.P3164353444673782983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044327 (n + 1)).toNat - 1

end

end A044708.P3164353444673782983

/-! ## A044708.P1410546573886413767

`A233583(A044328(n+1))`
-/

namespace A044708.P1410546573886413767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044328 (n + 1)).toNat

end

end A044708.P1410546573886413767

/-!
# A044709: Numbers n such that string 8,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044709, there is no canonical definition to state claims against.
-/

/-! ## A044709.P14478651587655906354

`A319021(A044328(1+n))-2`
-/

namespace A044709.P14478651587655906354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044328 (1 + n)).toNat - 2

end

end A044709.P14478651587655906354

/-! ## A044709.P13512870770894978030

`A044329(1+n)-1`
-/

namespace A044709.P13512870770894978030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044329 (1 + n) - 1

end

end A044709.P13512870770894978030

/-! ## A044709.P7311510535765966656

`A233583(A044329(n+1))`
-/

namespace A044709.P7311510535765966656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044329 (n + 1)).toNat

end

end A044709.P7311510535765966656

/-!
# A044710: Numbers n such that string 8,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044710, there is no canonical definition to state claims against.
-/

/-! ## A044710.P12300831356633093659

`A319021(A044329(n+1)-2)`
-/

namespace A044710.P12300831356633093659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044329 (n + 1) - 2).toNat

end

end A044710.P12300831356633093659

/-! ## A044710.P18197198373108107387

`A044330(1+n)-1`
-/

namespace A044710.P18197198373108107387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044330 (1 + n) - 1

end

end A044710.P18197198373108107387

/-! ## A044710.P17402906640390510867

`-1+A044330(n+1)`
-/

namespace A044710.P17402906640390510867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044330 (n + 1)

end

end A044710.P17402906640390510867

/-! ## A044710.P12997066205878322234

`A113520(A044330(n+1))`
-/

namespace A044710.P12997066205878322234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044330 (n + 1)).toNat

end

end A044710.P12997066205878322234

/-!
# A044711: Numbers n such that string 8,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044711, there is no canonical definition to state claims against.
-/

/-! ## A044711.P17967941038778544497

`A319021(A044709(n+1))`
-/

namespace A044711.P17967941038778544497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044709 (n + 1)).toNat

end

end A044711.P17967941038778544497

/-!
# A044712: Numbers n such that string 8,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044712, there is no canonical definition to state claims against.
-/

/-! ## A044712.P18079956324135849561

`A020725(∩[3*n+4, A044330(n+1)])`
-/

namespace A044712.P18079956324135849561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044712.P18079956324135849561

/-! ## A044712.P14659554491970471876

`A362360(n+1)+1`
-/

namespace A044712.P14659554491970471876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362360 (n + 1) + 1

end

end A044712.P14659554491970471876

/-! ## A044712.P13724088923222640323

`A044251(n+1)-1`
-/

namespace A044712.P13724088923222640323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044251 (n + 1) - 1

end

end A044712.P13724088923222640323

/-! ## A044712.P8848789954667688474

`A158123(n+1)-2`
-/

namespace A044712.P8848789954667688474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158123 (n + 1) - 2

end

end A044712.P8848789954667688474

/-! ## A044712.P6562595112343554464

`81*n+82-2`
-/

namespace A044712.P6562595112343554464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (81 * n + 82 : ℤ) - 2

end

end A044712.P6562595112343554464

/-!
# A044713: Numbers n such that string 0,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044713, there is no canonical definition to state claims against.
-/

/-! ## A044713.P14597687684649491936

`A160941(10*10*(n+1)+1)+∑{digits}[n, #]`
-/

namespace A044713.P14597687684649491936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (10 * (10 * (n + 1)) + 1) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A044713.P14597687684649491936

/-! ## A044713.P9792078339354377087

`A044332(n+1)+abs(A118762(n+1))-1`
-/

namespace A044713.P9792078339354377087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044332 (n + 1) + (|A118762 (n + 1)| - 1)

end

end A044713.P9792078339354377087

/-! ## A044713.P13819979253324719928

`abs(A118762(n+1))+A158128(n+1)-2`
-/

namespace A044713.P13819979253324719928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118762 (n + 1)| + (A158128 (n + 1) - 2)

end

end A044713.P13819979253324719928

/-! ## A044713.P6393058776618971709

`A160941(10*10*(n+1)+1)+A007953(n)`
-/

namespace A044713.P6393058776618971709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (10 * (10 * (n + 1)) + 1) + A007953 n

end

end A044713.P6393058776618971709

/-! ## A044713.P6703310642621155809

`A160941(10*10*(n+1)+1)+sqrt(A118881(n))`
-/

namespace A044713.P6703310642621155809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160941 (10 * (10 * (n + 1)) + 1) : ℝ) + Real.sqrt (A118881 n : ℝ)

end

end A044713.P6703310642621155809

/-! ## A044713.P8031203012842934399

`A160941(10*10*(n+1)+1)+log2(A329562(n))`
-/

namespace A044713.P8031203012842934399
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160941 (10 * (10 * (n + 1)) + 1) : ℝ) + Real.logb 2 (A329562 n : ℝ)

end

end A044713.P8031203012842934399

/-! ## A044713.P11397107096992602761

`A160941(10*10*(n+1)+1)+A169805(n)/2`
-/

namespace A044713.P11397107096992602761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160941 (10 * (10 * (n + 1)) + 1) : ℚ) + (A169805 n : ℚ) / 2

end

end A044713.P11397107096992602761

/-! ## A044713.P3627909205319251109

`A160941(10*10*(n+1)+1)+A062028(n)-n`
-/

namespace A044713.P3627909205319251109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (10 * (10 * (n + 1)) + 1) + (A062028 n - (n : ℤ))

end

end A044713.P3627909205319251109

/-! ## A044713.P10103035371284291547

`A160941(10*10*(n+1)+1)+A118880(n)^(1/3)`
-/

namespace A044713.P10103035371284291547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160941 (10 * (10 * (n + 1)) + 1) : ℝ) + (A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A044713.P10103035371284291547

/-! ## A044713.P4093387854069579331

`A160941(10*10*(n+1)+1)+ceil(A057147(n)/(n+1))`
-/

namespace A044713.P4093387854069579331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (10 * (10 * (n + 1)) + 1) + ⌈(A057147 n : ℚ) / (n + 1 : ℚ)⌉

end

end A044713.P4093387854069579331

/-!
# A044714: Numbers n such that string 0,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044714, there is no canonical definition to state claims against.
-/

/-! ## A044714.P6898563390255405789

`A044334(n+1)-1`
-/

namespace A044714.P6898563390255405789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) - 1

end

end A044714.P6898563390255405789

/-! ## A044714.P3893158051518980343

`A014681(A044334(n+1))`
-/

namespace A044714.P3893158051518980343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A044334 (n + 1)).toNat

end

end A044714.P3893158051518980343

/-! ## A044714.P13880883746485233275

`A023444(A044334(n+1)+1)`
-/

namespace A044714.P13880883746485233275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A044334 (n + 1) + 1).toNat

end

end A044714.P13880883746485233275

/-! ## A044714.P18285915285801278642

`A289207(A044334(n+1)+1)`
-/

namespace A044714.P18285915285801278642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A044334 (n + 1) + 1).toNat

end

end A044714.P18285915285801278642

/-!
# A044715: Numbers n such that string 0,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044715, there is no canonical definition to state claims against.
-/

/-! ## A044715.P8207169323584927472

`A044335(n+1)-1`
-/

namespace A044715.P8207169323584927472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) - 1

end

end A044715.P8207169323584927472

/-! ## A044715.P9656404155681162106

`-1+A044335(A289207(n+3))`
-/

namespace A044715.P9656404155681162106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044335 (A289207 (n + 3)).toNat

end

end A044715.P9656404155681162106

/-! ## A044715.P9721426725184567333

`A023443(A044335(n+1))`
-/

namespace A044715.P9721426725184567333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A044335 (n + 1)).toNat

end

end A044715.P9721426725184567333

/-! ## A044715.P6335112439269308909

`A199344(A044714(n+1))`
-/

namespace A044715.P6335112439269308909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044714 (n + 1)).toNat

end

end A044715.P6335112439269308909

/-!
# A044716: Numbers n such that string 0,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044716, there is no canonical definition to state claims against.
-/

/-! ## A044716.P7515663261029887232

`A014601(∪[A044714(n+1), A044764(n+1)])`
-/

namespace A044716.P7515663261029887232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044764 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A044716.P7515663261029887232

/-! ## A044716.P8341919989786856168

`A044336(n+1)-1`
-/

namespace A044716.P8341919989786856168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - 1

end

end A044716.P8341919989786856168

/-! ## A044716.P12615329975947588293

`A057428(∑[18+T(n-1,k-1)])+A044336(n+1)` with `a(0)=3, a(1)=-1, a(2)=1`
-/

namespace A044716.P12615329975947588293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 1] fun n f1 =>
  18 + SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044336 (n + 1)

end

end A044716.P12615329975947588293

/-! ## A044716.P17978214688851498494

`A014681(A044336(n+1))`
-/

namespace A044716.P17978214688851498494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A044336 (n + 1)).toNat

end

end A044716.P17978214688851498494

/-! ## A044716.P13236912199582376287

`A199344(A044715(n+1))`
-/

namespace A044716.P13236912199582376287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044715 (n + 1)).toNat

end

end A044716.P13236912199582376287

/-!
# A044717: Numbers n such that string 0,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044717, there is no canonical definition to state claims against.
-/

/-! ## A044717.P6744748929040107114

`A044337(n+1)-1`
-/

namespace A044717.P6744748929040107114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) - 1

end

end A044717.P6744748929040107114

/-! ## A044717.P2760713591587981033

`A023443(A044337(n+1))`
-/

namespace A044717.P2760713591587981033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A044337 (n + 1)).toNat

end

end A044717.P2760713591587981033

/-! ## A044717.P4528849198503029176

`A199344(A044716(n+1))`
-/

namespace A044717.P4528849198503029176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044716 (n + 1)).toNat

end

end A044717.P4528849198503029176

/-!
# A044718: Numbers n such that string 0,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044718, there is no canonical definition to state claims against.
-/

/-! ## A044718.P15157230711373454398

`A044338(1+n)-1`
-/

namespace A044718.P15157230711373454398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (1 + n) - 1

end

end A044718.P15157230711373454398

/-! ## A044718.P15223151467329880973

`-1+A044338(n+1)`
-/

namespace A044718.P15223151467329880973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044338 (n + 1)

end

end A044718.P15223151467329880973

/-! ## A044718.P9701201065256677628

`A014681(A044338(n+1))`
-/

namespace A044718.P9701201065256677628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A044338 (n + 1)).toNat

end

end A044718.P9701201065256677628

/-! ## A044718.P750730127781182298

`A199344(A044717(n+1))`
-/

namespace A044718.P750730127781182298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044717 (n + 1)).toNat

end

end A044718.P750730127781182298

/-!
# A044719: Numbers n such that string 0,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044719, there is no canonical definition to state claims against.
-/

/-! ## A044719.P13462303108951664114

`A044339(1+n)-1`
-/

namespace A044719.P13462303108951664114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (1 + n) - 1

end

end A044719.P13462303108951664114

/-! ## A044719.P2500184064701081125

`A023443(A044339(n+1))`
-/

namespace A044719.P2500184064701081125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A044339 (n + 1)).toNat

end

end A044719.P2500184064701081125

/-! ## A044719.P5773103275092753089

`A199344(A044718(n+1))`
-/

namespace A044719.P5773103275092753089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044718 (n + 1)).toNat

end

end A044719.P5773103275092753089

/-! ## A044719.P5663238489394916446

`A005843(A044720(n+1))-A044721(n+1)`
-/

namespace A044719.P5663238489394916446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044720 (n + 1)).toNat - A044721 (n + 1)

end

end A044719.P5663238489394916446

/-!
# A044720: Numbers n such that string 0,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044720, there is no canonical definition to state claims against.
-/

/-! ## A044720.P3943513913555965698

`A044340(n+1)-1`
-/

namespace A044720.P3943513913555965698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (n + 1) - 1

end

end A044720.P3943513913555965698

/-! ## A044720.P4350318525469739412

`A014681(A044340(n+1))`
-/

namespace A044720.P4350318525469739412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A044340 (n + 1)).toNat

end

end A044720.P4350318525469739412

/-! ## A044720.P1096108512009927617

`A199344(A044719(n+1))`
-/

namespace A044720.P1096108512009927617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044719 (n + 1)).toNat

end

end A044720.P1096108512009927617

/-!
# A044721: Numbers n such that string 0,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044721, there is no canonical definition to state claims against.
-/

/-! ## A044721.P17565855480170410174

`A044341(n+1)-1`
-/

namespace A044721.P17565855480170410174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - 1

end

end A044721.P17565855480170410174

/-! ## A044721.P999774692898989499

`A023443(A044341(n+1))`
-/

namespace A044721.P999774692898989499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A044341 (n + 1)).toNat

end

end A044721.P999774692898989499

/-! ## A044721.P9630826629484678536

`A199344(A044720(n+1))`
-/

namespace A044721.P9630826629484678536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044720 (n + 1)).toNat

end

end A044721.P9630826629484678536

/-!
# A044722: Numbers n such that string 0,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044722, there is no canonical definition to state claims against.
-/

/-! ## A044722.P11389223919690317816

`2*A044721(n+1)-(A044340(n+1)+(-1))`
-/

namespace A044722.P11389223919690317816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044721 (n + 1) - (A044340 (n + 1) + (-1))

end

end A044722.P11389223919690317816

/-! ## A044722.P11588214797181543018

`2*A044720(n+1)-(A044338(n+1)-1)`
-/

namespace A044722.P11588214797181543018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044720 (n + 1) - (A044338 (n + 1) - 1)

end

end A044722.P11588214797181543018

/-! ## A044722.P10278992843335087160

`A199344(A044721(n+1))`
-/

namespace A044722.P10278992843335087160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044721 (n + 1)).toNat

end

end A044722.P10278992843335087160

/-! ## A044722.P12962604359685714042

`A228915(A044336(n+1))-4`
-/

namespace A044722.P12962604359685714042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (A044336 (n + 1)).toNat - 4

end

end A044722.P12962604359685714042

/-! ## A044722.P14427731230820792356

`A228915(A044338(n+1))-6`
-/

namespace A044722.P14427731230820792356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (A044338 (n + 1)).toNat - 6

end

end A044722.P14427731230820792356

/-! ## A044722.P13094788384425867090

`A228915(A044340(n+1))-8`
-/

namespace A044722.P13094788384425867090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (A044340 (n + 1)).toNat - 8

end

end A044722.P13094788384425867090

/-! ## A044722.P4255876466389377516

`A228915(A044341(n+1))-9`
-/

namespace A044722.P4255876466389377516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (A044341 (n + 1)).toNat - 9

end

end A044722.P4255876466389377516

/-! ## A044722.P3183883064782542446

`A003485(A044719(n+1))-A044716(n+1)`
-/

namespace A044722.P3183883064782542446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A044719 (n + 1)).toNat - A044716 (n + 1)

end

end A044722.P3183883064782542446

/-! ## A044722.P1977613055044374246

`A004273(A044338(n+1))-A044334(n+1)`
-/

namespace A044722.P1977613055044374246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A044338 (n + 1)).toNat - A044334 (n + 1)

end

end A044722.P1977613055044374246

/-! ## A044722.P13049854990853804161

`A004273(A044339(n+1))-A044336(n+1)`
-/

namespace A044722.P13049854990853804161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A044339 (n + 1)).toNat - A044336 (n + 1)

end

end A044722.P13049854990853804161

/-! ## A044722.P596239842800669110

`A005843(A044721(n+1))-A044720(n+1)`
-/

namespace A044722.P596239842800669110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044721 (n + 1)).toNat - A044720 (n + 1)

end

end A044722.P596239842800669110

/-! ## A044722.P8143062773024035593

`A004273(A044719(n+1)+1)-A044336(n+1)`
-/

namespace A044722.P8143062773024035593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A044719 (n + 1) + 1).toNat - A044336 (n + 1)

end

end A044722.P8143062773024035593

/-! ## A044722.P11088933261836866586

`A003485(A044339(n+1)-1)-A044716(n+1)`
-/

namespace A044722.P11088933261836866586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A044339 (n + 1) - 1).toNat - A044716 (n + 1)

end

end A044722.P11088933261836866586

/-!
# A044723: Numbers n such that string 1,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044723, there is no canonical definition to state claims against.
-/

/-! ## A044723.P2025165990360486615

`A109051(A248050(n)+A020753(n+1))`
-/

namespace A044723.P2025165990360486615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109051 (A248050 n + A020753 (n + 1)).toNat

end

end A044723.P2025165990360486615

/-! ## A044723.P12431621520535031017

`A237416(A248050(n)+A020753(n+1))`
-/

namespace A044723.P12431621520535031017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237416 (A248050 n + A020753 (n + 1)).toNat

end

end A044723.P12431621520535031017

/-!
# A044725: Numbers n such that string 1,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044725, there is no canonical definition to state claims against.
-/

/-! ## A044725.P7751315613332165203

`A044345(A077168(n))-1`
-/

namespace A044725.P7751315613332165203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044345 (A077168 n).toNat - 1

end

end A044725.P7751315613332165203

/-! ## A044725.P4237565095530229147

`A044345(n+1)-A001492(∑[n]²)`
-/

namespace A044725.P4237565095530229147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044345 (n + 1) - A001492 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A044725.P4237565095530229147

/-! ## A044725.P8889657962569369996

`A057428(A000051(n))+A044345(n+1)`
-/

namespace A044725.P8889657962569369996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000051 n).toNat + A044345 (n + 1)

end

end A044725.P8889657962569369996

/-! ## A044725.P11366297169756814072

`A057428(A077168(n))+A044345(n+1)`
-/

namespace A044725.P11366297169756814072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A077168 n).toNat + A044345 (n + 1)

end

end A044725.P11366297169756814072

/-! ## A044725.P9229798504315936919

`A044345(n+1)-A011655(A000079(n))`
-/

namespace A044725.P9229798504315936919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044345 (n + 1) - A011655 (A000079 n).toNat

end

end A044725.P9229798504315936919

/-!
# A044726: Numbers n such that string 1,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044726, there is no canonical definition to state claims against.
-/

/-! ## A044726.P14237277144578785317

`A044346(A187829(n+1))-1`
-/

namespace A044726.P14237277144578785317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044346 (A187829 (n + 1)).toNat - 1

end

end A044726.P14237277144578785317

/-! ## A044726.P7106269272695777321

`A044346(n+1)-A028240(n)!`
-/

namespace A044726.P7106269272695777321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044346 (n + 1) - (Nat.factorial (A028240 n).toNat : ℤ)

end

end A044726.P7106269272695777321

/-! ## A044726.P17917397657737799256

`A044346(n+1)-A097325(A000079(n))`
-/

namespace A044726.P17917397657737799256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044346 (n + 1) - A097325 (A000079 n).toNat

end

end A044726.P17917397657737799256

/-! ## A044726.P4760032654885910222

`A044346(n+1)-A057427(A049870(n))`
-/

namespace A044726.P4760032654885910222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044346 (n + 1) - A057427 (A049870 n).toNat

end

end A044726.P4760032654885910222

/-! ## A044726.P1921887877714752071

`A044346(n+1)-A330752(A052940(n))`
-/

namespace A044726.P1921887877714752071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044346 (n + 1) - A330752 (A052940 n).toNat

end

end A044726.P1921887877714752071

/-!
# A044727: Numbers n such that string 1,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044727, there is no canonical definition to state claims against.
-/

/-! ## A044727.P16369510139983024732

`A057428(A000219(n))+A044347(n+1)`
-/

namespace A044727.P16369510139983024732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000219 n).toNat + A044347 (n + 1)

end

end A044727.P16369510139983024732

/-! ## A044727.P18352823352152968819

`A057428(A173723(n))+A044347(n+1)`
-/

namespace A044727.P18352823352152968819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A173723 (n + 10)).toNat + A044347 (n + 1)

end

end A044727.P18352823352152968819

/-! ## A044727.P3118712132420437881

`A044347(n+1)-A353627(A003945(n))`
-/

namespace A044727.P3118712132420437881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044347 (n + 1) - A353627 (A003945 n).toNat

end

end A044727.P3118712132420437881

/-! ## A044727.P13621042101661085951

`A057428(A080177(n+1))+A044347(n+1)`
-/

namespace A044727.P13621042101661085951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A080177 (n + 1)).toNat + A044347 (n + 1)

end

end A044727.P13621042101661085951

/-! ## A044727.P3747676458411567343

`A057428(A112927(n+1))+A044347(n+1)`
-/

namespace A044727.P3747676458411567343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A112927 (n + 1)).toNat + A044347 (n + 1)

end

end A044727.P3747676458411567343

/-!
# A044728: Numbers n such that string 1,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044728, there is no canonical definition to state claims against.
-/

/-! ## A044728.P6715405208004616935

`A044348(n+1)-A091536(n)!`
-/

namespace A044728.P6715405208004616935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044348 (n + 1) - (Nat.factorial (A091536 n).toNat : ℤ)

end

end A044728.P6715405208004616935

/-! ## A044728.P3056447813365066795

`A044348(n+1)-A000265(2^n)`
-/

namespace A044728.P3056447813365066795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044348 (n + 1) - A000265 (2 ^ n)

end

end A044728.P3056447813365066795

/-! ## A044728.P1765750664612684850

`A044348(n+1)-A006257(2^n)`
-/

namespace A044728.P1765750664612684850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044348 (n + 1) - A006257 (2 ^ n)

end

end A044728.P1765750664612684850

/-! ## A044728.P16374976176454860912

`A057428(A000213(n))+A044348(n+1)`
-/

namespace A044728.P16374976176454860912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000213 n).toNat + A044348 (n + 1)

end

end A044728.P16374976176454860912

/-! ## A044728.P13202172138995150362

`A336915(A000079(n))+A044348(n+1)`
-/

namespace A044728.P13202172138995150362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336915 (A000079 n).toNat + A044348 (n + 1)

end

end A044728.P13202172138995150362

/-!
# A044729: Numbers n such that string 1,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044729, there is no canonical definition to state claims against.
-/

/-! ## A044729.P3292320005158961761

`A044349(n+1)-A054977(A002292(n))`
-/

namespace A044729.P3292320005158961761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044349 (n + 1) - A054977 (A002292 n).toNat

end

end A044729.P3292320005158961761

/-! ## A044729.P6117632357717451180

`A044349(n+1)-A001221(A228811(n+1))`
-/

namespace A044729.P6117632357717451180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044349 (n + 1) - A001221 (A228811 (n + 1)).toNat

end

end A044729.P6117632357717451180

/-! ## A044729.P682712733160815115

`A044349(n+1)-A092111(A044335(n+3))`
-/

namespace A044729.P682712733160815115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044349 (n + 1) - A092111 (A044335 (n + 3)).toNat

end

end A044729.P682712733160815115

/-! ## A044729.P7295255864796138398

`A336915(A000079(n))+A044349(n+1)`
-/

namespace A044729.P7295255864796138398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336915 (A000079 n).toNat + A044349 (n + 1)

end

end A044729.P7295255864796138398

/-! ## A044729.P12312653925051167517

`A044349(n+1)-A001222(A014210(n))`
-/

namespace A044729.P12312653925051167517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044349 (n + 1) - A001222 (A014210 n).toNat

end

end A044729.P12312653925051167517

/-!
# A044730: Numbers n such that string 1,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044730, there is no canonical definition to state claims against.
-/

/-! ## A044730.P881981821527629809

`A044350(∑[∑[A072189(n)]])-1`
-/

namespace A044730.P881981821527629809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A044730.P881981821527629809

/-! ## A044730.P16715877607039001514

`A044350(n+1)-A072189(n)!`
-/

namespace A044730.P16715877607039001514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044350 (n + 1) - (Nat.factorial (A072189 n).toNat : ℤ)

end

end A044730.P16715877607039001514

/-! ## A044730.P2804009392072375735

`A057428(A321660(n))+A044350(n+1)`
-/

namespace A044730.P2804009392072375735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A321660 n).toNat + A044350 (n + 1)

end

end A044730.P2804009392072375735

/-! ## A044730.P7989094618890726931

`A044350(n+1)-A010121(A321660(n+2))`
-/

namespace A044730.P7989094618890726931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044350 (n + 1) - A010121 (A321660 (n + 2)).toNat

end

end A044730.P7989094618890726931

/-! ## A044730.P14383812290255680495

`A044350(n+1)-A072189(n*A072189(n))`
-/

namespace A044730.P14383812290255680495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044350 (n + 1) - A072189 ((n : ℤ) * A072189 n).toNat

end

end A044730.P14383812290255680495

/-!
# A044731: Numbers n such that string 1,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044731, there is no canonical definition to state claims against.
-/

/-! ## A044731.P8239545800947153744

`A044351(n+1)-1`
-/

namespace A044731.P8239545800947153744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044351 (n + 1) - 1

end

end A044731.P8239545800947153744

/-! ## A044731.P1857799484543380687

`A113520(A044351(n+1))`
-/

namespace A044731.P1857799484543380687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044351 (n + 1)).toNat

end

end A044731.P1857799484543380687

/-!
# A044732: Numbers n such that string 1,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044732, there is no canonical definition to state claims against.
-/

/-! ## A044732.P10765104876978108005

`A228915(A044351(1+n))-9`
-/

namespace A044732.P10765104876978108005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (A044351 (1 + n)).toNat - 9

end

end A044732.P10765104876978108005

/-! ## A044732.P15797619672993035666

`∩[A044012(n+1), A297465(n)]`
-/

namespace A044732.P15797619672993035666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044732.P15797619672993035666

/-! ## A044732.P810407945082819408

`A121040(n+1)-1`
-/

namespace A044732.P810407945082819408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121040 (n + 1) - 1

end

end A044732.P810407945082819408

/-! ## A044732.P1981393341565306971

`-1+A044352(n+1)`
-/

namespace A044732.P1981393341565306971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044352 (n + 1)

end

end A044732.P1981393341565306971

/-! ## A044732.P9086879921808044709

`A087416(A044351(n+1))`
-/

namespace A044732.P9086879921808044709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087416 (A044351 (n + 1)).toNat

end

end A044732.P9086879921808044709

/-!
# A044733: Numbers n such that string 2,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044733, there is no canonical definition to state claims against.
-/

/-! ## A044733.P9403515994754986859

`A228915(A044352(1+n)-9)`
-/

namespace A044733.P9403515994754986859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (A044352 (1 + n) - 9).toNat

end

end A044733.P9403515994754986859

/-! ## A044733.P1502465458788445861

`record[A228915(A121040(n+1)-9)]`
-/

namespace A044733.P1502465458788445861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (A121040 (n + 1) - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044733.P1502465458788445861

/-! ## A044733.P2927683064705516231

`A044353(n+1)-1`
-/

namespace A044733.P2927683064705516231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044353 (n + 1) - 1

end

end A044733.P2927683064705516231

/-! ## A044733.P1357946551052881223

`A113520(A044353(n+1))`
-/

namespace A044733.P1357946551052881223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044353 (n + 1)).toNat

end

end A044733.P1357946551052881223

/-! ## A044733.P10004572133396406981

`filter[A043997(n+1), A164056(#)]`
-/

namespace A044733.P10004572133396406981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164056 (f1 j).toNat = 1) n)

end

end A044733.P10004572133396406981

/-!
# A044734: Numbers n such that string 2,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044734, there is no canonical definition to state claims against.
-/

/-! ## A044734.P10578198085279300089

`A044353(n+1)+A044353(n+1)-1-A044352(n+1)`
-/

namespace A044734.P10578198085279300089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044353 (n + 1) + (A044353 (n + 1) - 1) - A044352 (n + 1)

end

end A044734.P10578198085279300089

/-! ## A044734.P3006137218647241385

`A044733(n+1)+A044733(n+1)-(A121040(n+1)-1)`
-/

namespace A044734.P3006137218647241385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044733 (n + 1) + A044733 (n + 1) - (A121040 (n + 1) - 1)

end

end A044734.P3006137218647241385

/-! ## A044734.P9071494935060512676

`A199344(A044733(n+1))`
-/

namespace A044734.P9071494935060512676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044733 (n + 1)).toNat

end

end A044734.P9071494935060512676

/-!
# A044735: Numbers n such that string 2,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044735, there is no canonical definition to state claims against.
-/

/-! ## A044735.P6687910253061830453

`A052419(A043968(2*n+1))+A043968(A061603(2*n))`
-/

namespace A044735.P6687910253061830453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (A043968 (2 * n + 1)).toNat + A043968 (A061603 (2 * n)).toNat

end

end A044735.P6687910253061830453

/-!
# A044736: Numbers n such that string 2,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044736, there is no canonical definition to state claims against.
-/

/-! ## A044736.P12275654528753153521

`A044356(n+1)-1`
-/

namespace A044736.P12275654528753153521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044356 (n + 1) - 1

end

end A044736.P12275654528753153521

/-! ## A044736.P12799030859133732935

`A124741(A044356(n+1))`
-/

namespace A044736.P12799030859133732935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044356 (n + 1)).toNat

end

end A044736.P12799030859133732935

/-!
# A044737: Numbers n such that string 2,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044737, there is no canonical definition to state claims against.
-/

/-! ## A044737.P10905964172152878894

`A044357(n+1)-1`
-/

namespace A044737.P10905964172152878894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044357 (n + 1) - 1

end

end A044737.P10905964172152878894

/-! ## A044737.P7386859211309685534

`2*(A044358(n+1)-1)-A044739(n+1)`
-/

namespace A044737.P7386859211309685534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A044358 (n + 1) - 1) - A044739 (n + 1)

end

end A044737.P7386859211309685534

/-! ## A044737.P11027430852142528741

`A199344(A044736(n+1))`
-/

namespace A044737.P11027430852142528741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (A044736 (n + 1)).toNat

end

end A044737.P11027430852142528741

/-! ## A044737.P14434331352982401993

`(A044738(n+1)+-1+A044356(n+1))/2`
-/

namespace A044737.P14434331352982401993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044738 (n + 1) + (-1 + A044356 (n + 1)) : ℚ) / 2

end

end A044737.P14434331352982401993

/-! ## A044737.P7311257013048842035

`A113520(A044357(n+1))`
-/

namespace A044737.P7311257013048842035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044357 (n + 1)).toNat

end

end A044737.P7311257013048842035

/-!
# A044738: Numbers n such that string 2,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044738, there is no canonical definition to state claims against.
-/

/-! ## A044738.P218302650622517970

`-1+A044358(n+1)`
-/

namespace A044738.P218302650622517970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044358 (n + 1)

end

end A044738.P218302650622517970

/-! ## A044738.P18043268468075595015

`2*(A044359(n+1)-1)-A044740(n+1)`
-/

namespace A044738.P18043268468075595015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A044359 (n + 1) - 1) - A044740 (n + 1)

end

end A044738.P18043268468075595015

/-! ## A044738.P8788800788823372073

`A044358(n+1)-1`
-/

namespace A044738.P8788800788823372073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044358 (n + 1) - 1

end

end A044738.P8788800788823372073

/-! ## A044738.P233601142584118822

`A113520(A044358(n+1))`
-/

namespace A044738.P233601142584118822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044358 (n + 1)).toNat

end

end A044738.P233601142584118822

/-!
# A044739: Numbers n such that string 2,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044739, there is no canonical definition to state claims against.
-/

/-! ## A044739.P16519808844787764033

`A199344(-1+A044358(n+1))`
-/

namespace A044739.P16519808844787764033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (-1 + A044358 (n + 1)).toNat

end

end A044739.P16519808844787764033

/-! ## A044739.P769590322657104255

`A044359(n+1)-1`
-/

namespace A044739.P769590322657104255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044359 (n + 1) - 1

end

end A044739.P769590322657104255

/-! ## A044739.P2632679963410427424

`A233583(A044359(n+1))`
-/

namespace A044739.P2632679963410427424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044359 (n + 1)).toNat

end

end A044739.P2632679963410427424

/-!
# A044740: Numbers n such that string 2,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044740, there is no canonical definition to state claims against.
-/

/-! ## A044740.P12280376187303609800

`A044360(n+1)-1`
-/

namespace A044740.P12280376187303609800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044360 (n + 1) - 1

end

end A044740.P12280376187303609800

/-! ## A044740.P357541650979047468

`A124741(A044360(n+1))`
-/

namespace A044740.P357541650979047468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044360 (n + 1)).toNat

end

end A044740.P357541650979047468

/-!
# A044741: Numbers n such that string 2,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044741, there is no canonical definition to state claims against.
-/

/-! ## A044741.P12314623372583179604

`A044361(n+1)-1`
-/

namespace A044741.P12314623372583179604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044361 (n + 1) - 1

end

end A044741.P12314623372583179604

/-! ## A044741.P12582757287557938994

`A113520(A044361(n+1))`
-/

namespace A044741.P12582757287557938994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044361 (n + 1)).toNat

end

end A044741.P12582757287557938994

/-!
# A044742: Numbers n such that string 2,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044742, there is no canonical definition to state claims against.
-/

/-! ## A044742.P10759245881361993952

`A044362(n+1)-1`
-/

namespace A044742.P10759245881361993952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044362 (n + 1) - 1

end

end A044742.P10759245881361993952

/-! ## A044742.P16816499150946825190

`∩[A044019(n+1), A166257(n+1)]`
-/

namespace A044742.P16816499150946825190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044742.P16816499150946825190

/-! ## A044742.P11352013141083381934

`∩[A044019(n+1), A173263(n+1)]`
-/

namespace A044742.P11352013141083381934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044742.P11352013141083381934

/-! ## A044742.P14065411985695103079

`A087416(A044361(n+1))`
-/

namespace A044742.P14065411985695103079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087416 (A044361 (n + 1)).toNat

end

end A044742.P14065411985695103079

/-! ## A044742.P15762121636559218766

`A124741(A044362(n+1))`
-/

namespace A044742.P15762121636559218766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044362 (n + 1)).toNat

end

end A044742.P15762121636559218766

/-!
# A044743: Numbers n such that string 3,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044743, there is no canonical definition to state claims against.
-/

/-! ## A044743.P16864043894153713514

`A044363(n+1)-1`
-/

namespace A044743.P16864043894153713514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044363 (n + 1) - 1

end

end A044743.P16864043894153713514

/-! ## A044743.P17534726571723937660

`A113520(A044363(n+1))`
-/

namespace A044743.P17534726571723937660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044363 (n + 1)).toNat

end

end A044743.P17534726571723937660

/-!
# A044744: Numbers n such that string 3,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044744, there is no canonical definition to state claims against.
-/

/-! ## A044744.P12571147605762783822

`A044364(n+1)-1`
-/

namespace A044744.P12571147605762783822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044364 (n + 1) - 1

end

end A044744.P12571147605762783822

/-! ## A044744.P5975960196811011619

`A124741(A044364(n+1))`
-/

namespace A044744.P5975960196811011619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044364 (n + 1)).toNat

end

end A044744.P5975960196811011619

/-!
# A044745: Numbers n such that string 3,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044745, there is no canonical definition to state claims against.
-/

/-! ## A044745.P12773095408751085950

`2*A044743(n+1)-(A044361(n+1)+(-1))`
-/

namespace A044745.P12773095408751085950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044743 (n + 1) - (A044361 (n + 1) + (-1))

end

end A044745.P12773095408751085950

/-! ## A044745.P7413227480104039179

`A044743(n+1)+A044743(n+1)-(A044361(n+1)-1)%A105654(n+1)`
-/

namespace A044745.P7413227480104039179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044743 (n + 1) + A044743 (n + 1) - Int.tmod (A044361 (n + 1) - 1) (A105654 (n + 1))

end

end A044745.P7413227480104039179

/-!
# A044746: Numbers n such that string 3,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044746, there is no canonical definition to state claims against.
-/

/-! ## A044746.P13837506477150344738

`xor(A044365(n+1), A278280(A257661(n)))`
-/

namespace A044746.P13837506477150344738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A044365 (n + 1)) (A278280 (A257661 n).toNat)

end

end A044746.P13837506477150344738

/-!
# A044747: Numbers n such that string 3,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044747, there is no canonical definition to state claims against.
-/

/-! ## A044747.P11061877194116368308

`A044367(n+1)-1`
-/

namespace A044747.P11061877194116368308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044367 (n + 1) - 1

end

end A044747.P11061877194116368308

/-! ## A044747.P4567578053387602643

`A233583(A044367(n+1))`
-/

namespace A044747.P4567578053387602643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044367 (n + 1)).toNat

end

end A044747.P4567578053387602643

/-!
# A044748: Numbers n such that string 3,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044748, there is no canonical definition to state claims against.
-/

/-! ## A044748.P1994842368003386330

`A044368(n+1)-1`
-/

namespace A044748.P1994842368003386330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044368 (n + 1) - 1

end

end A044748.P1994842368003386330

/-! ## A044748.P17870557621728143739

`(4*(-1+A044371(n+1)))%A044752(n+1)`
-/

namespace A044748.P17870557621728143739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * (-1 + A044371 (n + 1))) (A044752 (n + 1))

end

end A044748.P17870557621728143739

/-! ## A044748.P14574245060861609978

`A124741(A044368(n+1))`
-/

namespace A044748.P14574245060861609978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044368 (n + 1)).toNat

end

end A044748.P14574245060861609978

/-!
# A044749: Numbers n such that string 3,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044749, there is no canonical definition to state claims against.
-/

/-! ## A044749.P731861622187245993

`-1+A044369(n+1)`
-/

namespace A044749.P731861622187245993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044369 (n + 1)

end

end A044749.P731861622187245993

/-! ## A044749.P56649062967847907

`A113520(A044369(n+1))`
-/

namespace A044749.P56649062967847907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044369 (n + 1)).toNat

end

end A044749.P56649062967847907

/-!
# A044750: Numbers n such that string 3,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044750, there is no canonical definition to state claims against.
-/

/-! ## A044750.P2135405255148340556

`-1+A044370(n+1)`
-/

namespace A044750.P2135405255148340556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044370 (n + 1)

end

end A044750.P2135405255148340556

/-! ## A044750.P1359357572042500940

`A124741(A044370(n+1))`
-/

namespace A044750.P1359357572042500940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044370 (n + 1)).toNat

end

end A044750.P1359357572042500940

/-!
# A044751: Numbers n such that string 3,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044751, there is no canonical definition to state claims against.
-/

/-! ## A044751.P6360281001272211069

`A044371(n+1)-1`
-/

namespace A044751.P6360281001272211069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044371 (n + 1) - 1

end

end A044751.P6360281001272211069

/-! ## A044751.P7440920552627679951

`A233583(A044371(n+1))`
-/

namespace A044751.P7440920552627679951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044371 (n + 1)).toNat

end

end A044751.P7440920552627679951

/-!
# A044752: Numbers n such that string 3,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044752, there is no canonical definition to state claims against.
-/

/-! ## A044752.P3341624629302611965

`A044372(n+1)-1`
-/

namespace A044752.P3341624629302611965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044372 (n + 1) - 1

end

end A044752.P3341624629302611965

/-! ## A044752.P15086476770380446576

`∩[A044025(n+1), A297465(n)]`
-/

namespace A044752.P15086476770380446576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044752.P15086476770380446576

/-! ## A044752.P16792114756966752006

`A087416(A044371(n+1))`
-/

namespace A044752.P16792114756966752006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087416 (A044371 (n + 1)).toNat

end

end A044752.P16792114756966752006

/-! ## A044752.P13420602007715685724

`A124741(A044372(n+1))`
-/

namespace A044752.P13420602007715685724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044372 (n + 1)).toNat

end

end A044752.P13420602007715685724

/-!
# A044753: Numbers n such that string 4,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044753, there is no canonical definition to state claims against.
-/

/-! ## A044753.P14032443416125175702

`A044373(n+1)-1`
-/

namespace A044753.P14032443416125175702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044373 (n + 1) - 1

end

end A044753.P14032443416125175702

/-! ## A044753.P11569650516422932038

`A233583(A044373(n+1))`
-/

namespace A044753.P11569650516422932038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044373 (n + 1)).toNat

end

end A044753.P11569650516422932038

/-!
# A044754: Numbers n such that string 4,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044754, there is no canonical definition to state claims against.
-/

/-! ## A044754.P9757845741554343812

`A044374(n+1)-1`
-/

namespace A044754.P9757845741554343812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044374 (n + 1) - 1

end

end A044754.P9757845741554343812

/-! ## A044754.P13252925559105864025

`A124741(A044374(n+1))`
-/

namespace A044754.P13252925559105864025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044374 (n + 1)).toNat

end

end A044754.P13252925559105864025

/-! ## A044754.P5656739565713778393

`A126762(A044753(n+1))`
-/

namespace A044754.P5656739565713778393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (A044753 (n + 1)).toNat

end

end A044754.P5656739565713778393

/-!
# A044755: Numbers n such that string 4,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044755, there is no canonical definition to state claims against.
-/

/-! ## A044755.P7350248550208133316

`A044375(n+1)-1`
-/

namespace A044755.P7350248550208133316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044375 (n + 1) - 1

end

end A044755.P7350248550208133316

/-! ## A044755.P15071826811853958702

`A113520(A044375(n+1))`
-/

namespace A044755.P15071826811853958702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044375 (n + 1)).toNat

end

end A044755.P15071826811853958702

/-!
# A044756: Numbers n such that string 4,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044756, there is no canonical definition to state claims against.
-/

/-! ## A044756.P15505322676454470798

`A049084(A022186(n))+A044375(n+1)`
-/

namespace A044756.P15505322676454470798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A022186 n).toNat + A044375 (n + 1)

end

end A044756.P15505322676454470798

/-! ## A044756.P13814548939378413863

`A044375(n+1)+A007149(A022187(n))`
-/

namespace A044756.P13814548939378413863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044375 (n + 1) + A007149 (A022187 n).toNat

end

end A044756.P13814548939378413863

/-!
# A044757: Numbers n such that string 4,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044757, there is no canonical definition to state claims against.
-/

/-! ## A044757.P11719330446534651412

`A053743(n)-A177121(A078057(n))`
-/

namespace A044757.P11719330446534651412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A177121 (A078057 n).toNat

end

end A044757.P11719330446534651412

/-! ## A044757.P3028514673306347729

`A102438(n)+A102420(A052709(n))`
-/

namespace A044757.P3028514673306347729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102438 n + A102420 (A052709 n).toNat

end

end A044757.P3028514673306347729

/-!
# A044758: Numbers n such that string 4,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044758, there is no canonical definition to state claims against.
-/

/-! ## A044758.P5466096251271102339

`A044378(n+1)-1`
-/

namespace A044758.P5466096251271102339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044378 (n + 1) - 1

end

end A044758.P5466096251271102339

/-! ## A044758.P12663417325453336426

`A113520(A044378(n+1))`
-/

namespace A044758.P12663417325453336426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044378 (n + 1)).toNat

end

end A044758.P12663417325453336426

/-!
# A044759: Numbers n such that string 4,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044759, there is no canonical definition to state claims against.
-/

/-! ## A044759.P2166892367895862065

`A044379(n+1)-1`
-/

namespace A044759.P2166892367895862065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044379 (n + 1) - 1

end

end A044759.P2166892367895862065

/-! ## A044759.P5784474018717604950

`A276331(A044379(n+1))`
-/

namespace A044759.P5784474018717604950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044379 (n + 1)).toNat

end

end A044759.P5784474018717604950

/-! ## A044759.P14496375485095300283

`A113520(A044379(n+1))`
-/

namespace A044759.P14496375485095300283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044379 (n + 1)).toNat

end

end A044759.P14496375485095300283

/-!
# A044760: Numbers n such that string 4,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044760, there is no canonical definition to state claims against.
-/

/-! ## A044760.P677479685110310335

`A044380(n+1)-1`
-/

namespace A044760.P677479685110310335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044380 (n + 1) - 1

end

end A044760.P677479685110310335

/-! ## A044760.P7766902645920228740

`A124741(A044380(n+1))`
-/

namespace A044760.P7766902645920228740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044380 (n + 1)).toNat

end

end A044760.P7766902645920228740

/-! ## A044760.P11558626605126581120

`A126762(A044759(n+1))`
-/

namespace A044760.P11558626605126581120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (A044759 (n + 1)).toNat

end

end A044760.P11558626605126581120

/-!
# A044761: Numbers n such that string 4,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044761, there is no canonical definition to state claims against.
-/

/-! ## A044761.P2471891447140299393

`A044381(1+n)-1`
-/

namespace A044761.P2471891447140299393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (1 + n) - 1

end

end A044761.P2471891447140299393

/-! ## A044761.P15520589250279390100

`A276331(A044381(n+1))`
-/

namespace A044761.P15520589250279390100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044381 (n + 1)).toNat

end

end A044761.P15520589250279390100

/-! ## A044761.P838633045480958993

`A113520(A044381(n+1))`
-/

namespace A044761.P838633045480958993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044381 (n + 1)).toNat

end

end A044761.P838633045480958993

/-!
# A044762: Numbers n such that string 4,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044762, there is no canonical definition to state claims against.
-/

/-! ## A044762.P10421272405583957060

`A044382(1+n)-1`
-/

namespace A044762.P10421272405583957060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044382 (1 + n) - 1

end

end A044762.P10421272405583957060

/-! ## A044762.P17993905854859399797

`-1+A044382(n+1)`
-/

namespace A044762.P17993905854859399797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044382 (n + 1)

end

end A044762.P17993905854859399797

/-! ## A044762.P5274568777467087100

`∩[A044030(n+1), A297465(n)]`
-/

namespace A044762.P5274568777467087100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044762.P5274568777467087100

/-! ## A044762.P10242088331436992274

`∩[A044030(n+1), A166257(n+1)]`
-/

namespace A044762.P10242088331436992274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044762.P10242088331436992274

/-! ## A044762.P16498415671034010782

`A087416(A044381(n+1))`
-/

namespace A044762.P16498415671034010782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087416 (A044381 (n + 1)).toNat

end

end A044762.P16498415671034010782

/-!
# A044763: Numbers n such that string 5,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044763, there is no canonical definition to state claims against.
-/

/-! ## A044763.P8287442735950112364

`A044383(n+1)-1`
-/

namespace A044763.P8287442735950112364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044383 (n + 1) - 1

end

end A044763.P8287442735950112364

/-! ## A044763.P1865604948659600333

`A140106(2*A044383(n+1))`
-/

namespace A044763.P1865604948659600333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A044383 (n + 1)).toNat

end

end A044763.P1865604948659600333

/-! ## A044763.P3734798836574327210

`A267182(2*A044383(1+n))`
-/

namespace A044763.P3734798836574327210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * A044383 (1 + n)).toNat

end

end A044763.P3734798836574327210

/-! ## A044763.P3313809281011448446

`A008619(2*xor(2, A044383(n+1)))`
-/

namespace A044763.P3313809281011448446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * Int.xor 2 (A044383 (n + 1))).toNat

end

end A044763.P3313809281011448446

/-! ## A044763.P3474855073451722893

`A052938(2*xor(2, A044383(n+1)))`
-/

namespace A044763.P3474855073451722893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * Int.xor 2 (A044383 (n + 1))).toNat

end

end A044763.P3474855073451722893

/-!
# A044764: Numbers n such that string 5,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044764, there is no canonical definition to state claims against.
-/

/-! ## A044764.P5643394732916738600

`A044384(n+1)-1`
-/

namespace A044764.P5643394732916738600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) - 1

end

end A044764.P5643394732916738600

/-! ## A044764.P4328610869988567179

`A124741(A044384(n+1))`
-/

namespace A044764.P4328610869988567179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044384 (n + 1)).toNat

end

end A044764.P4328610869988567179

/-! ## A044764.P9596867566407464108

`A063677(A044384(n+1))`
-/

namespace A044764.P9596867566407464108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A044384 (n + 1)).toNat

end

end A044764.P9596867566407464108

/-!
# A044765: Numbers n such that string 5,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044765, there is no canonical definition to state claims against.
-/

/-! ## A044765.P3293548856729768243

`A044385(n+1)-1`
-/

namespace A044765.P3293548856729768243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044385 (n + 1) - 1

end

end A044765.P3293548856729768243

/-! ## A044765.P4716300128883762311

`A113520(A044385(n+1))`
-/

namespace A044765.P4716300128883762311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044385 (n + 1)).toNat

end

end A044765.P4716300128883762311

/-!
# A044766: Numbers n such that string 5,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044766, there is no canonical definition to state claims against.
-/

/-! ## A044766.P2860511023645536263

`A044386(1+n)-1`
-/

namespace A044766.P2860511023645536263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044386 (1 + n) - 1

end

end A044766.P2860511023645536263

/-! ## A044766.P4303609308470053456

`-1+A044386(n+1)`
-/

namespace A044766.P4303609308470053456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044386 (n + 1)

end

end A044766.P4303609308470053456

/-! ## A044766.P10170177857181654839

`A124741(A044386(n+1))`
-/

namespace A044766.P10170177857181654839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044386 (n + 1)).toNat

end

end A044766.P10170177857181654839

/-!
# A044767: Numbers k such that string 5,4 occurs in the base 10 representation of k but not of k+1.

The programs for A044767, there is no canonical definition to state claims against.
-/

/-! ## A044767.P17093509113252201116

`A044766(n+1)+A044765(n+1)-(A044384(n+1)-1)`
-/

namespace A044767.P17093509113252201116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1) + A044765 (n + 1) - (A044384 (n + 1) - 1)

end

end A044767.P17093509113252201116

/-! ## A044767.P8195817984090840599

`A044764(n+1)+A044386(n+1)-A027656(2*A044763(n+1))`
-/

namespace A044767.P8195817984090840599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044764 (n + 1) + A044386 (n + 1) - A027656 (2 * A044763 (n + 1)).toNat

end

end A044767.P8195817984090840599

/-! ## A044767.P3809118762219142561

`A044766(n+1)+A044384(n+1)-A027656(2*A044763(n+1))`
-/

namespace A044767.P3809118762219142561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1) + A044384 (n + 1) - A027656 (2 * A044763 (n + 1)).toNat

end

end A044767.P3809118762219142561

/-! ## A044767.P4247596734125778689

`A044766(n+1)+A044764(n+1)-A140106(2*A044383(n+1))`
-/

namespace A044767.P4247596734125778689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1) + A044764 (n + 1) - A140106 (2 * A044383 (n + 1)).toNat

end

end A044767.P4247596734125778689

/-! ## A044767.P17851996927299155715

`A044766(n+1)+A044764(n+1)-A267182(2*A044383(n+1))`
-/

namespace A044767.P17851996927299155715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1) + A044764 (n + 1) - A267182 (2 * A044383 (n + 1)).toNat

end

end A044767.P17851996927299155715

/-! ## A044767.P17141594759089684027

`A044765(n+1)+A044765(n+1)-A004526(2*A044383(n+1)-1)`
-/

namespace A044767.P17141594759089684027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (n + 1) + A044765 (n + 1) - A004526 (2 * A044383 (n + 1) - 1).toNat

end

end A044767.P17141594759089684027

/-! ## A044767.P16036833244988610704

`A044766(n+1)+A044764(n+1)-A004526(2*A044383(n+1)-1)`
-/

namespace A044767.P16036833244988610704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1) + A044764 (n + 1) - A004526 (2 * A044383 (n + 1) - 1).toNat

end

end A044767.P16036833244988610704

/-!
# A044768: Numbers n such that string 5,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044768, there is no canonical definition to state claims against.
-/

/-! ## A044768.P8200145316890437852

`A333947(A011782(n))+A044387(n+1)`
-/

namespace A044768.P8200145316890437852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A011782 n).toNat + A044387 (n + 1)

end

end A044768.P8200145316890437852

/-! ## A044768.P16539724803594442836

`or(A044387(n+1), A117980(A286700(n)))`
-/

namespace A044768.P16539724803594442836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044387 (n + 1)) (A117980 (A286700 n).toNat)

end

end A044768.P16539724803594442836

/-! ## A044768.P12618032325644247080

`or(A044387(n+1), A166123(A005256(n+1)))`
-/

namespace A044768.P12618032325644247080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044387 (n + 1)) (A166123 (A005256 (n + 1)).toNat)

end

end A044768.P12618032325644247080

/-!
# A044769: Numbers n such that string 5,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044769, there is no canonical definition to state claims against.
-/

/-! ## A044769.P5255417881727938661

`A044389(1+n)-1`
-/

namespace A044769.P5255417881727938661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (1 + n) - 1

end

end A044769.P5255417881727938661

/-! ## A044769.P3121843974690531210

`-1+A044389(n+1)`
-/

namespace A044769.P3121843974690531210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044389 (n + 1)

end

end A044769.P3121843974690531210

/-! ## A044769.P5398737066508137281

`A276331(A044389(n+1))`
-/

namespace A044769.P5398737066508137281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044389 (n + 1)).toNat

end

end A044769.P5398737066508137281

/-! ## A044769.P13330339490454567520

`A233583(A044389(n+1))`
-/

namespace A044769.P13330339490454567520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044389 (n + 1)).toNat

end

end A044769.P13330339490454567520

/-!
# A044770: Numbers n such that string 5,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044770, there is no canonical definition to state claims against.
-/

/-! ## A044770.P5462763997552189007

`A044390(1+n)-1`
-/

namespace A044770.P5462763997552189007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (1 + n) - 1

end

end A044770.P5462763997552189007

/-! ## A044770.P17547289849395475416

`A124741(A044390(n+1))`
-/

namespace A044770.P17547289849395475416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044390 (n + 1)).toNat

end

end A044770.P17547289849395475416

/-! ## A044770.P9868317795205641208

`∩[A044032(n+1), A398835(n+1)]`
-/

namespace A044770.P9868317795205641208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044770.P9868317795205641208

/-!
# A044771: Numbers n such that string 5,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044771, there is no canonical definition to state claims against.
-/

/-! ## A044771.P5272220935143528405

`A044391(1+n)-1`
-/

namespace A044771.P5272220935143528405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044391 (1 + n) - 1

end

end A044771.P5272220935143528405

/-! ## A044771.P15489069352416996114

`A276331(A044391(n+1))`
-/

namespace A044771.P15489069352416996114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044391 (n + 1)).toNat

end

end A044771.P15489069352416996114

/-! ## A044771.P4181881333749161104

`A113520(A044391(n+1))`
-/

namespace A044771.P4181881333749161104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044391 (n + 1)).toNat

end

end A044771.P4181881333749161104

/-!
# A044772: Numbers n such that string 5,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044772, there is no canonical definition to state claims against.
-/

/-! ## A044772.P10818679027731736804

`A044392(1+n)-1`
-/

namespace A044772.P10818679027731736804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044392 (1 + n) - 1

end

end A044772.P10818679027731736804

/-! ## A044772.P7093642344772353423

`∩[A019442(n+1), A043221(n+1)]-1`
-/

namespace A044772.P7093642344772353423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A044772.P7093642344772353423

/-! ## A044772.P18291417149291538495

`A087416(A044391(n+1))`
-/

namespace A044772.P18291417149291538495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087416 (A044391 (n + 1)).toNat

end

end A044772.P18291417149291538495

/-! ## A044772.P14029749924331902937

`A124741(A044392(n+1))`
-/

namespace A044772.P14029749924331902937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044392 (n + 1)).toNat

end

end A044772.P14029749924331902937

/-! ## A044772.P178518022860705130

`∩[A044034(n+1), A118667(n)]`
-/

namespace A044772.P178518022860705130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044772.P178518022860705130

/-!
# A044773: Numbers n such that string 6,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044773, there is no canonical definition to state claims against.
-/

/-! ## A044773.P4939991306157801271

`A044393(n+1)-1`
-/

namespace A044773.P4939991306157801271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044393 (n + 1) - 1

end

end A044773.P4939991306157801271

/-! ## A044773.P13207430452501837

`A113520(A044393(n+1))`
-/

namespace A044773.P13207430452501837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044393 (n + 1)).toNat

end

end A044773.P13207430452501837

/-! ## A044773.P12502192038412727532

`filter[A044001(n+1), A164056(#)]`
-/

namespace A044773.P12502192038412727532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164056 (f1 j).toNat = 1) n)

end

end A044773.P12502192038412727532

/-!
# A044774: Numbers n such that string 6,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044774, there is no canonical definition to state claims against.
-/

/-! ## A044774.P4906295052509341784

`A044394(1+n)-1`
-/

namespace A044774.P4906295052509341784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044394 (1 + n) - 1

end

end A044774.P4906295052509341784

/-! ## A044774.P2452296595717819830

`-1+A044394(n+1)`
-/

namespace A044774.P2452296595717819830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044394 (n + 1)

end

end A044774.P2452296595717819830

/-! ## A044774.P7610245966206834577

`A124741(A044394(n+1))`
-/

namespace A044774.P7610245966206834577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044394 (n + 1)).toNat

end

end A044774.P7610245966206834577

/-!
# A044775: Numbers n such that string 6,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044775, there is no canonical definition to state claims against.
-/

/-! ## A044775.P15136375471241923802

`A044395(n+1)-1`
-/

namespace A044775.P15136375471241923802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044395 (n + 1) - 1

end

end A044775.P15136375471241923802

/-! ## A044775.P1986801415446687538

`A113520(A044395(n+1))`
-/

namespace A044775.P1986801415446687538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044395 (n + 1)).toNat

end

end A044775.P1986801415446687538

/-!
# A044776: Numbers n such that string 6,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044776, there is no canonical definition to state claims against.
-/

/-! ## A044776.P2434379943040604080

`A044396(1+n)-1`
-/

namespace A044776.P2434379943040604080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044396 (1 + n) - 1

end

end A044776.P2434379943040604080

/-! ## A044776.P4451114173818638570

`-1+A044396(n+1)`
-/

namespace A044776.P4451114173818638570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044396 (n + 1)

end

end A044776.P4451114173818638570

/-! ## A044776.P8774766531983918250

`A124741(A044396(n+1))`
-/

namespace A044776.P8774766531983918250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044396 (n + 1)).toNat

end

end A044776.P8774766531983918250

/-!
# A044777: Numbers n such that string 6,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044777, there is no canonical definition to state claims against.
-/

/-! ## A044777.P16099572117199331309

`A044397(n+1)-1`
-/

namespace A044777.P16099572117199331309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044397 (n + 1) - 1

end

end A044777.P16099572117199331309

/-! ## A044777.P4355511192674711803

`A276331(A044397(n+1))`
-/

namespace A044777.P4355511192674711803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044397 (n + 1)).toNat

end

end A044777.P4355511192674711803

/-! ## A044777.P1545638813447514439

`A113520(A044397(n+1))`
-/

namespace A044777.P1545638813447514439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044397 (n + 1)).toNat

end

end A044777.P1545638813447514439

/-! ## A044777.P14724553438885894088

`A113484(A044395(n+1))`
-/

namespace A044777.P14724553438885894088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044395 (n + 1)).toNat

end

end A044777.P14724553438885894088

/-!
# A044778: Numbers n such that string 6,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044778, there is no canonical definition to state claims against.
-/

/-! ## A044778.P16622015061524923198

`record[A175676(A044810(n+2)-2)]`
-/

namespace A044778.P16622015061524923198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044810 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044778.P16622015061524923198

/-! ## A044778.P4945438063652717087

`A066060(A007779(n))+A044777(n+1)`
-/

namespace A044778.P4945438063652717087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A007779 n).toNat + A044777 (n + 1)

end

end A044778.P4945438063652717087

/-!
# A044779: Numbers n such that string 6,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044779, there is no canonical definition to state claims against.
-/

/-! ## A044779.P13574288896634563234

`A233583(A044399(comp[7*n]))`
-/

namespace A044779.P13574288896634563234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044399 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A044779.P13574288896634563234

/-!
# A044780: Numbers n such that string 6,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044780, there is no canonical definition to state claims against.
-/

/-! ## A044780.P7610237649877715209

`A044400(1+n)-1`
-/

namespace A044780.P7610237649877715209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (1 + n) - 1

end

end A044780.P7610237649877715209

/-! ## A044780.P9445217408978182623

`-1+A044400(n+1)`
-/

namespace A044780.P9445217408978182623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044400 (n + 1)

end

end A044780.P9445217408978182623

/-! ## A044780.P1444927730485886336

`A124741(A044400(n+1))`
-/

namespace A044780.P1444927730485886336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044400 (n + 1)).toNat

end

end A044780.P1444927730485886336

/-!
# A044781: Numbers n such that string 6,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044781, there is no canonical definition to state claims against.
-/

/-! ## A044781.P2803365402699318287

`A044401(n+1)-1`
-/

namespace A044781.P2803365402699318287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044401 (n + 1) - 1

end

end A044781.P2803365402699318287

/-! ## A044781.P7990630826431155377

`A113520(A044401(n+1))`
-/

namespace A044781.P7990630826431155377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044401 (n + 1)).toNat

end

end A044781.P7990630826431155377

/-!
# A044782: Numbers n such that string 6,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044782, there is no canonical definition to state claims against.
-/

/-! ## A044782.P5320635902031920156

`A044402(n+1)-1`
-/

namespace A044782.P5320635902031920156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044402 (n + 1) - 1

end

end A044782.P5320635902031920156

/-! ## A044782.P11253784908046486068

`A087416(A044401(n+1))`
-/

namespace A044782.P11253784908046486068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087416 (A044401 (n + 1)).toNat

end

end A044782.P11253784908046486068

/-! ## A044782.P5894673497291284217

`A124741(A044402(n+1))`
-/

namespace A044782.P5894673497291284217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044402 (n + 1)).toNat

end

end A044782.P5894673497291284217

/-! ## A044782.P12664587199123742279

`filter[A044037(n+1), A179775(#)]`
-/

namespace A044782.P12664587199123742279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A044782.P12664587199123742279

/-!
# A044783: Numbers n such that string 7,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044783, there is no canonical definition to state claims against.
-/

/-! ## A044783.P10479476262712392654

`A044403(1+n)-1`
-/

namespace A044783.P10479476262712392654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044403 (1 + n) - 1

end

end A044783.P10479476262712392654

/-! ## A044783.P2167652401480096462

`-1+A044403(n+1)`
-/

namespace A044783.P2167652401480096462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044403 (n + 1)

end

end A044783.P2167652401480096462

/-! ## A044783.P3859181631751831508

`A233583(A044403(n+1))`
-/

namespace A044783.P3859181631751831508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044403 (n + 1)).toNat

end

end A044783.P3859181631751831508

/-!
# A044784: Numbers n such that string 7,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044784, there is no canonical definition to state claims against.
-/

/-! ## A044784.P12059434836842771874

`A044404(n+1)-1`
-/

namespace A044784.P12059434836842771874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044404 (n + 1) - 1

end

end A044784.P12059434836842771874

/-! ## A044784.P14597545158376467275

`A124741(A044404(n+1))`
-/

namespace A044784.P14597545158376467275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044404 (n + 1)).toNat

end

end A044784.P14597545158376467275

/-! ## A044784.P8127377054307587712

`A126762(A044783(n+1))`
-/

namespace A044784.P8127377054307587712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (A044783 (n + 1)).toNat

end

end A044784.P8127377054307587712

/-!
# A044785: Numbers n such that string 7,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044785, there is no canonical definition to state claims against.
-/

/-! ## A044785.P8333114006867602172

`A044405(n+1)-1`
-/

namespace A044785.P8333114006867602172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044405 (n + 1) - 1

end

end A044785.P8333114006867602172

/-! ## A044785.P14943899121609859565

`A276331(A044405(n+1))`
-/

namespace A044785.P14943899121609859565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044405 (n + 1)).toNat

end

end A044785.P14943899121609859565

/-! ## A044785.P8938067634425015542

`A113520(A044405(n+1))`
-/

namespace A044785.P8938067634425015542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044405 (n + 1)).toNat

end

end A044785.P8938067634425015542

/-!
# A044786: Numbers n such that string 7,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044786, there is no canonical definition to state claims against.
-/

/-! ## A044786.P17617601901585254954

`A044406(n+1)-1`
-/

namespace A044786.P17617601901585254954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044406 (n + 1) - 1

end

end A044786.P17617601901585254954

/-! ## A044786.P9174789325095988630

`A124741(A044406(n+1))`
-/

namespace A044786.P9174789325095988630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044406 (n + 1)).toNat

end

end A044786.P9174789325095988630

/-!
# A044787: Numbers n such that string 7,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044787, there is no canonical definition to state claims against.
-/

/-! ## A044787.P3815381126624216656

`A044407(1+n)-1`
-/

namespace A044787.P3815381126624216656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044407 (1 + n) - 1

end

end A044787.P3815381126624216656

/-! ## A044787.P6257090638307341275

`A276331(A044407(n+1))`
-/

namespace A044787.P6257090638307341275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044407 (n + 1)).toNat

end

end A044787.P6257090638307341275

/-! ## A044787.P6435184906234342286

`A113520(A044407(n+1))`
-/

namespace A044787.P6435184906234342286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044407 (n + 1)).toNat

end

end A044787.P6435184906234342286

/-!
# A044788: Numbers n such that string 7,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044788, there is no canonical definition to state claims against.
-/

/-! ## A044788.P9131735056862023555

`A044408(n+1)-1`
-/

namespace A044788.P9131735056862023555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044408 (n + 1) - 1

end

end A044788.P9131735056862023555

/-! ## A044788.P6144291723735729589

`A083802(A044408(n+1))`
-/

namespace A044788.P6144291723735729589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083802 (A044408 (n + 1)).toNat

end

end A044788.P6144291723735729589

/-!
# A044789: Numbers n such that string 7,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044789, there is no canonical definition to state claims against.
-/

/-! ## A044789.P16623018841442849559

`2*A044788(n+1)-(A044407(n+1)-1)`
-/

namespace A044789.P16623018841442849559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044788 (n + 1) - (A044407 (n + 1) - 1)

end

end A044789.P16623018841442849559

/-! ## A044789.P13891376238890703769

`2*A044787(n+1)-(A044405(1+n)+(-1))`
-/

namespace A044789.P13891376238890703769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044787 (n + 1) - (A044405 (1 + n) + (-1))

end

end A044789.P13891376238890703769

/-! ## A044789.P17944731164901883650

`A044787(n+1)+A044786(n+1)-(A044404(n+1)-1)`
-/

namespace A044789.P17944731164901883650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044787 (n + 1) + A044786 (n + 1) - (A044404 (n + 1) - 1)

end

end A044789.P17944731164901883650

/-!
# A044790: Numbers n such that string 7,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044790, there is no canonical definition to state claims against.
-/

/-! ## A044790.P11401145170448156010

`or(A000005(A015124(n)²), A044409(n+1))`
-/

namespace A044790.P11401145170448156010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A015124 n ^ 2).toNat) (A044409 (n + 1))

end

end A044790.P11401145170448156010

/-! ## A044790.P14317038107947415925

`A053742(2*n+1)+A001221(A381851(n+2))`
-/

namespace A044790.P14317038107947415925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (2 * n + 1) + A001221 (A381851 (n + 2)).toNat

end

end A044790.P14317038107947415925

/-! ## A044790.P6602386727579480059

`A180649(A100482(n+1))+A044409(n+1)`
-/

namespace A044790.P6602386727579480059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A100482 (n + 1)).toNat + A044409 (n + 1)

end

end A044790.P6602386727579480059

/-!
# A044791: Numbers n such that string 7,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044791, there is no canonical definition to state claims against.
-/

/-! ## A044791.P7980527710770258052

`A044411(1+n)-1`
-/

namespace A044791.P7980527710770258052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (1 + n) - 1

end

end A044791.P7980527710770258052

/-! ## A044791.P1954163836740907080

`-1+A044411(n+1)`
-/

namespace A044791.P1954163836740907080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044411 (n + 1)

end

end A044791.P1954163836740907080

/-! ## A044791.P16741246878131830314

`A113520(A044411(n+1))`
-/

namespace A044791.P16741246878131830314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044411 (n + 1)).toNat

end

end A044791.P16741246878131830314

/-!
# A044792: Numbers n such that string 7,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044792, there is no canonical definition to state claims against.
-/

/-! ## A044792.P13848783608724716597

`A087121(A044411(n+1))`
-/

namespace A044792.P13848783608724716597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087121 (A044411 (n + 1)).toNat

end

end A044792.P13848783608724716597

/-! ## A044792.P1179094425406319043

`A044412(1+n)-1`
-/

namespace A044792.P1179094425406319043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044412 (1 + n) - 1

end

end A044792.P1179094425406319043

/-! ## A044792.P16946011846473915479

`-1+A044412(n+1)`
-/

namespace A044792.P16946011846473915479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044412 (n + 1)

end

end A044792.P16946011846473915479

/-! ## A044792.P1016822868853624502

`∩[A044039(n+1), A297465(n)]`
-/

namespace A044792.P1016822868853624502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044792.P1016822868853624502

/-! ## A044792.P16395845028973092427

`A124741(A044412(n+1))`
-/

namespace A044792.P16395845028973092427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044412 (n + 1)).toNat

end

end A044792.P16395845028973092427

/-!
# A044793: Numbers n such that string 8,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044793, there is no canonical definition to state claims against.
-/

/-! ## A044793.P276108045935717348

`A044413(1+n)-1`
-/

namespace A044793.P276108045935717348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044413 (1 + n) - 1

end

end A044793.P276108045935717348

/-! ## A044793.P4376360847232959070

`-1+A044413(n+1)`
-/

namespace A044793.P4376360847232959070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044413 (n + 1)

end

end A044793.P4376360847232959070

/-! ## A044793.P10011203605448136274

`A233583(A044413(n+1))`
-/

namespace A044793.P10011203605448136274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044413 (n + 1)).toNat

end

end A044793.P10011203605448136274

/-!
# A044794: Numbers n such that string 8,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044794, there is no canonical definition to state claims against.
-/

/-! ## A044794.P2153376843179211224

`A044414(n+1)-1`
-/

namespace A044794.P2153376843179211224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1) - 1

end

end A044794.P2153376843179211224

/-! ## A044794.P17976640015613468913

`A124741(A044414(n+1))`
-/

namespace A044794.P17976640015613468913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044414 (n + 1)).toNat

end

end A044794.P17976640015613468913

/-!
# A044795: Numbers k such that string 8,2 occurs in the base 10 representation of k but not of k+1.

The programs for A044795, there is no canonical definition to state claims against.
-/

/-! ## A044795.P13007752266069728554

`A044415(1+n)-1`
-/

namespace A044795.P13007752266069728554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (1 + n) - 1

end

end A044795.P13007752266069728554

/-! ## A044795.P9779827553057849601

`A276331(A044415(n+1))`
-/

namespace A044795.P9779827553057849601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044415 (n + 1)).toNat

end

end A044795.P9779827553057849601

/-! ## A044795.P15855658639038150724

`A233583(A044415(n+1))`
-/

namespace A044795.P15855658639038150724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044415 (n + 1)).toNat

end

end A044795.P15855658639038150724

/-!
# A044796: Numbers k such that string 8,3 occurs in the base 10 representation of k but not of k+1.

The programs for A044796, there is no canonical definition to state claims against.
-/

/-! ## A044796.P7883367844720727455

`A044416(1+n)-1`
-/

namespace A044796.P7883367844720727455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044416 (1 + n) - 1

end

end A044796.P7883367844720727455

/-! ## A044796.P9716573708302720494

`-1+A044416(n+1)`
-/

namespace A044796.P9716573708302720494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044416 (n + 1)

end

end A044796.P9716573708302720494

/-! ## A044796.P7962774512952944761

`A124741(A044416(n+1))`
-/

namespace A044796.P7962774512952944761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044416 (n + 1)).toNat

end

end A044796.P7962774512952944761

/-! ## A044796.P4404161011005606015

`A126762(A044795(n+1))`
-/

namespace A044796.P4404161011005606015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (A044795 (n + 1)).toNat

end

end A044796.P4404161011005606015

/-!
# A044797: Numbers n such that string 8,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044797, there is no canonical definition to state claims against.
-/

/-! ## A044797.P2237276155305381956

`A044417(n+1)+(-1)`
-/

namespace A044797.P2237276155305381956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044417 (n + 1) + (-1)

end

end A044797.P2237276155305381956

/-! ## A044797.P12088491091358380687

`A276331(A044417(n+1))`
-/

namespace A044797.P12088491091358380687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044417 (n + 1)).toNat

end

end A044797.P12088491091358380687

/-! ## A044797.P1309345721796075461

`A113520(A044417(n+1))`
-/

namespace A044797.P1309345721796075461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044417 (n + 1)).toNat

end

end A044797.P1309345721796075461

/-!
# A044798: Numbers n such that string 8,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044798, there is no canonical definition to state claims against.
-/

/-! ## A044798.P9748456386607124470

`A044418(n+1)-1`
-/

namespace A044798.P9748456386607124470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044418 (n + 1) - 1

end

end A044798.P9748456386607124470

/-! ## A044798.P9524829718309895396

`A124741(A044418(n+1))`
-/

namespace A044798.P9524829718309895396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044418 (n + 1)).toNat

end

end A044798.P9524829718309895396

/-!
# A044799: Numbers n such that string 8,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044799, there is no canonical definition to state claims against.
-/

/-! ## A044799.P1321250678147740711

`A044419(1+n)-1`
-/

namespace A044799.P1321250678147740711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044419 (1 + n) - 1

end

end A044799.P1321250678147740711

/-! ## A044799.P10844227385178233748

`-1+A044419(n+1)`
-/

namespace A044799.P10844227385178233748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044419 (n + 1)

end

end A044799.P10844227385178233748

/-! ## A044799.P17461437375509666175

`A113520(A044419(n+1))`
-/

namespace A044799.P17461437375509666175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044419 (n + 1)).toNat

end

end A044799.P17461437375509666175

