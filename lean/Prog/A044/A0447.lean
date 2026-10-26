import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

/-!
# A044700: Numbers k such that string 7,5 occurs in the base 9 representation of k but not of k+1.

The programs for A044700, there is no canonical definition to state claims against.
-/

/-! ## A044700.P10567134304168570345

`A057428(A008804(n))+A044320(n+1)`
-/

namespace A044700.P10567134304168570345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008804 n).toNat + A044320 (n + 1)

end

end A044700.P10567134304168570345

/-! ## A044700.P2453925424205701583

`A044320(n+1)-A134451(A002146(n))`
-/

namespace A044700.P2453925424205701583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044320 (n + 1) - A134451 (A002146 n).toNat

end

end A044700.P2453925424205701583

/-! ## A044700.P9193596930567066661

`A044320(n+1)-A293668(A064200(n))`
-/

namespace A044700.P9193596930567066661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044320 (n + 1) - A293668 (A064200 n).toNat

end

end A044700.P9193596930567066661

/-! ## A044700.P13491793950138052587

`A044320(n+1)-A337335(A284554(n))`
-/

namespace A044700.P13491793950138052587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044320 (n + 1) - A337335 (A284554 n).toNat

end

end A044700.P13491793950138052587

/-! ## A044700.P1458669740353198049

`A044320(n+1)-A001222(A196670(n+1))`
-/

namespace A044700.P1458669740353198049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044320 (n + 1) - A001222 (A196670 (n + 1)).toNat

end

end A044700.P1458669740353198049

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

/-! ## A044702.P12562205127867060453

`record[A057979(A044692(n+2))]`
-/

namespace A044702.P12562205127867060453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044692 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044702.P12562205127867060453

/-! ## A044702.P16503275656035736672

`A004526(A044692(2*(n+1)))`
-/

namespace A044702.P16503275656035736672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044692 (2 * (n + 1))).toNat

end

end A044702.P16503275656035736672

/-! ## A044702.P14852591795871807496

`A057979(A044692(2*n+2))`
-/

namespace A044702.P14852591795871807496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044692 (2 * n + 2)).toNat

end

end A044702.P14852591795871807496

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

/-! ## A044702.P8572833814622145043

`A032742(xor(1, A044692(2*(n+1))))`
-/

namespace A044702.P8572833814622145043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.xor 1 (A044692 (2 * (n + 1)))).toNat

end

end A044702.P8572833814622145043

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

/-! ## A044703.P13144341973469039331

`filter[A043995(n+1), A189673(#)]`
-/

namespace A044703.P13144341973469039331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189673 (f1 j).toNat = 1) n)

end

end A044703.P13144341973469039331

/-!
# A044704: Numbers n such that string 8,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044704, there is no canonical definition to state claims against.
-/

/-! ## A044704.P16697020732823398756

`A057428(A008137(n))+A044324(n+1)`
-/

namespace A044704.P16697020732823398756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008137 n).toNat + A044324 (n + 1)

end

end A044704.P16697020732823398756

/-! ## A044704.P6597742203221685320

`A057428(A036370(n))+A044324(n+1)`
-/

namespace A044704.P6597742203221685320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A036370 n).toNat + A044324 (n + 1)

end

end A044704.P6597742203221685320

/-! ## A044704.P13450680256508079036

`A057428(A000607(n)+1)+A044324(n+1)`
-/

namespace A044704.P13450680256508079036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000607 n + 1).toNat + A044324 (n + 1)

end

end A044704.P13450680256508079036

/-! ## A044704.P8150478520163215511

`A057428(A045171(n+1))+A044324(n+1)`
-/

namespace A044704.P8150478520163215511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A045171 (n + 1)).toNat + A044324 (n + 1)

end

end A044704.P8150478520163215511

/-! ## A044704.P14813213298711495818

`A134824(A051983(n+1))+A044324(n+1)`
-/

namespace A044704.P14813213298711495818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A051983 (n + 1)).toNat + A044324 (n + 1)

end

end A044704.P14813213298711495818

/-! ## A044704.P4499001207292919558

`A044324(n+1)-A066060(A023205(n+1))`
-/

namespace A044704.P4499001207292919558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044324 (n + 1) - A066060 (A023205 (n + 1)).toNat

end

end A044704.P4499001207292919558

/-! ## A044704.P12969286299889271431

`A057428(A046400(n+4))+A044324(n+1)`
-/

namespace A044704.P12969286299889271431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A046400 (n + 4)).toNat + A044324 (n + 1)

end

end A044704.P12969286299889271431

/-! ## A044704.P7940616139562111967

`A057428(Δ[A068653(n+1)])+A044324(n+1)`
-/

namespace A044704.P7940616139562111967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (f1 (n + 1) - f1 n).toNat + A044324 (n + 1)

end

end A044704.P7940616139562111967

/-! ## A044704.P7623526597153458246

`A044324(n+1)-A054977(Δ[A068653(n+1)])`
-/

namespace A044704.P7623526597153458246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044324 (n + 1) - A054977 (f1 (n + 1) - f1 n).toNat

end

end A044704.P7623526597153458246

/-! ## A044704.P3156045485945471962

`A057428(A068653(n+1))+A044324(n+1)`
-/

namespace A044704.P3156045485945471962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A068653 (n + 1)).toNat + A044324 (n + 1)

end

end A044704.P3156045485945471962

/-!
# A044705: Numbers n such that string 8,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044705, there is no canonical definition to state claims against.
-/

/-! ## A044705.P1036722336430862225

`A002517(A044324(n+1))-1`
-/

namespace A044705.P1036722336430862225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044324 (n + 1)).toNat - 1

end

end A044705.P1036722336430862225

/-! ## A044705.P15099552706700884947

`A057428(n+1)+A002517(A044324(n+1))`
-/

namespace A044705.P15099552706700884947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044324 (n + 1)).toNat

end

end A044705.P15099552706700884947

/-! ## A044705.P14101256117773687782

`A134824(n+2)+A002517(A044324(n+1))`
-/

namespace A044705.P14101256117773687782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A002517 (A044324 (n + 1)).toNat

end

end A044705.P14101256117773687782

/-! ## A044705.P7925097868196787321

`A153881(n+2)+A002517(A044324(n+1))`
-/

namespace A044705.P7925097868196787321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A002517 (A044324 (n + 1)).toNat

end

end A044705.P7925097868196787321

/-! ## A044705.P2473291883688635235

`A033999(Δ[n²])+A002517(A044324(n+1))`
-/

namespace A044705.P2473291883688635235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A002517 (A044324 (n + 1)).toNat

end

end A044705.P2473291883688635235

/-! ## A044705.P14281106409977808414

`A115607(A171977(n+1))+A002517(A044324(n+1))`
-/

namespace A044705.P14281106409977808414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (A171977 (n + 1)).toNat + A002517 (A044324 (n + 1)).toNat

end

end A044705.P14281106409977808414

/-! ## A044705.P6017434392931781346

`A087960(A005408(2*n))+A002517(A044324(n+1))`
-/

namespace A044705.P6017434392931781346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A005408 (2 * n)).toNat + A002517 (A044324 (n + 1)).toNat

end

end A044705.P6017434392931781346

/-! ## A044705.P11640953306554283874

`A044325(n+1)-A014963(A216072(n+1))`
-/

namespace A044705.P11640953306554283874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044325 (n + 1) - A014963 (A216072 (n + 1)).toNat

end

end A044705.P11640953306554283874

/-! ## A044705.P3140277450581671287

`A044325(n+1)-A057427(A180184(n+4)²)`
-/

namespace A044705.P3140277450581671287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044325 (n + 1) - A057427 (A180184 (n + 4) ^ 2).toNat

end

end A044705.P3140277450581671287

/-!
# A044706: Numbers n such that string 8,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044706, there is no canonical definition to state claims against.
-/

/-! ## A044706.P2726424790981363894

`A057428(A085478(n))+A044326(n+1)`
-/

namespace A044706.P2726424790981363894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A085478 n).toNat + A044326 (n + 1)

end

end A044706.P2726424790981363894

/-! ## A044706.P3085105188708154198

`A057428(A156224(n))+A044326(n+1)`
-/

namespace A044706.P3085105188708154198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A156224 n).toNat + A044326 (n + 1)

end

end A044706.P3085105188708154198

/-! ## A044706.P6373558104743330981

`A057428(A005448(n+1))+A044326(n+1)`
-/

namespace A044706.P6373558104743330981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A005448 (n + 1)).toNat + A044326 (n + 1)

end

end A044706.P6373558104743330981

/-! ## A044706.P11699631130119951036

`A057428(A219354(n+1))+A044326(n+1)`
-/

namespace A044706.P11699631130119951036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A219354 (n + 1)).toNat + A044326 (n + 1)

end

end A044706.P11699631130119951036

/-! ## A044706.P7018765545194100993

`A057428(A260213(n+1))+A044326(n+1)`
-/

namespace A044706.P7018765545194100993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A260213 (n + 1)).toNat + A044326 (n + 1)

end

end A044706.P7018765545194100993

/-! ## A044706.P570272528517507849

`A044326(n+1)-A057078(A331428(n+1))`
-/

namespace A044706.P570272528517507849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044326 (n + 1) - A057078 (A331428 (n + 1)).toNat

end

end A044706.P570272528517507849

/-! ## A044706.P243769606301026640

`A044326(n+1)-A001222(A178984(n+3))`
-/

namespace A044706.P243769606301026640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044326 (n + 1) - A001222 (A178984 (n + 3)).toNat

end

end A044706.P243769606301026640

/-! ## A044706.P8893249034369986611

`A044326(n+1)-A325931(A064989(n+1))²`
-/

namespace A044706.P8893249034369986611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044326 (n + 1) - A325931 (A064989 (n + 1)).toNat ^ 2

end

end A044706.P8893249034369986611

/-! ## A044706.P16890222908688674337

`A057078(A331428(n+1)+2)+A044326(n+1)`
-/

namespace A044706.P16890222908688674337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A331428 (n + 1) + 2).toNat + A044326 (n + 1)

end

end A044706.P16890222908688674337

/-! ## A044706.P971289622894241529

`A044326(n+1)-A325931(n+1)²`
-/

namespace A044706.P971289622894241529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044326 (n + 1) - A325931 (n + 1) ^ 2

end

end A044706.P971289622894241529

/-!
# A044707: Numbers n such that string 8,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044707, there is no canonical definition to state claims against.
-/

/-! ## A044707.P10717826751773145877

`A044327(n+1)-abs(A181432(n+1))`
-/

namespace A044707.P10717826751773145877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044327 (n + 1) - |A181432 (n + 1)|

end

end A044707.P10717826751773145877

/-! ## A044707.P17467549116832289730

`A044327(n+1)-A151933(n+2)!`
-/

namespace A044707.P17467549116832289730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044327 (n + 1) - (Nat.factorial (A151933 (n + 2)).toNat : ℤ)

end

end A044707.P17467549116832289730

/-! ## A044707.P7671109351489826868

`A057428(A270097(n))+A044327(n+1)`
-/

namespace A044707.P7671109351489826868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A270097 n).toNat + A044327 (n + 1)

end

end A044707.P7671109351489826868

/-! ## A044707.P16431537569217535016

`A057428(A025487(n+1))+A044327(n+1)`
-/

namespace A044707.P16431537569217535016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A025487 (n + 1)).toNat + A044327 (n + 1)

end

end A044707.P16431537569217535016

/-! ## A044707.P5935905382164753310

`A057428(A094460(n+1))+A044327(n+1)`
-/

namespace A044707.P5935905382164753310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A094460 (n + 1)).toNat + A044327 (n + 1)

end

end A044707.P5935905382164753310

/-! ## A044707.P10938481288669788843

`A115638(A038901(n+1))+A044327(n+1)`
-/

namespace A044707.P10938481288669788843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (A038901 (n + 1)).toNat + A044327 (n + 1)

end

end A044707.P10938481288669788843

/-! ## A044707.P963534912907920457

`A044327(n+1)-A018252(A151933(n+2)+1)`
-/

namespace A044707.P963534912907920457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044327 (n + 1) - A018252 (A151933 (n + 2) + 1).toNat

end

end A044707.P963534912907920457

/-! ## A044707.P11894392769709368566

`A044327(n+1)-A000040(A094460(n+1)+1)%2`
-/

namespace A044707.P11894392769709368566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044327 (n + 1) - Int.tmod (A000040 (A094460 (n + 1) + 1).toNat) 2

end

end A044707.P11894392769709368566

/-! ## A044707.P5534297226288542446

`A044327(n+1)-A046094(A019336(n+1))`
-/

namespace A044707.P5534297226288542446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044327 (n + 1) - A046094 (A019336 (n + 1)).toNat

end

end A044707.P5534297226288542446

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

/-! ## A044708.P12347757219651707373

`A057428(n+1)+A002517(A044327(n+1))`
-/

namespace A044708.P12347757219651707373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002517 (A044327 (n + 1)).toNat

end

end A044708.P12347757219651707373

/-! ## A044708.P6732940083736758441

`A260196(n+2)+A002517(A044327(n+1))`
-/

namespace A044708.P6732940083736758441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A002517 (A044327 (n + 1)).toNat

end

end A044708.P6732940083736758441

/-! ## A044708.P3230477642187174932

`A286714(gcd(n, n+1))+A002517(A044327(n+1))`
-/

namespace A044708.P3230477642187174932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286714 (Nat.gcd n (n + 1)) + A002517 (A044327 (n + 1)).toNat

end

end A044708.P3230477642187174932

/-! ## A044708.P15353860229239966747

`A349340(A000040(n+1))+A002517(A044327(n+1))`
-/

namespace A044708.P15353860229239966747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A000040 (n + 1)).toNat + A002517 (A044327 (n + 1)).toNat

end

end A044708.P15353860229239966747

/-! ## A044708.P2486781311946033209

`A349340(A001316(n+1))+A002517(A044327(n+1))`
-/

namespace A044708.P2486781311946033209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A001316 (n + 1)).toNat + A002517 (A044327 (n + 1)).toNat

end

end A044708.P2486781311946033209

/-! ## A044708.P16230550345549593949

`A349340(A006530(n+2))+A002517(A044327(n+1))`
-/

namespace A044708.P16230550345549593949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A006530 (n + 2)).toNat + A002517 (A044327 (n + 1)).toNat

end

end A044708.P16230550345549593949

/-! ## A044708.P14953612241898697423

`A087003(A020639(10*n+5))+A002517(A044327(n+1))`
-/

namespace A044708.P14953612241898697423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A020639 (10 * n + 5)).toNat + A002517 (A044327 (n + 1)).toNat

end

end A044708.P14953612241898697423

/-! ## A044708.P7501733213517463824

`A008836(A020639(10*(n+10))+1)+A002517(A044327(n+1))`
-/

namespace A044708.P7501733213517463824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A020639 (10 * (n + 10)) + 1).toNat + A002517 (A044327 (n + 1)).toNat

end

end A044708.P7501733213517463824

/-! ## A044708.P6939680033191447072

`A073097(A151933(n))+A002517(A044327(n+1))`
-/

namespace A044708.P6939680033191447072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A151933 n).toNat + A002517 (A044327 (n + 1)).toNat

end

end A044708.P6939680033191447072

/-!
# A044709: Numbers n such that string 8,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044709, there is no canonical definition to state claims against.
-/

/-! ## A044709.P10307940292674899538

`A319021(A044328(n+1))-2`
-/

namespace A044709.P10307940292674899538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044328 (n + 1)).toNat - 2

end

end A044709.P10307940292674899538

/-! ## A044709.P18181330343917928125

`abs(A319021(A044328(Δ[n²]-n))-2)`
-/

namespace A044709.P18181330343917928125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319021 (A044328 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 2|

end

end A044709.P18181330343917928125

/-! ## A044709.P6204442152976777086

`A044329(n+1)-A151933(n)!`
-/

namespace A044709.P6204442152976777086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044329 (n + 1) - (Nat.factorial (A151933 n).toNat : ℤ)

end

end A044709.P6204442152976777086

/-! ## A044709.P8010134098583945055

`A044329(n+1)-A000219(A151933(n)²)`
-/

namespace A044709.P8010134098583945055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044329 (n + 1) - A000219 (A151933 n ^ 2).toNat

end

end A044709.P8010134098583945055

/-! ## A044709.P3357788163025131477

`A044329(n+1)-A063834(A151933(n)²)`
-/

namespace A044709.P3357788163025131477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044329 (n + 1) - A063834 (A151933 n ^ 2).toNat

end

end A044709.P3357788163025131477

/-! ## A044709.P1997139833155029310

`A044329(n+1)-A000010(A151933(n)+1)`
-/

namespace A044709.P1997139833155029310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044329 (n + 1) - A000010 (A151933 n + 1).toNat

end

end A044709.P1997139833155029310

/-! ## A044709.P6532512229851378539

`A044329(n+1)-A000045(A151933(n)+1)`
-/

namespace A044709.P6532512229851378539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044329 (n + 1) - A000045 (A151933 n + 1).toNat

end

end A044709.P6532512229851378539

/-! ## A044709.P13801681501921037752

`A044329(n+1)-A001222(A250445(n+1))`
-/

namespace A044709.P13801681501921037752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044329 (n + 1) - A001222 (A250445 (n + 1)).toNat

end

end A044709.P13801681501921037752

/-! ## A044709.P4945649814541919548

`A044329(n+1)-A000203(A151933(n)+1)%2`
-/

namespace A044709.P4945649814541919548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044329 (n + 1) - Int.tmod (A000203 (A151933 n + 1).toNat) 2

end

end A044709.P4945649814541919548

/-! ## A044709.P4077007674190261304

`A044329(n+1)-A000005(C(A151933(n), 2)+1)`
-/

namespace A044709.P4077007674190261304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044329 (n + 1) - A000005 (Nat.choose (A151933 n).toNat 2 + 1)

end

end A044709.P4077007674190261304

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

/-! ## A044710.P17382845046240294440

`A044330(n+1)-gcd(31, A345901(n+1))`
-/

namespace A044710.P17382845046240294440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044330 (n + 1) - (Int.gcd 31 (A345901 (n + 1)) : ℤ)

end

end A044710.P17382845046240294440

/-! ## A044710.P14536653603068137533

`A044330(n+1)-A035263(A328475(n))`
-/

namespace A044710.P14536653603068137533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044330 (n + 1) - A035263 (A328475 n).toNat

end

end A044710.P14536653603068137533

/-! ## A044710.P6144893260370029299

`A057428(A335450(n+1))+A044330(n+1)`
-/

namespace A044710.P6144893260370029299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A335450 (n + 1)).toNat + A044330 (n + 1)

end

end A044710.P6144893260370029299

/-! ## A044710.P7158918370426268091

`A044330(n+1)-A162510(A090801(n+1))`
-/

namespace A044710.P7158918370426268091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044330 (n + 1) - A162510 (A090801 (n + 1)).toNat

end

end A044710.P7158918370426268091

/-! ## A044710.P1236548928021388242

`A044330(n+1)-A001221(A001248(n+1))`
-/

namespace A044710.P1236548928021388242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044330 (n + 1) - A001221 (A001248 (n + 1)).toNat

end

end A044710.P1236548928021388242

/-! ## A044710.P9159923265376487734

`A044330(n+1)-A008683(A006094(n+1))`
-/

namespace A044710.P9159923265376487734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044330 (n + 1) - A008683 (A006094 (n + 1)).toNat

end

end A044710.P9159923265376487734

/-!
# A044711: Numbers n such that string 8,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044711, there is no canonical definition to state claims against.
-/

/-! ## A044711.P4911351366419058062

`A319021(or(A044709(n+1), A151933(n)))`
-/

namespace A044711.P4911351366419058062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (Int.lor (A044709 (n + 1)) (A151933 n)).toNat

end

end A044711.P4911351366419058062

/-! ## A044711.P6569199109074579035

`A319021(A044329(n+1)-A151933(n)!)`
-/

namespace A044711.P6569199109074579035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044329 (n + 1) - (Nat.factorial (A151933 n).toNat : ℤ)).toNat

end

end A044711.P6569199109074579035

/-! ## A044711.P18424705264138089561

`A319021(A151933(n)!*A044709(n+1))`
-/

