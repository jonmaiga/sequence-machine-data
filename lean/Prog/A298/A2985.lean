import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
# A298500: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298500, there is no canonical definition to state claims against.
-/

/-! ## A298500.P5023607595054768476

`A298501(A374008(n+1))`
-/

namespace A298500.P5023607595054768476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A374008 (n + 1)).toNat

end

end A298500.P5023607595054768476

/-! ## A298500.P9236425226028625394

`A298501(A056119(n)+28)`
-/

namespace A298500.P9236425226028625394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A056119 n + 28).toNat

end

end A298500.P9236425226028625394

/-! ## A298500.P6882612705545346286

`A298501(eq[11, A066657(n)])`
-/

namespace A298500.P6882612705545346286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298500.P6882612705545346286

/-! ## A298500.P12009507863512854644

`A298501(A167499(n+5)+2)`
-/

namespace A298500.P12009507863512854644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A167499 (n + 5) + 2).toNat

end

end A298500.P12009507863512854644

/-! ## A298500.P18061104676714023196

`A298501(A000124(n+6)+6)`
-/

namespace A298500.P18061104676714023196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A000124 (n + 6) + 6).toNat

end

end A298500.P18061104676714023196

/-!
# A298501: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298501, there is no canonical definition to state claims against.
-/

/-! ## A298501.P15166369801312294688

`A297907(n+1)+A125005(A051597(n))`
-/

namespace A298501.P15166369801312294688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (n + 1) + A125005 (A051597 n).toNat

end

end A298501.P15166369801312294688

/-! ## A298501.P11381056852886003666

`A297907(n+1)+A025465(A111636(n))`
-/

namespace A298501.P11381056852886003666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (n + 1) + A025465 (A111636 n).toNat

end

end A298501.P11381056852886003666

/-! ## A298501.P2644378083422451727

`A297907(n+1)+A126010(A000040(n+1))`
-/

namespace A298501.P2644378083422451727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (n + 1) + A126010 (A000040 (n + 1)).toNat

end

end A298501.P2644378083422451727

/-! ## A298501.P13688655852318509111

`A297907(n+1)+A025456(A279871(n+1))`
-/

namespace A298501.P13688655852318509111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (n + 1) + A025456 (A279871 (n + 1)).toNat

end

end A298501.P13688655852318509111

/-! ## A298501.P12256451911753168272

`A297907(n+1)+A051731(A255622(n+1))`
-/

namespace A298501.P12256451911753168272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297907 (n + 1) + A051731 (A255622 (n + 1)).toNat

end

end A298501.P12256451911753168272

/-!
# A298502: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298502, there is no canonical definition to state claims against.
-/

/-! ## A298502.P11925282558732150319

`A298508(∑[4*n]+1)`
-/

namespace A298502.P11925282558732150319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298502.P11925282558732150319

/-! ## A298502.P4635281345970831436

`or((n%2)^n, A298508(n²+(n+1)²))`
-/

namespace A298502.P4635281345970831436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n % 2) ^ n : ℕ) : ℤ) (A298508 (n ^ 2 + (n + 1) ^ 2))

end

end A298502.P4635281345970831436

/-! ## A298502.P11142070241127404487

`A298508(A001844(n))+char[10]`
-/

namespace A298502.P11142070241127404487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298502.P11142070241127404487

/-! ## A298502.P13729481307014990482

`record[A003982(n)*A298508(n+1)]`
-/

namespace A298502.P13729481307014990482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298502.P13729481307014990482

/-! ## A298502.P8845431775212002788

`record[A214505(n)*A298508(n+1)]`
-/

namespace A298502.P8845431775212002788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A298508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298502.P8845431775212002788

/-!
# A298503: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298503, there is no canonical definition to state claims against.
-/

/-! ## A298503.P11970341834744568991

`A298508(∑[n+2]+4)`
-/

namespace A298503.P11970341834744568991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298503.P11970341834744568991

/-! ## A298503.P14106216995397646210

`A298508(A167614(n+1))+(2*n)%2`
-/

namespace A298503.P14106216995397646210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A167614 (n + 1)).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A298503.P14106216995397646210

/-! ## A298503.P13224647884019480168

`A298508(A167614(n+1))%A250937(n+1)`
-/

namespace A298503.P13224647884019480168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298508 (A167614 (n + 1)).toNat) (A250937 (n + 1))

end

end A298503.P13224647884019480168

/-! ## A298503.P3640732200323259125

`or(A000007(n), A298508(A000217(n+2)+3))`
-/

namespace A298503.P3640732200323259125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A298508 (A000217 (n + 2) + 3).toNat)

end

end A298503.P3640732200323259125

/-! ## A298503.P4617039932641585021

`or(A025907(n), A298508(A000217(n+2)+3))`
-/

namespace A298503.P4617039932641585021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025907 n) (A298508 (A000217 (n + 2) + 3).toNat)

end

end A298503.P4617039932641585021

/-!
# A298504: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298504, there is no canonical definition to state claims against.
-/

/-! ## A298504.P5549626660180161522

`A298508(A374004(n+1))`
-/

namespace A298504.P5549626660180161522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A374004 (n + 1)).toNat

end

end A298504.P5549626660180161522

/-! ## A298504.P4106433528678329147

`A298508(A141214(n)+7)`
-/

namespace A298504.P4106433528678329147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A141214 n + 7).toNat

end

end A298504.P4106433528678329147

/-! ## A298504.P16410066803006426748

`A298508(A052905(n)+9)`
-/

namespace A298504.P16410066803006426748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A052905 n + 9).toNat

end

end A298504.P16410066803006426748

/-! ## A298504.P16456772239926778476

`A298508(A055999(n)+10)`
-/

namespace A298504.P16456772239926778476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A055999 n + 10).toNat

end

end A298504.P16456772239926778476

/-! ## A298504.P16781721168480314266

`A298508(A167614(n+2)+1)`
-/

namespace A298504.P16781721168480314266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A167614 (n + 2) + 1).toNat

end

end A298504.P16781721168480314266

/-!
# A298505: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298505, there is no canonical definition to state claims against.
-/

/-! ## A298505.P2370871201550686897

`A298508(A374005(n+1))`
-/

namespace A298505.P2370871201550686897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A374005 (n + 1)).toNat

end

end A298505.P2370871201550686897

/-! ## A298505.P17519322015698617306

`A298508(A167499(n+3))`
-/

namespace A298505.P17519322015698617306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A167499 (n + 3)).toNat

end

end A298505.P17519322015698617306

/-! ## A298505.P16383979253782622678

`A298508(A155212(n)+13)`
-/

namespace A298505.P16383979253782622678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A155212 n + 13).toNat

end

end A298505.P16383979253782622678

/-! ## A298505.P7666400103813481094

`A298508(A056000(n)+15)`
-/

namespace A298505.P7666400103813481094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A056000 n + 15).toNat

end

end A298505.P7666400103813481094

/-! ## A298505.P14578653833706939891

`A298508(eq[7, A066657(n)])`
-/

namespace A298505.P14578653833706939891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298505.P14578653833706939891

/-!
# A298506: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298506, there is no canonical definition to state claims against.
-/

/-! ## A298506.P3454139608281071601

`A298508(A374007(n+1))`
-/

namespace A298506.P3454139608281071601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A374007 (n + 1)).toNat

end

end A298506.P3454139608281071601

/-! ## A298506.P13069539196203552181

`A298508(A166136(n+4))`
-/

namespace A298506.P13069539196203552181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A166136 (n + 4)).toNat

end

end A298506.P13069539196203552181

/-! ## A298506.P3988118559365666154

`A298508(A056115(n)+21)`
-/

namespace A298506.P3988118559365666154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A056115 n + 21).toNat

end

end A298506.P3988118559365666154

/-! ## A298506.P764776536060980874

`A298508(eq[6, A256910(n)])`
-/

namespace A298506.P764776536060980874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298506.P764776536060980874

/-! ## A298506.P7737987673386589359

`A298508(eq[6, A130270(n+1)])`
-/

namespace A298506.P7737987673386589359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298506.P7737987673386589359

/-!
# A298507: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298507, there is no canonical definition to state claims against.
-/

/-! ## A298507.P4549648950977609944

`A298508(A374008(n+1))`
-/

namespace A298507.P4549648950977609944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A374008 (n + 1)).toNat

end

end A298507.P4549648950977609944

/-! ## A298507.P4403452874799499810

`A298508(A167487(n+5))`
-/

namespace A298507.P4403452874799499810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A167487 (n + 5)).toNat

end

end A298507.P4403452874799499810

/-! ## A298507.P2511666238302897372

`A298508(A056119(n)+28)`
-/

namespace A298507.P2511666238302897372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A056119 n + 28).toNat

end

end A298507.P2511666238302897372

/-! ## A298507.P11616650270044132760

`A298508(eq[11, A066657(n)])`
-/

namespace A298507.P11616650270044132760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298507.P11616650270044132760

/-! ## A298507.P8900375139167067927

`A298508(A052905(n+3)+12)`
-/

namespace A298507.P8900375139167067927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298508 (A052905 (n + 3) + 12).toNat

end

end A298507.P8900375139167067927

/-!
# A298508: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298508, there is no canonical definition to state claims against.
-/

/-! ## A298508.P4589301136195244218

`A297915(n+1)+A055641(A059328(n))`
-/

namespace A298508.P4589301136195244218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (n + 1) + A055641 (A059328 n).toNat

end

end A298508.P4589301136195244218

/-! ## A298508.P10670808154686841822

`A297915(n+1)+A011668(A173917(n))`
-/

namespace A298508.P10670808154686841822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (n + 1) + A011668 (A173917 n).toNat

end

end A298508.P10670808154686841822

/-! ## A298508.P14383335562674328023

`xor(A185037(A008288(n)), A297915(n+1))`
-/

namespace A298508.P14383335562674328023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185037 (A008288 n).toNat) (A297915 (n + 1))

end

end A298508.P14383335562674328023

/-! ## A298508.P14192016707704381665

`xor(A137579(A117401(n)), A297915(n+1))`
-/

namespace A298508.P14192016707704381665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A137579 (A117401 n).toNat) (A297915 (n + 1))

end

end A298508.P14192016707704381665

/-! ## A298508.P8835168109673399232

`A297915(n+1)+A037800(A300182(n+1))`
-/

namespace A298508.P8835168109673399232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297915 (n + 1) + A037800 (A300182 (n + 1)).toNat

end

end A298508.P8835168109673399232

/-!
# A298509: First differences of A023108.

The programs for A298509, there is no canonical definition to state claims against.
-/

/-! ## A298509.P1476387219373625548

`Δ[A023108(n+1)]`
-/