namespace A044711.P18424705264138089561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 ((Nat.factorial (A151933 n).toNat : ℤ) * A044709 (n + 1)).toNat

end

end A044711.P18424705264138089561

/-! ## A044711.P2708431270114162973

`A319021(A044709(n+1)^A151933(n)!)`
-/

namespace A044711.P2708431270114162973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044709 (n + 1) ^ Nat.factorial (A151933 n).toNat).toNat

end

end A044711.P2708431270114162973

/-! ## A044711.P6194477320332590216

`A319021(C(A044709(n+1), A151933(n)!))`
-/

namespace A044711.P6194477320332590216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (Nat.choose (A044709 (n + 1)).toNat (Nat.factorial (A151933 n).toNat))

end

end A044711.P6194477320332590216

/-! ## A044711.P10542298861207503333

`A319021(A044709(n+1)+n*A151933(n))`
-/

namespace A044711.P10542298861207503333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044709 (n + 1) + (n : ℤ) * A151933 n).toNat

end

end A044711.P10542298861207503333

/-! ## A044711.P1893647630937295025

`A001222(A250445(n+1))*A319021(A044709(n+1))`
-/

namespace A044711.P1893647630937295025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A250445 (n + 1)).toNat * A319021 (A044709 (n + 1)).toNat

end

end A044711.P1893647630937295025

/-! ## A044711.P6931097558453199548

`A319021(A151933(n+1)+A044709(n+1))`
-/

namespace A044711.P6931097558453199548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A151933 (n + 1) + A044709 (n + 1)).toNat

end

end A044711.P6931097558453199548

/-! ## A044711.P18390797651297631797

`A046094(A019334(n+1))*A319021(A044709(n+1))`
-/

namespace A044711.P18390797651297631797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A019334 (n + 1)).toNat * A319021 (A044709 (n + 1)).toNat

end

end A044711.P18390797651297631797

/-! ## A044711.P3321896997127825351

`A046094(A019349(n+1))*A319021(A044709(n+1))`
-/

namespace A044711.P3321896997127825351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A019349 (n + 1)).toNat * A319021 (A044709 (n + 1)).toNat

end

end A044711.P3321896997127825351

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

/-! ## A044712.P18349048540087817124

`A362360(n+1)+A260390(A255418(n+1))`
-/

namespace A044712.P18349048540087817124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362360 (n + 1) + A260390 (A255418 (n + 1)).toNat

end

end A044712.P18349048540087817124

/-! ## A044712.P9111699788473558559

`A044251(n+1)-A001222(A094124(n+2))`
-/

namespace A044712.P9111699788473558559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044251 (n + 1) - A001222 (A094124 (n + 2)).toNat

end

end A044712.P9111699788473558559

/-! ## A044712.P18312224589992320439

`A158123(n+1)-A000005(A094124(n+2))`
-/

namespace A044712.P18312224589992320439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158123 (n + 1) - A000005 (A094124 (n + 2)).toNat

end

end A044712.P18312224589992320439

/-! ## A044712.P15901001022373391876

`A362360(n+1)+A001511(A187818(n+3))`
-/

namespace A044712.P15901001022373391876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362360 (n + 1) + A001511 (A187818 (n + 3)).toNat

end

end A044712.P15901001022373391876

/-! ## A044712.P17774124643817604731

`81*n+82-A020639(∑[32*n+18])`
-/

namespace A044712.P17774124643817604731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (81 * n + 82 : ℤ) - A020639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044712.P17774124643817604731

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

/-! ## A044714.P15951540669877993647

`A057428(A131113(n))+A044334(n+1)`
-/

namespace A044714.P15951540669877993647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A131113 n).toNat + A044334 (n + 1)

end

end A044714.P15951540669877993647

/-! ## A044714.P12251491664341559651

`A044334(n+1)+A033999(A044726(n+1))`
-/

namespace A044714.P12251491664341559651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) + A033999 (A044726 (n + 1)).toNat

end

end A044714.P12251491664341559651

/-! ## A044714.P7087852572320991683

`A044334(n+1)+A033999(A044734(n+1))`
-/

namespace A044714.P7087852572320991683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) + A033999 (A044734 (n + 1)).toNat

end

end A044714.P7087852572320991683

/-! ## A044714.P13049418869506910418

`A044334(n+1)+A033999(A044752(n+1))`
-/

namespace A044714.P13049418869506910418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) + A033999 (A044752 (n + 1)).toNat

end

end A044714.P13049418869506910418

/-! ## A044714.P1632081222234127892

`A044334(n+1)+A033999(A044780(n+1))`
-/

namespace A044714.P1632081222234127892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) + A033999 (A044780 (n + 1)).toNat

end

end A044714.P1632081222234127892

/-! ## A044714.P3174756468976932249

`A057428(A044344(n+1))+A044334(n+1)`
-/

namespace A044714.P3174756468976932249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A044344 (n + 1)).toNat + A044334 (n + 1)

end

end A044714.P3174756468976932249

/-! ## A044714.P8640676294866618575

`A057428(A044347(n+1))+A044334(n+1)`
-/

namespace A044714.P8640676294866618575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A044347 (n + 1)).toNat + A044334 (n + 1)

end

end A044714.P8640676294866618575

/-! ## A044714.P12896246429795415970

`A057428(A120292(n+1))+A044334(n+1)`
-/

namespace A044714.P12896246429795415970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A120292 (n + 1)).toNat + A044334 (n + 1)

end

end A044714.P12896246429795415970

/-! ## A044714.P11105660112911945755

`A057428(A318350(n+1))+A044334(n+1)`
-/

namespace A044714.P11105660112911945755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A318350 (n + 1)).toNat + A044334 (n + 1)

end

end A044714.P11105660112911945755

/-! ## A044714.P3688335379719863051

`A044334(n+1)-A000034(A044348(n+1))`
-/

namespace A044714.P3688335379719863051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) - A000034 (A044348 (n + 1)).toNat

end

end A044714.P3688335379719863051

/-! ## A044714.P6964027179215244587

`A044334(n+1)-A014695(A044360(n+1))`
-/

namespace A044714.P6964027179215244587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) - A014695 (A044360 (n + 1)).toNat

end

end A044714.P6964027179215244587

/-! ## A044714.P4812168945607970489

`A044334(n+1)-A033999(A044346(n+1))`
-/

namespace A044714.P4812168945607970489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) - A033999 (A044346 (n + 1)).toNat

end

end A044714.P4812168945607970489

/-! ## A044714.P7031887984042104841

`A044334(n+1)-A078572(A044345(n+1))`
-/

namespace A044714.P7031887984042104841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044334 (n + 1) - A078572 (A044345 (n + 1)).toNat

end

end A044714.P7031887984042104841

/-! ## A044714.P18286649561524321190

`A065475(A044334(n+1)-2)`
-/

namespace A044714.P18286649561524321190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A044334 (n + 1) - 2).toNat

end

end A044714.P18286649561524321190

/-! ## A044714.P7673010801433408874

`(A044334(n+1)-1)%A002180(A044334(n+1)-1)`
-/

namespace A044714.P7673010801433408874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044334 (n + 1) - 1) (A002180 (A044334 (n + 1) - 1).toNat)

end

end A044714.P7673010801433408874

/-! ## A044714.P15464724098907736900

`or(A044334(n+1)-1, A049320(A044334(n+1)-1))`
-/

namespace A044714.P15464724098907736900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044334 (n + 1) - 1) (A049320 (A044334 (n + 1) - 1).toNat)

end

end A044714.P15464724098907736900

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

/-! ## A044714.P13475236530425520792

`A028310(A044334(n+1)-1)`
-/

namespace A044714.P13475236530425520792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A044334 (n + 1) - 1).toNat

end

end A044714.P13475236530425520792

/-!
# A044715: Numbers n such that string 0,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044715, there is no canonical definition to state claims against.
-/

/-! ## A044715.P7843376107494610765

`A057428(A014430(n))+A044335(n+1)`
-/

namespace A044715.P7843376107494610765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A014430 n).toNat + A044335 (n + 1)

end

end A044715.P7843376107494610765

/-! ## A044715.P7104298373810759766

`A044335(n+1)+A033999(A131061(n))`
-/

namespace A044715.P7104298373810759766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) + A033999 (A131061 n).toNat

end

end A044715.P7104298373810759766

/-! ## A044715.P4652445226330003397

`A044335(n+1)+A033999(A131404(n))`
-/

namespace A044715.P4652445226330003397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) + A033999 (A131404 n).toNat

end

end A044715.P4652445226330003397

/-! ## A044715.P16457602022225020481

`A057428(A114197(n))+A044335(n+1)`
-/

namespace A044715.P16457602022225020481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A114197 n).toNat + A044335 (n + 1)

end

end A044715.P16457602022225020481

/-! ## A044715.P5946308872162015437

`A057428(A316939(n))+A044335(n+1)`
-/

namespace A044715.P5946308872162015437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A316939 n).toNat + A044335 (n + 1)

end

end A044715.P5946308872162015437

/-! ## A044715.P3445668373982534706

`A044335(n+1)-A001372(A094497(n))`
-/

namespace A044715.P3445668373982534706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) - A001372 (A094497 n).toNat

end

end A044715.P3445668373982534706

/-! ## A044715.P14484575166572920933

`A044335(n+1)-A040055(A246314(n))`
-/

namespace A044715.P14484575166572920933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) - A040055 (A246314 n).toNat

end

end A044715.P14484575166572920933

/-! ## A044715.P894801066082548559

`A057428(A038563(n+1))+A044335(n+1)`
-/

namespace A044715.P894801066082548559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A038563 (n + 1)).toNat + A044335 (n + 1)

end

end A044715.P894801066082548559

/-! ## A044715.P10540559877274558607

`A057428(A183917(n+1))+A044335(n+1)`
-/

namespace A044715.P10540559877274558607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A183917 (n + 1)).toNat + A044335 (n + 1)

end

end A044715.P10540559877274558607

/-! ## A044715.P10342789798733958148

`A057428(A014410(n+2))+A044335(n+1)`
-/

namespace A044715.P10342789798733958148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A014410 (n + 2)).toNat + A044335 (n + 1)

end

end A044715.P10342789798733958148

/-! ## A044715.P14043274529775948667

`A044335(n+1)-A280560(A131404(n)+1)+1`
-/

namespace A044715.P14043274529775948667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) - A280560 (A131404 n + 1).toNat + 1

end

end A044715.P14043274529775948667

/-! ## A044715.P7804024739258344997

`A057428(A131061(n))+A044335(A289207(n+3))`
-/

namespace A044715.P7804024739258344997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A131061 n).toNat + A044335 (A289207 (n + 3)).toNat

end

end A044715.P7804024739258344997

/-! ## A044715.P10108801034874254896

`A057428(A044345(n+1))+A044335(n+1)`
-/

namespace A044715.P10108801034874254896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A044345 (n + 1)).toNat + A044335 (n + 1)

end

end A044715.P10108801034874254896

/-! ## A044715.P3535921340592641150

`A057428(A044360(n+1))+A044335(n+1)`
-/

namespace A044715.P3535921340592641150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A044360 (n + 1)).toNat + A044335 (n + 1)

end

end A044715.P3535921340592641150

/-! ## A044715.P17682071624076528479

`A044335(n+1)-A000034(A044344(n+1))`
-/

namespace A044715.P17682071624076528479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) - A000034 (A044344 (n + 1)).toNat

end

end A044715.P17682071624076528479

/-! ## A044715.P9689958399827231194

`A044335(n+1)-A000034(A044348(n+1))`
-/

namespace A044715.P9689958399827231194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) - A000034 (A044348 (n + 1)).toNat

end

end A044715.P9689958399827231194

/-! ## A044715.P5103267579870652341

`A044335(n+1)-A033999(A044346(n+1))`
-/

namespace A044715.P5103267579870652341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) - A033999 (A044346 (n + 1)).toNat

end

end A044715.P5103267579870652341

/-! ## A044715.P12363073215290477049

`A044335(n+1)-A078572(A044347(n+1))`
-/

namespace A044715.P12363073215290477049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) - A078572 (A044347 (n + 1)).toNat

end

end A044715.P12363073215290477049

/-! ## A044715.P12027017916341903329

`(A044335(n+1)-1)*A289508(2*A131113(n))`
-/

namespace A044715.P12027017916341903329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044335 (n + 1) - 1) * A289508 (2 * A131113 n).toNat

end

end A044715.P12027017916341903329

/-! ## A044715.P18244337206574065225

`A044335(n+1)-A091954(A089120(n+1))`
-/

namespace A044715.P18244337206574065225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044335 (n + 1) - A091954 (A089120 (n + 1)).toNat

end

end A044715.P18244337206574065225

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

/-! ## A044716.P13051071287523457251

`A057428(A093562(n))+A044336(n+1)`
-/

namespace A044716.P13051071287523457251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A093562 n).toNat + A044336 (n + 1)

end

end A044716.P13051071287523457251

/-! ## A044716.P2545748161529957301

`A057428(A102854(n))+A044336(n+1)`
-/

namespace A044716.P2545748161529957301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A102854 n).toNat + A044336 (n + 1)

end

end A044716.P2545748161529957301

/-! ## A044716.P5871294084782412279

`A044336(n+1)-A057427(A209518(n))`
-/

namespace A044716.P5871294084782412279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - A057427 (A209518 n).toNat

end

end A044716.P5871294084782412279

/-! ## A044716.P14510327587897519154

`A044336(n+1)-A246064(A144464(n))`
-/

namespace A044716.P14510327587897519154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - A246064 (A144464 n).toNat

end

end A044716.P14510327587897519154

/-! ## A044716.P9718223457075753096

`A057428(A000960(n+1))+A044336(n+1)`
-/

namespace A044716.P9718223457075753096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000960 (n + 1)).toNat + A044336 (n + 1)

end

end A044716.P9718223457075753096

/-! ## A044716.P1903012498569400952

`A044336(n+1)-A020985(A056672(n+1))`
-/

namespace A044716.P1903012498569400952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - A020985 (A056672 (n + 1)).toNat

end

end A044716.P1903012498569400952

/-! ## A044716.P14754283605978863694

`(A044336(n+1)-1)%A204140(A204127(n+1))`
-/

namespace A044716.P14754283605978863694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044336 (n + 1) - 1) (A204140 (A204127 (n + 1)).toNat)

end

end A044716.P14754283605978863694

/-! ## A044716.P6583718578813690848

`A044336(n+1)-A057427(A115569(n+1))`
-/

namespace A044716.P6583718578813690848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - A057427 (A115569 (n + 1)).toNat

end

end A044716.P6583718578813690848

/-! ## A044716.P12383561316386379677

`A044336(n+1)-A051237(A000124(n))`
-/

namespace A044716.P12383561316386379677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - A051237 (A000124 n).toNat

end

end A044716.P12383561316386379677

/-! ## A044716.P16498581043311474828

`A044336(n+1)-A000034(A044344(n+1))`
-/

namespace A044716.P16498581043311474828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - A000034 (A044344 (n + 1)).toNat

end

end A044716.P16498581043311474828

/-! ## A044716.P8112124376930592699

`A044336(n+1)-A000034(A044348(n+1))`
-/

namespace A044716.P8112124376930592699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - A000034 (A044348 (n + 1)).toNat

end

end A044716.P8112124376930592699

/-! ## A044716.P1230455545985643147

`A044336(n+1)-A055396(A044346(n+1))`
-/

namespace A044716.P1230455545985643147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - A055396 (A044346 (n + 1)).toNat

end

end A044716.P1230455545985643147

/-! ## A044716.P8981855895235756925

`A044336(n+1)-A055396(A044350(n+1))`
-/

namespace A044716.P8981855895235756925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1) - A055396 (A044350 (n + 1)).toNat

end

end A044716.P8981855895235756925

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

/-! ## A044717.P8137184640507180687

`A057428(A007439(n+1))+A044337(n+1)`
-/

namespace A044717.P8137184640507180687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007439 (n + 1)).toNat + A044337 (n + 1)

end

end A044717.P8137184640507180687

/-! ## A044717.P13198642293075866564

`A057428(A018800(n+1))+A044337(n+1)`
-/

namespace A044717.P13198642293075866564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A018800 (n + 1)).toNat + A044337 (n + 1)

end

end A044717.P13198642293075866564

/-! ## A044717.P15127682787522046431

`A057428(A215417(n+1))+A044337(n+1)`
-/

namespace A044717.P15127682787522046431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A215417 (n + 1)).toNat + A044337 (n + 1)

end

end A044717.P15127682787522046431

/-! ## A044717.P3891657224541329030

`A044337(n+1)-A001221(A002385(n+1))`
-/

namespace A044717.P3891657224541329030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) - A001221 (A002385 (n + 1)).toNat

end

end A044717.P3891657224541329030

/-! ## A044717.P17730754451770758672

`A044337(n+1)-A000034(A006582(n+2))`
-/

namespace A044717.P17730754451770758672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) - A000034 (A006582 (n + 2)).toNat

end

end A044717.P17730754451770758672

/-! ## A044717.P17155762700669284135

`A044337(n+1)+-A162292(A006582(n+2)+1)%2`
-/

namespace A044717.P17155762700669284135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) + Int.tmod (-A162292 (A006582 (n + 2) + 1).toNat) 2

end

end A044717.P17155762700669284135

/-! ## A044717.P14017878611927810229

`(A044337(n+1)-A179184(A006582(n+2)))*A033999(n)²`
-/

namespace A044717.P14017878611927810229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044337 (n + 1) - A179184 (A006582 (n + 2)).toNat) * A033999 n ^ 2

end

end A044717.P14017878611927810229

/-! ## A044717.P6229605923836091303

`(A044337(n+1)-A179184(A006582(n+2)))%A085027(n)²`
-/

namespace A044717.P6229605923836091303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044337 (n + 1) - A179184 (A006582 (n + 2)).toNat) (A085027 n ^ 2)

end

end A044717.P6229605923836091303

/-! ## A044717.P18445928916680915294

`A044337(n+1)-A177274(90*n)`
-/

namespace A044717.P18445928916680915294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) - A177274 (90 * n)

end

end A044717.P18445928916680915294

/-! ## A044717.P12511190615926855747

`A044337(n+1)-A057427(A026670(n))`
-/

namespace A044717.P12511190615926855747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) - A057427 (A026670 n).toNat

end

end A044717.P12511190615926855747

/-! ## A044717.P15977259725567624072

`A044337(n+1)-A078898(A065092(n+1))`
-/

namespace A044717.P15977259725567624072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) - A078898 (A065092 (n + 1)).toNat

end

end A044717.P15977259725567624072

/-! ## A044717.P10683988991437711059

`A044337(n+1)-A115716(A033206(n+1))`
-/

namespace A044717.P10683988991437711059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) - A115716 (A033206 (n + 1)).toNat

end

end A044717.P10683988991437711059

/-! ## A044717.P5782245195935095572

`(A044337(n+1)-1)%A179699(A322516(n+1))`
-/

namespace A044717.P5782245195935095572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044337 (n + 1) - 1) (A179699 (A322516 (n + 1)).toNat)

end

end A044717.P5782245195935095572

/-! ## A044717.P14617762425388288000

`A044337(n+1)-A078688(9*A017353(n))`
-/

namespace A044717.P14617762425388288000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) - A078688 (9 * A017353 n).toNat

end

end A044717.P14617762425388288000

/-! ## A044717.P12116367767668478671

`A044337(n+1)-A014695(A044344(n+1))`
-/

namespace A044717.P12116367767668478671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044337 (n + 1) - A014695 (A044344 (n + 1)).toNat

end

end A044717.P12116367767668478671

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

/-! ## A044718.P4538739433140321316

`A044338(n+1)+A008836(A062584(n))`
-/

namespace A044718.P4538739433140321316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) + A008836 (A062584 n).toNat

end

end A044718.P4538739433140321316

/-! ## A044718.P11676471851536834957

`A044338(n+1)+A008683(A059496(n+1))`
-/

namespace A044718.P11676471851536834957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) + A008683 (A059496 (n + 1)).toNat

end

end A044718.P11676471851536834957

/-! ## A044718.P10400917110823041032

`A044338(n+1)-A003415(A030291(n+1))`
-/

namespace A044718.P10400917110823041032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A003415 (A030291 (n + 1)).toNat