namespace A298509.P1476387219373625548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298509.P1476387219373625548

/-! ## A298509.P8469576346216760330

`A023108(n+2)-A023108(n+1)`
-/

namespace A298509.P8469576346216760330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (n + 2) - A023108 (n + 1)

end

end A298509.P8469576346216760330

/-! ## A298509.P17505153389286799536

`A023108(A000027(n+2))%A023108(n+1)`
-/

namespace A298509.P17505153389286799536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023108 (A000027 (n + 2)).toNat) (A023108 (n + 1))

end

end A298509.P17505153389286799536

/-! ## A298509.P13351586380060615523

`Δ[record[A023108(A344180(n))]]`
-/

namespace A298509.P13351586380060615523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298509.P13351586380060615523

/-! ## A298509.P1397665110070186983

`Δ[record[A023108(A133310(n))]]`
-/

namespace A298509.P1397665110070186983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298509.P1397665110070186983

/-! ## A298509.P196195625898566444

`Δ[record[A023108(A263131(n))]]`
-/

namespace A298509.P196195625898566444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298509.P196195625898566444

/-! ## A298509.P1725054159203858655

`abs(Δ[A023108(A029579(2*n))])`
-/

namespace A298509.P1725054159203858655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A298509.P1725054159203858655

/-! ## A298509.P16462559298261109817

`Δ[record[A023108(A126759(n))]]`
-/

namespace A298509.P16462559298261109817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298509.P16462559298261109817

/-! ## A298509.P3947829237817151292

`Δ[record[A023108(A154958(n))]]`
-/

namespace A298509.P3947829237817151292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298509.P3947829237817151292

/-! ## A298509.P10528478870377342277

`Δ[record[A023108(A117910(n))]]`
-/

namespace A298509.P10528478870377342277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298509.P10528478870377342277

/-!
# A298510: a(n) = (n!)*2^(n-1)*mu_h(n) where mu_h is the hypergeometric Moebius function associated to the Dirichlet character modulo 4 h={1,0,-1,0,1,...} (see comment).

The programs for A298510, there is no canonical definition to state claims against.
-/

/-! ## A298510.P9527061847044529998

`A366937(n+1)-A241457(A238626(n+5))`
-/

namespace A298510.P9527061847044529998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366937 (n + 1) - A241457 (A238626 (n + 5)).toNat

end

end A298510.P9527061847044529998

/-!
# A298511: Central Lehmer-Comtet numbers of the first kind: a(n) = A008296(2n,n).

The programs for A298511, there is no canonical definition to state claims against.
-/

/-! ## A298511.P6019366013859295717

`A008296(A004277(n²))`
-/

namespace A298511.P6019366013859295717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A004277 (n ^ 2)).toNat

end

end A298511.P6019366013859295717

/-! ## A298511.P3195406782389129631

`A008296(2*A253909(n))`
-/

namespace A298511.P3195406782389129631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (2 * A253909 n).toNat

end

end A298511.P3195406782389129631

/-! ## A298511.P6146356678662440479

`A008296(A028310(2*n²))`
-/

namespace A298511.P6146356678662440479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A028310 (2 * n ^ 2)).toNat

end

end A298511.P6146356678662440479

/-! ## A298511.P15600110500091912296

`A008296(A253909(n)+n²)`
-/

namespace A298511.P15600110500091912296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A253909 n + (n ^ 2 : ℤ)).toNat

end

end A298511.P15600110500091912296

/-! ## A298511.P3554951726360655927

`A008296(n²+A028310(n²))`
-/

namespace A298511.P3554951726360655927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A298511.P3554951726360655927

/-!
# A298533: Number of unlabeled rooted trees with n vertices such that every branch of the root has the same number of leaves.

The programs for A298533, there is no canonical definition to state claims against.
-/

/-! ## A298533.P2957558884954185068

`A261104(2*A201204(n))`
-/

namespace A298533.P2957558884954185068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (2 * A201204 n).toNat

end

end A298533.P2957558884954185068

/-! ## A298533.P12930800084858463475

`A121856(∏[A008619(n)])-1`
-/

namespace A298533.P12930800084858463475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A298533.P12930800084858463475

/-! ## A298533.P14805690456652907454

`A001629(n)+A000196(A007097(n))`
-/

namespace A298533.P14805690456652907454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + A000196 (A007097 n).toNat

end

end A298533.P14805690456652907454

/-! ## A298533.P14877042675878173477

`A051889(A084636(n+2)-A019565(n))`
-/

namespace A298533.P14877042675878173477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A084636 (n + 2) - A019565 n).toNat

end

end A298533.P14877042675878173477

/-!
# A298534: Matula-Goebel numbers of rooted trees such that every branch of the root has the same number of leaves.

The programs for A298534, there is no canonical definition to state claims against.
-/

/-! ## A298534.P1960748309382865669

`∪[A291442(n+1), A017989(n)]`
-/

namespace A298534.P1960748309382865669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017989 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298534.P1960748309382865669

/-! ## A298534.P10970196020583395176

`∪[A291442(n+1), A042988(n)]`
-/

namespace A298534.P10970196020583395176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298534.P10970196020583395176

/-! ## A298534.P14174800746909171691

`∪[A291442(n+1), A061303(n)]`
-/

namespace A298534.P14174800746909171691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061303 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298534.P14174800746909171691

/-! ## A298534.P5100778326339185455

`∪[A291442(n+1), Δ[A007504(n)]]`
-/

namespace A298534.P5100778326339185455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298534.P5100778326339185455

/-! ## A298534.P240232108653920967

`∪[A000040(n+1), A291442(n+1)]`
-/

namespace A298534.P240232108653920967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298534.P240232108653920967

/-! ## A298534.P7829106325982241157

`∪[A030475(n+1), A291442(n+1)]`
-/

namespace A298534.P7829106325982241157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298534.P7829106325982241157

/-! ## A298534.P4924160733534819705

`∪[A033203(n+1), A291442(n+1)]`
-/

namespace A298534.P4924160733534819705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298534.P4924160733534819705

/-! ## A298534.P1632176208506912493

`∪[A133811(n+1), A291442(n+1)]`
-/

namespace A298534.P1632176208506912493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298534.P1632176208506912493

/-! ## A298534.P7232787611713665147

`∪[A267985(n+1), A291442(n+1)]`
-/

namespace A298534.P7232787611713665147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298534.P7232787611713665147

/-! ## A298534.P15058873946305290870

`comp[A103164(comp[A291442(n+1)])]`
-/

namespace A298534.P15058873946305290870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A298534.P15058873946305290870

/-!
# A298535: Number of unlabeled rooted trees with n vertices such that every branch of the root has a different number of leaves.

The programs for A298535, there is no canonical definition to state claims against.
-/

/-! ## A298535.P10079941598928376614

`A176137(3*n)+A157271(A182053(n))-1`
-/

namespace A298535.P10079941598928376614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 (3 * n) + A157271 (A182053 n).toNat - 1

end

end A298535.P10079941598928376614

/-!
# A298536: Matula-Goebel numbers of rooted trees such that every branch of the root has a different number of leaves.

The programs for A298536, there is no canonical definition to state claims against.
-/

/-! ## A298536.P10173356322537498832

`∪[A331785(n+1), p?[A331995(n+1)]]`
-/

namespace A298536.P10173356322537498832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331785 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298536.P10173356322537498832

/-! ## A298536.P12610955221944211958

`record[A147301(n+2)/A176286(A123901(n))]`
-/

namespace A298536.P12610955221944211958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147301 (n + 2) : ℚ) / (A176286 (A123901 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298536.P12610955221944211958

/-! ## A298536.P13406527932237318291

`lt[A356655(2*n), comp[A356626(n)]]`
-/

namespace A298536.P13406527932237318291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356655 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356626 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A298536.P13406527932237318291

/-! ## A298536.P17229090919074291524

`lt[A356655(2*n), comp[A356632(n)]]`
-/

namespace A298536.P17229090919074291524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356655 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356632 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A298536.P17229090919074291524

/-! ## A298536.P14003471551785374243

`eq[A266174(n), A293896(A027642(n))]`
-/

namespace A298536.P14003471551785374243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (A027642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298536.P14003471551785374243

/-!
# A298537: Number of unlabeled rooted trees with n nodes such that every branch of the root has the same number of nodes.

The programs for A298537, there is no canonical definition to state claims against.
-/

/-! ## A298537.P10402583468451185481

`A283970(A374686(n))`
-/

namespace A298537.P10402583468451185481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283970 (A374686 n).toNat

end

end A298537.P10402583468451185481

/-! ## A298537.P1409584794868468187

`A283970(A397379(n))`
-/

namespace A298537.P1409584794868468187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283970 (A397379 n).toNat

end

end A298537.P1409584794868468187

/-! ## A298537.P16423498180403709894

`∑[A086826(n)-A051766(n+1)²]`
-/

namespace A298537.P16423498180403709894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086826 n - A051766 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298537.P16423498180403709894

/-!
# A298538: Matula-Goebel numbers of rooted trees such that every branch of the root has the same number of nodes.

The programs for A298538, there is no canonical definition to state claims against.
-/

/-! ## A298538.P16243007742599533098

`∪[A382215(n+1), A109860(n)]`
-/

namespace A298538.P16243007742599533098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298538.P16243007742599533098

/-! ## A298538.P4411585516449314517

`∪[A000961(n+1), A054475(n+1)]`
-/

namespace A298538.P4411585516449314517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298538.P4411585516449314517

/-! ## A298538.P17594220778206474752

`∪[A036116(n+1), A054475(n+1)]`
-/

namespace A298538.P17594220778206474752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298538.P17594220778206474752

/-! ## A298538.P13911796721637788312

`∪[A008364(n+1), A326534(n+1)]`
-/

namespace A298538.P13911796721637788312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298538.P13911796721637788312

/-! ## A298538.P11092254610855504997

`∪[A038511(n+1), A326534(n+1)]`
-/

namespace A298538.P11092254610855504997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298538.P11092254610855504997

/-! ## A298538.P15233434082391117867

`lt[sqrt(A325381(n+1)), A102457(n+2)]+1`
-/

namespace A298538.P15233434082391117867
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A325381 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A298538.P15233434082391117867

/-! ## A298538.P11065881458066585941

`A326534(n+1)-A333149(A081753(n))`
-/

namespace A298538.P11065881458066585941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (n + 1) - A333149 (A081753 n).toNat

end

end A298538.P11065881458066585941

/-! ## A298538.P8525789037098106553

`A326534(n+1)-A236379(A324351(n))`
-/

namespace A298538.P8525789037098106553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (n + 1) - A236379 (A324351 n).toNat

end

end A298538.P8525789037098106553

/-! ## A298538.P1676282281599690774

`A326534(n+1)-A236379(A341840(n))`
-/

namespace A298538.P1676282281599690774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (n + 1) - A236379 (A341840 n).toNat

end

end A298538.P1676282281599690774

/-! ## A298538.P3509074756393542587

`A326534(n+1)+A229658(A081753(n)²)`
-/

namespace A298538.P3509074756393542587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (n + 1) + A229658 (A081753 n ^ 2).toNat

end

end A298538.P3509074756393542587

/-!
# A298539: Number of unlabeled rooted trees with n vertices such that every branch of the root has a different number of nodes.

The programs for A298539, there is no canonical definition to state claims against.
-/

/-! ## A298539.P16261650164891144095

`A106733(A108066(n+1))`
-/

namespace A298539.P16261650164891144095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106733 (A108066 (n + 1)).toNat

end

end A298539.P16261650164891144095

/-!
# A298540: Matula-Goebel numbers of rooted trees such that every branch of the root has a different number of nodes.

The programs for A298540, there is no canonical definition to state claims against.
-/

/-! ## A298540.P3760744495517992814

`A326535(n+1)%275`
-/

namespace A298540.P3760744495517992814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326535 (n + 1)) 275

end

end A298540.P3760744495517992814

/-! ## A298540.P9552017699463781226

`eq[val(n+1, 35)+n+1, A007947(n+1)]+1`
-/

namespace A298540.P9552017699463781226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 35 + n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298540.P9552017699463781226

/-! ## A298540.P15114387253699143423

`A326535(A090108(n+1))`
-/

namespace A298540.P15114387253699143423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (A090108 (n + 1)).toNat

end

end A298540.P15114387253699143423

/-! ## A298540.P10870155590527750516

`A326535(A296879(n+1))`
-/

namespace A298540.P10870155590527750516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (A296879 (n + 1)).toNat

end

end A298540.P10870155590527750516

/-! ## A298540.P15076932530247455386

`A326535(A033619(n+1)+1)`
-/

namespace A298540.P15076932530247455386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (A033619 (n + 1) + 1).toNat

end

end A298540.P15076932530247455386

/-! ## A298540.P7831380289805806506

`A326535(A291179(n+1)+1)`
-/

namespace A298540.P7831380289805806506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (A291179 (n + 1) + 1).toNat

end

end A298540.P7831380289805806506

/-! ## A298540.P16903398432897759296

`A326535(A211666(n+3)+n)`
-/

namespace A298540.P16903398432897759296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (A211666 (n + 3) + (n : ℤ)).toNat

end

end A298540.P16903398432897759296

/-! ## A298540.P12985347586828236117

`A326535(C(n+1, A178334(n)))`
-/

namespace A298540.P12985347586828236117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (Nat.choose (n + 1) (A178334 n).toNat)

end

end A298540.P12985347586828236117

/-! ## A298540.P757706872670400441

`∪[A326535(n+1), A005902(n)]`
-/

namespace A298540.P757706872670400441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298540.P757706872670400441

/-! ## A298540.P5069267925299434012

`∪[A326535(n+1), A028387(n)]`
-/

namespace A298540.P5069267925299434012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298540.P5069267925299434012

/-!
# A298541: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298541, there is no canonical definition to state claims against.
-/

/-! ## A298541.P17237507372401121140

`A298547(∑[4*n]+1)`
-/

namespace A298541.P17237507372401121140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298541.P17237507372401121140

/-! ## A298541.P6368715237621852753

`record[A298547(Δ[A235355(n)])]`
-/

namespace A298541.P6368715237621852753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298541.P6368715237621852753

/-! ## A298541.P13144467248162917443

`record[A003982(n)*A298547(n+1)]`
-/

namespace A298541.P13144467248162917443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298541.P13144467248162917443

/-! ## A298541.P10253479020231307254

`A057427(n)*A298547(A001844(n))`
-/

namespace A298541.P10253479020231307254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A298547 (A001844 n).toNat

end

end A298541.P10253479020231307254

/-! ## A298541.P5189314652793058682

`lcm(A111008(n), A298547(A001844(n)))`
-/

namespace A298541.P5189314652793058682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111008 n) (A298547 (A001844 n).toNat)

end

end A298541.P5189314652793058682

/-!
# A298542: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298542, there is no canonical definition to state claims against.
-/

/-! ## A298542.P16973821130760080881

`A298547(∑[n+2]+4)`
-/

namespace A298542.P16973821130760080881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298542.P16973821130760080881

/-! ## A298542.P14348337424459100857

`A298547(A167614(n+1))+A025443(n)`
-/

namespace A298542.P14348337424459100857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A167614 (n + 1)).toNat + A025443 n

end

end A298542.P14348337424459100857

/-! ## A298542.P6067506291739084813

`A298547(A167614(n+1))+A185255(n)`
-/

namespace A298542.P6067506291739084813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A167614 (n + 1)).toNat + A185255 n

end

end A298542.P6067506291739084813

/-! ## A298542.P17779626864141027315

`A298547(A167614(n+1))^A328672(n)`
-/

namespace A298542.P17779626864141027315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298547 (A167614 (n + 1)).toNat : ℚ) ^ (A328672 n : ℤ)

end

end A298542.P17779626864141027315

/-! ## A298542.P3370752566209090074

`gcd(A151811(n), A298547(A167614(n+1)))`
-/

namespace A298542.P3370752566209090074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151811 n) (A298547 (A167614 (n + 1)).toNat)

end

end A298542.P3370752566209090074

/-!
# A298543: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298543, there is no canonical definition to state claims against.
-/

/-! ## A298543.P12854915526455858997

`A298547(A374004(n+1))`
-/

namespace A298543.P12854915526455858997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A374004 (n + 1)).toNat

end

end A298543.P12854915526455858997

/-! ## A298543.P4078755484710424953

`A298547(A052905(n)+9)`
-/

namespace A298543.P4078755484710424953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A052905 n + 9).toNat

end

end A298543.P4078755484710424953

/-! ## A298543.P2965254052476177352

`A298547(A167614(n+2)+1)`
-/

namespace A298543.P2965254052476177352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A167614 (n + 2) + 1).toNat

end

end A298543.P2965254052476177352

/-! ## A298543.P16299158457716154955

`A298547(A167499(n+2)-1)`
-/

namespace A298543.P16299158457716154955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A167499 (n + 2) - 1).toNat

end

end A298543.P16299158457716154955

/-! ## A298543.P10495918520208421531

`A298547(A034856(n+2)+6)`
-/

namespace A298543.P10495918520208421531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A034856 (n + 2) + 6).toNat

end

end A298543.P10495918520208421531

/-!
# A298544: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298544, there is no canonical definition to state claims against.
-/

/-! ## A298544.P7575491697482951504

`A298547(A374005(n+1))`
-/

namespace A298544.P7575491697482951504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A374005 (n + 1)).toNat

end

end A298544.P7575491697482951504

/-! ## A298544.P5237681968755387375

`A298547(A167499(n+3))`
-/

namespace A298544.P5237681968755387375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A167499 (n + 3)).toNat

end

end A298544.P5237681968755387375

/-! ## A298544.P7445706703619717745

`A298547(A155212(n)+13)`
-/

namespace A298544.P7445706703619717745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A155212 n + 13).toNat

end

end A298544.P7445706703619717745

/-! ## A298544.P6873210683636218430

`A298547(A056000(n)+15)`
-/

namespace A298544.P6873210683636218430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A056000 n + 15).toNat

end

end A298544.P6873210683636218430

/-! ## A298544.P18354364269025016151

`A298547(A051936(n+4)+14)`
-/

namespace A298544.P18354364269025016151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A051936 (n + 4) + 14).toNat

end

end A298544.P18354364269025016151

/-!
# A298545: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298545, there is no canonical definition to state claims against.
-/

/-! ## A298545.P14826501270802117741

`A298547(A374007(n+1))`
-/

namespace A298545.P14826501270802117741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A374007 (n + 1)).toNat

end

end A298545.P14826501270802117741

/-! ## A298545.P8050102980546467968

`A298547(eq[7, A131818(n+1)])`
-/

namespace A298545.P8050102980546467968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298545.P8050102980546467968

/-! ## A298545.P11497055229592085606

`A298547(eq[3, A219347(n)])`
-/

namespace A298545.P11497055229592085606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298545.P11497055229592085606

/-! ## A298545.P8816409627168818006

`A298547(eq[5, A193592(n)])`
-/

namespace A298545.P8816409627168818006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298545.P8816409627168818006

/-! ## A298545.P14459129693274675813

`A298547(eq[8, A258709(n)])`
-/

namespace A298545.P14459129693274675813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298545.P14459129693274675813

/-!
# A298546: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298546, there is no canonical definition to state claims against.
-/

/-! ## A298546.P12015990744487404845

`A298547(A374008(n+1))`
-/

namespace A298546.P12015990744487404845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A374008 (n + 1)).toNat

end

end A298546.P12015990744487404845

/-! ## A298546.P11017702157567960198

`A298547(eq[8, A131818(n+1)])`
-/

namespace A298546.P11017702157567960198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298546.P11017702157567960198

/-! ## A298546.P9693140784084291259

`A298547(A055999(n+4))`
-/

namespace A298546.P9693140784084291259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A055999 (n + 4)).toNat

end

end A298546.P9693140784084291259

/-! ## A298546.P1421832760627814203

`A298547(A056121(n)+22)`
-/

namespace A298546.P1421832760627814203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (A056121 n + 22).toNat

end

end A298546.P1421832760627814203

/-! ## A298546.P17628549597297360351

`A298547(eq[4, A219347(n)])`
-/

namespace A298546.P17628549597297360351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298546.P17628549597297360351

/-!
# A298548: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298548, there is no canonical definition to state claims against.
-/

/-! ## A298548.P16474237551136497805

`A298554(∑[4*n]+1)`
-/

namespace A298548.P16474237551136497805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298548.P16474237551136497805

/-! ## A298548.P4355589890853275639

`and(-1, A298554(A001844(n)))`
-/

namespace A298548.P4355589890853275639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298554 (A001844 n).toNat)

end

end A298548.P4355589890853275639

/-! ## A298548.P10491292773819563120

`A298554(∑[A008574(n)])+char[19]`
-/

namespace A298548.P10491292773819563120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298548.P10491292773819563120

/-! ## A298548.P13798693262671439590

`A298554(A001844(n))+A054899(n)`
-/

namespace A298548.P13798693262671439590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A001844 n).toNat + A054899 n

end

end A298548.P13798693262671439590

/-! ## A298548.P2089308121326735019

`A298554(A001844(n))+A185284(n)`
-/

namespace A298548.P2089308121326735019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A001844 n).toNat + A185284 n