end

end A044718.P10400917110823041032

/-! ## A044718.P7133770072085753285

`A044338(n+1)-A098725(A062786(n+1))`
-/

namespace A044718.P7133770072085753285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A098725 (A062786 (n + 1)).toNat

end

end A044718.P7133770072085753285

/-! ## A044718.P8065538569601488155

`A044338(n+1)-A057427(A273913(n+1))`
-/

namespace A044718.P8065538569601488155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A057427 (A273913 (n + 1)).toNat

end

end A044718.P8065538569601488155

/-! ## A044718.P708535167102127552

`A044338(n+1)-A001222(A002385(n+1))`
-/

namespace A044718.P708535167102127552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A001222 (A002385 (n + 1)).toNat

end

end A044718.P708535167102127552

/-! ## A044718.P13396460627863964316

`A044338(n+1)-A057427(A018800(n+1))`
-/

namespace A044718.P13396460627863964316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A057427 (A018800 (n + 1)).toNat

end

end A044718.P13396460627863964316

/-! ## A044718.P10460836478653492124

`A044338(n+1)-A057427(A124928(n))`
-/

namespace A044718.P10460836478653492124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A057427 (A124928 n).toNat

end

end A044718.P10460836478653492124

/-! ## A044718.P4428527376844458550

`A182394(A033548(n+1))+A044338(n+1)`
-/

namespace A044718.P4428527376844458550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A033548 (n + 1)).toNat + A044338 (n + 1)

end

end A044718.P4428527376844458550

/-! ## A044718.P16147678701585131569

`or(A044338(n+1)-1, A321081(9*n+3))`
-/

namespace A044718.P16147678701585131569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044338 (n + 1) - 1) (A321081 (9 * n + 3))

end

end A044718.P16147678701585131569

/-! ## A044718.P4512797398604331702

`or(A044338(n+1)-1, A321083(9*n+3))`
-/

namespace A044718.P4512797398604331702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044338 (n + 1) - 1) (A321083 (9 * n + 3))

end

end A044718.P4512797398604331702

/-! ## A044718.P6463957727134834323

`A044338(n+1)+A033999(A236068(n+1))`
-/

namespace A044718.P6463957727134834323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) + A033999 (A236068 (n + 1)).toNat

end

end A044718.P6463957727134834323

/-! ## A044718.P14419834110354364414

`(A044338(n+1)-1)%A229294(∑[A057024(n+1)])`
-/

namespace A044718.P14419834110354364414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044338 (n + 1) - 1) (A229294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A044718.P14419834110354364414

/-! ## A044718.P12876645300471943115

`A044338(n+1)-A000034(A044344(n+1))`
-/

namespace A044718.P12876645300471943115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A000034 (A044344 (n + 1)).toNat

end

end A044718.P12876645300471943115

/-! ## A044718.P2119522099547682406

`A044338(n+1)-A000034(A044348(n+1))`
-/

namespace A044718.P2119522099547682406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A000034 (A044348 (n + 1)).toNat

end

end A044718.P2119522099547682406

/-! ## A044718.P3381031989001653713

`A044338(n+1)-A014695(A044356(n+1))`
-/

namespace A044718.P3381031989001653713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A014695 (A044356 (n + 1)).toNat

end

end A044718.P3381031989001653713

/-! ## A044718.P582494984828066814

`A044338(n+1)-A014695(A044360(n+1))`
-/

namespace A044718.P582494984828066814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044338 (n + 1) - A014695 (A044360 (n + 1)).toNat

end

end A044718.P582494984828066814

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

/-! ## A044719.P11766940431754179247

`A044339(n+1)-A097325(A001844(n))`
-/

namespace A044719.P11766940431754179247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A097325 (A001844 n).toNat

end

end A044719.P11766940431754179247

/-! ## A044719.P13343765699068772302

`A044339(n+1)-A033999(A152749(n))`
-/

namespace A044719.P13343765699068772302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A033999 (A152749 n).toNat

end

end A044719.P13343765699068772302

/-! ## A044719.P4935741089899114376

`A044339(n+1)+A008836(A005385(n+1))`
-/

namespace A044719.P4935741089899114376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) + A008836 (A005385 (n + 1)).toNat

end

end A044719.P4935741089899114376

/-! ## A044719.P8162450595385923385

`A044339(n+1)+A008836(A006378(n+1))`
-/

namespace A044719.P8162450595385923385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) + A008836 (A006378 (n + 1)).toNat

end

end A044719.P8162450595385923385

/-! ## A044719.P8725472206698169013

`A044339(n+1)-A003415(A047936(n+1))`
-/

namespace A044719.P8725472206698169013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A003415 (A047936 (n + 1)).toNat

end

end A044719.P8725472206698169013

/-! ## A044719.P3672043673216190633

`A044339(n+1)+A008836(A062584(n))`
-/

namespace A044719.P3672043673216190633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) + A008836 (A062584 n).toNat

end

end A044719.P3672043673216190633

/-! ## A044719.P1074971400394225865

`A044339(n+1)-A001222(A059496(n+1))`
-/

namespace A044719.P1074971400394225865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A001222 (A059496 (n + 1)).toNat

end

end A044719.P1074971400394225865

/-! ## A044719.P3917168140612606804

`A044339(n+1)-A060576(A024410(n+1))`
-/

namespace A044719.P3917168140612606804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A060576 (A024410 (n + 1)).toNat

end

end A044719.P3917168140612606804

/-! ## A044719.P12022192915230085255

`(A044339(n+1)-1)*A057427(A230460(n+1))`
-/

namespace A044719.P12022192915230085255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044339 (n + 1) - 1) * A057427 (A230460 (n + 1)).toNat

end

end A044719.P12022192915230085255

/-! ## A044719.P14034086976962216125

`A044339(n+1)-A000035(A044726(n+1))`
-/

namespace A044719.P14034086976962216125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A000035 (A044726 (n + 1)).toNat

end

end A044719.P14034086976962216125

/-! ## A044719.P16084409362081475481

`A044339(n+1)-A014695(A044344(n+1))`
-/

namespace A044719.P16084409362081475481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A014695 (A044344 (n + 1)).toNat

end

end A044719.P16084409362081475481

/-! ## A044719.P18128799141704361805

`A044339(n+1)-A014695(A044348(n+1))`
-/

namespace A044719.P18128799141704361805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A014695 (A044348 (n + 1)).toNat

end

end A044719.P18128799141704361805

/-! ## A044719.P6821162573386673696

`A044339(n+1)-A014695(A044356(n+1))`
-/

namespace A044719.P6821162573386673696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A014695 (A044356 (n + 1)).toNat

end

end A044719.P6821162573386673696

/-! ## A044719.P15632398382471793029

`A044339(n+1)-A014695(A044360(n+1))`
-/

namespace A044719.P15632398382471793029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A014695 (A044360 (n + 1)).toNat

end

end A044719.P15632398382471793029

/-! ## A044719.P11867681648499004728

`A044339(n+1)-A014695(A044364(n+1))`
-/

namespace A044719.P11867681648499004728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A014695 (A044364 (n + 1)).toNat

end

end A044719.P11867681648499004728

/-! ## A044719.P16870060787050097217

`A044339(n+1)-A059841(A044346(n+1))`
-/

namespace A044719.P16870060787050097217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044339 (n + 1) - A059841 (A044346 (n + 1)).toNat

end

end A044719.P16870060787050097217

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

/-! ## A044720.P17931920247218869099

`A057428(A084684(n))+A044340(n+1)`
-/

namespace A044720.P17931920247218869099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A084684 n).toNat + A044340 (n + 1)

end

end A044720.P17931920247218869099

/-! ## A044720.P7988221774858441731

`A044340(n+1)+A033999(A342666(n+2))`
-/

namespace A044720.P7988221774858441731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (n + 1) + A033999 (A342666 (n + 2)).toNat

end

end A044720.P7988221774858441731

/-! ## A044720.P9259273868036327638

`A044340(C(n+1, n))-A057427(A084684(n))`
-/

namespace A044720.P9259273868036327638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (Nat.choose (n + 1) n) - A057427 (A084684 n).toNat

end

end A044720.P9259273868036327638

/-! ## A044720.P4696185388303951063

`A044340(-xor(n, -1))-A057427(A084684(n))`
-/

namespace A044720.P4696185388303951063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (-Int.xor (n : ℤ) (-1)).toNat - A057427 (A084684 n).toNat

end

end A044720.P4696185388303951063

/-! ## A044720.P12809604562598050428

`A044340(Δ[n²]-n)-A057427(A084684(n))`
-/

namespace A044720.P12809604562598050428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - A057427 (A084684 n).toNat

end

end A044720.P12809604562598050428

/-! ## A044720.P15465708149422529531

`A044340(n+1)-A000034(A342666(n+2)+1)`
-/

namespace A044720.P15465708149422529531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (n + 1) - A000034 (A342666 (n + 2) + 1).toNat

end

end A044720.P15465708149422529531

/-! ## A044720.P1047544277320796937

`A044340(n+1)%A044793(A084684(n)+1)-1`
-/

namespace A044720.P1047544277320796937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044340 (n + 1)) (A044793 (A084684 n + 1).toNat) - 1

end

end A044720.P1047544277320796937

/-! ## A044720.P14571574973381584553

`A044340(2*n+1-n)*A057427(A084684(n))-1`
-/

namespace A044720.P14571574973381584553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (2 * n + 1 - n) * A057427 (A084684 n).toNat - 1

end

end A044720.P14571574973381584553

/-! ## A044720.P16810843658933614437

`(A044340(n+1)-A057427(A084684(n)))*A033999(n)²`
-/

namespace A044720.P16810843658933614437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044340 (n + 1) - A057427 (A084684 n).toNat) * A033999 n ^ 2

end

end A044720.P16810843658933614437

/-! ## A044720.P13710758927666471916

`(A044340(n+1)-A057427(A084684(n)))%A017138(n)²`
-/

namespace A044720.P13710758927666471916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044340 (n + 1) - A057427 (A084684 n).toNat) (A017138 n ^ 2)

end

end A044720.P13710758927666471916

/-! ## A044720.P9935504539445700051

`A044340(n+1)+A033999(A006378(n+1))`
-/

namespace A044720.P9935504539445700051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (n + 1) + A033999 (A006378 (n + 1)).toNat

end

end A044720.P9935504539445700051

/-! ## A044720.P8742600932487787632

`(A044340(n+1)-A000035(A006378(n+1)))%A102618(n+1)`
-/

namespace A044720.P8742600932487787632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044340 (n + 1) - A000035 (A006378 (n + 1)).toNat) (A102618 (n + 1))

end

end A044720.P8742600932487787632

/-! ## A044720.P16589047788086419408

`A057428(A190717(n))+A044340(n+1)`
-/

namespace A044720.P16589047788086419408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A190717 n).toNat + A044340 (n + 1)

end

end A044720.P16589047788086419408

/-! ## A044720.P5518493106802505796

`(A044340(n+1)-A267773(A190717(n)))*A033999(n)²`
-/

namespace A044720.P5518493106802505796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044340 (n + 1) - A267773 (A190717 n).toNat) * A033999 n ^ 2

end

end A044720.P5518493106802505796

/-! ## A044720.P10898666287815194507

`(A044340(n+1)-A267773(A190717(n)))%A102618(n+1)`
-/

namespace A044720.P10898666287815194507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044340 (n + 1) - A267773 (A190717 n).toNat) (A102618 (n + 1))

end

end A044720.P10898666287815194507

/-! ## A044720.P9691632837604800083

`A044340(n+1)-A057427(A338988(n))`
-/

namespace A044720.P9691632837604800083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (n + 1) - A057427 (A338988 n).toNat

end

end A044720.P9691632837604800083

/-! ## A044720.P3861403287365819951

`A044340(n+1)-A001222(A002385(n+1))`
-/

namespace A044720.P3861403287365819951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (n + 1) - A001222 (A002385 (n + 1)).toNat

end

end A044720.P3861403287365819951

/-! ## A044720.P5228340321485665707

`A057428(A052330(n))+A044340(n+1)`
-/

namespace A044720.P5228340321485665707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A052330 n).toNat + A044340 (n + 1)

end

end A044720.P5228340321485665707

/-! ## A044720.P6461370922809942584

`A044340(n+1)+A033999(A131404(n))`
-/

namespace A044720.P6461370922809942584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (n + 1) + A033999 (A131404 n).toNat

end

end A044720.P6461370922809942584

/-! ## A044720.P6697086048818050783

`A044340(n+1)-A000035(A044726(n+1))`
-/

namespace A044720.P6697086048818050783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044340 (n + 1) - A000035 (A044726 (n + 1)).toNat

end

end A044720.P6697086048818050783

/-!
# A044721: Numbers n such that string 0,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044721, there is no canonical definition to state claims against.
-/

/-! ## A044721.P6713687921205871350

`A057428(A008669(n))+A044341(n+1)`
-/

namespace A044721.P6713687921205871350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008669 n).toNat + A044341 (n + 1)

end

end A044721.P6713687921205871350

/-! ## A044721.P14466262864191537030

`A057428(A205542(n))+A044341(n+1)`
-/

namespace A044721.P14466262864191537030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A205542 n).toNat + A044341 (n + 1)

end

end A044721.P14466262864191537030

/-! ## A044721.P11017082890058756710

`A057428(A263703(n+1))+A044341(n+1)`
-/

namespace A044721.P11017082890058756710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A263703 (n + 1)).toNat + A044341 (n + 1)

end

end A044721.P11017082890058756710

/-! ## A044721.P1503762440800414710

`A044341(n+1)-A010055(A053182(n+1))`
-/

namespace A044721.P1503762440800414710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A010055 (A053182 (n + 1)).toNat

end

end A044721.P1503762440800414710

/-! ## A044721.P13906168990830018352

`A044341(n+1)-A325133(A001134(n+1))`
-/

namespace A044721.P13906168990830018352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A325133 (A001134 (n + 1)).toNat

end

end A044721.P13906168990830018352

/-! ## A044721.P5973303494175546973

`A057428(A112505(3*n+2)+n)+A044341(n+1)`
-/

namespace A044721.P5973303494175546973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A112505 (3 * n + 2) + (n : ℤ)).toNat + A044341 (n + 1)

end

end A044721.P5973303494175546973

/-! ## A044721.P14983153145394784397

`A044341(n+1)-A000035(A178389(n+1))`
-/

namespace A044721.P14983153145394784397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A000035 (A178389 (n + 1)).toNat

end

end A044721.P14983153145394784397

/-! ## A044721.P2164987873431732504

`A057428(4*A220377(2*(n+4)))+A044341(n+1)`
-/

namespace A044721.P2164987873431732504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (4 * A220377 (2 * (n + 4))).toNat + A044341 (n + 1)

end

end A044721.P2164987873431732504

/-! ## A044721.P8718468084629360006

`A057428(A014255(n))+A044341(n+1)`
-/

namespace A044721.P8718468084629360006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A014255 n).toNat + A044341 (n + 1)

end

end A044721.P8718468084629360006

/-! ## A044721.P2516241607547236483

`A044341(n+1)-A000034(A077065(n+1))`
-/

namespace A044721.P2516241607547236483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A000034 (A077065 (n + 1)).toNat

end

end A044721.P2516241607547236483

/-! ## A044721.P6834131473426848124

`A044341(n+1)-A032741(A062584(n))`
-/

namespace A044721.P6834131473426848124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A032741 (A062584 n).toNat

end

end A044721.P6834131473426848124

/-! ## A044721.P6491661051509546144

`A044341(n+1)-A032741(A030291(n+1))`
-/

namespace A044721.P6491661051509546144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A032741 (A030291 (n + 1)).toNat

end

end A044721.P6491661051509546144

/-! ## A044721.P17701258396291044408

`A044341(n+1)-A057427(A088567(n))`
-/

namespace A044721.P17701258396291044408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A057427 (A088567 n).toNat

end

end A044721.P17701258396291044408

/-! ## A044721.P3281064285329159023

`A044341(n+1)-A000035(90*(n+1)-7)`
-/

namespace A044721.P3281064285329159023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A000035 (90 * (n + 1) - 7)

end

end A044721.P3281064285329159023

/-! ## A044721.P18006583462597191588

`A044341(n+1)-A040261(90*(n+1)-7)`
-/

namespace A044721.P18006583462597191588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A040261 (90 * (n + 1) - 7)

end

end A044721.P18006583462597191588

/-! ## A044721.P4707059416813626733

`A153881(A014410(n+2))+A044341(n+1)`
-/

namespace A044721.P4707059416813626733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A014410 (n + 2)).toNat + A044341 (n + 1)

end

end A044721.P4707059416813626733

/-! ## A044721.P15864377877826259296

`A044341(n+1)-A014695(A044344(n+1))`
-/

namespace A044721.P15864377877826259296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A014695 (A044344 (n + 1)).toNat

end

end A044721.P15864377877826259296

/-! ## A044721.P11384767711055548941

`A044341(n+1)-A014695(A044348(n+1))`
-/

namespace A044721.P11384767711055548941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A014695 (A044348 (n + 1)).toNat

end

end A044721.P11384767711055548941

/-! ## A044721.P15316854064302154895

`A044341(n+1)-A014695(A044356(n+1))`
-/

namespace A044721.P15316854064302154895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A014695 (A044356 (n + 1)).toNat

end

end A044721.P15316854064302154895

/-! ## A044721.P4061836572911031454

`A044341(n+1)-A014695(A044360(n+1))`
-/

namespace A044721.P4061836572911031454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044341 (n + 1) - A014695 (A044360 (n + 1)).toNat

end

end A044721.P4061836572911031454

/-!
# A044722: Numbers n such that string 0,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044722, there is no canonical definition to state claims against.
-/

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

/-! ## A044725.P17230473677453027028

`A044345(n+1)-A001222(A033844(n))`
-/

namespace A044725.P17230473677453027028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044345 (n + 1) - A001222 (A033844 n).toNat

end

end A044725.P17230473677453027028

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

/-! ## A044727.P11788566500186517719

`A057428(A206150(n+1))+A044347(n+1)`
-/

namespace A044727.P11788566500186517719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A206150 (n + 1)).toNat + A044347 (n + 1)

end

end A044727.P11788566500186517719

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

/-! ## A044728.P13834914139355405977

`A044348(n+1)-A057427(A100347(n))`
-/

namespace A044728.P13834914139355405977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044348 (n + 1) - A057427 (A100347 n).toNat

end

end A044728.P13834914139355405977

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

/-! ## A044729.P12312653925051167517

`A044349(n+1)-A001222(A014210(n))`
-/

namespace A044729.P12312653925051167517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044349 (n + 1) - A001222 (A014210 n).toNat

end

end A044729.P12312653925051167517

/-! ## A044729.P3664623959904410913

`A044349(n+1)-A001222(A104080(n))`
-/

namespace A044729.P3664623959904410913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044349 (n + 1) - A001222 (A104080 n).toNat

end

end A044729.P3664623959904410913

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

/-! ## A044731.P14587151127460952162

`A044351(n+1)-A008833(A249416(n))`
-/

namespace A044731.P14587151127460952162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044351 (n + 1) - A008833 (A249416 n).toNat

end

end A044731.P14587151127460952162

/-! ## A044731.P9836457276013273149

`A057428(A131109(n+1))+A044351(n+1)`
-/

namespace A044731.P9836457276013273149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A131109 (n + 1)).toNat + A044351 (n + 1)

end

end A044731.P9836457276013273149

/-! ## A044731.P4243596868239957671

`A057428(A324899(n+1))+A044351(n+1)`
-/

namespace A044731.P4243596868239957671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A324899 (n + 1)).toNat + A044351 (n + 1)

end

end A044731.P4243596868239957671

/-! ## A044731.P890068059380867132

`A044351(n+1)-A000688(A002385(n+1))`
-/

namespace A044731.P890068059380867132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044351 (n + 1) - A000688 (A002385 (n + 1)).toNat

end

end A044731.P890068059380867132

/-! ## A044731.P4726804179749476531

`A044351(n+1)-A000688(A285809(n+1))`
-/

namespace A044731.P4726804179749476531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044351 (n + 1) - A000688 (A285809 (n + 1)).toNat

end

end A044731.P4726804179749476531