end

end A298548.P2089308121326735019

/-!
# A298549: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298549, there is no canonical definition to state claims against.
-/

/-! ## A298549.P14769612461192737973

`A298554(∑[n+2]+4)`
-/

namespace A298549.P14769612461192737973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298549.P14769612461192737973

/-! ## A298549.P884657071529869398

`A298554(A167614(n+1))+char[19]`
-/

namespace A298549.P884657071529869398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298549.P884657071529869398

/-! ## A298549.P15919221308570304525

`A369054(n)+A298554(A167614(n+1))`
-/

namespace A298549.P15919221308570304525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n + A298554 (A167614 (n + 1)).toNat

end

end A298549.P15919221308570304525

/-! ## A298549.P12256068224251195141

`A298554(A167614(n+1))*A304042(n)`
-/

namespace A298549.P12256068224251195141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A167614 (n + 1)).toNat * A304042 n

end

end A298549.P12256068224251195141

/-! ## A298549.P12679523376410722786

`A298554(A167614(n+1))^A178489(n)`
-/

namespace A298549.P12679523376410722786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298554 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A298549.P12679523376410722786

/-!
# A298550: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298550, there is no canonical definition to state claims against.
-/

/-! ## A298550.P14242864811698902215

`A298554(∑[n+3]+7)`
-/

namespace A298550.P14242864811698902215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298550.P14242864811698902215

/-! ## A298550.P4614618141036770449

`A298554(A052905(n)+9)+char[19]`
-/

namespace A298550.P4614618141036770449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298550.P4614618141036770449

/-! ## A298550.P7358072200959211389

`A298554(Δ[A008778(n)]+6)+char[32]`
-/

namespace A298550.P7358072200959211389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298550.P7358072200959211389

/-! ## A298550.P17456286461800707178

`xor(1, xor(1, A298554(A000096(n+2)+5)))`
-/

namespace A298550.P17456286461800707178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A298554 (A000096 (n + 2) + 5).toNat))

end

end A298550.P17456286461800707178

/-! ## A298550.P18057567187123228362

`A298554(A052905(n)+9)%A000108(n+5)`
-/

namespace A298550.P18057567187123228362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298554 (A052905 n + 9).toNat) (A000108 (n + 5))

end

end A298550.P18057567187123228362

/-!
# A298551: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298551, there is no canonical definition to state claims against.
-/

/-! ## A298551.P2862408252940388031

`A298554(∑[n+4]+11)`
-/

namespace A298551.P2862408252940388031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298551.P2862408252940388031

/-! ## A298551.P2345799317927204332

`A298554(eq[7, A066657(n)])+char[19]`
-/

namespace A298551.P2345799317927204332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298551.P2345799317927204332

/-! ## A298551.P4899049366051383715

`A298554(A000217(n+4)+5)+char[17]`
-/

namespace A298551.P4899049366051383715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298551.P4899049366051383715

/-! ## A298551.P2835626687346376316

`A298554(A034856(n+3)+7)+char[19]`
-/

namespace A298551.P2835626687346376316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A034856 (n + 3) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298551.P2835626687346376316

/-! ## A298551.P11901837124464187268

`A298554(A374005(n+1))+A025443(n)`
-/

namespace A298551.P11901837124464187268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A374005 (n + 1)).toNat + A025443 n

end

end A298551.P11901837124464187268

/-!
# A298552: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298552, there is no canonical definition to state claims against.
-/

/-! ## A298552.P1885180726425392360

`A298554(A374007(n+1))`
-/

namespace A298552.P1885180726425392360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A374007 (n + 1)).toNat

end

end A298552.P1885180726425392360

/-! ## A298552.P286585426597905642

`A298554(A166136(n+4))`
-/

namespace A298552.P286585426597905642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A166136 (n + 4)).toNat

end

end A298552.P286585426597905642

/-! ## A298552.P10885506092405411333

`A298554(A056115(n)+21)`
-/

namespace A298552.P10885506092405411333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A056115 n + 21).toNat

end

end A298552.P10885506092405411333

/-! ## A298552.P3696049197499049100

`A298554(Δ[A255994(n+2)])`
-/

namespace A298552.P3696049197499049100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (f1 (n + 1) - f1 n).toNat

end

end A298552.P3696049197499049100

/-! ## A298552.P4665088733111907718

`A298554(A167499(n+4)+1)`
-/

namespace A298552.P4665088733111907718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A167499 (n + 4) + 1).toNat

end

end A298552.P4665088733111907718

/-!
# A298553: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298553, there is no canonical definition to state claims against.
-/

/-! ## A298553.P13486887754471085219

`A298554(A374008(n+1))`
-/

namespace A298553.P13486887754471085219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A374008 (n + 1)).toNat

end

end A298553.P13486887754471085219

/-! ## A298553.P5696113787375394820

`A298554(A167487(n+5))`
-/

namespace A298553.P5696113787375394820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A167487 (n + 5)).toNat

end

end A298553.P5696113787375394820

/-! ## A298553.P17272701735811396835

`A298554(A056119(n)+28)`
-/

namespace A298553.P17272701735811396835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A056119 n + 28).toNat

end

end A298553.P17272701735811396835

/-! ## A298553.P4469729811628179728

`A298554(eq[11, A066657(n)])`
-/

namespace A298553.P4469729811628179728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298553.P4469729811628179728

/-! ## A298553.P2350669460936060240

`A298554(A166136(n+5)+1)`
-/

namespace A298553.P2350669460936060240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298554 (A166136 (n + 5) + 1).toNat

end

end A298553.P2350669460936060240

/-!
# A298554: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298554, there is no canonical definition to state claims against.
-/

/-! ## A298554.P1373753286616622377

`A340988(A026758(n))+A297943(n+1)`
-/

namespace A298554.P1373753286616622377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A026758 n).toNat + 91) + A297943 (n + 1)

end

end A298554.P1373753286616622377

/-!
# A298555: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298555, there is no canonical definition to state claims against.
-/

/-! ## A298555.P10594050658900829365

`A298560(∑[4*n]+1)`
-/

namespace A298555.P10594050658900829365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298555.P10594050658900829365

/-! ## A298555.P2553037991490738482

`lcm(2, A298560(A001844(n)))`
-/

namespace A298555.P2553037991490738482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A298560 (A001844 n).toNat)

end

end A298555.P2553037991490738482

/-! ## A298555.P8092742695120763448

`record[A298560(Δ[A235355(n)])]`
-/

namespace A298555.P8092742695120763448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298555.P8092742695120763448

/-! ## A298555.P8423163686770180906

`record[A298560(A330613(n+1))]`
-/

namespace A298555.P8423163686770180906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298555.P8423163686770180906

/-! ## A298555.P4537857822526409991

`A298560(A001844(n))*A361236(n)`
-/

namespace A298555.P4537857822526409991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A001844 n).toNat * A361236 n

end

end A298555.P4537857822526409991

/-!
# A298556: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298556, there is no canonical definition to state claims against.
-/

/-! ## A298556.P2809805920402372159

`A298560(∑[n+3]+7)`
-/

namespace A298556.P2809805920402372159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298556.P2809805920402372159

/-! ## A298556.P8256690163020715911

`A298560(A052905(n)+9)+char[16]`
-/

namespace A298556.P8256690163020715911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298556.P8256690163020715911

/-! ## A298556.P3869614991214077963

`A298560(A167614(n+2)+1)+char[17]`
-/

namespace A298556.P3869614991214077963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298556.P3869614991214077963

/-! ## A298556.P13062368952852365738

`A007318(C(2, n))*A298560(A052905(n)+9)`
-/

namespace A298556.P13062368952852365738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298560 (A052905 n + 9).toNat

end

end A298556.P13062368952852365738

/-! ## A298556.P6255368285168987567

`and(1, A000045(n))!*A298560(A052905(n)+9)`
-/

namespace A298556.P6255368285168987567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A298560 (A052905 n + 9).toNat

end

end A298556.P6255368285168987567

/-!
# A298557: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298557, there is no canonical definition to state claims against.
-/

/-! ## A298557.P8618306326051009605

`A298560(A374005(n+1))`
-/

namespace A298557.P8618306326051009605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A374005 (n + 1)).toNat

end

end A298557.P8618306326051009605

/-! ## A298557.P9009125808425595109

`A298560(A167499(n+3))`
-/

namespace A298557.P9009125808425595109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A167499 (n + 3)).toNat

end

end A298557.P9009125808425595109

/-! ## A298557.P18237001118068463964

`A298560(A155212(n)+13)`
-/

namespace A298557.P18237001118068463964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A155212 n + 13).toNat

end

end A298557.P18237001118068463964

/-! ## A298557.P17129562615769977579

`A298560(A056000(n)+15)`
-/

namespace A298557.P17129562615769977579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A056000 n + 15).toNat

end

end A298557.P17129562615769977579

/-! ## A298557.P674514424449410528

`A298560(eq[7, A066657(n)])`
-/

namespace A298557.P674514424449410528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298557.P674514424449410528

/-!
# A298558: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298558, there is no canonical definition to state claims against.
-/

/-! ## A298558.P11636347182010953484

`A298560(A374007(n+1))`
-/

namespace A298558.P11636347182010953484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A374007 (n + 1)).toNat

end

end A298558.P11636347182010953484

/-! ## A298558.P3257800285779095305

`A298560(A056115(n)+21)`
-/

namespace A298558.P3257800285779095305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A056115 n + 21).toNat

end

end A298558.P3257800285779095305

/-! ## A298558.P9953515507622757787

`A298560(A167614(n+4)+3)`
-/

namespace A298558.P9953515507622757787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A167614 (n + 4) + 3).toNat

end

end A298558.P9953515507622757787

/-! ## A298558.P2642676396175180520

`A298560(A000124(n+5)+5)`
-/

namespace A298558.P2642676396175180520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A000124 (n + 5) + 5).toNat

end

end A298558.P2642676396175180520

/-! ## A298558.P2878028591925961697

`A298560(A000217(n+5)+6)`
-/

namespace A298558.P2878028591925961697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A000217 (n + 5) + 6).toNat

end

end A298558.P2878028591925961697

/-!
# A298559: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298559, there is no canonical definition to state claims against.
-/

/-! ## A298559.P17979782997834678990

`A298560(A374008(n+1))`
-/

namespace A298559.P17979782997834678990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A374008 (n + 1)).toNat

end

end A298559.P17979782997834678990

/-! ## A298559.P2145533621257677468

`A298560(A056119(n)+28)`
-/

namespace A298559.P2145533621257677468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A056119 n + 28).toNat

end

end A298559.P2145533621257677468

/-! ## A298559.P4592412286629992700

`A298560(eq[11, A066657(n)])`
-/