/-!
# A044732: Numbers n such that string 1,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044732, there is no canonical definition to state claims against.
-/

/-! ## A044732.P14200952911891344469

`A228915(A044351(n+1))-9`
-/

namespace A044732.P14200952911891344469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (A044351 (n + 1)).toNat - 9

end

end A044732.P14200952911891344469

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

/-! ## A044732.P17291154434288879756

`A121040(n+1)-A110981(2*n+3)!`
-/

namespace A044732.P17291154434288879756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121040 (n + 1) - (Nat.factorial (A110981 (2 * n + 3)).toNat : ℤ)

end

end A044732.P17291154434288879756

/-! ## A044732.P8227913415335283540

`A057428(A055500(n))+A044352(n+1)`
-/

namespace A044732.P8227913415335283540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A055500 n).toNat + A044352 (n + 1)

end

end A044732.P8227913415335283540

/-! ## A044732.P18174575491038622159

`A121040(n+1)-A040001(A299290(n))`
-/

namespace A044732.P18174575491038622159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121040 (n + 1) - A040001 (A299290 n).toNat

end

end A044732.P18174575491038622159

/-!
# A044733: Numbers n such that string 2,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044733, there is no canonical definition to state claims against.
-/

/-! ## A044733.P3852008071778717409

`A228915(A044352(n+1)-9)`
-/

namespace A044733.P3852008071778717409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (A044352 (n + 1) - 9).toNat

end

end A044733.P3852008071778717409

/-! ## A044733.P16127065870775342368

`A044353(n+1)-A114567((12*n)²)`
-/

namespace A044733.P16127065870775342368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044353 (n + 1) - A114567 ((12 * n) ^ 2)

end

end A044733.P16127065870775342368

/-! ## A044733.P1545252268962977258

`(A044353(n+1)-1)%A105656(n+1)`
-/

namespace A044733.P1545252268962977258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044353 (n + 1) - 1) (A105656 (n + 1))

end

end A044733.P1545252268962977258

/-! ## A044733.P4417550149624986229

`A044353(n+1)-A115362(A002415(n))`
-/

namespace A044733.P4417550149624986229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044353 (n + 1) - A115362 (A002415 n).toNat

end

end A044733.P4417550149624986229

/-! ## A044733.P6113889763329116364

`A044353(n+1)-A001222(A003459(n+1))`
-/

namespace A044733.P6113889763329116364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044353 (n + 1) - A001222 (A003459 (n + 1)).toNat

end

end A044733.P6113889763329116364

/-!
# A044734: Numbers n such that string 2,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044734, there is no canonical definition to state claims against.
-/

/-! ## A044734.P11378693460484614452

`A309785(A001704(n+1))+A044353(n+1)`
-/

namespace A044734.P11378693460484614452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A001704 (n + 1)).toNat + A044353 (n + 1)

end

end A044734.P11378693460484614452

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

/-! ## A044736.P16592773454702187100

`A057428(A128320(n+2))+A044356(n+1)`
-/

namespace A044736.P16592773454702187100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A128320 (n + 2)).toNat + A044356 (n + 1)

end

end A044736.P16592773454702187100

/-! ## A044736.P13517538349733784442

`A057428(A217047(2*n+3))+A044356(n+1)`
-/

namespace A044736.P13517538349733784442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A217047 (2 * n + 3)).toNat + A044356 (n + 1)

end

end A044736.P13517538349733784442

/-! ## A044736.P3949109131295359133

`A044356(n+1)-A167965(n+1)^A140949(2*(n+2))`
-/

namespace A044736.P3949109131295359133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044356 (n + 1) : ℚ) - (A167965 (n + 1) : ℚ) ^ (A140949 (2 * (n + 2)) : ℤ)

end

end A044736.P3949109131295359133

/-! ## A044736.P16026321170329566316

`A057428(A128320(n)²)+A044356(n+1)`
-/

namespace A044736.P16026321170329566316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A128320 n ^ 2).toNat + A044356 (n + 1)

end

end A044736.P16026321170329566316

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

/-! ## A044737.P12295382814387578337

`A044357(n+1)-A085384(A000043(n+1))²`
-/

namespace A044737.P12295382814387578337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044357 (n + 1) - A085384 (A000043 (n + 1)).toNat ^ 2

end

end A044737.P12295382814387578337

/-! ## A044737.P2733279640843172200

`A044357(n+1)-A028422(A006094(n+1))`
-/

namespace A044737.P2733279640843172200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044357 (n + 1) - A028422 (A006094 (n + 1)).toNat

end

end A044737.P2733279640843172200

/-! ## A044737.P17484362589281365383

`A044357(n+1)-A001511(A023271(n+1))`
-/

namespace A044737.P17484362589281365383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044357 (n + 1) - A001511 (A023271 (n + 1)).toNat

end

end A044737.P17484362589281365383

/-! ## A044737.P1320978322977928020

`A085384(A000043(n+4))+A044357(n+1)`
-/

namespace A044737.P1320978322977928020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (A000043 (n + 4)).toNat + A044357 (n + 1)

end

end A044737.P1320978322977928020

/-! ## A044737.P2233024509552995941

`A044357(n+1)-A011655(A000384(3*n+1))`
-/

namespace A044737.P2233024509552995941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044357 (n + 1) - A011655 (A000384 (3 * n + 1)).toNat

end

end A044737.P2233024509552995941

/-!
# A044738: Numbers n such that string 2,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044738, there is no canonical definition to state claims against.
-/

/-! ## A044738.P9148208800924506281

`A044358(n+1)-A001222(A061248(n+1))`
-/

namespace A044738.P9148208800924506281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044358 (n + 1) - A001222 (A061248 (n + 1)).toNat

end

end A044738.P9148208800924506281

/-! ## A044738.P14223968359088282410

`A044358(n+1)-A059126(A187238(n+1))`
-/

namespace A044738.P14223968359088282410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044358 (n + 1) - A059126 (A187238 (n + 1)).toNat

end

end A044738.P14223968359088282410

/-! ## A044738.P10622630158797759331

`A044358(n+1)-A001222(A144755(n+1))`
-/

namespace A044738.P10622630158797759331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044358 (n + 1) - A001222 (A144755 (n + 1)).toNat

end

end A044738.P10622630158797759331

/-! ## A044738.P233601142584118822

`A113520(A044358(n+1))`
-/

namespace A044738.P233601142584118822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044358 (n + 1)).toNat

end

end A044738.P233601142584118822

/-! ## A044738.P8157295678849315611

`A044358(n+1)-A051904(A107694(n+1))`
-/

namespace A044738.P8157295678849315611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044358 (n + 1) - A051904 (A107694 (n + 1)).toNat

end

end A044738.P8157295678849315611

/-!
# A044739: Numbers n such that string 2,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044739, there is no canonical definition to state claims against.
-/

/-! ## A044739.P10604662573438644361

`A044359(n+1)-A056191(A000070(n))`
-/

namespace A044739.P10604662573438644361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044359 (n + 1) - A056191 (A000070 n).toNat

end

end A044739.P10604662573438644361

/-! ## A044739.P9090726798294021331

`A044359(n+1)-A133233(A271424(n))`
-/

namespace A044739.P9090726798294021331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044359 (n + 1) - A133233 (A271424 n).toNat

end

end A044739.P9090726798294021331

/-! ## A044739.P1931985513023464646

`A044359(n+1)-A097325(A107808(2*n+5))`
-/

namespace A044739.P1931985513023464646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044359 (n + 1) - A097325 (A107808 (2 * n + 5)).toNat

end

end A044739.P1931985513023464646

/-! ## A044739.P2232180028103556548

`A044359(n+1)-A001221(A217035(n+1))`
-/

namespace A044739.P2232180028103556548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044359 (n + 1) - A001221 (A217035 (n + 1)).toNat

end

end A044739.P2232180028103556548

/-! ## A044739.P14248029914022628475

`A044359(n+1)-A001222(A201828(n+2))`
-/

namespace A044739.P14248029914022628475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044359 (n + 1) - A001222 (A201828 (n + 2)).toNat

end

end A044739.P14248029914022628475

/-!
# A044740: Numbers n such that string 2,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044740, there is no canonical definition to state claims against.
-/

/-! ## A044740.P8866747993231180616

`A153881(A016069(n+1))+A044360(n+1)`
-/

namespace A044740.P8866747993231180616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A016069 (n + 1)).toNat + A044360 (n + 1)

end

end A044740.P8866747993231180616

/-! ## A044740.P13517939775874650907

`A044360(n+1)-A001222(A020627(n+1))`
-/

namespace A044740.P13517939775874650907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044360 (n + 1) - A001222 (A020627 (n + 1)).toNat

end

end A044740.P13517939775874650907

/-! ## A044740.P13030602570164729294

`A044360(n+1)-A000001(A006450(2*(n+2)))`
-/

namespace A044740.P13030602570164729294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044360 (n + 1) - A000001 (A006450 (2 * (n + 2))).toNat

end

end A044740.P13030602570164729294

/-! ## A044740.P8639375493775097637

`A153881(A051362(n+1))+A044360(n+1)`
-/

namespace A044740.P8639375493775097637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A051362 (n + 1)).toNat + A044360 (n + 1)

end

end A044740.P8639375493775097637

/-! ## A044740.P15153935154287276461

`A044360(n+1)-A008835(A064940(2*(n+2)))`
-/

namespace A044740.P15153935154287276461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044360 (n + 1) - A008835 (A064940 (2 * (n + 2))).toNat

end

end A044740.P15153935154287276461

/-!
# A044741: Numbers n such that string 2,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044741, there is no canonical definition to state claims against.
-/

/-! ## A044741.P17023706864912808666

`(A044361(n+1)-1)%A105654(n+1)`
-/

namespace A044741.P17023706864912808666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044361 (n + 1) - 1) (A105654 (n + 1))

end

end A044741.P17023706864912808666

/-! ## A044741.P12560529216090599176

`A044361(n+1)+A033999(A022166(n))`
-/

namespace A044741.P12560529216090599176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044361 (n + 1) + A033999 (A022166 n).toNat

end

end A044741.P12560529216090599176

/-! ## A044741.P680006504550507893

`A057428(A078121(n))+A044361(n+1)`
-/

namespace A044741.P680006504550507893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A078121 n).toNat + A044361 (n + 1)

end

end A044741.P680006504550507893

/-! ## A044741.P9382244459641776964

`A057428(A179982(n+1))+A044361(n+1)`
-/

namespace A044741.P9382244459641776964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A179982 (n + 1)).toNat + A044361 (n + 1)

end

end A044741.P9382244459641776964

/-! ## A044741.P4282279080871586909

`A057428(A205015(n+1))+A044361(n+1)`
-/

namespace A044741.P4282279080871586909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A205015 (n + 1)).toNat + A044361 (n + 1)

end

end A044741.P4282279080871586909

/-!
# A044742: Numbers n such that string 2,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044742, there is no canonical definition to state claims against.
-/

/-! ## A044742.P3537400526006877434

`A044362(n+1)-A000108(A151660(n))`
-/

namespace A044742.P3537400526006877434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044362 (n + 1) - A000108 (A151660 n).toNat

end

end A044742.P3537400526006877434

/-! ## A044742.P14133016448981765001

`A044362(n+1)-A001222(A020615(n+1))`
-/

namespace A044742.P14133016448981765001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044362 (n + 1) - A001222 (A020615 (n + 1)).toNat

end

end A044742.P14133016448981765001

/-! ## A044742.P6484200205519985925

`A044362(n+1)-A151660(n*A151660(n))`
-/

namespace A044742.P6484200205519985925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044362 (n + 1) - A151660 ((n : ℤ) * A151660 n).toNat

end

end A044742.P6484200205519985925

/-! ## A044742.P11001478612026053823

`A044362(n+1)-A057427(A001401(2*n+3))`
-/

namespace A044742.P11001478612026053823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044362 (n + 1) - A057427 (A001401 (2 * n + 3)).toNat

end

end A044742.P11001478612026053823

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

/-!
# A044743: Numbers n such that string 3,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044743, there is no canonical definition to state claims against.
-/

/-! ## A044743.P6828097220144082717

`A044363(n+1)-A033999(A001504(n))`
-/

namespace A044743.P6828097220144082717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044363 (n + 1) - A033999 (A001504 n).toNat

end

end A044743.P6828097220144082717

/-! ## A044743.P9139688106292331210

`A044363(n+1)+A033999(A001504(n)+1)`
-/

namespace A044743.P9139688106292331210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044363 (n + 1) + A033999 (A001504 n + 1).toNat

end

end A044743.P9139688106292331210

/-! ## A044743.P6565197868575782407

`A044363(n+1)-A329684(A044398(3*n+4))`
-/

namespace A044743.P6565197868575782407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044363 (n + 1) - A329684 (A044398 (3 * n + 4)).toNat

end

end A044743.P6565197868575782407

/-! ## A044743.P14140646664815038227

`(A044363(n+1)-1)%A105654(n+1)`
-/

namespace A044743.P14140646664815038227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044363 (n + 1) - 1) (A105654 (n + 1))

end

end A044743.P14140646664815038227

/-! ## A044743.P2887401294183288185

`A044363(n+1)-A001511(A023271(n+1))`
-/

namespace A044743.P2887401294183288185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044363 (n + 1) - A001511 (A023271 (n + 1)).toNat

end

end A044743.P2887401294183288185

/-!
# A044744: Numbers n such that string 3,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044744, there is no canonical definition to state claims against.
-/

/-! ## A044744.P12156057834928159892

`A044364(n+1)-A138191((3*n+1)²)`
-/

namespace A044744.P12156057834928159892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044364 (n + 1) - A138191 ((3 * n + 1) ^ 2)

end

end A044744.P12156057834928159892

/-! ## A044744.P8371744292166619994

`A057428(A293724(n))+A044364(n+1)`
-/

namespace A044744.P8371744292166619994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A293724 n).toNat + A044364 (n + 1)

end

end A044744.P8371744292166619994

/-! ## A044744.P14212554140628816766

`A044364(n+1)-A000265(A016116(n))`
-/

namespace A044744.P14212554140628816766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044364 (n + 1) - A000265 (A016116 n).toNat

end

end A044744.P14212554140628816766

/-! ## A044744.P13187687464989426441

`A044364(n+1)-A001221(A046006(n+1))`
-/

namespace A044744.P13187687464989426441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044364 (n + 1) - A001221 (A046006 (n + 1)).toNat

end

end A044744.P13187687464989426441

/-! ## A044744.P5813211896672892169

`A044364(n+1)-A043290(A270929(n+1))`
-/

namespace A044744.P5813211896672892169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044364 (n + 1) - A043290 (A270929 (n + 1)).toNat

end

end A044744.P5813211896672892169

/-!
# A044745: Numbers n such that string 3,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044745, there is no canonical definition to state claims against.
-/

/-! ## A044745.P635284053460921810

`A305223(A123071(n))+A044364(n+1)`
-/

namespace A044745.P635284053460921810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305223 (A123071 n).toNat + A044364 (n + 1)

end

end A044745.P635284053460921810

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

/-! ## A044747.P7139837635492865085

`A044367(n+1)-A057427(A005496(n))`
-/

namespace A044747.P7139837635492865085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044367 (n + 1) - A057427 (A005496 n).toNat

end

end A044747.P7139837635492865085

/-! ## A044747.P11500091858810325471

`A044367(n+1)-A007318(A185284(n))`
-/

namespace A044747.P11500091858810325471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044367 (n + 1) - A007318 (A185284 n).toNat

end

end A044747.P11500091858810325471

/-! ## A044747.P11153812133517522110

`A044367(n+1)-A057427(A224811(n))`
-/

namespace A044747.P11153812133517522110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044367 (n + 1) - A057427 (A224811 n).toNat

end

end A044747.P11153812133517522110

/-! ## A044747.P3749775993266150542

`A044367(n+1)-A001222(A159471(n+1))`
-/

namespace A044747.P3749775993266150542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044367 (n + 1) - A001222 (A159471 (n + 1)).toNat

end

end A044747.P3749775993266150542

/-!
# A044748: Numbers n such that string 3,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044748, there is no canonical definition to state claims against.
-/

/-! ## A044748.P6928114754757200069

`A044368(n+1)-A023533(A000292(n))`
-/

namespace A044748.P6928114754757200069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044368 (n + 1) - A023533 (A000292 n).toNat

end

end A044748.P6928114754757200069

/-! ## A044748.P15493966931794375423

`A044368(n+1)-A089608(A022166(n))`
-/

namespace A044748.P15493966931794375423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044368 (n + 1) - A089608 (A022166 n).toNat

end

end A044748.P15493966931794375423

/-! ## A044748.P485777986923718373

`A044368(n+1)-A172339(A233427(n))`
-/

namespace A044748.P485777986923718373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044368 (n + 1) - A172339 (A233427 n).toNat

end

end A044748.P485777986923718373

/-! ## A044748.P6645196939961132039

`A044368(n+1)+A033999(A158231(n+1))`
-/

namespace A044748.P6645196939961132039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044368 (n + 1) + A033999 (A158231 (n + 1)).toNat

end

end A044748.P6645196939961132039

/-! ## A044748.P12947168916763511951

`A044368(n+1)-A329684(A044360(3*n+1))`
-/

namespace A044748.P12947168916763511951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044368 (n + 1) - A329684 (A044360 (3 * n + 1)).toNat

end

end A044748.P12947168916763511951

/-!
# A044749: Numbers n such that string 3,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044749, there is no canonical definition to state claims against.
-/

/-! ## A044749.P7185783431196204453

`A057428(A000125(n))+A044369(n+1)`
-/

namespace A044749.P7185783431196204453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000125 n).toNat + A044369 (n + 1)

end

end A044749.P7185783431196204453

/-! ## A044749.P14637608467862089081

`A057428(A218509(n))+A044369(n+1)`
-/

namespace A044749.P14637608467862089081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A218509 n).toNat + A044369 (n + 1)

end

end A044749.P14637608467862089081

/-! ## A044749.P16402408951448915442

`A057428(A331562(n))+A044369(n+1)`
-/

namespace A044749.P16402408951448915442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A331562 n).toNat + A044369 (n + 1)

end

end A044749.P16402408951448915442

/-! ## A044749.P13566346486474743509

`A057428(A347574(n))+A044369(n+1)`
-/

namespace A044749.P13566346486474743509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A347574 (n + 28)).toNat + A044369 (n + 1)

end

end A044749.P13566346486474743509

/-! ## A044749.P12148367236206448123

`A057428(A240153(n+1))+A044369(n+1)`
-/

namespace A044749.P12148367236206448123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A240153 (n + 1)).toNat + A044369 (n + 1)

end

end A044749.P12148367236206448123

/-!
# A044750: Numbers n such that string 3,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044750, there is no canonical definition to state claims against.
-/

/-! ## A044750.P5947117533804831600

`A057428(A005897(n))+A044370(n+1)`
-/

namespace A044750.P5947117533804831600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A005897 n).toNat + A044370 (n + 1)

end

end A044750.P5947117533804831600

/-! ## A044750.P14986698822434486172

`A057428(A054252(n))+A044370(n+1)`
-/

namespace A044750.P14986698822434486172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A054252 n).toNat + A044370 (n + 1)

end

end A044750.P14986698822434486172

/-! ## A044750.P7349001135281935950

`A057428(A080859(n))+A044370(n+1)`
-/

namespace A044750.P7349001135281935950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A080859 n).toNat + A044370 (n + 1)

end

end A044750.P7349001135281935950

/-! ## A044750.P18033458490019905065

`A057428(A169808(n))+A044370(n+1)`
-/

namespace A044750.P18033458490019905065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A169808 n).toNat + A044370 (n + 1)

end

end A044750.P18033458490019905065

/-! ## A044750.P3995801666413265822

`A057428(A244500(n+1))+A044370(n+1)`
-/

namespace A044750.P3995801666413265822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A244500 (n + 1)).toNat + A044370 (n + 1)

end

end A044750.P3995801666413265822

/-!
# A044751: Numbers n such that string 3,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044751, there is no canonical definition to state claims against.
-/

/-! ## A044751.P2926517808543469509

`A044371(n+1)-A001222(A309354(n+1))`
-/

namespace A044751.P2926517808543469509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044371 (n + 1) - A001222 (A309354 (n + 1)).toNat