namespace A298559.P4592412286629992700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298559.P4592412286629992700

/-! ## A298559.P279926502892567962

`A298560(A000217(n+6)+7)`
-/

namespace A298559.P279926502892567962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A000217 (n + 6) + 7).toNat

end

end A298559.P279926502892567962

/-! ## A298559.P6039951476533934275

`A298560(A027379(n+4)+10)`
-/

namespace A298559.P6039951476533934275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A027379 (n + 4) + 10).toNat

end

end A298559.P6039951476533934275

/-!
# A298560: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298560, there is no canonical definition to state claims against.
-/

/-! ## A298560.P7595293770368794970

`or(A217220(A006504(n+1)), A297951(n+1))`
-/

namespace A298560.P7595293770368794970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A217220 (A006504 (n + 1)).toNat) (A297951 (n + 1))

end

end A298560.P7595293770368794970

/-!
# A298562: Quantitative (polygonal) Helly numbers for the integer lattice Z^2.

The programs for A298562, there is no canonical definition to state claims against.
-/

/-! ## A298562.P17048585030586705995

`A298755(n)`
-/

namespace A298562.P17048585030586705995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298755 n

end

end A298562.P17048585030586705995

/-! ## A298562.P16269523663819755138

`A322358(A322326(n))+A322345(n)`
-/

namespace A298562.P16269523663819755138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A322326 n).toNat + A322345 n

end

end A298562.P16269523663819755138

/-!
# A298563: Numbers k such that k - 2 | sigma(k).

The programs for A298563, there is no canonical definition to state claims against.
-/

/-! ## A298563.P18267533980157615805

`eq[abs(1-n), gcd(n-1, A000203(n+1))]+1`
-/

namespace A298563.P18267533980157615805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A298563.P18267533980157615805

/-! ## A298563.P2924629286870365534

`record[gcd(A007865(n), A199133(n+1))]`
-/

namespace A298563.P2924629286870365534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007865 n) (A199133 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298563.P2924629286870365534

/-! ## A298563.P15889171357448815988

`or(A318186(A000207(n+1)), A318186(n+1))`
-/

namespace A298563.P15889171357448815988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318186 (A000207 (n + 1)).toNat) (A318186 (n + 1))

end

end A298563.P15889171357448815988

/-!
# A298564: a(n) = (3^(n+2)+11)/2 - 5*2^(n+1) + 2*n.

The programs for A298564, the canonical program `A298564.P17143947217949679530` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298564 has offset 0).

The definition of A298564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298564.P17143947217949679530

`(3^(n+2)+11)/2-5*2^(n+1)+2*n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298564

/-- `(3^(n+2)+11)/2-5*2^(n+1)+2*n` -/
def P17143947217949679530.Spec : Prop :=
  ∀ n, P17143947217949679530.a n = (A298564 n : ℚ)

end A298564

/-! ## A298564.P10547695460652782992

`∑[∑[ogf((x+3x^2)/(1-5x+6x^2))]]`
-/

namespace A298564.P10547695460652782992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -5, 6] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298564.P10547695460652782992

namespace A298564

/-- `∑[∑[ogf((x+3x^2)/(1-5x+6x^2))]]` -/
def P10547695460652782992.Spec : Prop :=
  ∀ n, P10547695460652782992.a n = A298564 n

end A298564

/-! ## A298564.P11429506295516336273

`∑[A281773(n+1)]`
-/

namespace A298564.P11429506295516336273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298564.P11429506295516336273

namespace A298564

/-- `∑[A281773(n+1)]` -/
def P11429506295516336273.Spec : Prop :=
  ∀ n, P11429506295516336273.a n = A298564 n

end A298564

/-! ## A298564.P8155611326396990883

`∑[A101052(n+1)-2^n]`
-/

namespace A298564.P8155611326396990883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298564.P8155611326396990883

namespace A298564

/-- `∑[A101052(n+1)-2^n]` -/
def P8155611326396990883.Spec : Prop :=
  ∀ n, P8155611326396990883.a n = A298564 n

end A298564

/-! ## A298564.P13597310099270324408

`∑[A245804(n)+A101052(n)]`
-/

namespace A298564.P13597310099270324408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 n + A101052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298564.P13597310099270324408

namespace A298564

/-- `∑[A245804(n)+A101052(n)]` -/
def P13597310099270324408.Spec : Prop :=
  ∀ n, P13597310099270324408.a n = A298564 n

end A298564

/-! ## A298564.P12021119135105894657

`∑[A028243(n+2)-A000225(n)]`
-/

namespace A298564.P12021119135105894657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028243 (n + 2) - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298564.P12021119135105894657

namespace A298564

/-- `∑[A028243(n+2)-A000225(n)]` -/
def P12021119135105894657.Spec : Prop :=
  ∀ n, P12021119135105894657.a n = A298564 n

end A298564

/-!
# A298565: a(n) is the largest prime p congruent to 1 mod n such that the multiplicative subgroup H of (Z/pZ)* of index n contains no nontrivial mod-p arithmetic progression of length 3.

The programs for A298565, there is no canonical definition to state claims against.
-/

/-! ## A298565.P11868443281901349393

`A136801(ceil(2/acot(n)²)+∑{e}[n+1, #]+1)`
-/

namespace A298565.P11868443281901349393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136801 (⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ)).toNat

end

end A298565.P11868443281901349393

/-! ## A298565.P16136433445946303433

`A136801(A131818(n+1)+A005893(n))`
-/

namespace A298565.P16136433445946303433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136801 (A131818 (n + 1) + A005893 n).toNat

end

end A298565.P16136433445946303433

/-!
# A298566: a(n) is the smallest prime q congruent to 1 mod n such that for all primes p >= q with p congruent to 1 mod n, the multiplicative subgroup H of (Z/pZ)* of index n contains a nontrivial mod-p arithmetic progression of length 3.

The programs for A298566, there is no canonical definition to state claims against.
-/

/-! ## A298566.P6448282206247222951

`p?[A046609(A094415(n))]`
-/

namespace A298566.P6448282206247222951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046609 (A094415 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A298566.P6448282206247222951

/-!
# A298568: Number of n X n 0..1 arrays with every element equal to 0, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298568, there is no canonical definition to state claims against.
-/

/-! ## A298568.P12397392673284502313

`A298575(∑[4*n]+1)`
-/

namespace A298568.P12397392673284502313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298568.P12397392673284502313

/-! ## A298568.P2661487634728053432

`and(-1, A298575(A001844(n)))`
-/

namespace A298568.P2661487634728053432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298575 (A001844 n).toNat)

end

end A298568.P2661487634728053432

/-! ## A298568.P9146453903909539676

`A298575(A001844(n))+A025443(n)`
-/

namespace A298568.P9146453903909539676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A001844 n).toNat + A025443 n

end

end A298568.P9146453903909539676

/-! ## A298568.P1687089153896718703

`A308920(n)+A298575(A001844(n))`
-/

namespace A298568.P1687089153896718703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308920 n + A298575 (A001844 n).toNat

end

end A298568.P1687089153896718703

/-! ## A298568.P8149818433518169462

`gcd(A107846(n), A298575(A001844(n)))`
-/

namespace A298568.P8149818433518169462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107846 n) (A298575 (A001844 n).toNat)

end

end A298568.P8149818433518169462

/-!
# A298569: Number of nX2 0..1 arrays with every element equal to 0, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298569, the canonical program `A298569.P3385328400592347379` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298569 has offset 1).

The definition of A298569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298569.P3385328400592347379