end

end A044751.P2926517808543469509

/-! ## A044751.P1666354578195959589

`A044371(n+1)-A010051(A309354(n+2))`
-/

namespace A044751.P1666354578195959589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044371 (n + 1) - A010051 (A309354 (n + 2)).toNat

end

end A044751.P1666354578195959589

/-! ## A044751.P10755894646534481189

`A057428(A272919(n+1))+A044371(n+1)`
-/

namespace A044751.P10755894646534481189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A272919 (n + 1)).toNat + A044371 (n + 1)

end

end A044751.P10755894646534481189

/-! ## A044751.P1432802412393407440

`A044371(n+1)-A329684(A044360(3*n+1))`
-/

namespace A044751.P1432802412393407440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044371 (n + 1) - A329684 (A044360 (3 * n + 1)).toNat

end

end A044751.P1432802412393407440

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

/-! ## A044752.P2242340700412584014

`A044372(n+1)-A001222(A100697(n+1))`
-/

namespace A044752.P2242340700412584014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044372 (n + 1) - A001222 (A100697 (n + 1)).toNat

end

end A044752.P2242340700412584014

/-! ## A044752.P18211538881682991676

`A044372(n+1)-A001222(A125873(n+1))`
-/

namespace A044752.P18211538881682991676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044372 (n + 1) - A001222 (A125873 (n + 1)).toNat

end

end A044752.P18211538881682991676

/-! ## A044752.P7628725193949398462

`A044372(n+1)+1-A111627(2*(n+2))`
-/

namespace A044752.P7628725193949398462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044372 (n + 1) + 1 - A111627 (2 * (n + 2))

end

end A044752.P7628725193949398462

/-! ## A044752.P14255750424542564082

`A044372(n+1)-A023533(A000292(n))`
-/

namespace A044752.P14255750424542564082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044372 (n + 1) - A023533 (A000292 n).toNat

end

end A044752.P14255750424542564082

/-! ## A044752.P17798120368254804913

`A044372(n+1)-A329684(A044360(3*n+1))`
-/

namespace A044752.P17798120368254804913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044372 (n + 1) - A329684 (A044360 (3 * n + 1)).toNat

end

end A044752.P17798120368254804913

/-!
# A044753: Numbers n such that string 4,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044753, there is no canonical definition to state claims against.
-/

/-! ## A044753.P10717975061320252831

`(A044373(n+1)-1)%A253054(n+1)`
-/

namespace A044753.P10717975061320252831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044373 (n + 1) - 1) (A253054 (n + 1))

end

end A044753.P10717975061320252831

/-! ## A044753.P8886393175318277741

`A057428(A094598(n+1))+A044373(n+1)`
-/

namespace A044753.P8886393175318277741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A094598 (n + 1)).toNat + A044373 (n + 1)

end

end A044753.P8886393175318277741

/-! ## A044753.P13738186528152269761

`A044373(n+1)-A008966(A006970(n+1))`
-/

namespace A044753.P13738186528152269761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044373 (n + 1) - A008966 (A006970 (n + 1)).toNat

end

end A044753.P13738186528152269761

/-! ## A044753.P111211650859342360

`A044373(n+1)-A008966(A253054(n+1))`
-/

namespace A044753.P111211650859342360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044373 (n + 1) - A008966 (A253054 (n + 1)).toNat

end

end A044753.P111211650859342360

/-! ## A044753.P9552689204684267713

`A044373(n+1)-A329684(A044360(3*n+1))`
-/

namespace A044753.P9552689204684267713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044373 (n + 1) - A329684 (A044360 (3 * n + 1)).toNat

end

end A044753.P9552689204684267713

/-!
# A044754: Numbers n such that string 4,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044754, there is no canonical definition to state claims against.
-/

/-! ## A044754.P705372650229935814

`A044374(n+1)-A001222(A345293(n+1))`
-/

namespace A044754.P705372650229935814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044374 (n + 1) - A001222 (A345293 (n + 1)).toNat

end

end A044754.P705372650229935814

/-! ## A044754.P1369023139121792308

`A044374(n+1)-gcd(A000040(n+1), A329070(n))`
-/

namespace A044754.P1369023139121792308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044374 (n + 1) - (Int.gcd (A000040 (n + 1)) (A329070 n) : ℤ)

end

end A044754.P1369023139121792308

/-! ## A044754.P16201796778340912541

`A044374(n+1)+A008683(A000043(n+1))`
-/

namespace A044754.P16201796778340912541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044374 (n + 1) + A008683 (A000043 (n + 1)).toNat

end

end A044754.P16201796778340912541

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

/-! ## A044755.P7205170965016853558

`A044375(n+1)-A001222(A145991(n+1))`
-/

namespace A044755.P7205170965016853558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044375 (n + 1) - A001222 (A145991 (n + 1)).toNat

end

end A044755.P7205170965016853558

/-! ## A044755.P3566236204526470045

`A044375(n+1)-A001222(A260335(n+1))`
-/

namespace A044755.P3566236204526470045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044375 (n + 1) - A001222 (A260335 (n + 1)).toNat

end

end A044755.P3566236204526470045

/-! ## A044755.P13862574430979720322

`A044375(n+1)-A057427(A267338(n+1))`
-/

namespace A044755.P13862574430979720322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044375 (n + 1) - A057427 (A267338 (n + 1)).toNat

end

end A044755.P13862574430979720322

/-! ## A044755.P5753075923691798690

`A044375(n+1)-A001222(A344282(n+1))`
-/

namespace A044755.P5753075923691798690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044375 (n + 1) - A001222 (A344282 (n + 1)).toNat

end

end A044755.P5753075923691798690

/-! ## A044755.P1034342225202235777

`(A044375(n+1)-1)%A226448(n+1)`
-/

namespace A044755.P1034342225202235777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044375 (n + 1) - 1) (A226448 (n + 1))

end

end A044755.P1034342225202235777

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

/-! ## A044758.P17581214473107751081

`A165795(∑[n+1])+A044378(n+1)`
-/

namespace A044758.P17581214473107751081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (∑ j ∈ Finset.range (n + 1), f1 j) + A044378 (n + 1)

end

end A044758.P17581214473107751081

/-! ## A044758.P1082508850803669649

`A044378(n+1)-A144436(∑[n]+1)`
-/

namespace A044758.P1082508850803669649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044378 (n + 1) - A144436 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A044758.P1082508850803669649

/-! ## A044758.P12729552975054913235

`A057428(A309010(n))+A044378(n+1)`
-/

namespace A044758.P12729552975054913235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A309010 n).toNat + A044378 (n + 1)

end

end A044758.P12729552975054913235

/-! ## A044758.P12316776121278140504

`A044378(n+1)-A033999(A060626(n))`
-/

namespace A044758.P12316776121278140504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044378 (n + 1) - A033999 (A060626 n).toNat

end

end A044758.P12316776121278140504

/-! ## A044758.P17551149780141367296

`A044378(n+1)-A046079(A231652(n+1))`
-/

namespace A044758.P17551149780141367296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044378 (n + 1) - A046079 (A231652 (n + 1)).toNat

end

end A044758.P17551149780141367296

/-! ## A044758.P6216255490301796397

`A044378(n+1)-A014963(A283621(n+1))`
-/

namespace A044758.P6216255490301796397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044378 (n + 1) - A014963 (A283621 (n + 1)).toNat

end

end A044758.P6216255490301796397

/-! ## A044758.P11948964625951454673

`A044378(n+1)-A001222(A300777(n+1))`
-/

namespace A044758.P11948964625951454673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044378 (n + 1) - A001222 (A300777 (n + 1)).toNat

end

end A044758.P11948964625951454673

/-!
# A044759: Numbers n such that string 4,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044759, there is no canonical definition to state claims against.
-/

/-! ## A044759.P8820543801470857546

`A044379(n+1)-A094404(2*n+5)`
-/

namespace A044759.P8820543801470857546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044379 (n + 1) - A094404 (2 * n + 5)

end

end A044759.P8820543801470857546

/-! ## A044759.P13515471835791131586

`A044379(n+1)+A008683(A088987(n+1))`
-/

namespace A044759.P13515471835791131586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044379 (n + 1) + A008683 (A088987 (n + 1)).toNat

end

end A044759.P13515471835791131586

/-! ## A044759.P8171493852445243388

`A044379(n+1)-A001511(A214496(n+1))`
-/

namespace A044759.P8171493852445243388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044379 (n + 1) - A001511 (A214496 (n + 1)).toNat

end

end A044759.P8171493852445243388

/-! ## A044759.P1751838025334742189

`A044379(n+1)-A329379(A176983(n+5))`
-/

namespace A044759.P1751838025334742189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044379 (n + 1) - A329379 (A176983 (n + 5)).toNat

end

end A044759.P1751838025334742189

/-! ## A044759.P11053897923522438573

`A044379(n+1)-A040001(p?[A044379(n+1)])`
-/

namespace A044759.P11053897923522438573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044379 (n + 1) - A040001 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A044759.P11053897923522438573

/-! ## A044759.P12613977657209368666

`A044379(n+1)-A144436(∑[n]+1)`
-/

namespace A044759.P12613977657209368666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044379 (n + 1) - A144436 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A044759.P12613977657209368666

/-!
# A044760: Numbers n such that string 4,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044760, there is no canonical definition to state claims against.
-/

/-! ## A044760.P1739878354742485165

`A057428(A028364(n))+A044380(n+1)`
-/

namespace A044760.P1739878354742485165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A028364 n).toNat + A044380 (n + 1)

end

end A044760.P1739878354742485165

/-! ## A044760.P7434596473733423779

`A057428(A025475(n+1))+A044380(n+1)`
-/

namespace A044760.P7434596473733423779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A025475 (n + 1)).toNat + A044380 (n + 1)

end

end A044760.P7434596473733423779

/-! ## A044760.P239874216675310160

`A044380(n+1)+A008836(A127430(n+1))`
-/

namespace A044760.P239874216675310160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044380 (n + 1) + A008836 (A127430 (n + 1)).toNat

end

end A044760.P239874216675310160

/-! ## A044760.P12007838466372115333

`A044380(n+1)+A008836(A213894(n+1))`
-/

namespace A044760.P12007838466372115333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044380 (n + 1) + A008836 (A213894 (n + 1)).toNat

end

end A044760.P12007838466372115333

/-! ## A044760.P12249512610595537005

`A044380(n+1)-A054977(A182636(n+1))`
-/

namespace A044760.P12249512610595537005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044380 (n + 1) - A054977 (A182636 (n + 1)).toNat

end

end A044760.P12249512610595537005

/-! ## A044760.P7909873256743364476

`A044380(n+1)+A008683(A098420(n+5))`
-/

namespace A044760.P7909873256743364476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044380 (n + 1) + A008683 (A098420 (n + 5)).toNat

end

end A044760.P7909873256743364476

/-!
# A044761: Numbers n such that string 4,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044761, there is no canonical definition to state claims against.
-/

/-! ## A044761.P17274223844603058069

`A044381(n+1)-A094404(Δ[n²])`
-/

namespace A044761.P17274223844603058069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (n + 1) - A094404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A044761.P17274223844603058069

/-! ## A044761.P13264862513596771124

`A044381(ϕ²-(ϕ-n))-A094404(Δ[n²])²`
-/

namespace A044761.P13264862513596771124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - A094404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A044761.P13264862513596771124

/-! ## A044761.P11310869846672851422

`A044381(n+1)-A057427(A036561(n))`
-/

namespace A044761.P11310869846672851422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (n + 1) - A057427 (A036561 n).toNat

end

end A044761.P11310869846672851422

/-! ## A044761.P11821700607705515613

`A044381(n+1)-A057427(A121207(n))`
-/

namespace A044761.P11821700607705515613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (n + 1) - A057427 (A121207 n).toNat

end

end A044761.P11821700607705515613

/-! ## A044761.P7074470557756457321

`A044381(n+1)-A057427(A191226(n))`
-/

namespace A044761.P7074470557756457321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (n + 1) - A057427 (A191226 n).toNat

end

end A044761.P7074470557756457321

/-! ## A044761.P17167051951487509377

`A044381(n+1)+A033999(A142317(n+1))`
-/

namespace A044761.P17167051951487509377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (n + 1) + A033999 (A142317 (n + 1)).toNat

end

end A044761.P17167051951487509377

/-! ## A044761.P8938053495413203015

`A044381(n+1)+A033999(A142318(n+1))`
-/

namespace A044761.P8938053495413203015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (n + 1) + A033999 (A142318 (n + 1)).toNat

end

end A044761.P8938053495413203015

/-! ## A044761.P2055453931987011739

`A044381(n+1)+A033999(A142321(n+1))`
-/

namespace A044761.P2055453931987011739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (n + 1) + A033999 (A142321 (n + 1)).toNat

end

end A044761.P2055453931987011739

/-! ## A044761.P2637651649335031890

`A044381(n+1)-A001222(A154498(n+1))`
-/

namespace A044761.P2637651649335031890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044381 (n + 1) - A001222 (A154498 (n + 1)).toNat

end

end A044761.P2637651649335031890

/-!
# A044762: Numbers n such that string 4,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044762, there is no canonical definition to state claims against.
-/

/-! ## A044762.P16539777115487592303

`A082551(A059268(n)²)+A044382(n+1)`
-/

namespace A044762.P16539777115487592303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A059268 n ^ 2).toNat + A044382 (n + 1)

end

end A044762.P16539777115487592303

/-! ## A044762.P8697626689111789864

`A082551(A032919(n+1))+A044382(n+1)`
-/

namespace A044762.P8697626689111789864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A032919 (n + 1)).toNat + A044382 (n + 1)

end

end A044762.P8697626689111789864

/-! ## A044762.P18141548668513884605

`A044382(n+1)-A001221(A173040(n+1))`
-/

namespace A044762.P18141548668513884605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044382 (n + 1) - A001221 (A173040 (n + 1)).toNat

end

end A044762.P18141548668513884605

/-! ## A044762.P6004064711498501101

`A044382(n+1)-A001222(A176671(n+1))`
-/

namespace A044762.P6004064711498501101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044382 (n + 1) - A001222 (A176671 (n + 1)).toNat

end

end A044762.P6004064711498501101

/-! ## A044762.P3010720703774025141

`A044382(n+1)-A001222(A176676(n+1))`
-/

namespace A044762.P3010720703774025141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044382 (n + 1) - A001222 (A176676 (n + 1)).toNat

end

end A044762.P3010720703774025141

/-! ## A044762.P7947887447086050040

`A044382(n+1)-A001222(A193507(n+1))`
-/

namespace A044762.P7947887447086050040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044382 (n + 1) - A001222 (A193507 (n + 1)).toNat

end

end A044762.P7947887447086050040

/-! ## A044762.P2697989345570819479

`A044382(n+1)-A001222(A087201(n+3))`
-/

namespace A044762.P2697989345570819479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044382 (n + 1) - A001222 (A087201 (n + 3)).toNat

end

end A044762.P2697989345570819479

/-!
# A044763: Numbers n such that string 5,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044763, there is no canonical definition to state claims against.
-/

/-! ## A044763.P1865604948659600333

`A140106(2*A044383(n+1))`
-/

namespace A044763.P1865604948659600333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A044383 (n + 1)).toNat

end

end A044763.P1865604948659600333

/-! ## A044763.P965841615442920361

`A267182(2*A044383(n+1))`
-/

namespace A044763.P965841615442920361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * A044383 (n + 1)).toNat

end

end A044763.P965841615442920361

/-! ## A044763.P7619260881623106152

`A004526(2*A044383(n+1)-1)`
-/

namespace A044763.P7619260881623106152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A044383 (n + 1) - 1).toNat

end

end A044763.P7619260881623106152

/-! ## A044763.P18434589533155286512

`A008619(2*(A044383(n+1)-2))`
-/

namespace A044763.P18434589533155286512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (A044383 (n + 1) - 2)).toNat

end

end A044763.P18434589533155286512

/-! ## A044763.P4137684924724593829

`A052938(2*(A044383(n+1)-2))`
-/

namespace A044763.P4137684924724593829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * (A044383 (n + 1) - 2)).toNat

end

end A044763.P4137684924724593829

/-! ## A044763.P8862293885156545142

`A080513(2*(A044383(n+1)-2))`
-/

namespace A044763.P8862293885156545142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * (A044383 (n + 1) - 2)).toNat

end

end A044763.P8862293885156545142

/-! ## A044763.P8569293137385827809

`A133622(2*(A044383(n+1)-2))`
-/

namespace A044763.P8569293137385827809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (2 * (A044383 (n + 1) - 2)).toNat

end

end A044763.P8569293137385827809

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

/-! ## A044763.P15574928753520987775

`A044383(n+1)-A102828(n)%2`
-/

namespace A044763.P15574928753520987775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044383 (n + 1) - Int.tmod (A102828 n) 2

end

end A044763.P15574928753520987775

/-!
# A044764: Numbers n such that string 5,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044764, there is no canonical definition to state claims against.
-/

/-! ## A044764.P15463726949549693113

`A044384(n+1)-A250216(n+1)%2`
-/

namespace A044764.P15463726949549693113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) - Int.tmod (A250216 (n + 1)) 2

end

end A044764.P15463726949549693113

/-! ## A044764.P11932045371321653691

`A044384(n+1)-floor(atan(A090471(n+1)))`
-/

namespace A044764.P11932045371321653691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) - ⌊Real.arctan (A090471 (n + 1) : ℝ)⌋

end

end A044764.P11932045371321653691

/-! ## A044764.P10775298749562526831

`A044384(n+1)-A001222(A081220(n+1))`
-/

namespace A044764.P10775298749562526831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) - A001222 (A081220 (n + 1)).toNat

end

end A044764.P10775298749562526831

/-! ## A044764.P7906893104097281034

`A044384(n+1)-A001222(A090471(n+1))`
-/

namespace A044764.P7906893104097281034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) - A001222 (A090471 (n + 1)).toNat

end

end A044764.P7906893104097281034

/-! ## A044764.P16131767709834567066

`A044384(n+1)-A001222(A232085(n+1))`
-/

namespace A044764.P16131767709834567066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) - A001222 (A232085 (n + 1)).toNat

end

end A044764.P16131767709834567066

/-! ## A044764.P4450578084164544350

`A044384(n+1)-A001222(A250216(n+1))`
-/

namespace A044764.P4450578084164544350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) - A001222 (A250216 (n + 1)).toNat

end

end A044764.P4450578084164544350

/-! ## A044764.P5490603711655493126

`A044384(n+1)-A165022(A154576(n+1))`
-/

namespace A044764.P5490603711655493126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) - A165022 (A154576 (n + 1)).toNat

end

end A044764.P5490603711655493126

/-!
# A044765: Numbers n such that string 5,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044765, there is no canonical definition to state claims against.
-/

/-! ## A044765.P1922108998345372414

`A044385(n+1)-A028234(A000353(n+1))`
-/

namespace A044765.P1922108998345372414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044385 (n + 1) - A028234 (A000353 (n + 1)).toNat

end

end A044765.P1922108998345372414

/-! ## A044765.P4149508266194245306

`A044385(n+1)-A001222(A124114(n+1))`
-/

namespace A044765.P4149508266194245306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044385 (n + 1) - A001222 (A124114 (n + 1)).toNat

end

end A044765.P4149508266194245306

/-! ## A044765.P12495444036314293463

`A044385(n+1)-A001222(A172039(n+1))`
-/

namespace A044765.P12495444036314293463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044385 (n + 1) - A001222 (A172039 (n + 1)).toNat

end

end A044765.P12495444036314293463

/-! ## A044765.P10277979817575481552

`A044385(n+1)-A001222(A174048(n+1))`
-/

namespace A044765.P10277979817575481552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044385 (n + 1) - A001222 (A174048 (n + 1)).toNat

end

end A044765.P10277979817575481552

/-! ## A044765.P5414700807917433384

`A044385(n+1)-A057427(A140340(n+1))`
-/

namespace A044765.P5414700807917433384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044385 (n + 1) - A057427 (A140340 (n + 1)).toNat

end

end A044765.P5414700807917433384

/-!
# A044766: Numbers n such that string 5,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044766, there is no canonical definition to state claims against.
-/

/-! ## A044766.P3836835699348569042

`A044386(n+1)-A169744(n+1)%2`
-/

namespace A044766.P3836835699348569042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044386 (n + 1) - Int.tmod (A169744 (n + 1)) 2

end

end A044766.P3836835699348569042

/-! ## A044766.P7632233212693207921

`A057428(Δ[n^3]+n)+A044386(n+1)`
-/

namespace A044766.P7632233212693207921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat + A044386 (n + 1)

end

end A044766.P7632233212693207921

/-! ## A044766.P10715024017221568566

`A044386(n+1)-A001511(A003215(n))`
-/

namespace A044766.P10715024017221568566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044386 (n + 1) - A001511 (A003215 n).toNat

end

end A044766.P10715024017221568566

/-! ## A044766.P12983006512300743986

`A044386(n+1)-A001222(A092102(n+1))`
-/

namespace A044766.P12983006512300743986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044386 (n + 1) - A001222 (A092102 (n + 1)).toNat

end

end A044766.P12983006512300743986

/-! ## A044766.P5383888284256787682

`A044386(n+1)-A011655(A169744(n+1))`
-/

namespace A044766.P5383888284256787682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044386 (n + 1) - A011655 (A169744 (n + 1)).toNat

end

end A044766.P5383888284256787682

/-! ## A044766.P10645937764348330167

`A044386(n+1)-A054977(A137910(n+1))`
-/

namespace A044766.P10645937764348330167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044386 (n + 1) - A054977 (A137910 (n + 1)).toNat

end

end A044766.P10645937764348330167

/-!
# A044767: Numbers k such that string 5,4 occurs in the base 10 representation of k but not of k+1.

The programs for A044767, there is no canonical definition to state claims against.
-/

/-! ## A044767.P3038493449639397102

`A333947(A011782(n))+A044386(n+1)`
-/

namespace A044767.P3038493449639397102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A011782 n).toNat + A044386 (n + 1)

end

end A044767.P3038493449639397102

/-! ## A044767.P18353459187330278205

`A147139(A160632(n))+A044385(n+1)`
-/

namespace A044767.P18353459187330278205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147139 (A160632 n).toNat + A044385 (n + 1)

end

end A044767.P18353459187330278205

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

/-! ## A044769.P9957738292915659784

`A044389(n+1)-A057427(A006501(n))`
-/

namespace A044769.P9957738292915659784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A057427 (A006501 n).toNat

end

end A044769.P9957738292915659784

/-! ## A044769.P16815373661660885644

`A044389(n+1)-A057427(A008107(n))`
-/

namespace A044769.P16815373661660885644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A057427 (A008107 n).toNat

end

end A044769.P16815373661660885644

/-! ## A044769.P15074086901385734769

`A044389(n+1)-A057427(A008194(n))`
-/

namespace A044769.P15074086901385734769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A057427 (A008194 n).toNat

end

end A044769.P15074086901385734769

/-! ## A044769.P5786741286824429109

`A134824(A058198(n+1))+A044389(n+1)`
-/

namespace A044769.P5786741286824429109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A058198 (n + 1)).toNat + A044389 (n + 1)

end

end A044769.P5786741286824429109

/-! ## A044769.P2339491547350942602

`A044389(n+1)-A001222(A193934(n+1))`
-/

namespace A044769.P2339491547350942602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A001222 (A193934 (n + 1)).toNat

end

end A044769.P2339491547350942602

/-! ## A044769.P2616292956075776047

`A044389(n+1)-A001222(A321069(n+1))`
-/

namespace A044769.P2616292956075776047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A001222 (A321069 (n + 1)).toNat

end

end A044769.P2616292956075776047

/-! ## A044769.P13784284765092482145

`A044389(n+1)-A001222(A238256(n+2))`
-/

namespace A044769.P13784284765092482145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A001222 (A238256 (n + 2)).toNat

end

end A044769.P13784284765092482145

/-!
# A044770: Numbers n such that string 5,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044770, there is no canonical definition to state claims against.
-/

/-! ## A044770.P1889845728957237756

`A044390(n+1)-A151934(n)!`
-/

namespace A044770.P1889845728957237756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) - (Nat.factorial (A151934 n).toNat : ℤ)

end

end A044770.P1889845728957237756

/-! ## A044770.P5792542783808257584

`A044390(n+1)-A151935(n)!`
-/

namespace A044770.P5792542783808257584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) - (Nat.factorial (A151935 n).toNat : ℤ)

end

end A044770.P5792542783808257584

/-! ## A044770.P16497900190760033453

`A044390(n+1)-A349169(n+1)%2`
-/

namespace A044770.P16497900190760033453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) - Int.tmod (A349169 (n + 1)) 2

end

end A044770.P16497900190760033453

/-! ## A044770.P3521520583463524648

`A044390(n+1)-A000364(A151935(n)²)`
-/

namespace A044770.P3521520583463524648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) - A000364 (A151935 n ^ 2).toNat

end

end A044770.P3521520583463524648

/-! ## A044770.P3615964595991929025

`A044390(n+1)-A000670(A151935(n)²)`
-/

namespace A044770.P3615964595991929025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) - A000670 (A151935 n ^ 2).toNat

end

end A044770.P3615964595991929025

/-! ## A044770.P9425743280106579247

`A044390(n+1)-A007318(A151935(n)²)`
-/

namespace A044770.P9425743280106579247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) - A007318 (A151935 n ^ 2).toNat

end

end A044770.P9425743280106579247

/-! ## A044770.P5759026506928416557

`A044390(n+1)+A033999(A151934(n)!)`
-/

namespace A044770.P5759026506928416557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) + A033999 (Nat.factorial (A151934 n).toNat)

end

end A044770.P5759026506928416557

/-! ## A044770.P13493107509368667680

`A044390(n+1)+A033999(A151935(n)!)`
-/

namespace A044770.P13493107509368667680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) + A033999 (Nat.factorial (A151935 n).toNat)

end

end A044770.P13493107509368667680

/-! ## A044770.P5048937914199596845

`A044390(n+1)-A007318(A151935(n)+1)`
-/

namespace A044770.P5048937914199596845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) - A007318 (A151935 n + 1).toNat

end

end A044770.P5048937914199596845

/-! ## A044770.P11409149607537174368

`A044390(n+1)-A001222(A352443(n+1))`
-/

namespace A044770.P11409149607537174368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) - A001222 (A352443 (n + 1)).toNat

end

end A044770.P11409149607537174368

/-!
# A044771: Numbers n such that string 5,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044771, there is no canonical definition to state claims against.
-/

/-! ## A044771.P11342039409651484418

`A044391(n+1)-A054977(A008259(n))`
-/

namespace A044771.P11342039409651484418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044391 (n + 1) - A054977 (A008259 n).toNat

end

end A044771.P11342039409651484418

/-! ## A044771.P7946699084080748397

`A044391(n+1)-A054977(A014413(n+1))`
-/

namespace A044771.P7946699084080748397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044391 (n + 1) - A054977 (A014413 (n + 1)).toNat

end

end A044771.P7946699084080748397

/-! ## A044771.P17255757444927989568

`A044391(n+1)-A001222(A110028(n+1))`
-/

namespace A044771.P17255757444927989568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044391 (n + 1) - A001222 (A110028 (n + 1)).toNat

end

end A044771.P17255757444927989568

/-! ## A044771.P3590414248822786861

`A044391(n+1)-A057427(A085735(n+1))`
-/

namespace A044771.P3590414248822786861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044391 (n + 1) - A057427 (A085735 (n + 1)).toNat

end

end A044771.P3590414248822786861

/-! ## A044771.P4491794077766945170

`A044391(n+1)-A001222(A196924(n+1))`
-/

namespace A044771.P4491794077766945170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044391 (n + 1) - A001222 (A196924 (n + 1)).toNat

end

end A044771.P4491794077766945170

/-! ## A044771.P15654282337519214970

`A044391(n+1)-A001222(A347337(n+1))`
-/

namespace A044771.P15654282337519214970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044391 (n + 1) - A001222 (A347337 (n + 1)).toNat

end

end A044771.P15654282337519214970

/-!
# A044772: Numbers n such that string 5,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044772, there is no canonical definition to state claims against.
-/

/-! ## A044772.P14110180533949320570

`A044392(n+1)-A040271(A246325(n))`
-/

namespace A044772.P14110180533949320570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044392 (n + 1) - A040271 (A246325 n).toNat

end

end A044772.P14110180533949320570

/-! ## A044772.P10241319455141544058

`A044392(n+1)-A332762(A112367(n))`
-/

namespace A044772.P10241319455141544058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044392 (n + 1) - A332762 (A112367 n).toNat

end

end A044772.P10241319455141544058

/-! ## A044772.P12670707322790255575

`A044392(n+1)-A007913(A001248(n+1))`
-/

namespace A044772.P12670707322790255575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044392 (n + 1) - A007913 (A001248 (n + 1)).toNat

end

end A044772.P12670707322790255575

/-! ## A044772.P4541017570302534777

`A044392(n+1)-A000188(A164918(n+1))`
-/

namespace A044772.P4541017570302534777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044392 (n + 1) - A000188 (A164918 (n + 1)).toNat

end

end A044772.P4541017570302534777

/-! ## A044772.P14608372217830313737

`A044392(n+1)-A014963(A351562(n+1))`
-/

namespace A044772.P14608372217830313737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044392 (n + 1) - A014963 (A351562 (n + 1)).toNat

end

end A044772.P14608372217830313737

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

/-!
# A044773: Numbers n such that string 6,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044773, there is no canonical definition to state claims against.
-/

/-! ## A044773.P17513042311809217785

`A044393(n+1)-A054977(A085684(n))`
-/

namespace A044773.P17513042311809217785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044393 (n + 1) - A054977 (A085684 n).toNat

end

end A044773.P17513042311809217785

/-! ## A044773.P9516214338655915132

`A057428(A182728(n+1))+A044393(n+1)`
-/

namespace A044773.P9516214338655915132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A182728 (n + 1)).toNat + A044393 (n + 1)

end

end A044773.P9516214338655915132

/-! ## A044773.P17702286459719874326

`A044393(n+1)-A014963(A013593(n+1))`
-/

namespace A044773.P17702286459719874326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044393 (n + 1) - A014963 (A013593 (n + 1)).toNat

end

end A044773.P17702286459719874326

/-! ## A044773.P3636587907378180652

`A044393(n+1)-A037291(A014963(n+1))`
-/

namespace A044773.P3636587907378180652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044393 (n + 1) - A037291 (A014963 (n + 1)).toNat

end

end A044773.P3636587907378180652

/-! ## A044773.P16733038448456449297

`A044393(n+1)-A037291(A020639(n+1))`
-/

namespace A044773.P16733038448456449297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044393 (n + 1) - A037291 (A020639 (n + 1)).toNat

end

end A044773.P16733038448456449297

/-! ## A044773.P11660983567679264123

`A044393(n+1)-A054977(A050025(n+1))`
-/

namespace A044773.P11660983567679264123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044393 (n + 1) - A054977 (A050025 (n + 1)).toNat

end

end A044773.P11660983567679264123

/-! ## A044773.P17916877456513161340

`A044393(n+1)-A001222(A173230(n+1))`
-/

namespace A044773.P17916877456513161340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044393 (n + 1) - A001222 (A173230 (n + 1)).toNat

end

end A044773.P17916877456513161340

/-! ## A044773.P17017542766889474485

`A044393(n+1)-A001222(A327348(n+1))`
-/

namespace A044773.P17017542766889474485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044393 (n + 1) - A001222 (A327348 (n + 1)).toNat

end

end A044773.P17017542766889474485

/-! ## A044773.P9146568077854561505

`A044393(n+1)-A057427(A332354(n+1))`
-/

namespace A044773.P9146568077854561505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044393 (n + 1) - A057427 (A332354 (n + 1)).toNat

end

end A044773.P9146568077854561505

/-!
# A044774: Numbers n such that string 6,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044774, there is no canonical definition to state claims against.
-/

/-! ## A044774.P17310021544929598826

`A044394(n+1)-A040029(A078724(n))`
-/

namespace A044774.P17310021544929598826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044394 (n + 1) - A040029 (A078724 n).toNat

end

end A044774.P17310021544929598826

/-! ## A044774.P6962322996680240963

`A044394(n+1)-A054977(A301109(n))`
-/

namespace A044774.P6962322996680240963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044394 (n + 1) - A054977 (A301109 n).toNat

end

end A044774.P6962322996680240963

/-! ## A044774.P15178097528307296413

`A057428(A139662(n+1))+A044394(n+1)`
-/

namespace A044774.P15178097528307296413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A139662 (n + 1)).toNat + A044394 (n + 1)

end

end A044774.P15178097528307296413

/-! ## A044774.P8228283885366049352

`A057428(A168234(n+1))+A044394(n+1)`
-/

namespace A044774.P8228283885366049352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A168234 (n + 1)).toNat + A044394 (n + 1)

end

end A044774.P8228283885366049352

/-! ## A044774.P9909009032399693424

`A057428(A284785(n+1))+A044394(n+1)`
-/

namespace A044774.P9909009032399693424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A284785 (n + 1)).toNat + A044394 (n + 1)

end

end A044774.P9909009032399693424

/-! ## A044774.P2070647920180139716

`A057428(A298320(n+1))+A044394(n+1)`
-/

namespace A044774.P2070647920180139716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A298320 (n + 1)).toNat + A044394 (n + 1)

end

end A044774.P2070647920180139716

/-! ## A044774.P18227695752266453988

`A044394(n+1)-A054977(A085684(n))`
-/

namespace A044774.P18227695752266453988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044394 (n + 1) - A054977 (A085684 n).toNat

end

end A044774.P18227695752266453988

/-! ## A044774.P17703824628172331809

`A044394(n+1)-A001222(A327348(n+1))`
-/

namespace A044774.P17703824628172331809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044394 (n + 1) - A001222 (A327348 (n + 1)).toNat

end

end A044774.P17703824628172331809

/-!
# A044775: Numbers n such that string 6,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044775, there is no canonical definition to state claims against.
-/

/-! ## A044775.P15879941256084059694

`A057428(A000601(n))+A044395(n+1)`
-/

namespace A044775.P15879941256084059694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000601 n).toNat + A044395 (n + 1)

end

end A044775.P15879941256084059694

/-! ## A044775.P3081764664440478983

`A057428(A008255(n))+A044395(n+1)`
-/

namespace A044775.P3081764664440478983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008255 n).toNat + A044395 (n + 1)

end

end A044775.P3081764664440478983

/-! ## A044775.P1998187509148637087

`A057428(A009866(n))+A044395(n+1)`
-/

namespace A044775.P1998187509148637087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A009866 n).toNat + A044395 (n + 1)

end

end A044775.P1998187509148637087

/-! ## A044775.P5769542703620744922

`A057428(A009867(n))+A044395(n+1)`
-/

namespace A044775.P5769542703620744922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A009867 n).toNat + A044395 (n + 1)

end

end A044775.P5769542703620744922

/-! ## A044775.P5693889848440983801

`A057428(A087731(n))+A044395(n+1)`
-/

namespace A044775.P5693889848440983801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A087731 n).toNat + A044395 (n + 1)

end

end A044775.P5693889848440983801

/-! ## A044775.P4731067344177664044

`A044395(n+1)-A020985(A007504(n))²`
-/

namespace A044775.P4731067344177664044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044395 (n + 1) - A020985 (A007504 n).toNat ^ 2

end

end A044775.P4731067344177664044

/-! ## A044775.P8391229700994986321

`A044395(n+1)-A005171(A023551(n+1))`
-/

namespace A044775.P8391229700994986321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044395 (n + 1) - A005171 (A023551 (n + 1)).toNat

end

end A044775.P8391229700994986321

/-!
# A044776: Numbers n such that string 6,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044776, there is no canonical definition to state claims against.
-/

/-! ## A044776.P11399094022400509843

`A057428((n+1)²+(n+3)²)+A044396(n+1)`
-/

namespace A044776.P11399094022400509843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((n + 1) ^ 2 + (n + 3) ^ 2) + A044396 (n + 1)

end

end A044776.P11399094022400509843

/-! ## A044776.P8092498818366991675

`A044396(n+1)+A033999(A268581(n))`
-/

namespace A044776.P8092498818366991675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044396 (n + 1) + A033999 (A268581 n).toNat

end

end A044776.P8092498818366991675

/-! ## A044776.P4373850017102791422

`A044396(n+1)-A054977(A008000(n))`
-/

namespace A044776.P4373850017102791422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044396 (n + 1) - A054977 (A008000 n).toNat

end

end A044776.P4373850017102791422

/-! ## A044776.P3709453625052913550

`A044396(n+1)-A054977(A009891(n))`
-/

namespace A044776.P3709453625052913550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044396 (n + 1) - A054977 (A009891 n).toNat

end

end A044776.P3709453625052913550

/-! ## A044776.P2781483928950161859

`A044396(n+1)-A054977(A136218(n))`
-/

namespace A044776.P2781483928950161859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044396 (n + 1) - A054977 (A136218 n).toNat

end

end A044776.P2781483928950161859

/-! ## A044776.P14289751221407304516

`A044396(n+1)-A054977(A035372(n+1))`
-/

namespace A044776.P14289751221407304516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044396 (n + 1) - A054977 (A035372 (n + 1)).toNat

end

end A044776.P14289751221407304516

/-! ## A044776.P15000305192160306037

`A044396(n+1)-A001222(A201712(n+1))`
-/

namespace A044776.P15000305192160306037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044396 (n + 1) - A001222 (A201712 (n + 1)).toNat

end

end A044776.P15000305192160306037

/-!
# A044777: Numbers n such that string 6,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044777, there is no canonical definition to state claims against.
-/

/-! ## A044777.P910833142401271181

`A057428(C(2*(n+1), 2))+A044397(n+1)`
-/

namespace A044777.P910833142401271181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (Nat.choose (2 * (n + 1)) 2) + A044397 (n + 1)

end

end A044777.P910833142401271181

/-! ## A044777.P11180606033080619724

`A057428(A301039(n))+A044397(n+1)`
-/

namespace A044777.P11180606033080619724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A301039 n).toNat + A044397 (n + 1)

end

end A044777.P11180606033080619724

/-! ## A044777.P4296948632386451430

`A044397(n+1)-A005171(A008459(n))`
-/

namespace A044777.P4296948632386451430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044397 (n + 1) - A005171 (A008459 n).toNat

end

end A044777.P4296948632386451430

/-! ## A044777.P2641836799699383002

`A044397(n+1)-A122431(A014106(n))`
-/

namespace A044777.P2641836799699383002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044397 (n + 1) - A122431 (A014106 n).toNat

end

end A044777.P2641836799699383002

/-! ## A044777.P3377155769383817925

`A057428(A032574(n+1))+A044397(n+1)`
-/

namespace A044777.P3377155769383817925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A032574 (n + 1)).toNat + A044397 (n + 1)

end

end A044777.P3377155769383817925

/-! ## A044777.P18161397804756399597

`A057428(A183544(n+1))+A044397(n+1)`
-/

namespace A044777.P18161397804756399597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A183544 (n + 1)).toNat + A044397 (n + 1)

end

end A044777.P18161397804756399597

/-! ## A044777.P11308694346740837186

`A057428(A302427(n+1))+A044397(n+1)`
-/

namespace A044777.P11308694346740837186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A302427 (n + 1)).toNat + A044397 (n + 1)

end

end A044777.P11308694346740837186

/-! ## A044777.P3785197005329412021

`A044397(n+1)-A007318(A248580(n+1))`
-/

namespace A044777.P3785197005329412021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044397 (n + 1) - A007318 (A248580 (n + 1)).toNat

end

end A044777.P3785197005329412021

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

/-! ## A044779.P7230093563473684615

`A233583(or(A044397(n+1), A044398(n+1)))`
-/

namespace A044779.P7230093563473684615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.lor (A044397 (n + 1)) (A044398 (n + 1))).toNat

end

end A044779.P7230093563473684615

/-!
# A044780: Numbers n such that string 6,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044780, there is no canonical definition to state claims against.
-/

/-! ## A044780.P13911212235745927697

`A044400(n+1)-C(A215461(n), n)!`
-/