`a(n-1)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298569

/-- `a(n-1)+8*a(n-3)-4*a(n-4)` -/
def P3385328400592347379.Spec : Prop :=
  ∀ n, P3385328400592347379.a n = A298569 (n + 1)

theorem P3385328400592347379.correct : P3385328400592347379.Spec := by
  intro n
  simp only [A298569, Nat.add_sub_cancel]

end A298569

/-! ## A298569.P2055735747113454361

`A298575(∑[n+1]+2)`
-/

namespace A298569.P2055735747113454361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298569.P2055735747113454361

namespace A298569

/-- `A298575(∑[n+1]+2)` -/
def P2055735747113454361.Spec : Prop :=
  ∀ n, P2055735747113454361.a n = A298569 (n + 1)

end A298569

/-! ## A298569.P13122610812375104362

`A298575(∑[1-xor(n, -1)])%A016948(n)`
-/

namespace A298569.P13122610812375104362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298575 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A016948 n)

end

end A298569.P13122610812375104362

namespace A298569

/-- `A298575(∑[1-xor(n, -1)])%A016948(n)` -/
def P13122610812375104362.Spec : Prop :=
  ∀ n, P13122610812375104362.a n = A298569 (n + 1)

end A298569

/-! ## A298569.P10762457814004280545

`A298575(A000096(n+1))+A185037(n)`
-/

namespace A298569.P10762457814004280545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A000096 (n + 1)).toNat + A185037 n

end

end A298569.P10762457814004280545

namespace A298569

/-- `A298575(A000096(n+1))+A185037(n)` -/
def P10762457814004280545.Spec : Prop :=
  ∀ n, P10762457814004280545.a n = A298569 (n + 1)

end A298569

/-! ## A298569.P1243172709565011087

`A298575(A000096(n+1))%A016948(n)`
-/

namespace A298569.P1243172709565011087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298575 (A000096 (n + 1)).toNat) (A016948 n)

end

end A298569.P1243172709565011087

namespace A298569

/-- `A298575(A000096(n+1))%A016948(n)` -/
def P1243172709565011087.Spec : Prop :=
  ∀ n, P1243172709565011087.a n = A298569 (n + 1)

end A298569

/-!
# A298570: Number of n X 3 0..1 arrays with every element equal to 0, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298570, there is no canonical definition to state claims against.
-/

/-! ## A298570.P12527868881968942034

`A298575(∑[n+2]+4)`
-/

namespace A298570.P12527868881968942034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298570.P12527868881968942034

/-! ## A298570.P6097621230347308032

`A298575(A167614(n+1))+char[21]`
-/

namespace A298570.P6097621230347308032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298570.P6097621230347308032

/-! ## A298570.P12321942669707493897

`A298575(A167614(n+1))%A060060(n)`
-/

namespace A298570.P12321942669707493897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298575 (A167614 (n + 1)).toNat) (A060060 n)

end

end A298570.P12321942669707493897

/-! ## A298570.P17064203071922155024

`gcd(A000038(n), A298575(A167614(n+1)))`
-/

namespace A298570.P17064203071922155024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A298575 (A167614 (n + 1)).toNat)

end

end A298570.P17064203071922155024

/-! ## A298570.P9502452609926918414

`lcm(A033999(n), A298575(A167614(n+1)))`
-/

namespace A298570.P9502452609926918414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A298575 (A167614 (n + 1)).toNat)

end

end A298570.P9502452609926918414

/-!
# A298571: Number of nX4 0..1 arrays with every element equal to 0, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298571, there is no canonical definition to state claims against.
-/

/-! ## A298571.P8640227666981493264

`A298575(∑[n+3]+7)`
-/

namespace A298571.P8640227666981493264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298571.P8640227666981493264

/-! ## A298571.P10321306493668405048

`A298575(A000096(n+2)+5)+char[19]`
-/

namespace A298571.P10321306493668405048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298571.P10321306493668405048

/-! ## A298571.P5962516536332508891

`A298575(A167614(n+2)+1)+char[28]`
-/

namespace A298571.P5962516536332508891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298571.P5962516536332508891

/-! ## A298571.P3050498831422750701

`A298575(A000096(n+2)+5)%A000108(n+3)`
-/

namespace A298571.P3050498831422750701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298575 (A000096 (n + 2) + 5).toNat) (A000108 (n + 3))

end

end A298571.P3050498831422750701

/-! ## A298571.P16704063765992228576

`A007318(C(2, n))*A298575(A167614(n+2)+1)`
-/

namespace A298571.P16704063765992228576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298575 (A167614 (n + 2) + 1).toNat

end

end A298571.P16704063765992228576

/-!
# A298572: Number of nX5 0..1 arrays with every element equal to 0, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298572, there is no canonical definition to state claims against.
-/

/-! ## A298572.P490987574894791598

`A298575(∑[n+4]+11)`
-/

namespace A298572.P490987574894791598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298572.P490987574894791598

/-! ## A298572.P4382745258894020093

`A298575(A374005(n+1))%A249457(n)`
-/

namespace A298572.P4382745258894020093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298575 (A374005 (n + 1)).toNat) (A249457 n)

end

end A298572.P4382745258894020093

/-! ## A298572.P7106540278845878935

`A298575(A374005(n+1))+A111898(n+1)`
-/

namespace A298572.P7106540278845878935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A374005 (n + 1)).toNat + A111898 (n + 1)

end

end A298572.P7106540278845878935

/-!
# A298573: Number of nX6 0..1 arrays with every element equal to 0, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298573, there is no canonical definition to state claims against.
-/

/-! ## A298573.P870225764987703667

`A298575(∑[n+5]+16)`
-/

namespace A298573.P870225764987703667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298573.P870225764987703667

/-!
# A298574: Number of nX7 0..1 arrays with every element equal to 0, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298574, there is no canonical definition to state claims against.
-/

/-! ## A298574.P1729790083443429737

`A298575(A167487(n+5))`
-/

namespace A298574.P1729790083443429737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A167487 (n + 5)).toNat

end

end A298574.P1729790083443429737

/-! ## A298574.P8156335224534843310

`A298575(eq[11, A066657(n)])`
-/

namespace A298574.P8156335224534843310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298574.P8156335224534843310

/-! ## A298574.P254580668510154649

`A298575(A166136(n+5)+1)`
-/

namespace A298574.P254580668510154649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A166136 (n + 5) + 1).toNat

end

end A298574.P254580668510154649

/-! ## A298574.P12888991884641819243

`A298575(A167499(n+5)+2)`
-/

namespace A298574.P12888991884641819243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A167499 (n + 5) + 2).toNat

end

end A298574.P12888991884641819243

/-! ## A298574.P4157087749761542509

`A298575(A167614(n+5)+4)`
-/

namespace A298574.P4157087749761542509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298575 (A167614 (n + 5) + 4).toNat

end

end A298574.P4157087749761542509

/-!
# A298575: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298575, there is no canonical definition to state claims against.
-/

/-! ## A298575.P2397618477266169059

`A348028(A340427(n+1))`
-/

namespace A298575.P2397618477266169059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348028 (A340427 (n + 1)).toNat

end

end A298575.P2397618477266169059

/-! ## A298575.P3729871260851883669

`and(61, A000005(A063007(A008459(n))))`
-/

namespace A298575.P3729871260851883669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 61 (A000005 (A063007 (A008459 n).toNat).toNat)

end

end A298575.P3729871260851883669

/-! ## A298575.P11180060239655143853

`A108115(n)^A235875(A155495(n))`
-/

namespace A298575.P11180060239655143853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108115 n : ℚ) ^ (A235875 (A155495 n).toNat : ℤ)

end

end A298575.P11180060239655143853

/-! ## A298575.P1819568477960069231

`A287797(A220602(n+1))^A172090(n)`
-/

namespace A298575.P1819568477960069231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287797 (A220602 (n + 1)).toNat : ℚ) ^ (A172090 n : ℤ)

end

end A298575.P1819568477960069231

/-!
# A298576: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298576, there is no canonical definition to state claims against.
-/

/-! ## A298576.P5634443859166421398

`A298582(∑[4*n]+1)`
-/

namespace A298576.P5634443859166421398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298576.P5634443859166421398

/-! ## A298576.P8151207735287915073

`record[A298582(A330613(n+1))]`
-/

namespace A298576.P8151207735287915073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298576.P8151207735287915073

/-! ## A298576.P2469610946726448808

`record[A003982(n)*A298582(n+1)]`
-/

namespace A298576.P2469610946726448808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298576.P2469610946726448808

/-! ## A298576.P5594993508574611220

`record[A214505(n)*A298582(n+1)]`
-/

namespace A298576.P5594993508574611220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A298582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298576.P5594993508574611220

/-! ## A298576.P16783886284613195255

`A298582(A001844(n))+A107846(n)`
-/

namespace A298576.P16783886284613195255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A001844 n).toNat + A107846 n

end

end A298576.P16783886284613195255

/-!
# A298577: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298577, there is no canonical definition to state claims against.
-/

/-! ## A298577.P14296058649022570934

`A298582(∑[n+2]+4)`
-/

namespace A298577.P14296058649022570934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298577.P14296058649022570934

/-! ## A298577.P18338382330393791422

`or(1, A298582(A167614(n+1)))`
-/

namespace A298577.P18338382330393791422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298582 (A167614 (n + 1)).toNat)

end

end A298577.P18338382330393791422

/-! ## A298577.P2881802067139121653

`record[gcd(A298582(n+1), A303913(n))]`
-/

namespace A298577.P2881802067139121653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A298582 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298577.P2881802067139121653

/-! ## A298577.P14814256863542012211

`record[A298582(gcd(n+3, A141169(n)))]`
-/

namespace A298577.P14814256863542012211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (Int.gcd (n + 3 : ℤ) (A141169 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298577.P14814256863542012211

/-! ## A298577.P12905854519202708333

`A298582(A167614(n+1))+A011732(n)`
-/

namespace A298577.P12905854519202708333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A167614 (n + 1)).toNat + A011732 n

end

end A298577.P12905854519202708333

/-!
# A298578: Number of nX4 0..1 arrays with every element equal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298578, there is no canonical definition to state claims against.
-/

/-! ## A298578.P14296457317505691395

`A298582(∑[n+3]+7)`
-/

namespace A298578.P14296457317505691395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298578.P14296457317505691395

/-! ## A298578.P13499588851381171673

`A298582(A167614(n+2)+1)+char[20]`
-/

namespace A298578.P13499588851381171673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298578.P13499588851381171673

/-! ## A298578.P6219959755793033852

`(n%2)!*A298582(A055999(n)+10)`
-/

namespace A298578.P6219959755793033852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A298582 (A055999 n + 10).toNat

end

end A298578.P6219959755793033852

/-! ## A298578.P14387582658564467883

`record[gcd(2-A141169(n), A298582(n+1))]`
-/

namespace A298578.P14387582658564467883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A141169 n) (A298582 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298578.P14387582658564467883

/-! ## A298578.P2875005014922676336

`A298582(A055999(n)+10)%A000045(n+12)²`
-/

namespace A298578.P2875005014922676336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298582 (A055999 n + 10).toNat) (A000045 (n + 12) ^ 2)

end

end A298578.P2875005014922676336

/-!
# A298579: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298579, there is no canonical definition to state claims against.
-/

/-! ## A298579.P13302264356747606360

`A298582(A155212(n)+13)`
-/

namespace A298579.P13302264356747606360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A155212 n + 13).toNat

end

end A298579.P13302264356747606360

/-! ## A298579.P8205477524402057933

`A298582(A056000(n)+15)`
-/

namespace A298579.P8205477524402057933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A056000 n + 15).toNat

end

end A298579.P8205477524402057933

/-! ## A298579.P8556501380830290943

`A298582(eq[7, A066657(n)])`
-/

namespace A298579.P8556501380830290943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298579.P8556501380830290943

/-! ## A298579.P6347532311232622581

`A298582(A167614(n+3)+2)`
-/

namespace A298579.P6347532311232622581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A167614 (n + 3) + 2).toNat

end

end A298579.P6347532311232622581

/-! ## A298579.P57566109537097057

`A298582(A000124(n+4)+4)`
-/

namespace A298579.P57566109537097057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A000124 (n + 4) + 4).toNat

end

end A298579.P57566109537097057

/-!
# A298580: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298580, there is no canonical definition to state claims against.
-/

/-! ## A298580.P8172109053334658035

`A298582(A167614(n+4)+3)`
-/

namespace A298580.P8172109053334658035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A167614 (n + 4) + 3).toNat

end

end A298580.P8172109053334658035

/-! ## A298580.P10079839579898127014

`A298582(A000124(n+5)+5)`
-/

namespace A298580.P10079839579898127014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A000124 (n + 5) + 5).toNat

end

end A298580.P10079839579898127014

/-! ## A298580.P7235303852182554661

`A298582(A000217(n+5)+6)`
-/

namespace A298580.P7235303852182554661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A000217 (n + 5) + 6).toNat

end

end A298580.P7235303852182554661

/-! ## A298580.P15294128467636290550

`A298582(A027379(n+3)+9)`
-/

namespace A298580.P15294128467636290550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A027379 (n + 3) + 9).toNat

end

end A298580.P15294128467636290550

/-! ## A298580.P13539664658273892986

`A298582(eq[7, A131818(n+1)])`
-/

namespace A298580.P13539664658273892986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298580.P13539664658273892986

/-!
# A298581: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298581, there is no canonical definition to state claims against.
-/

/-! ## A298581.P9367566394678962247

`A298582(A167487(n+5))`
-/

namespace A298581.P9367566394678962247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A167487 (n + 5)).toNat

end

end A298581.P9367566394678962247

/-! ## A298581.P5209410401346042706

`A298582(A056119(n)+28)`
-/

namespace A298581.P5209410401346042706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A056119 n + 28).toNat

end

end A298581.P5209410401346042706

/-! ## A298581.P15078020951893218645

`A298582(eq[11, A066657(n)])`
-/

namespace A298581.P15078020951893218645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298581.P15078020951893218645

/-! ## A298581.P13448628789688477307

`A298582(A166136(n+5)+1)`
-/

namespace A298581.P13448628789688477307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A166136 (n + 5) + 1).toNat

end

end A298581.P13448628789688477307

/-! ## A298581.P16766526602994472399

`A298582(A167499(n+5)+2)`
-/

namespace A298581.P16766526602994472399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A167499 (n + 5) + 2).toNat

end

end A298581.P16766526602994472399

/-!
# A298582: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298582, there is no canonical definition to state claims against.
-/

/-! ## A298582.P10488529919729387904

`A056926(A299574(n+1)²)`
-/

namespace A298582.P10488529919729387904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A299574 (n + 1) ^ 2).toNat

end

end A298582.P10488529919729387904

/-! ## A298582.P12710238697318422023

`A262689(A299574(n+1)²)`
-/

namespace A298582.P12710238697318422023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A299574 (n + 1) ^ 2).toNat

end

end A298582.P12710238697318422023

/-! ## A298582.P11464767002754955389

`A056926(A299574(n+1)^2)`
-/

namespace A298582.P11464767002754955389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A299574 (n + 1) ^ 2).toNat

end

end A298582.P11464767002754955389

/-! ## A298582.P4140963255965168407

`A299574(n+1)%A205536(n)`
-/

namespace A298582.P4140963255965168407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299574 (n + 1)) (A205536 n)

end

end A298582.P4140963255965168407

/-! ## A298582.P9865503850046986103

`or(A185284(n)%2, A299574(n+1))`
-/

namespace A298582.P9865503850046986103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A185284 n) 2) (A299574 (n + 1))

end

end A298582.P9865503850046986103

/-!
# A298583: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298583, there is no canonical definition to state claims against.
-/

/-! ## A298583.P11263353473010520216

`A298589(∑[4*n]+1)`
-/

namespace A298583.P11263353473010520216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298583.P11263353473010520216

/-! ## A298583.P2398634051417044882

`and(-1, A298589(A001844(n)))`
-/

namespace A298583.P2398634051417044882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298589 (A001844 n).toNat)

end

end A298583.P2398634051417044882

/-! ## A298583.P939508119615321473

`A298589(A001844(n))+A011731(n)`
-/

namespace A298583.P939508119615321473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A001844 n).toNat + A011731 n

end

end A298583.P939508119615321473

/-! ## A298583.P7104240214817153139

`A298589(A001844(n))+A025439(n)`
-/

namespace A298583.P7104240214817153139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A001844 n).toNat + A025439 n

end

end A298583.P7104240214817153139

/-! ## A298583.P10299646563892125324

`A298589(A001844(n))+A025466(n)`
-/

namespace A298583.P10299646563892125324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A001844 n).toNat + A025466 n

end

end A298583.P10299646563892125324

/-!
# A298584: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298584, there is no canonical definition to state claims against.
-/

/-! ## A298584.P13759696806876842671

`A298589(∑[n+2]+4)`
-/

namespace A298584.P13759696806876842671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298584.P13759696806876842671

/-! ## A298584.P609587723801279064

`and(-1, A298589(A167614(n+1)))`
-/

namespace A298584.P609587723801279064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298589 (A167614 (n + 1)).toNat)

end

end A298584.P609587723801279064

/-! ## A298584.P9041222150271736414

`or(char[1], A298589(A046691(n)+7))`
-/

namespace A298584.P9041222150271736414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298589 (A046691 n + 7).toNat)

end

end A298584.P9041222150271736414

/-! ## A298584.P993437696034584198

`A298589(A167614(n+1))+A011738(n)`
-/

namespace A298584.P993437696034584198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A167614 (n + 1)).toNat + A011738 n

end

end A298584.P993437696034584198

/-! ## A298584.P16148786921935416763

`A298589(A167614(n+1))+A025466(n)`
-/

namespace A298584.P16148786921935416763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A167614 (n + 1)).toNat + A025466 n

end

end A298584.P16148786921935416763

/-!
# A298585: Number of nX4 0..1 arrays with every element equal to 0, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298585, there is no canonical definition to state claims against.
-/

/-! ## A298585.P16150580391893591127

`A298589(∑[n+3]+7)`
-/

namespace A298585.P16150580391893591127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298585.P16150580391893591127

/-! ## A298585.P11871315647929997921

`or(char[2], A298589(A052905(n)+9))`
-/

namespace A298585.P11871315647929997921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298589 (A052905 n + 9).toNat)

end

end A298585.P11871315647929997921

/-! ## A298585.P3729143420853443776

`A298589(A167614(n+2)+1)+char[18]`
-/

namespace A298585.P3729143420853443776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298585.P3729143420853443776

/-! ## A298585.P14321924800606406604

`A298589(A055999(n)+10)+2-4/2`
-/

namespace A298585.P14321924800606406604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298589 (A055999 n + 10).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A298585.P14321924800606406604

/-! ## A298585.P8364199116573683502

`A298589(A000124(n+3)+3)+C(n, 64)`
-/

namespace A298585.P8364199116573683502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A000124 (n + 3) + 3).toNat + (Nat.choose n 64 : ℤ)

end

end A298585.P8364199116573683502

/-!
# A298586: Number of nX5 0..1 arrays with every element equal to 0, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298586, there is no canonical definition to state claims against.
-/

/-! ## A298586.P15450638302047083556

`A298589(∑[n+4]+11)`
-/

namespace A298586.P15450638302047083556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298586.P15450638302047083556

/-! ## A298586.P3377341168547584272

`A298589(A000096(n+3)+6)+char[17]`
-/

namespace A298586.P3377341168547584272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A000096 (n + 3) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298586.P3377341168547584272

/-! ## A298586.P6922875251835025851

`A298589(A034856(n+3)+7)+char[20]`
-/

namespace A298586.P6922875251835025851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A034856 (n + 3) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298586.P6922875251835025851

/-! ## A298586.P7749335238670040193

`A298589(A167499(n+3))%(6^(n+1))`
-/

namespace A298586.P7749335238670040193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298589 (A167499 (n + 3)).toNat) (6 ^ (n + 1) : ℤ)

end

end A298586.P7749335238670040193

/-! ## A298586.P15136247629125517544

`A007318(C(n, 2))*A298589(A034856(n+3)+7)`
-/

namespace A298586.P15136247629125517544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A298589 (A034856 (n + 3) + 7).toNat

end

end A298586.P15136247629125517544

/-!
# A298587: Number of nX6 0..1 arrays with every element equal to 0, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298587, there is no canonical definition to state claims against.
-/

/-! ## A298587.P10523233697395370202

`A298589(∑[n+5]+16)`
-/

namespace A298587.P10523233697395370202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298587.P10523233697395370202

/-!
# A298588: Number of nX7 0..1 arrays with every element equal to 0, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298588, there is no canonical definition to state claims against.
-/

/-! ## A298588.P7509822662403468057

`A298589(A374008(n+1))`
-/

namespace A298588.P7509822662403468057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A374008 (n + 1)).toNat

end

end A298588.P7509822662403468057

/-! ## A298588.P14325426491866574680

`A298589(A056119(n)+28)`
-/

namespace A298588.P14325426491866574680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A056119 n + 28).toNat

end

end A298588.P14325426491866574680

/-! ## A298588.P4984725149426597522

`A298589(eq[11, A066657(n)])`
-/

namespace A298588.P4984725149426597522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298588.P4984725149426597522

/-! ## A298588.P8102931231897071555

`A298589(A166136(n+5)+1)`
-/

namespace A298588.P8102931231897071555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A166136 (n + 5) + 1).toNat

end

end A298588.P8102931231897071555

/-! ## A298588.P7338384948409741965

`A298589(A167614(n+5)+4)`
-/

namespace A298588.P7338384948409741965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (A167614 (n + 5) + 4).toNat

end

end A298588.P7338384948409741965

/-!
# A298590: Sum of terms of A293630 after generating the sequence for n steps (see comments).

The programs for A298590, there is no canonical definition to state claims against.
-/

/-! ## A298590.P9677212486199183752

`(1+A293630(A291481(n-1)))*a(n-1)-A293630(A291481(n-1))²` with `a(0)=3`
-/

namespace A298590.P9677212486199183752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (1 + A293630 (A291481 (n - 1)).toNat) * a (n - 1) - A293630 (A291481 (n - 1)).toNat ^ 2

end

end A298590.P9677212486199183752

/-! ## A298590.P8808679427741932863

`A298606(A291481(n))`
-/

namespace A298590.P8808679427741932863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298606 (A291481 n).toNat

end

end A298590.P8808679427741932863

/-! ## A298590.P10341756949735549342

`2*eq[23, lcm(23, lcm(8, n)/8)]+1`
-/

namespace A298590.P10341756949735549342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 23 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A298590.P10341756949735549342

/-! ## A298590.P6760889062440806774

`2*A018323(n+1)+1`
-/

namespace A298590.P6760889062440806774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018323 (n + 1) + 1

end

end A298590.P6760889062440806774

/-!
# A298592: Triangle read by rows: T(n,k) = number of parking functions of length n whose lead number is k.

The programs for A298592, there is no canonical definition to state claims against.
-/

/-! ## A298592.P4064600708465252655

`A298593(n+1)/∑[char[∑[n]]]`
-/

namespace A298592.P4064600708465252655
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298593 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A298592.P4064600708465252655

/-! ## A298592.P13455305989657959391

`A265145(A175840(n))`
-/

namespace A298592.P13455305989657959391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265145 (A175840 n).toNat

end

end A298592.P13455305989657959391

/-! ## A298592.P9553648967566630820

`floor(A298593(n+1)/A002024(n+1))`
-/

namespace A298592.P9553648967566630820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298593 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A298592.P9553648967566630820

/-! ## A298592.P9581315349985854290

`floor(A298593(n+1)/(A003056(n)+1))`
-/

namespace A298592.P9581315349985854290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298593 (n + 1) : ℚ) / (A003056 n + 1 : ℚ)⌋

end

end A298592.P9581315349985854290

/-! ## A298592.P4878851385036374564

`floor(A298593(n+1)/A113764(n+1))`
-/

namespace A298592.P4878851385036374564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298593 (n + 1) : ℚ) / (A113764 (n + 1) : ℚ)⌋

end

end A298592.P4878851385036374564

/-!
# A298593: Triangle read by rows: T(n,k) = number of times the value k appears on the parking functions of length n.

The programs for A298593, there is no canonical definition to state claims against.
-/

/-! ## A298593.P13149809007938367713

`∑[char[∑[n]]]*A298592(n+1)`
-/

namespace A298593.P13149809007938367713
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A298592 (n + 1)

end

end A298593.P13149809007938367713

/-! ## A298593.P8889601596825366114

`∑[char[∑[n]]]*A265145(A175840(n))`
-/

namespace A298593.P8889601596825366114
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A265145 (A175840 n).toNat

end

end A298593.P8889601596825366114

/-! ## A298593.P8203435671833618844

`A111650(n+1)*A298592(n+1)/2`
-/

namespace A298593.P8203435671833618844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111650 (n + 1) * A298592 (n + 1) : ℚ) / 2

end

end A298593.P8203435671833618844

/-! ## A298593.P5541695273437646221

`A298592(n+1)*A339276(A164897(n))`
-/

namespace A298593.P5541695273437646221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298592 (n + 1) * A339276 (A164897 n).toNat

end

end A298593.P5541695273437646221

/-! ## A298593.P6497322311411929010

`A111650(n+1)*A265145(A175840(n))/2`
-/

namespace A298593.P6497322311411929010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111650 (n + 1) * A265145 (A175840 n).toNat : ℚ) / 2

end

end A298593.P6497322311411929010

/-!
# A298594: Triangle read by rows: T(n,k) = number of parking functions a of length n such that a(1) = k and if we replace a(1) = k with k+1 we don't get a parking function.

The programs for A298594, there is no canonical definition to state claims against.
-/

/-! ## A298594.P17708195688138070421

`A298597(n+1)/∑[char[∑[n]]]`
-/

namespace A298594.P17708195688138070421
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298597 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A298594.P17708195688138070421

/-! ## A298594.P17304131368569672357

`floor(A298597(n+1)/A002024(n+1))`
-/

namespace A298594.P17304131368569672357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298597 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A298594.P17304131368569672357

/-! ## A298594.P4315852345481573999

`floor(A298597(n+1)/A113764(n+1))`
-/

namespace A298594.P4315852345481573999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298597 (n + 1) : ℚ) / (A113764 (n + 1) : ℚ)⌋

end

end A298594.P4315852345481573999

/-! ## A298594.P12248124289869874245

`floor(A298597(n+1)/A130146(n+1))`
-/

namespace A298594.P12248124289869874245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298597 (n + 1) : ℚ) / (A130146 (n + 1) : ℚ)⌋

end

end A298594.P12248124289869874245

/-! ## A298594.P13606330560246962465

`A088956(n)*A088956(A112367(n))`
-/

namespace A298594.P13606330560246962465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088956 n * A088956 (A112367 n).toNat

end

end A298594.P13606330560246962465

/-!
# A298595: G.f.: Sum_{n>=0} a(n)*x^(2*n)/((2*n)!)^2 = 1/BesselJ(0,x).

The programs for A298595, there is no canonical definition to state claims against.
-/

/-! ## A298595.P6380659319122730923

`A000275(n)*A001818(n)`
-/

namespace A298595.P6380659319122730923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000275 n * A001818 n

end

end A298595.P6380659319122730923

/-! ## A298595.P11456190522035346897

`abs(A055133(∑[n]))*A001818(n)`
-/

namespace A298595.P11456190522035346897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055133 (∑ j ∈ Finset.range (n + 1), f1 j)| * A001818 n

end

end A298595.P11456190522035346897

/-! ## A298595.P7916914252057652756

`A001818(n)*A212855(∑[n]+2)`
-/

namespace A298595.P7916914252057652756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001818 n * A212855 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298595.P7916914252057652756

/-! ## A298595.P757984337717667034

`abs(A055133(∑[n]))*A000246(2*n)`
-/

namespace A298595.P757984337717667034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055133 (∑ j ∈ Finset.range (n + 1), f1 j)| * A000246 (2 * n)

end

end A298595.P757984337717667034

/-! ## A298595.P17990498271968564874

`∏[1-2*n]²*A192721(A152947(n+1))`
-/

namespace A298595.P17990498271968564874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 * A192721 (A152947 (n + 1)).toNat

end

end A298595.P17990498271968564874

/-!
# A298596: Expansion of Product_{k>=2} 1/(1 + x^k).

The programs for A298596, there is no canonical definition to state claims against.
-/

/-! ## A298596.P3902676128762355767

`A027188(n+2)-A027194(n+2)`
-/

namespace A298596.P3902676128762355767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027188 (n + 2) - A027194 (n + 2)

end

end A298596.P3902676128762355767

/-! ## A298596.P8689555327749845934

`A002865(n)-(A027194(n+2)+A027194(n+2))`
-/

namespace A298596.P8689555327749845934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - (A027194 (n + 2) + A027194 (n + 2))

end

end A298596.P8689555327749845934

/-! ## A298596.P2765532223320783817

`∏{p}[A084376(n), A089045(#)]`
-/

namespace A298596.P2765532223320783817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A089045 p

end

end A298596.P2765532223320783817

/-! ## A298596.P17014005699913992267

`(A033148(3*n+5)-A002865(n))%2`
-/

namespace A298596.P17014005699913992267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033148 (3 * n + 5) - A002865 n) 2

end

end A298596.P17014005699913992267

/-! ## A298596.P4393700699143498351

`A000035(A307067(n))*A057077(n)`
-/

namespace A298596.P4393700699143498351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A307067 n).toNat * A057077 n

end

end A298596.P4393700699143498351

/-!
# A298597: Number T(n,k) of times the value k appears on the parking functions of length n and such that if we replace that value k with k+1 we don't get a parking function.

The programs for A298597, there is no canonical definition to state claims against.
-/

/-! ## A298597.P7319549208498271170

`∑[char[∑[n]]]*A298594(n+1)`
-/

namespace A298597.P7319549208498271170
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A298594 (n + 1)

end

end A298597.P7319549208498271170

/-! ## A298597.P5670371494750932538

`A185390(comp[∑[n]])/A002260(n+1)`
-/

namespace A298597.P5670371494750932538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185390 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A298597.P5670371494750932538

/-! ## A298597.P15024586707935306539

`A185390(comp[∑[n]])/(A002262(n)+1)`
-/

namespace A298597.P15024586707935306539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185390 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A002262 n + 1 : ℚ)

end

end A298597.P15024586707935306539

/-! ## A298597.P14208414395106262159

`A298594(n+1)*A339276(A164897(n))`
-/

namespace A298597.P14208414395106262159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298594 (n + 1) * A339276 (A164897 n).toNat

end

end A298597.P14208414395106262159

/-! ## A298597.P12054517250071424992

`A185390(comp[∑[n]])/A000005(A059268(n))`
-/