namespace A044780.P13911212235745927697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (n + 1) - (Nat.factorial (Nat.choose (A215461 n).toNat n) : ℤ)

end

end A044780.P13911212235745927697

/-! ## A044780.P8152465821063873160

`A044400(n+1)-A033999(A215461(n))`
-/

namespace A044780.P8152465821063873160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (n + 1) - A033999 (A215461 n).toNat

end

end A044780.P8152465821063873160

/-! ## A044780.P14802965617290657699

`A044400(n+1)-A134451(A307855(n))`
-/

namespace A044780.P14802965617290657699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (n + 1) - A134451 (A307855 n).toNat

end

end A044780.P14802965617290657699

/-! ## A044780.P4816293469049138436

`A044400(n+1)+A033999(A139918(n+1))`
-/

namespace A044780.P4816293469049138436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (n + 1) + A033999 (A139918 (n + 1)).toNat

end

end A044780.P4816293469049138436

/-! ## A044780.P10633649460881002462

`A316441(A327346(n+1))+A044400(n+1)`
-/

namespace A044780.P10633649460881002462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A327346 (n + 1)).toNat + A044400 (n + 1)

end

end A044780.P10633649460881002462

/-! ## A044780.P7920250018406935051

`A044400(n+1)-A134451(A020228(n+1))`
-/

namespace A044780.P7920250018406935051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (n + 1) - A134451 (A020228 (n + 1)).toNat

end

end A044780.P7920250018406935051

/-! ## A044780.P9998973969677793284

`A044400(n+1)-A007318(C(A215461(n), n))`
-/

namespace A044780.P9998973969677793284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (n + 1) - A007318 (Nat.choose (A215461 n).toNat n)

end

end A044780.P9998973969677793284

/-! ## A044780.P11628094881183528935

`A044400(n+1)-A000010(C(A215461(n), n)+1)`
-/

namespace A044780.P11628094881183528935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (n + 1) - A000010 (Nat.choose (A215461 n).toNat n + 1)

end

end A044780.P11628094881183528935

/-! ## A044780.P3203932696929977193

`A044400(n+1)-A085002(A167677(n))`
-/

namespace A044780.P3203932696929977193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (n + 1) - A085002 (A167677 n).toNat

end

end A044780.P3203932696929977193

/-! ## A044780.P5059884611582412996

`A044400(n+1)-A007318(C(A007318(n), 2))`
-/

namespace A044780.P5059884611582412996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044400 (n + 1) - A007318 (Nat.choose (A007318 n).toNat 2)

end

end A044780.P5059884611582412996

/-!
# A044781: Numbers n such that string 6,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044781, there is no canonical definition to state claims against.
-/

/-! ## A044781.P13285664342520010479

`A044401(n+1)+A033999(A283983(n))`
-/

namespace A044781.P13285664342520010479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044401 (n + 1) + A033999 (A283983 n).toNat

end

end A044781.P13285664342520010479

/-! ## A044781.P13055900211656862318

`A044401(n+1)-A293668(A064200(n))`
-/

namespace A044781.P13055900211656862318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044401 (n + 1) - A293668 (A064200 n).toNat

end

end A044781.P13055900211656862318

/-! ## A044781.P16919288675353699054

`A044401(n+1)-A337335(A284554(n))`
-/

namespace A044781.P16919288675353699054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044401 (n + 1) - A337335 (A284554 n).toNat

end

end A044781.P16919288675353699054

/-! ## A044781.P7254715056425023359

`A044401(n+1)-A054977(A029459(n+1))`
-/

namespace A044781.P7254715056425023359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044401 (n + 1) - A054977 (A029459 (n + 1)).toNat

end

end A044781.P7254715056425023359

/-! ## A044781.P10112405448460734067

`A044401(n+1)-A020639(A283983(n)+3)+1`
-/

namespace A044781.P10112405448460734067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044401 (n + 1) - A020639 (A283983 n + 3).toNat + 1

end

end A044781.P10112405448460734067

/-! ## A044781.P1684398100798982313

`A044401(n+1)-A304327(A282624(n+1))`
-/

namespace A044781.P1684398100798982313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044401 (n + 1) - A304327 (A282624 (n + 1)).toNat

end

end A044781.P1684398100798982313

/-!
# A044782: Numbers n such that string 6,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044782, there is no canonical definition to state claims against.
-/

/-! ## A044782.P7707719645733733845

`A044402(n+1)-abs(A325931(n+1))`
-/

namespace A044782.P7707719645733733845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044402 (n + 1) - |A325931 (n + 1)|

end

end A044782.P7707719645733733845

/-! ## A044782.P12241357999820002501

`A057428(A301256(n))+A044402(n+1)`
-/

namespace A044782.P12241357999820002501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A301256 n).toNat + A044402 (n + 1)

end

end A044782.P12241357999820002501

/-! ## A044782.P13975043458410214916

`A057428(A013583(n+1))+A044402(n+1)`
-/

namespace A044782.P13975043458410214916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A013583 (n + 1)).toNat + A044402 (n + 1)

end

end A044782.P13975043458410214916

/-! ## A044782.P11104190708432146061

`A057428(A101278(n+1))+A044402(n+1)`
-/

namespace A044782.P11104190708432146061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A101278 (n + 1)).toNat + A044402 (n + 1)

end

end A044782.P11104190708432146061

/-! ## A044782.P5509010135537393765

`A057428(A122978(n+1))+A044402(n+1)`
-/

namespace A044782.P5509010135537393765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A122978 (n + 1)).toNat + A044402 (n + 1)

end

end A044782.P5509010135537393765

/-! ## A044782.P13192937568926514977

`A057428(A142787(n+1))+A044402(n+1)`
-/

namespace A044782.P13192937568926514977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A142787 (n + 1)).toNat + A044402 (n + 1)

end

end A044782.P13192937568926514977

/-! ## A044782.P13869583104862969456

`A057428(A142792(n+1))+A044402(n+1)`
-/

namespace A044782.P13869583104862969456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A142792 (n + 1)).toNat + A044402 (n + 1)

end

end A044782.P13869583104862969456

/-! ## A044782.P11108064300603847428

`A057428(A142794(n+1))+A044402(n+1)`
-/

namespace A044782.P11108064300603847428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A142794 (n + 1)).toNat + A044402 (n + 1)

end

end A044782.P11108064300603847428

/-! ## A044782.P8470198503459690270

`A057428(A344332(n+1))+A044402(n+1)`
-/

namespace A044782.P8470198503459690270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A344332 (n + 1)).toNat + A044402 (n + 1)

end

end A044782.P8470198503459690270

/-! ## A044782.P9876223984867797569

`A044402(n+1)-A055874(A106992(n+1))`
-/

namespace A044782.P9876223984867797569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044402 (n + 1) - A055874 (A106992 (n + 1)).toNat

end

end A044782.P9876223984867797569

/-!
# A044783: Numbers n such that string 7,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044783, there is no canonical definition to state claims against.
-/

/-! ## A044783.P14187104655859350258

`A044403(n+1)-A057427(A101278(n))`
-/

namespace A044783.P14187104655859350258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044403 (n + 1) - A057427 (A101278 n).toNat

end

end A044783.P14187104655859350258

/-! ## A044783.P17495366611188827436

`A044403(n+1)-A000034(Δ[A146301(n)])`
-/

namespace A044783.P17495366611188827436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044403 (n + 1) - A000034 (f1 (n + 1) - f1 n).toNat

end

end A044783.P17495366611188827436

/-! ## A044783.P8216281619112713545

`A044403(n+1)-A057427(Δ[A146301(n)])`
-/

namespace A044783.P8216281619112713545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044403 (n + 1) - A057427 (f1 (n + 1) - f1 n).toNat

end

end A044783.P8216281619112713545

/-! ## A044783.P15781703350935926914

`A044403(n+1)-A135560(A139969(n+1))`
-/

namespace A044783.P15781703350935926914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044403 (n + 1) - A135560 (A139969 (n + 1)).toNat

end

end A044783.P15781703350935926914

/-! ## A044783.P10153038183478791259

`A044403(n+1)-A057427(A327165(n+1))`
-/

namespace A044783.P10153038183478791259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044403 (n + 1) - A057427 (A327165 (n + 1)).toNat

end

end A044783.P10153038183478791259

/-! ## A044783.P7541135886877592610

`A044403(n+1)-A001222(A340817(n+2))`
-/

namespace A044783.P7541135886877592610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044403 (n + 1) - A001222 (A340817 (n + 2)).toNat

end

end A044783.P7541135886877592610

/-! ## A044783.P2273472810823163187

`A044403(n+1)-A057427(A122978(n+1))`
-/

namespace A044783.P2273472810823163187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044403 (n + 1) - A057427 (A122978 (n + 1)).toNat

end

end A044783.P2273472810823163187

/-!
# A044784: Numbers n such that string 7,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044784, there is no canonical definition to state claims against.
-/

/-! ## A044784.P64714190798897850

`A044404(n+1)-A327481(n+1)%2`
-/

namespace A044784.P64714190798897850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044404 (n + 1) - Int.tmod (A327481 (n + 1)) 2

end

end A044784.P64714190798897850

/-! ## A044784.P17531332436860769777

`A044404(n+1)-A000120(2^(comp[∑[n]]-n))`
-/

namespace A044784.P17531332436860769777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044404 (n + 1) - A000120 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A044784.P17531332436860769777

/-! ## A044784.P14745144896063439139

`A044404(n+1)-A003963(2^(comp[∑[n]]-n))`
-/

namespace A044784.P14745144896063439139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044404 (n + 1) - A003963 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A044784.P14745144896063439139

/-! ## A044784.P1657503263596987224

`A057428(A211970(n))+A044404(n+1)`
-/

namespace A044784.P1657503263596987224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A211970 n).toNat + A044404 (n + 1)

end

end A044784.P1657503263596987224

/-! ## A044784.P18089687123303582371

`A044404(n+1)-A246064(A246066(n))`
-/

namespace A044784.P18089687123303582371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044404 (n + 1) - A246064 (A246066 n).toNat

end

end A044784.P18089687123303582371

/-! ## A044784.P1435404523318071218

`A044404(n+1)+A033999(A327481(n+1))`
-/

namespace A044784.P1435404523318071218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044404 (n + 1) + A033999 (A327481 (n + 1)).toNat

end

end A044784.P1435404523318071218

/-! ## A044784.P3949960643330860376

`A044404(n+1)-A001222(A237115(n+1))`
-/

namespace A044784.P3949960643330860376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044404 (n + 1) - A001222 (A237115 (n + 1)).toNat

end

end A044784.P3949960643330860376

/-!
# A044785: Numbers n such that string 7,2 occurs in the base 10 representation of n but not of n+1.

The programs for A044785, there is no canonical definition to state claims against.
-/

/-! ## A044785.P12732261394055746270

`A044405(n+1)+A033999(A273851(n))`
-/

namespace A044785.P12732261394055746270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044405 (n + 1) + A033999 (A273851 n).toNat

end

end A044785.P12732261394055746270

/-! ## A044785.P12520396982781387809

`A044405(n+1)+A033999(A139848(n+1))`
-/

namespace A044785.P12520396982781387809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044405 (n + 1) + A033999 (A139848 (n + 1)).toNat

end

end A044785.P12520396982781387809

/-! ## A044785.P15923865295472476349

`A044405(n+1)+A033999(A139855(n+1))`
-/

namespace A044785.P15923865295472476349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044405 (n + 1) + A033999 (A139855 (n + 1)).toNat

end

end A044785.P15923865295472476349

/-! ## A044785.P4328426829604315792

`A044405(n+1)-A033999(A043569(n+1))`
-/

namespace A044785.P4328426829604315792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044405 (n + 1) - A033999 (A043569 (n + 1)).toNat

end

end A044785.P4328426829604315792

/-! ## A044785.P2704720401262069887

`A044405(n+1)-A342956(A139867(n+1))`
-/

namespace A044785.P2704720401262069887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044405 (n + 1) - A342956 (A139867 (n + 1)).toNat

end

end A044785.P2704720401262069887

/-! ## A044785.P14957105355371648886

`A044405(n+1)-A108103(A333964(n+2)+1)`
-/

namespace A044785.P14957105355371648886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044405 (n + 1) - A108103 (A333964 (n + 2) + 1).toNat

end

end A044785.P14957105355371648886

/-! ## A044785.P10538549707448223502

`A044405(n+1)-A007318(A337328(n+1))`
-/

namespace A044785.P10538549707448223502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044405 (n + 1) - A007318 (A337328 (n + 1)).toNat

end

end A044785.P10538549707448223502

/-!
# A044786: Numbers n such that string 7,3 occurs in the base 10 representation of n but not of n+1.

The programs for A044786, there is no canonical definition to state claims against.
-/

/-! ## A044786.P5688643941570212566

`A057428(A067945(n+1))+A044406(n+1)`
-/

namespace A044786.P5688643941570212566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A067945 (n + 1)).toNat + A044406 (n + 1)

end

end A044786.P5688643941570212566

/-! ## A044786.P17763840890936006140

`A044406(n+1)+A033999(A139932(n+1))`
-/

namespace A044786.P17763840890936006140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044406 (n + 1) + A033999 (A139932 (n + 1)).toNat

end

end A044786.P17763840890936006140

/-! ## A044786.P416702411105957729

`A044406(n+1)+A033999(A139974(n+1))`
-/

namespace A044786.P416702411105957729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044406 (n + 1) + A033999 (A139974 (n + 1)).toNat

end

end A044786.P416702411105957729

/-! ## A044786.P8181630416668263168

`A044406(n+1)+A033999(A142399(n+1))`
-/

namespace A044786.P8181630416668263168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044406 (n + 1) + A033999 (A142399 (n + 1)).toNat

end

end A044786.P8181630416668263168

/-! ## A044786.P8198565433833596893

`A057428(A360457(n+1))+A044406(n+1)`
-/

namespace A044786.P8198565433833596893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A360457 (n + 1)).toNat + A044406 (n + 1)

end

end A044786.P8198565433833596893

/-! ## A044786.P994572948992652358

`A044406(n+1)-A056926(A020194(n+1))`
-/

namespace A044786.P994572948992652358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044406 (n + 1) - A056926 (A020194 (n + 1)).toNat

end

end A044786.P994572948992652358

/-!
# A044787: Numbers n such that string 7,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044787, there is no canonical definition to state claims against.
-/

/-! ## A044787.P4102757832755769752

`A044407(n+1)-gcd(11, A333851(n+1))`
-/

namespace A044787.P4102757832755769752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044407 (n + 1) - (Int.gcd 11 (A333851 (n + 1)) : ℤ)

end

end A044787.P4102757832755769752

/-! ## A044787.P2641557983937582333

`A044407(n+1)-A057427(A182001(n))`
-/

namespace A044787.P2641557983937582333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044407 (n + 1) - A057427 (A182001 n).toNat

end

end A044787.P2641557983937582333

/-! ## A044787.P4894561493819456697

`A044407(n+1)-A257253(A000124(n))`
-/

namespace A044787.P4894561493819456697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044407 (n + 1) - A257253 (A000124 n).toNat

end

end A044787.P4894561493819456697

/-! ## A044787.P13686439139977644916

`A044407(n+1)-A000034(A338086(n))`
-/

namespace A044787.P13686439139977644916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044407 (n + 1) - A000034 (A338086 n).toNat

end

end A044787.P13686439139977644916

/-! ## A044787.P2757744054564421388

`A044407(n+1)-A057427(A332728(n))`
-/

namespace A044787.P2757744054564421388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044407 (n + 1) - A057427 (A332728 n).toNat

end

end A044787.P2757744054564421388

/-! ## A044787.P17855870598224189553

`A044407(n+1)-A000034(A216072(n+1))`
-/

namespace A044787.P17855870598224189553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044407 (n + 1) - A000034 (A216072 (n + 1)).toNat

end

end A044787.P17855870598224189553

/-! ## A044787.P10479784611336489618

`A044407(n+1)-A037291(A249800(n+1))`
-/

namespace A044787.P10479784611336489618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044407 (n + 1) - A037291 (A249800 (n + 1)).toNat

end

end A044787.P10479784611336489618

/-! ## A044787.P4326916629070465758

`A044407(n+1)-A037291(A333851(n+1))`
-/

namespace A044787.P4326916629070465758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044407 (n + 1) - A037291 (A333851 (n + 1)).toNat

end

end A044787.P4326916629070465758

/-!
# A044788: Numbers n such that string 7,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044788, there is no canonical definition to state claims against.
-/

/-! ## A044788.P10820621741443612324

`A044408(n+1)+-1%A064126(n+1)`
-/

namespace A044788.P10820621741443612324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044408 (n + 1) + Int.tmod (-1) (A064126 (n + 1))

end

end A044788.P10820621741443612324

/-! ## A044788.P6933285526441411909

`A044408(n+1)+A033999(A345735(n))`
-/

namespace A044788.P6933285526441411909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044408 (n + 1) + A033999 (A345735 n).toNat

end

end A044788.P6933285526441411909

/-! ## A044788.P14864738777885419305

`A044408(n+1)-A057427(A104249(n))`
-/

namespace A044788.P14864738777885419305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044408 (n + 1) - A057427 (A104249 n).toNat

end

end A044788.P14864738777885419305

/-! ## A044788.P9710412087643429790

`A044408(n+1)-A057427(A064126(n+1))`
-/

namespace A044788.P9710412087643429790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044408 (n + 1) - A057427 (A064126 (n + 1)).toNat

end

end A044788.P9710412087643429790

/-! ## A044788.P10503488366896505508

`A044408(n+1)-A057427(A242592(n+1))`
-/

namespace A044788.P10503488366896505508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044408 (n + 1) - A057427 (A242592 (n + 1)).toNat

end

end A044788.P10503488366896505508

/-! ## A044788.P7149174187338000700

`A044408(n+1)-A037291(A249800(n+1))`
-/

namespace A044788.P7149174187338000700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044408 (n + 1) - A037291 (A249800 (n + 1)).toNat

end

end A044788.P7149174187338000700

/-!
# A044789: Numbers n such that string 7,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044789, there is no canonical definition to state claims against.
-/

/-! ## A044789.P1870213966184320681

`A044409(n+1)-A057427(n!)`
-/

namespace A044789.P1870213966184320681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044409 (n + 1) - A057427 (Nat.factorial n)

end

end A044789.P1870213966184320681

/-! ## A044789.P12159027382835825771

`A044409(n+1)-A005171(A002293(n))`
-/

namespace A044789.P12159027382835825771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044409 (n + 1) - A005171 (A002293 n).toNat

end

end A044789.P12159027382835825771

/-! ## A044789.P15141386774753189138

`A044409(n+1)-A057427(A001710(n))`
-/

namespace A044789.P15141386774753189138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044409 (n + 1) - A057427 (A001710 n).toNat

end

end A044789.P15141386774753189138

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

/-! ## A044791.P7744534444916310941

`A057428((n+14)²)+A044411(n+1)`
-/

namespace A044791.P7744534444916310941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((n + 14) ^ 2) + A044411 (n + 1)

end

end A044791.P7744534444916310941

/-! ## A044791.P5961216265955104568

`A044411(n+1)-A054977(A008762(n))`
-/

namespace A044791.P5961216265955104568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - A054977 (A008762 n).toNat

end

end A044791.P5961216265955104568

/-! ## A044791.P4350244101145613148

`A044411(n+1)-A054977(A124148(n+1))`
-/

namespace A044791.P4350244101145613148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - A054977 (A124148 (n + 1)).toNat

end

end A044791.P4350244101145613148

/-! ## A044791.P9828205985260588448

`A044411(n+1)-A054977(A238705(n+1))`
-/

namespace A044791.P9828205985260588448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - A054977 (A238705 (n + 1)).toNat

end

end A044791.P9828205985260588448

/-! ## A044791.P6944832311788986407

`A044411(n+1)-A054977(A318559(n+1))`
-/

namespace A044791.P6944832311788986407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - A054977 (A318559 (n + 1)).toNat

end

end A044791.P6944832311788986407

/-! ## A044791.P14686611156296792617

`A044411(n+1)-A052125(A113402(2*n+1))`
-/

namespace A044791.P14686611156296792617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - A052125 (A113402 (2 * n + 1)).toNat

end

end A044791.P14686611156296792617