namespace A298597.P12054517250071424992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185390 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A298597.P12054517250071424992

/-!
# A298598: Expansion of Product_{k>=2} (1 + x^k)^k.

The programs for A298598, there is no canonical definition to state claims against.
-/

/-! ## A298598.P3521108780529800100

`A303902(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A298598.P3521108780529800100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A303902 n + a (n - 2)

end

end A298598.P3521108780529800100

/-! ## A298598.P9118383355422407647

`A026007(n)-a(n-1)` with `a(0)=1`
-/

namespace A298598.P9118383355422407647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026007 n - a (n - 1)

end

end A298598.P9118383355422407647

/-! ## A298598.P168975873581630167

`abs(∑[A026007(n)*A033999(n)])`
-/

namespace A298598.P168975873581630167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A298598.P168975873581630167

/-! ## A298598.P5602229394092979199

`∑[A026007(n)*A033999(n)]*A033999(n+2)`
-/

namespace A298598.P5602229394092979199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 2)

end

end A298598.P5602229394092979199

/-! ## A298598.P12946575669420986236

`A277938(∑[n+2]-1)-a(n-1)` with `a(0)=1`
-/

namespace A298598.P12946575669420986236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277938 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - a (n - 1)

end

end A298598.P12946575669420986236

/-! ## A298598.P5375742781421522106

`abs(a(n-1)-A277938(A034856(n+1)))` with `a(0)=1`
-/

namespace A298598.P5375742781421522106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A277938 (A034856 (n + 1)).toNat|

end

end A298598.P5375742781421522106

/-!
# A298599: Expansion of Product_{k>=2} (1 - x^k)^k.

The programs for A298599, there is no canonical definition to state claims against.
-/

/-! ## A298599.P107816517034720120

`∑[A073592(n)]`
-/

namespace A298599.P107816517034720120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298599.P107816517034720120

/-! ## A298599.P12053578061513034901

`A073592(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A298599.P12053578061513034901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073592 n + a (A023443 n).toNat

end

end A298599.P12053578061513034901

/-! ## A298599.P7495252590341142410

`A073592(n)+a(sqrt(A000290(n))-1)` with `a(0)=1`
-/

namespace A298599.P7495252590341142410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073592 n + a (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ) - 1)).toNat

end

end A298599.P7495252590341142410

/-! ## A298599.P12131024100851772102

`A073592(n)+a(n-A007318(C(2, n)))` with `a(0)=1`
-/

namespace A298599.P12131024100851772102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073592 n + a ((n : ℤ) - A007318 (Nat.choose 2 n)).toNat

end

end A298599.P12131024100851772102

/-! ## A298599.P6831110324027582083

`A073592(n)+a(n-1)*a(A000038(n))` with `a(0)=1`
-/

namespace A298599.P6831110324027582083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073592 n + a (n - 1) * a (A000038 n).toNat

end

end A298599.P6831110324027582083

/-! ## A298599.P14316674823449141447

`A073592(n)+a(A025581(C(n, 2)))` with `a(0)=1`
-/

namespace A298599.P14316674823449141447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073592 n + a (A025581 (Nat.choose n 2)).toNat

end

end A298599.P14316674823449141447

/-! ## A298599.P7029217960651492321

`∑[A276554(∑[n+2]-1)]`
-/

namespace A298599.P7029217960651492321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298599.P7029217960651492321

/-! ## A298599.P10203793763082127256

`-∑[-A276554(A034856(n+1))]`
-/

namespace A298599.P10203793763082127256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A276554 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298599.P10203793763082127256

/-! ## A298599.P564500800234868736

`∑[A276554(A034856(n+1))]%A000051(n)`
-/

namespace A298599.P564500800234868736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000051 n)

end

end A298599.P564500800234868736

/-! ## A298599.P1756335298182164672

`∑[A276554(A034856(n+1))%A001546(n)]`
-/

namespace A298599.P1756335298182164672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276554 (A034856 (n + 1)).toNat) (A001546 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298599.P1756335298182164672

/-! ## A298599.P855826237264719356

`∑[A276554(A034856(n+1)+A000007(n))]+1`
-/

namespace A298599.P855826237264719356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A034856 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A298599.P855826237264719356