/-! ## A044791.P5863069575500432353

`A044411(n+1)-A151933(n)!`
-/

namespace A044791.P5863069575500432353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - (Nat.factorial (A151933 n).toNat : ℤ)

end

end A044791.P5863069575500432353

/-! ## A044791.P4357258784921046407

`A044411(n+1)-A000010(A151933(n)+1)`
-/

namespace A044791.P4357258784921046407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - A000010 (A151933 n + 1).toNat

end

end A044791.P4357258784921046407

/-! ## A044791.P8237493137258686643

`A044411(n+1)-A001221(A001248(n+1))`
-/

namespace A044791.P8237493137258686643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044411 (n + 1) - A001221 (A001248 (n + 1)).toNat

end

end A044791.P8237493137258686643

/-!
# A044792: Numbers n such that string 7,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044792, there is no canonical definition to state claims against.
-/

/-! ## A044792.P14901652470516612155

`A044412(n+1)-abs(A155040(n))`
-/

namespace A044792.P14901652470516612155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044412 (n + 1) - |A155040 n|

end

end A044792.P14901652470516612155

/-! ## A044792.P3078915719404538854

`A044412(n+1)-A151909(n)!`
-/

namespace A044792.P3078915719404538854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044412 (n + 1) - (Nat.factorial (A151909 n).toNat : ℤ)

end

end A044792.P3078915719404538854

/-! ## A044792.P9973879470678480889

`A044412(n+1)-A327401(n+1)%2`
-/

namespace A044792.P9973879470678480889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044412 (n + 1) - Int.tmod (A327401 (n + 1)) 2

end

end A044792.P9973879470678480889

/-! ## A044792.P5436162054816028979

`A044412(n+1)-A016126(A151909(n)²)`
-/

namespace A044792.P5436162054816028979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044412 (n + 1) - A016126 (A151909 n ^ 2).toNat

end

end A044792.P5436162054816028979

/-! ## A044792.P8401766021540301114

`A057428(A037450(n+1))+A044412(n+1)`
-/

namespace A044792.P8401766021540301114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A037450 (n + 1)).toNat + A044412 (n + 1)

end

end A044792.P8401766021540301114

/-! ## A044792.P7318621466906038500

`A044412(n+1)-A000010(A151909(n)+1)`
-/

namespace A044792.P7318621466906038500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044412 (n + 1) - A000010 (A151909 n + 1).toNat

end

end A044792.P7318621466906038500

/-! ## A044792.P6969286168493904879

`A044412(n+1)-A000045(A151909(n)+1)`
-/

namespace A044792.P6969286168493904879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044412 (n + 1) - A000045 (A151909 n + 1).toNat

end

end A044792.P6969286168493904879

/-! ## A044792.P7595963295554454443

`A044412(n+1)-A001221(A282242(n+1))`
-/

namespace A044792.P7595963295554454443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044412 (n + 1) - A001221 (A282242 (n + 1)).toNat

end

end A044792.P7595963295554454443

/-!
# A044793: Numbers n such that string 8,0 occurs in the base 10 representation of n but not of n+1.

The programs for A044793, there is no canonical definition to state claims against.
-/

/-! ## A044793.P2017550120791861078

`A057428(A272451(n))+A044413(n+1)`
-/

namespace A044793.P2017550120791861078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A272451 n).toNat + A044413 (n + 1)

end

end A044793.P2017550120791861078

/-! ## A044793.P4199516550546930740

`A057428(A200997(n+1))+A044413(n+1)`
-/

namespace A044793.P4199516550546930740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A200997 (n + 1)).toNat + A044413 (n + 1)

end

end A044793.P4199516550546930740

/-! ## A044793.P1526987048420987590

`A044413(n+1)-A000688(A001133(n+1))`
-/

namespace A044793.P1526987048420987590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044413 (n + 1) - A000688 (A001133 (n + 1)).toNat

end

end A044793.P1526987048420987590

/-! ## A044793.P7080992602613118329

`A044413(n+1)-A054977(A133288(n+1))`
-/

namespace A044793.P7080992602613118329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044413 (n + 1) - A054977 (A133288 (n + 1)).toNat

end

end A044793.P7080992602613118329

/-! ## A044793.P16843520265742791925

`A057428(A280743(n+2))+A044413(n+1)`
-/

namespace A044793.P16843520265742791925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A280743 (n + 2)).toNat + A044413 (n + 1)

end

end A044793.P16843520265742791925

/-! ## A044793.P16190996522685559294

`A044413(n+1)-A054977(A200997(n+1)²)`
-/

namespace A044793.P16190996522685559294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044413 (n + 1) - A054977 (A200997 (n + 1) ^ 2).toNat

end

end A044793.P16190996522685559294

/-! ## A044793.P14790677117425488607

`(A044413(n+1)-A001065(A200997(n+1)))*A054977(n+1)`
-/

namespace A044793.P14790677117425488607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044413 (n + 1) - A001065 (A200997 (n + 1)).toNat) * A054977 (n + 1)

end

end A044793.P14790677117425488607

/-! ## A044793.P15218713750576806588

`A057428(A162325(n+1))+A044413(n+1)`
-/

namespace A044793.P15218713750576806588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A162325 (n + 1)).toNat + A044413 (n + 1)

end

end A044793.P15218713750576806588

/-! ## A044793.P8878327718876936870

`A044413(n+1)-A014963(A046007(n+1))`
-/

namespace A044793.P8878327718876936870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044413 (n + 1) - A014963 (A046007 (n + 1)).toNat

end

end A044793.P8878327718876936870

/-!
# A044794: Numbers n such that string 8,1 occurs in the base 10 representation of n but not of n+1.

The programs for A044794, there is no canonical definition to state claims against.
-/

/-! ## A044794.P16005515045366643604

`A044414(n+1)-A295920(A152813(n))`
-/

namespace A044794.P16005515045366643604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1) - A295920 (A152813 n).toNat

end

end A044794.P16005515045366643604

/-! ## A044794.P10690131184278598481

`A057428(A131642(n+1))+A044414(n+1)`
-/

namespace A044794.P10690131184278598481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A131642 (n + 1)).toNat + A044414 (n + 1)

end

end A044794.P10690131184278598481

/-! ## A044794.P3866872868912241107

`A044414(n+1)-A285097(A044403(n+2))`
-/

namespace A044794.P3866872868912241107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1) - A285097 (A044403 (n + 2)).toNat

end

end A044794.P3866872868912241107

/-! ## A044794.P15807389038359745108

`A044414(n+1)-A285097(A044411(n+2))`
-/

namespace A044794.P15807389038359745108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1) - A285097 (A044411 (n + 2)).toNat

end

end A044794.P15807389038359745108

/-! ## A044794.P2860324502148983026

`A044414(n+1)-A285097(A044415(n+2))`
-/

namespace A044794.P2860324502148983026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1) - A285097 (A044415 (n + 2)).toNat

end

end A044794.P2860324502148983026

/-! ## A044794.P8803874986927574087

`A044414(n+1)-A285097(A044419(n+2))`
-/

namespace A044794.P8803874986927574087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1) - A285097 (A044419 (n + 2)).toNat

end

end A044794.P8803874986927574087

/-! ## A044794.P10043885619037280014

`A044414(n+1)-A131642(A131642(n+1)+n)`
-/

namespace A044794.P10043885619037280014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1) - A131642 (A131642 (n + 1) + (n : ℤ)).toNat

end

end A044794.P10043885619037280014

/-! ## A044794.P6906235844740978998

`A044414(n+1)-A295923(A014963(n+1))`
-/

namespace A044794.P6906235844740978998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1) - A295923 (A014963 (n + 1)).toNat

end

end A044794.P6906235844740978998

/-! ## A044794.P18170048810438737623

`A044414(n+1)-A336571(A020639(n+1))`
-/

namespace A044794.P18170048810438737623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044414 (n + 1) - A336571 (A020639 (n + 1)).toNat

end

end A044794.P18170048810438737623

/-!
# A044795: Numbers k such that string 8,2 occurs in the base 10 representation of k but not of k+1.

The programs for A044795, there is no canonical definition to state claims against.
-/

/-! ## A044795.P13011353821584593176

`floor(A044415(n+1)-1/A290695(n))`
-/

namespace A044795.P13011353821584593176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A044415 (n + 1) : ℚ) - 1 / (A290695 n : ℚ)⌋

end

end A044795.P13011353821584593176

/-! ## A044795.P3810495224196126870

`A044415(n+1)-A003557(A290695(n))`
-/

namespace A044795.P3810495224196126870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1) - A003557 (A290695 n).toNat

end

end A044795.P3810495224196126870

/-! ## A044795.P6593383051508867235

`A044415(n+1)-A005171(A290695(n)²)`
-/

namespace A044795.P6593383051508867235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1) - A005171 (A290695 n ^ 2).toNat

end

end A044795.P6593383051508867235

/-! ## A044795.P32532284217200745

`A044415(n+1)-A007913(A290695(n)²)`
-/

namespace A044795.P32532284217200745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1) - A007913 (A290695 n ^ 2).toNat

end

end A044795.P32532284217200745

/-! ## A044795.P426984481982584692

`A044415(n+1)-A057427(A290695(n)²)`
-/

namespace A044795.P426984481982584692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1) - A057427 (A290695 n ^ 2).toNat

end

end A044795.P426984481982584692

/-! ## A044795.P11706282327299890893

`A044415(n+1)-A067742(A290695(n)²)`
-/

namespace A044795.P11706282327299890893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1) - A067742 (A290695 n ^ 2).toNat

end

end A044795.P11706282327299890893

/-! ## A044795.P975433691875137605

`A044415(n+1)-A003557(A103579(n+1))`
-/

namespace A044795.P975433691875137605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1) - A003557 (A103579 (n + 1)).toNat

end

end A044795.P975433691875137605

/-! ## A044795.P1948484739597841441

`A044415(n+1)-A178334(A141810(n+1))`
-/

namespace A044795.P1948484739597841441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1) - A178334 (A141810 (n + 1)).toNat

end

end A044795.P1948484739597841441

/-! ## A044795.P15945175505883311336

`A044415(n+1)-A285097(A044391(n+1))`
-/

namespace A044795.P15945175505883311336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1) - A285097 (A044391 (n + 1)).toNat

end

end A044795.P15945175505883311336

/-! ## A044795.P7434515427576229015

`A044415(n+1)-A285097(A044395(n+1))`
-/

namespace A044795.P7434515427576229015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044415 (n + 1) - A285097 (A044395 (n + 1)).toNat

end

end A044795.P7434515427576229015

/-!
# A044796: Numbers k such that string 8,3 occurs in the base 10 representation of k but not of k+1.

The programs for A044796, there is no canonical definition to state claims against.
-/

/-! ## A044796.P17803286584107786536

`A044416(n+1)-A151878(n)!`
-/

namespace A044796.P17803286584107786536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044416 (n + 1) - (Nat.factorial (A151878 n).toNat : ℤ)

end

end A044796.P17803286584107786536

/-! ## A044796.P2399831089574878249

`A057428(A140513(n))+A044416(n+1)`
-/

namespace A044796.P2399831089574878249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A140513 n).toNat + A044416 (n + 1)

end

end A044796.P2399831089574878249

/-! ## A044796.P9175303026806855769

`A044416(n+1)-A097031(A102083(n))`
-/

namespace A044796.P9175303026806855769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044416 (n + 1) - A097031 (A102083 n).toNat

end

end A044796.P9175303026806855769

/-! ## A044796.P13584174767087381010

`A044416(n+1)-A291168(A151878(n)²)`
-/

namespace A044796.P13584174767087381010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044416 (n + 1) - A291168 (A151878 n ^ 2).toNat

end

end A044796.P13584174767087381010

/-! ## A044796.P11061756074253662947

`A044416(n+1)+A010815(A151878(n)!)`
-/

namespace A044796.P11061756074253662947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044416 (n + 1) + A010815 (Nat.factorial (A151878 n).toNat)

end

end A044796.P11061756074253662947

/-! ## A044796.P6271281464417642851

`A057428(A151878(n)!)+A044416(n+1)`
-/

namespace A044796.P6271281464417642851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (Nat.factorial (A151878 n).toNat) + A044416 (n + 1)

end

end A044796.P6271281464417642851

/-! ## A044796.P1373616457632444134

`A044416(n+1)-A000010(A151878(n)+1)`
-/

namespace A044796.P1373616457632444134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044416 (n + 1) - A000010 (A151878 n + 1).toNat

end

end A044796.P1373616457632444134

/-! ## A044796.P14536524290492755527

`A044416(n+1)-A000045(A151878(n)+1)`
-/

namespace A044796.P14536524290492755527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044416 (n + 1) - A000045 (A151878 n + 1).toNat

end

end A044796.P14536524290492755527

/-! ## A044796.P10082878733251150706

`A044416(n+1)-A001222(A151878(n)+2)`
-/

namespace A044796.P10082878733251150706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044416 (n + 1) - A001222 (A151878 n + 2).toNat

end

end A044796.P10082878733251150706

/-!
# A044797: Numbers n such that string 8,4 occurs in the base 10 representation of n but not of n+1.

The programs for A044797, there is no canonical definition to state claims against.
-/

/-! ## A044797.P5614105910412740430

`A044417(n+1)-A036225(A353305(n))`
-/

namespace A044797.P5614105910412740430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044417 (n + 1) - A036225 (A353305 n).toNat

end

end A044797.P5614105910412740430

/-! ## A044797.P6629982513761277619

`A044417(n+1)-A266678(A353305(n)²)`
-/

namespace A044797.P6629982513761277619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044417 (n + 1) - A266678 (A353305 n ^ 2).toNat

end

end A044797.P6629982513761277619

/-! ## A044797.P18247518689299948940

`A057428(A026403(n+1))+A044417(n+1)`
-/

namespace A044797.P18247518689299948940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A026403 (n + 1)).toNat + A044417 (n + 1)

end

end A044797.P18247518689299948940

/-! ## A044797.P8922167660530296117

`A057428(A092962(n+1))+A044417(n+1)`
-/

namespace A044797.P8922167660530296117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A092962 (n + 1)).toNat + A044417 (n + 1)

end

end A044797.P8922167660530296117

/-! ## A044797.P2407453775602277401

`A044417(n+1)-A346182(A353305(n)+1)`
-/

namespace A044797.P2407453775602277401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044417 (n + 1) - A346182 (A353305 n + 1).toNat

end

end A044797.P2407453775602277401

/-! ## A044797.P14792030127121576448

`A044417(n+1)*A266678(A353305(n)+3)-1`
-/

namespace A044797.P14792030127121576448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044417 (n + 1) * A266678 (A353305 n + 3).toNat - 1

end

end A044797.P14792030127121576448

/-! ## A044797.P16641544784565165998

`(A044417(n+1)-A057427(A026403(n+1)))%A270446(n+1)`
-/

namespace A044797.P16641544784565165998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044417 (n + 1) - A057427 (A026403 (n + 1)).toNat) (A270446 (n + 1))

end

end A044797.P16641544784565165998

/-! ## A044797.P1646021630654791756

`A044417(n+1)-A151878(n)!`
-/

namespace A044797.P1646021630654791756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044417 (n + 1) - (Nat.factorial (A151878 n).toNat : ℤ)

end

end A044797.P1646021630654791756

/-!
# A044798: Numbers n such that string 8,5 occurs in the base 10 representation of n but not of n+1.

The programs for A044798, there is no canonical definition to state claims against.
-/

/-! ## A044798.P5800105031635340350

`A044418(n+1)+A008836(A122556(n+1))`
-/

namespace A044798.P5800105031635340350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044418 (n + 1) + A008836 (A122556 (n + 1)).toNat

end

end A044798.P5800105031635340350

/-! ## A044798.P15772003962391412390

`A044418(n+1)+A008836(A123487(n+1))`
-/

namespace A044798.P15772003962391412390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044418 (n + 1) + A008836 (A123487 (n + 1)).toNat

end

end A044798.P15772003962391412390

/-! ## A044798.P13798877127141834583

`A057428(A117144(abs(1-n)))+A044418(n+1)`
-/

namespace A044798.P13798877127141834583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A117144 |1 - (n : ℤ)|.toNat).toNat + A044418 (n + 1)

end

end A044798.P13798877127141834583

/-! ## A044798.P4840948848169619344

`A057428(A157211(ceil(n/4)))+A044418(n+1)`
-/

namespace A044798.P4840948848169619344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A157211 ⌈(n : ℚ) / 4⌉.toNat).toNat + A044418 (n + 1)

end

end A044798.P4840948848169619344

/-! ## A044798.P11775326085876731335

`A044418(n+1)-A010684(A132761(n))`
-/

namespace A044798.P11775326085876731335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044418 (n + 1) - A010684 (A132761 n).toNat

end

end A044798.P11775326085876731335

/-! ## A044798.P8505082919225779793

`A044418(n+1)-A054977(A117144(n))`
-/

namespace A044798.P8505082919225779793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044418 (n + 1) - A054977 (A117144 n).toNat

end

end A044798.P8505082919225779793

/-! ## A044798.P8740678061177342412

`A057428(A004979(n+1))+A044418(n+1)`
-/

namespace A044798.P8740678061177342412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A004979 (n + 1)).toNat + A044418 (n + 1)

end

end A044798.P8740678061177342412

/-! ## A044798.P2566883065172667983

`A057428(A242732(n+1))+A044418(n+1)`
-/

namespace A044798.P2566883065172667983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A242732 (n + 1)).toNat + A044418 (n + 1)

end

end A044798.P2566883065172667983

/-! ## A044798.P3576755919136122483

`A044418(n+1)-A052307(A339927(n+1))`
-/

namespace A044798.P3576755919136122483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044418 (n + 1) - A052307 (A339927 (n + 1)).toNat

end

end A044798.P3576755919136122483

/-! ## A044798.P5606711976201528506

`A044418(n+1)-A001221(A278698(n+1))`
-/

namespace A044798.P5606711976201528506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044418 (n + 1) - A001221 (A278698 (n + 1)).toNat

end

end A044798.P5606711976201528506

/-!
# A044799: Numbers n such that string 8,6 occurs in the base 10 representation of n but not of n+1.

The programs for A044799, there is no canonical definition to state claims against.
-/

/-! ## A044799.P1336069038852259191

`A044419(n+1)-ceil(1/A097876(n))`
-/

namespace A044799.P1336069038852259191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044419 (n + 1) - ⌈1 / (A097876 n : ℚ)⌉

end

end A044799.P1336069038852259191

/-! ## A044799.P8223922409929936894

`A057428(A097876(n))+A044419(n+1)`
-/

namespace A044799.P8223922409929936894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A097876 n).toNat + A044419 (n + 1)

end

end A044799.P8223922409929936894

/-! ## A044799.P17931220963748879373

`A057428(A007448(n)²)+A044419(n+1)`
-/

namespace A044799.P17931220963748879373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007448 n ^ 2).toNat + A044419 (n + 1)

end

end A044799.P17931220963748879373

/-! ## A044799.P2423946722816541997

`A057428(A046734(n+1))+A044419(n+1)`
-/

namespace A044799.P2423946722816541997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A046734 (n + 1)).toNat + A044419 (n + 1)

end

end A044799.P2423946722816541997

/-! ## A044799.P423497304060644586

`A057428(A173032(n+1))+A044419(n+1)`
-/

namespace A044799.P423497304060644586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A173032 (n + 1)).toNat + A044419 (n + 1)

end

end A044799.P423497304060644586

/-! ## A044799.P155321144136019054

`A057428(A195097(n+1))+A044419(n+1)`
-/

namespace A044799.P155321144136019054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A195097 (n + 1)).toNat + A044419 (n + 1)

end

end A044799.P155321144136019054

/-! ## A044799.P17639970790566640285

`A044419(n+1)-A191329(A032915(n+1))`
-/

namespace A044799.P17639970790566640285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044419 (n + 1) - A191329 (A032915 (n + 1)).toNat

end

end A044799.P17639970790566640285

/-! ## A044799.P17203539767600007951

`A044419(n+1)-A000035(A231506(n+1))`
-/

namespace A044799.P17203539767600007951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044419 (n + 1) - A000035 (A231506 (n + 1)).toNat

end

end A044799.P17203539767600007951

