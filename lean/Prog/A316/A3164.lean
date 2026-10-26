import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A316400: Number of strict integer partitions of n that are knapsack (every subset has a different sum) but not every subset has a different average.

The programs for A316400, there is no canonical definition to state claims against.
-/

/-! ## A316400.P13384631445539112270

`A275972(n+1)+A316401(n+1)-A316313(n+1)`
-/

namespace A316400.P13384631445539112270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275972 (n + 1) + (A316401 (n + 1) - A316313 (n + 1))

end

end A316400.P13384631445539112270

/-! ## A316400.P8278792993827442339

`A316399(n+1)+A316401(n+1)-A316402(n+1)`
-/

namespace A316400.P8278792993827442339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316399 (n + 1) + (A316401 (n + 1) - A316402 (n + 1))

end

end A316400.P8278792993827442339

/-!
# A316401: Number of strict integer partitions of n that are not knapsack (not every subset has a different sum) but every subset has a different average.

The programs for A316401, there is no canonical definition to state claims against.
-/

/-! ## A316401.P13453245335081892730

`A316313(n+1)+A316400(n+1)-A275972(n+1)`
-/

namespace A316401.P13453245335081892730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (n + 1) + (A316400 (n + 1) - A275972 (n + 1))

end

end A316401.P13453245335081892730

/-! ## A316401.P3602182756132329073

`A316400(n+1)+A316402(n+1)-A316399(n+1)`
-/

namespace A316401.P3602182756132329073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316400 (n + 1) + (A316402 (n + 1) - A316399 (n + 1))

end

end A316401.P3602182756132329073

/-! ## A316401.P14805526423582721642

`Δ[A005858(n+10)]%A005858(n+10)`
-/

namespace A316401.P14805526423582721642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005858 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A005858 (n + 10))

end

end A316401.P14805526423582721642

/-! ## A316401.P7198640628192614248

`A048881(A036649(gcd(n, ∑[n])))`
-/

namespace A316401.P7198640628192614248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A036649 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A316401.P7198640628192614248

/-! ## A316401.P10977316134042990769

`A355480(and(A001405(n), A194796(n+1)))`
-/

namespace A316401.P10977316134042990769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355480 (Int.land (A001405 n) (A194796 (n + 1))).toNat

end

end A316401.P10977316134042990769

/-!
# A316402: Number of strict non-knapsack integer partitions of n, meaning not every subset has a different sum.

The programs for A316402, there is no canonical definition to state claims against.
-/

/-! ## A316402.P1336827073721215323

`A000009(n+1)-A275972(n+1)`
-/

namespace A316402.P1336827073721215323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A275972 (n + 1)

end

end A316402.P1336827073721215323

/-! ## A316402.P10439216464921378644

`Δ[A036469(n)]-A275972(n+1)`
-/

namespace A316402.P10439216464921378644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A275972 (n + 1)

end

end A316402.P10439216464921378644

/-! ## A316402.P1737272772804308651

`A219347(A046092(n))-A275972(n+1)`
-/

namespace A316402.P1737272772804308651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A046092 n).toNat - A275972 (n + 1)

end

end A316402.P1737272772804308651

/-! ## A316402.P2115923265207507855

`A025147(n+1)+A025147(n)-A275972(n+1)`
-/

namespace A316402.P2115923265207507855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A275972 (n + 1))

end

end A316402.P2115923265207507855

/-! ## A316402.P11416938434407209221

`A219347(A051870(n))-A275972(n+1)`
-/

namespace A316402.P11416938434407209221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A051870 n).toNat - A275972 (n + 1)

end

end A316402.P11416938434407209221

/-!
# A316403: Number of multisets of exactly two nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A316403, there is no canonical definition to state claims against.
-/

/-! ## A316403.P4170200083267714588

`record[A292506(∑[n]+2)]`
-/

namespace A316403.P4170200083267714588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316403.P4170200083267714588

/-! ## A316403.P3527341210807909599

`A292506(∑[n+2]+3)`
-/

namespace A316403.P3527341210807909599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A316403.P3527341210807909599

/-! ## A316403.P14405211072128147239

`record[gcd(A292506(n+2), A292506(n))]`
-/

namespace A316403.P14405211072128147239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292506 (n + 2)) (A292506 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316403.P14405211072128147239

/-! ## A316403.P15367167292306391940

`gcd(A154955(n+2)², A292506(A133263(n+2)))`
-/

namespace A316403.P15367167292306391940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154955 (n + 2) ^ 2) (A292506 (A133263 (n + 2)).toNat)

end

end A316403.P15367167292306391940

/-! ## A316403.P18054811024903211020

`A292506(A133263(n+2))%A220699(n+4)`
-/

namespace A316403.P18054811024903211020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292506 (A133263 (n + 2)).toNat) (A220699 (n + 4))

end

end A316403.P18054811024903211020

/-!
# A316404: Number of multisets of exactly three nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A316404, there is no canonical definition to state claims against.
-/

/-! ## A316404.P14142477752306005284

`A292506(A167614(n+2))`
-/

namespace A316404.P14142477752306005284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A167614 (n + 2)).toNat

end

end A316404.P14142477752306005284

/-! ## A316404.P12678993060026651361

`A292506(A055999(n)+9)`
-/

namespace A316404.P12678993060026651361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A055999 n + 9).toNat

end

end A316404.P12678993060026651361

/-! ## A316404.P17626310645885120940

`record[A292506(A133263(n)+1)]`
-/

namespace A316404.P17626310645885120940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316404.P17626310645885120940

/-! ## A316404.P15377725543177545069

`A292506(A000124(n+3)+2)`
-/

namespace A316404.P15377725543177545069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000124 (n + 3) + 2).toNat

end

end A316404.P15377725543177545069

/-! ## A316404.P11165361553501753763

`A292506(A166136(n+2)-3)`
-/

namespace A316404.P11165361553501753763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A166136 (n + 2) - 3).toNat

end

end A316404.P11165361553501753763

/-! ## A316404.P4062075740777821027

`A292506(eq[2, A002260(n+1)-2])`
-/

namespace A316404.P4062075740777821027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316404.P4062075740777821027

/-! ## A316404.P15341956688608879033

`A292506(eq[2, A002260(n+1)/2])`
-/

namespace A316404.P15341956688608879033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A316404.P15341956688608879033

/-! ## A316404.P18126882372075456051

`A292506(A000217(n+2)+6+n)`
-/

namespace A316404.P18126882372075456051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000217 (n + 2) + 6 + (n : ℤ)).toNat

end

end A316404.P18126882372075456051

/-! ## A316404.P3327295753307852745

`A292506(A005449(n+1)+7-n²)`
-/

namespace A316404.P3327295753307852745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A005449 (n + 1) + (7 - (n ^ 2 : ℤ))).toNat

end

end A316404.P3327295753307852745

/-!
# A316405: Number of multisets of exactly four nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A316405, there is no canonical definition to state claims against.
-/

/-! ## A316405.P13402023624820223363

`A292506(A155212(n)+12)`
-/

namespace A316405.P13402023624820223363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A155212 n + 12).toNat

end

end A316405.P13402023624820223363

/-! ## A316405.P3556789629180807939

`A292506(A167499(n+3)-1)`
-/

namespace A316405.P3556789629180807939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A167499 (n + 3) - 1).toNat

end

end A316405.P3556789629180807939

/-! ## A316405.P11089197501424799604

`A292506(A133263(n+4)+2)`
-/

namespace A316405.P11089197501424799604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A133263 (n + 4) + 2).toNat

end

end A316405.P11089197501424799604

/-! ## A316405.P18374638511988399556

`A292506(A000124(n+4)+3)`
-/

namespace A316405.P18374638511988399556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000124 (n + 4) + 3).toNat

end

end A316405.P18374638511988399556

/-! ## A316405.P6342575433883353498

`A292506(A134869(n+4)+3)`
-/

namespace A316405.P6342575433883353498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A134869 (n + 4) + 3).toNat

end

end A316405.P6342575433883353498

/-! ## A316405.P13238678002452737879

`A292506(A253145(n+3)+4)`
-/

namespace A316405.P13238678002452737879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A253145 (n + 3) + 4).toNat

end

end A316405.P13238678002452737879

/-! ## A316405.P246933926254291816

`A292506(A000096(n+3)+5)`
-/

namespace A316405.P246933926254291816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000096 (n + 3) + 5).toNat

end

end A316405.P246933926254291816

/-! ## A316405.P17322217650970391927

`A292506(Δ[A034857(n+1)]+7)`
-/

namespace A316405.P17322217650970391927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (f1 (n + 1) - f1 n + 7).toNat

end

end A316405.P17322217650970391927

/-!
# A316406: Number of multisets of exactly five nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A316406, there is no canonical definition to state claims against.
-/

/-! ## A316406.P2230703433626899589

`A292506(A167499(n+4))`
-/

namespace A316406.P2230703433626899589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A167499 (n + 4)).toNat

end

end A316406.P2230703433626899589

/-! ## A316406.P12028313933677579149

`A292506(A166136(n+4)-1)`
-/

namespace A316406.P12028313933677579149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A166136 (n + 4) - 1).toNat

end

end A316406.P12028313933677579149

/-! ## A316406.P5093950683785581665

`A292506(A000124(n+5)+4)`
-/

namespace A316406.P5093950683785581665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000124 (n + 5) + 4).toNat

end

end A316406.P5093950683785581665

/-! ## A316406.P6038264663807455824

`A292506(A000096(n+4)+6)`
-/

namespace A316406.P6038264663807455824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000096 (n + 4) + 6).toNat

end

end A316406.P6038264663807455824

/-! ## A316406.P3812158514385590870

`A292506(A052905(n+2)+10)`
-/

namespace A316406.P3812158514385590870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A052905 (n + 2) + 10).toNat

end

end A316406.P3812158514385590870

/-! ## A316406.P12604852346387050505

`A292506(eq[6, A002260(n+1)])`
-/

namespace A316406.P12604852346387050505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316406.P12604852346387050505

/-! ## A316406.P11886596611060794182

`A292506(A027379(n+4)-(n-2))`
-/

namespace A316406.P11886596611060794182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A027379 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A316406.P11886596611060794182

/-! ## A316406.P10388177268492256183

`record[A292506(A167499(n)%A175658(n))]`
-/

namespace A316406.P10388177268492256183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (Int.tmod (A167499 n) (A175658 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316406.P10388177268492256183

/-!
# A316407: Number of multisets of exactly six nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A316407, there is no canonical definition to state claims against.
-/

/-! ## A316407.P15321840845348831151

`A292506(A056119(n)+27)`
-/

namespace A316407.P15321840845348831151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A056119 n + 27).toNat

end

end A316407.P15321840845348831151

/-! ## A316407.P14026938233820844763

`A292506(A167499(n+5)+1)`
-/

namespace A316407.P14026938233820844763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A167499 (n + 5) + 1).toNat

end

end A316407.P14026938233820844763

/-! ## A316407.P1076326797727420491

`A292506(A000096(n+5)+7)`
-/

namespace A316407.P1076326797727420491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000096 (n + 5) + 7).toNat

end

end A316407.P1076326797727420491

/-! ## A316407.P6355157165514590581

`A292506(A000217(n+6)+6)`
-/

namespace A316407.P6355157165514590581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000217 (n + 6) + 6).toNat

end

end A316407.P6355157165514590581

/-! ## A316407.P15357750582975523521

`A292506(A161680(n+7)+6)`
-/

namespace A316407.P15357750582975523521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A161680 (n + 7) + 6).toNat

end

end A316407.P15357750582975523521

/-! ## A316407.P12949118143817881254

`A292506(A055999(n+1)+A004273(n+12))`
-/

namespace A316407.P12949118143817881254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A055999 (n + 1) + A004273 (n + 12)).toNat

end

end A316407.P12949118143817881254

/-! ## A316407.P4972216725609869800

`A292506(A167614(n+11)-A008458(n+9))`
-/

namespace A316407.P4972216725609869800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A167614 (n + 11) - A008458 (n + 9)).toNat

end

end A316407.P4972216725609869800

/-!
# A316408: Number of multisets of exactly seven nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A316408, there is no canonical definition to state claims against.
-/

/-! ## A316408.P10778317779875215991

`A292506(A167499(n+6)+2)`
-/

namespace A316408.P10778317779875215991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A167499 (n + 6) + 2).toNat

end

end A316408.P10778317779875215991

/-! ## A316408.P15220169173969421565

`A292506(A000096(n+6)+8)`
-/

namespace A316408.P15220169173969421565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000096 (n + 6) + 8).toNat

end

end A316408.P15220169173969421565

/-! ## A316408.P6698329384172002048

`A292506(A000217(n+8)-(n+1))`
-/

namespace A316408.P6698329384172002048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A316408.P6698329384172002048

/-! ## A316408.P1529836896832298944

`A292506(A052905(n+2)+A004273(n+13))`
-/

namespace A316408.P1529836896832298944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A052905 (n + 2) + A004273 (n + 13)).toNat

end

end A316408.P1529836896832298944

/-! ## A316408.P2656243314458000643

`A292506(A133263(n+9)-A005843(n+6))`
-/

namespace A316408.P2656243314458000643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A133263 (n + 9) - A005843 (n + 6)).toNat

end

end A316408.P2656243314458000643

/-!
# A316409: Number of multisets of exactly eight nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A316409, there is no canonical definition to state claims against.
-/

/-! ## A316409.P2859453316042951714

`A292506(A134869(n+8)+7)`
-/

namespace A316409.P2859453316042951714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A134869 (n + 8) + 7).toNat

end

end A316409.P2859453316042951714

/-! ## A316409.P2050916392877679864

`A292506(A000096(n+7)+9)`
-/

namespace A316409.P2050916392877679864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000096 (n + 7) + 9).toNat

end

end A316409.P2050916392877679864

/-! ## A316409.P14335404276844035649

`A292506(A000217(n+8)+8)`
-/

namespace A316409.P14335404276844035649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000217 (n + 8) + 8).toNat

end

end A316409.P14335404276844035649

/-! ## A316409.P17146023240962130953

`A292506(A167499(n+3)+A016813(n+7))`
-/

namespace A316409.P17146023240962130953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A167499 (n + 3) + A016813 (n + 7)).toNat

end

end A316409.P17146023240962130953

/-! ## A316409.P11410878894991550076

`A292506(A055999(n+3)+A004273(n+15))`
-/

namespace A316409.P11410878894991550076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A055999 (n + 3) + A004273 (n + 15)).toNat

end

end A316409.P11410878894991550076

/-!
# A316410: Number of multisets of exactly nine nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A316410, there is no canonical definition to state claims against.
-/

/-! ## A316410.P15586103309055516655

`A292506(A167499(n+8)+4)`
-/

namespace A316410.P15586103309055516655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A167499 (n + 8) + 4).toNat

end

end A316410.P15586103309055516655

/-! ## A316410.P16662064940429059019

`A292506(A000096(n+8)+10)`
-/

namespace A316410.P16662064940429059019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000096 (n + 8) + 10).toNat

end

end A316410.P16662064940429059019

/-! ## A316410.P15513823243816862595

`A292506(A052905(n+8)-A004273(n+4))`
-/

namespace A316410.P15513823243816862595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A052905 (n + 8) - A004273 (n + 4)).toNat

end

end A316410.P15513823243816862595

/-! ## A316410.P14954617397887395642

`A292506(A133263(n+7)+A005843(n+12))`
-/

namespace A316410.P14954617397887395642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A133263 (n + 7) + A005843 (n + 12)).toNat

end

end A316410.P14954617397887395642

/-! ## A316410.P9476706419193534422

`A292506(A321883(n+13)+A167614(n+7))`
-/

namespace A316410.P9476706419193534422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A321883 (n + 13) + A167614 (n + 7)).toNat

end

end A316410.P9476706419193534422

/-! ## A316410.P9759261095128146223

`A292506(A000217(n+9)+10-A033999(n)²)`
-/

namespace A316410.P9759261095128146223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000217 (n + 9) + 10 - A033999 n ^ 2).toNat

end

end A316410.P9759261095128146223

/-!
# A316411: Number of multisets of exactly ten nonempty binary words with a total of n letters such that no word has a majority of 0's.

The programs for A316411, there is no canonical definition to state claims against.
-/

/-! ## A316411.P14495647504900250143

`A292506(A167499(n+9)+5)`
-/

namespace A316411.P14495647504900250143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A167499 (n + 9) + 5).toNat

end

end A316411.P14495647504900250143

/-! ## A316411.P5847583470821142222

`A292506(A000096(n+9)+11)`
-/

namespace A316411.P5847583470821142222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000096 (n + 9) + 11).toNat

end

end A316411.P5847583470821142222

/-! ## A316411.P6434542631947550180

`A292506(A000217(n+10)+10)`
-/

namespace A316411.P6434542631947550180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A000217 (n + 10) + 10).toNat

end

end A316411.P6434542631947550180

/-! ## A316411.P6622295388210962125

`A292506(A055998(n+8)+13)`
-/

namespace A316411.P6622295388210962125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A055998 (n + 8) + 13).toNat

end

end A316411.P6622295388210962125

/-! ## A316411.P18424891464788935389

`A292506(A034856(n+10)-(n-1))`
-/

namespace A316411.P18424891464788935389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (A034856 (n + 10) - ((n : ℤ) - 1)).toNat

end

end A316411.P18424891464788935389

/-!
# A316412: Positive numbers m so that deletion of some or none but not all digits from m yields a noncomposite number.

The programs for A316412, there is no canonical definition to state claims against.
-/

/-! ## A316412.P9707352600056505831

`A012884(∑[floor(n/9)!])`
-/

namespace A316412.P9707352600056505831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 9⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316412.P9707352600056505831

/-! ## A316412.P2038465342481884422

`A068669(comp[n*2*10^n])`
-/

namespace A316412.P2038465342481884422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * 10 ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068669 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A316412.P2038465342481884422

/-! ## A316412.P15099718478926746638

`or(∑[val(n+1, 9)]², A068669(n+1))`
-/

namespace A316412.P15099718478926746638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A068669 (n + 1))

end

end A316412.P15099718478926746638

/-! ## A316412.P5603334189631495158

`A012884(A246079(n+1))`
-/

namespace A316412.P5603334189631495158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (A246079 (n + 1)).toNat

end

end A316412.P5603334189631495158

/-! ## A316412.P16397305256573777377

`A012884(A246086(n+1))`
-/

namespace A316412.P16397305256573777377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (A246086 (n + 1)).toNat

end

end A316412.P16397305256573777377

/-!
# A316413: Heinz numbers of integer partitions whose length divides their sum.

The programs for A316413, the canonical program `A316413.P16809743194087804013` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316413 has offset 1).

The definition of A316413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316413.P16809743194087804013

`eq[1, A326568(n+2)]+2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A316413

/-- `eq[1, A326568(n+2)]+2` -/
def P16809743194087804013.Spec : Prop :=
  ∀ n, (P16809743194087804013.a n : ℤ) = A316413 (n + 1)

theorem P16809743194087804013.correct : P16809743194087804013.Spec := by
  intro n
  simp only [A316413, Nat.add_sub_cancel]

end A316413

/-! ## A316413.P17718912255642484069

`lt[A326568(n+2), 2%A030666(n+1)]+2`
-/

namespace A316413.P17718912255642484069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A030666 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A316413.P17718912255642484069

namespace A316413

/-- `lt[A326568(n+2), 2%A030666(n+1)]+2` -/
def P17718912255642484069.Spec : Prop :=
  ∀ n, (P17718912255642484069.a n : ℤ) = A316413 (n + 1)

end A316413

/-! ## A316413.P9314473097879284882

`record[A020725(n+1)/A326568(n+2)]`
-/

namespace A316413.P9314473097879284882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (A326568 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316413.P9314473097879284882

namespace A316413

/-- `record[A020725(n+1)/A326568(n+2)]` -/
def P9314473097879284882.Spec : Prop :=
  ∀ n, P9314473097879284882.a n = (A316413 (n + 1) : ℚ)

end A316413

/-! ## A316413.P18227135539044347953

`lt[A000040(n+1)%A326568(n+2), 1]+2`
-/

namespace A316413.P18227135539044347953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A326568 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A316413.P18227135539044347953

namespace A316413

/-- `lt[A000040(n+1)%A326568(n+2), 1]+2` -/
def P18227135539044347953.Spec : Prop :=
  ∀ n, (P18227135539044347953.a n : ℤ) = A316413 (n + 1)

end A316413

/-! ## A316413.P17742874742373278855

`record[A289435(2*(n+2))/A326568(n+2)]`
-/

namespace A316413.P17742874742373278855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289435 (2 * (n + 2)) : ℚ) / (A326568 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316413.P17742874742373278855

namespace A316413

/-- `record[A289435(2*(n+2))/A326568(n+2)]` -/
def P17742874742373278855.Spec : Prop :=
  ∀ n, P17742874742373278855.a n = (A316413 (n + 1) : ℚ)

end A316413

/-! ## A316413.P1676886824364491113

`record[root(A289441(2*(n+2)), A326568(n+2))]`
-/

namespace A316413.P1676886824364491113
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A289441 (2 * (n + 2)) : ℝ) ^ (1 / (A326568 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316413.P1676886824364491113

namespace A316413

/-- `record[root(A289441(2*(n+2)), A326568(n+2))]` -/
def P1676886824364491113.Spec : Prop :=
  ∀ n, P1676886824364491113.a n = (A316413 (n + 1) : ℝ)

end A316413

/-! ## A316413.P5819246055251205889

`lt[A248206(n+1)%A326568(n+2), 1]+2`
-/

namespace A316413.P5819246055251205889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248206 (n + 1)) (A326568 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A316413.P5819246055251205889

namespace A316413

/-- `lt[A248206(n+1)%A326568(n+2), 1]+2` -/
def P5819246055251205889.Spec : Prop :=
  ∀ n, (P5819246055251205889.a n : ℤ) = A316413 (n + 1)

end A316413

/-! ## A316413.P7712729501438267813

`∪[A027085(n), A360009(n+1)]`
-/

namespace A316413.P7712729501438267813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316413.P7712729501438267813

namespace A316413

/-- `∪[A027085(n), A360009(n+1)]` -/
def P7712729501438267813.Spec : Prop :=
  ∀ n, (P7712729501438267813.a n : ℤ) = A316413 (n + 1)

end A316413

/-! ## A316413.P6280260798477289910

`∪[A036682(n), A360009(n+1)]`
-/

namespace A316413.P6280260798477289910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316413.P6280260798477289910

namespace A316413

/-- `∪[A036682(n), A360009(n+1)]` -/
def P6280260798477289910.Spec : Prop :=
  ∀ n, (P6280260798477289910.a n : ℤ) = A316413 (n + 1)

end A316413

/-! ## A316413.P14871315092071765696

`∪[A038665(n), A360009(n+1)]`
-/

namespace A316413.P14871315092071765696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316413.P14871315092071765696

namespace A316413

/-- `∪[A038665(n), A360009(n+1)]` -/
def P14871315092071765696.Spec : Prop :=
  ∀ n, (P14871315092071765696.a n : ℤ) = A316413 (n + 1)

end A316413

/-!
# A316414: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316414, there is no canonical definition to state claims against.
-/

/-! ## A316414.P14334217766552915341

`A316420(∑[4*n]+1)`
-/

namespace A316414.P14334217766552915341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316414.P14334217766552915341

/-! ## A316414.P11990895841768858552

`record[A003982(n)*A316420(n+1)]`
-/

namespace A316414.P11990895841768858552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316414.P11990895841768858552

/-! ## A316414.P9394204430939135004

`record[gcd(A008482(n), A316420(n+1))]`
-/

namespace A316414.P9394204430939135004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A316420 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316414.P9394204430939135004

/-! ## A316414.P5329605764075545020

`record[A077606(n+1)*A316420(n+1)]`
-/

namespace A316414.P5329605764075545020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A316420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316414.P5329605764075545020

/-! ## A316414.P8146861012467717101

`A014963(4*n+10)*A316420(A001844(n))`
-/

namespace A316414.P8146861012467717101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A316420 (A001844 n).toNat

end

end A316414.P8146861012467717101

/-!
# A316415: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316415, there is no canonical definition to state claims against.
-/

/-! ## A316415.P13783581203842814154

`A316420(∑[n+2]+4)`
-/

namespace A316415.P13783581203842814154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316415.P13783581203842814154

/-! ## A316415.P11811763376497680955

`A316420(A167614(n+1))+A185238(n)`
-/

namespace A316415.P11811763376497680955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A167614 (n + 1)).toNat + A185238 n

end

end A316415.P11811763376497680955

/-! ## A316415.P10577609248873469318

`A316420(A167614(n+1))%A001556(n)`
-/

namespace A316415.P10577609248873469318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316420 (A167614 (n + 1)).toNat) (A001556 n)

end

end A316415.P10577609248873469318

/-! ## A316415.P11907089677640359826

`lcm(A025452(n), A316420(A167614(n+1)))`
-/

namespace A316415.P11907089677640359826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025452 n) (A316420 (A167614 (n + 1)).toNat)

end

end A316415.P11907089677640359826

/-! ## A316415.P848323118284811378

`or(A072401(n), A316420(A167614(n+1)))`
-/

namespace A316415.P848323118284811378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072401 n) (A316420 (A167614 (n + 1)).toNat)

end

end A316415.P848323118284811378

/-!
# A316416: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316416, there is no canonical definition to state claims against.
-/

/-! ## A316416.P11247549876510953759

`A316420(∑[n+3]+7)`
-/

namespace A316416.P11247549876510953759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316416.P11247549876510953759

/-! ## A316416.P13383727695668317498

`A316420(A141214(n+1))%A303959(n+1)`
-/

namespace A316416.P13383727695668317498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316420 (A141214 (n + 1)).toNat) (A303959 (n + 1))

end

end A316416.P13383727695668317498

/-!
# A316417: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316417, there is no canonical definition to state claims against.
-/

/-! ## A316417.P12549835403750847138

`A316420(A374005(n+1))`
-/

namespace A316417.P12549835403750847138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A374005 (n + 1)).toNat

end

end A316417.P12549835403750847138

/-! ## A316417.P3531917676678824480

`A316420(A167499(n+3))`
-/

namespace A316417.P3531917676678824480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A167499 (n + 3)).toNat

end

end A316417.P3531917676678824480

/-! ## A316417.P4508841133125926921

`A316420(A155212(n)+13)`
-/

namespace A316417.P4508841133125926921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A155212 n + 13).toNat

end

end A316417.P4508841133125926921

/-! ## A316417.P2187935342987866222

`A316420(A167487(n+3)-2)`
-/

namespace A316417.P2187935342987866222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A167487 (n + 3) - 2).toNat

end

end A316417.P2187935342987866222

/-! ## A316417.P1216363066733407877

`A316420(A052905(n+3)-(2*n+1))`
-/

namespace A316417.P1216363066733407877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A316417.P1216363066733407877

/-!
# A316418: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316418, there is no canonical definition to state claims against.
-/

/-! ## A316418.P9367813994921932398

`A316420(A374007(n+1))`
-/

namespace A316418.P9367813994921932398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A374007 (n + 1)).toNat

end

end A316418.P9367813994921932398

/-! ## A316418.P11838141547830833783

`A316420(A167499(n+4)+1)`
-/

namespace A316418.P11838141547830833783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A167499 (n + 4) + 1).toNat

end

end A316418.P11838141547830833783

/-! ## A316418.P2981599666876667234

`A316420(A000124(n+5)+5)`
-/

namespace A316418.P2981599666876667234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A000124 (n + 5) + 5).toNat

end

end A316418.P2981599666876667234

/-! ## A316418.P8493220845698454499

`A316420(A000217(n+5)+6)`
-/

namespace A316418.P8493220845698454499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A000217 (n + 5) + 6).toNat

end

end A316418.P8493220845698454499

/-! ## A316418.P2350441297304835124

`A316420(A055998(n+3)+9)`
-/

namespace A316418.P2350441297304835124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A055998 (n + 3) + 9).toNat

end

end A316418.P2350441297304835124

/-!
# A316419: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316419, there is no canonical definition to state claims against.
-/

/-! ## A316419.P4899031359568753160

`A316420(A374008(n+1))`
-/

namespace A316419.P4899031359568753160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A374008 (n + 1)).toNat

end

end A316419.P4899031359568753160

/-! ## A316419.P11249503021732795020

`A316420(A056119(n)+28)`
-/

namespace A316419.P11249503021732795020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A056119 n + 28).toNat

end

end A316419.P11249503021732795020

/-! ## A316419.P1357356927623582900

`A316420(A000217(n+6)+7)`
-/

namespace A316419.P1357356927623582900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A000217 (n + 6) + 7).toNat

end

end A316419.P1357356927623582900

/-! ## A316419.P16232197679661421176

`A316420(A034856(n+5)+9)`
-/

namespace A316419.P16232197679661421176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A034856 (n + 5) + 9).toNat

end

end A316419.P16232197679661421176

/-! ## A316419.P9020494618835195497

`A316420(A161680(n+7)+7)`
-/

namespace A316419.P9020494618835195497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316420 (A161680 (n + 7) + 7).toNat

end

end A316419.P9020494618835195497

/-!
# A316420: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316420, there is no canonical definition to state claims against.
-/

/-! ## A316420.P8070951129999370405

`A305340(n+1)+A082858(A059441(n+1))`
-/

namespace A316420.P8070951129999370405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (n + 1) + A082858 (A059441 (n + 1)).toNat

end

end A316420.P8070951129999370405

/-! ## A316420.P7978757219491225665

`A305340(n+1)+A289618(A317525(n+1))`
-/

namespace A316420.P7978757219491225665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (n + 1) + A289618 (A317525 (n + 1)).toNat

end

end A316420.P7978757219491225665

/-! ## A316420.P14900630009302786428

`A304604(n+1)+A321936(A001263(n+1))²`
-/

namespace A316420.P14900630009302786428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (n + 1) + A321936 (A001263 (n + 1)).toNat ^ 2

end

end A316420.P14900630009302786428

/-! ## A316420.P15319522587143953522

`A304926(n+1)-A340999(A007318(n)²)`
-/

namespace A316420.P15319522587143953522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (n + 1) - A340999 ((A007318 n ^ 2).toNat + 204)

end

end A316420.P15319522587143953522

/-! ## A316420.P4766456788766633289

`A304926(n+1)-A340999(A130595(n)²)`
-/

namespace A316420.P4766456788766633289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (n + 1) - A340999 ((A130595 n ^ 2).toNat + 204)

end

end A316420.P4766456788766633289

/-!
# A316421: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316421, there is no canonical definition to state claims against.
-/

/-! ## A316421.P13502912726547214533

`A316427(∑[4*n]+1)`
-/

namespace A316421.P13502912726547214533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316421.P13502912726547214533

/-! ## A316421.P2787397166116033026

`record[A316427(Δ[A235355(n)])]`
-/

namespace A316421.P2787397166116033026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316421.P2787397166116033026

/-! ## A316421.P1078798068943659183

`and(-1, A316427(A001844(n)))`
-/

namespace A316421.P1078798068943659183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316427 (A001844 n).toNat)

end

end A316421.P1078798068943659183

/-! ## A316421.P6976666436169418751

`record[A316427(A001844(∑{digits}[n, #]))]`
-/

namespace A316421.P6976666436169418751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316421.P6976666436169418751

/-! ## A316421.P2089789832495435278

`record[A003982(n)*A316427(n+1)]`
-/

namespace A316421.P2089789832495435278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316421.P2089789832495435278

/-!
# A316422: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316422, there is no canonical definition to state claims against.
-/

/-! ## A316422.P8681428049256131679

`A316427(∑[n+2]+4)`
-/

namespace A316422.P8681428049256131679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316422.P8681428049256131679

/-! ## A316422.P6915708851561927957

`or(char[1], A316427(A167614(n+1)))`
-/

namespace A316422.P6915708851561927957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A316427 (A167614 (n + 1)).toNat)

end

end A316422.P6915708851561927957

/-! ## A316422.P11451404185907451561

`or(char[1], A316427(A167499(n)+n))`
-/

namespace A316422.P11451404185907451561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A316427 (A167499 n + (n : ℤ)).toNat)

end

end A316422.P11451404185907451561

/-! ## A316422.P965829829909683512

`record[A010054(n+1)*A316427(n+4)]`
-/

namespace A316422.P965829829909683512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A316427 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316422.P965829829909683512

/-! ## A316422.P10315644669962092463

`A316427(A167614(n+1))/A016126(n)`
-/

namespace A316422.P10315644669962092463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316427 (A167614 (n + 1)).toNat : ℚ) / (A016126 n : ℚ)

end

end A316422.P10315644669962092463

/-!
# A316423: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316423, there is no canonical definition to state claims against.
-/

/-! ## A316423.P10151166334577915726

`A316427(∑[n+3]+7)`
-/

namespace A316423.P10151166334577915726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316423.P10151166334577915726

/-! ## A316423.P272904473406788686

`A316427(A052905(n)+9)+char[21]`
-/

namespace A316423.P272904473406788686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316423.P272904473406788686

/-! ## A316423.P3210284772637334213

`A316427(A141214(n)+7)+C(n, 47)`
-/

namespace A316423.P3210284772637334213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A141214 n + 7).toNat + (Nat.choose n 47 : ℤ)

end

end A316423.P3210284772637334213

/-! ## A316423.P18299530549444739850

`A316427(A052905(n)+9)%A000108(n+4)`
-/

namespace A316423.P18299530549444739850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316427 (A052905 n + 9).toNat) (A000108 (n + 4))

end

end A316423.P18299530549444739850

/-! ## A316423.P4466504724732224685

`A007318(C(2, n))*A316427(A052905(n)+9)`
-/

namespace A316423.P4466504724732224685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A316427 (A052905 n + 9).toNat

end

end A316423.P4466504724732224685

/-!
# A316424: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316424, there is no canonical definition to state claims against.
-/

/-! ## A316424.P15034271316555893100

`A316427(A374005(n+1))`
-/

namespace A316424.P15034271316555893100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A374005 (n + 1)).toNat

end

end A316424.P15034271316555893100

/-! ## A316424.P10835077383678122058

`A316427(A167499(n+3))`
-/

namespace A316424.P10835077383678122058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A167499 (n + 3)).toNat

end

end A316424.P10835077383678122058

/-! ## A316424.P16495777846514726477

`A316427(A155212(n)+13)`
-/

namespace A316424.P16495777846514726477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A155212 n + 13).toNat

end

end A316424.P16495777846514726477

/-! ## A316424.P18160408179541392543

`A316427(A056000(n)+15)`
-/

namespace A316424.P18160408179541392543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A056000 n + 15).toNat

end

end A316424.P18160408179541392543

/-! ## A316424.P6609906851889122801

`A316427(eq[7, A066657(n)])`
-/

namespace A316424.P6609906851889122801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316424.P6609906851889122801

/-!
# A316425: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316425, there is no canonical definition to state claims against.
-/

/-! ## A316425.P16322660999960297894

`A316427(∑[n+5]+16)`
-/

namespace A316425.P16322660999960297894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A316425.P16322660999960297894

/-! ## A316425.P10472559580844159188

`A316427(eq[3, A219347(n)])+A000007(n+1)`
-/

namespace A316425.P10472559580844159188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A316425.P10472559580844159188

/-! ## A316425.P16753963565503353379

`A316427(eq[3, A219347(n)])%A316426(n+1)`
-/

namespace A316425.P16753963565503353379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A316426 (n + 1))

end

end A316425.P16753963565503353379

/-! ## A316425.P17811623888985861258

`A057427(2*(n+2))*A316427(A052905(n+3))`
-/

namespace A316425.P17811623888985861258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 2)) * A316427 (A052905 (n + 3)).toNat

end

end A316425.P17811623888985861258

/-! ## A316425.P16640577671622795543

`A316427(A027379(n+4)-2)%A305346(n+1)`
-/

namespace A316425.P16640577671622795543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316427 (A027379 (n + 4) - 2).toNat) (A305346 (n + 1))

end

end A316425.P16640577671622795543

/-!
# A316426: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316426, there is no canonical definition to state claims against.
-/

/-! ## A316426.P564131620294162680

`A316427(A374008(n+1))`
-/

namespace A316426.P564131620294162680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A374008 (n + 1)).toNat

end

end A316426.P564131620294162680

/-! ## A316426.P9733093737798088497

`A316427(A056119(n)+28)`
-/

namespace A316426.P9733093737798088497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A056119 n + 28).toNat

end

end A316426.P9733093737798088497

/-! ## A316426.P11365119880448469348

`A316427(A167499(n+5)+2)`
-/

namespace A316426.P11365119880448469348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A167499 (n + 5) + 2).toNat

end

end A316426.P11365119880448469348

/-! ## A316426.P4277922347427618444

`A316427(A167614(n+5)+4)`
-/

namespace A316426.P4277922347427618444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A167614 (n + 5) + 4).toNat

end

end A316426.P4277922347427618444

/-! ## A316426.P18254081808373701135

`A316427(A000124(n+6)+6)`
-/

namespace A316426.P18254081808373701135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316427 (A000124 (n + 6) + 6).toNat

end

end A316426.P18254081808373701135

/-!
# A316427: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316427, there is no canonical definition to state claims against.
-/

/-! ## A316427.P287570896313611529

`A194514(7*A317429(n+1))`
-/

namespace A316427.P287570896313611529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194514 (7 * A317429 (n + 1)).toNat

end

end A316427.P287570896313611529

/-! ## A316427.P10142391278179589461

`A026730(8*A317429(n+1))`
-/

namespace A316427.P10142391278179589461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (8 * A317429 (n + 1)).toNat

end

end A316427.P10142391278179589461

/-! ## A316427.P10783032410425333974

`A106609(8*A317429(n+1))`
-/

namespace A316427.P10783032410425333974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (8 * A317429 (n + 1)).toNat

end

end A316427.P10783032410425333974

/-! ## A316427.P17569506139617770176

`A317429(n+1)%∑[A275870(n+3)]`
-/

namespace A316427.P17569506139617770176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275870 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317429 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316427.P17569506139617770176

/-! ## A316427.P2310940802515106787

`A003963(A000040(A317429(n+1)))`
-/

namespace A316427.P2310940802515106787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000040 (A317429 (n + 1)).toNat).toNat

end

end A316427.P2310940802515106787

/-!
# A316428: Heinz numbers of integer partitions such that every part is divisible by the number of parts.

The programs for A316428, there is no canonical definition to state claims against.
-/

/-! ## A316428.P13323120568196981923

`record[and(A193551(n+1), A327076(n+1))]`
-/

namespace A316428.P13323120568196981923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193551 (n + 1)) (A327076 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316428.P13323120568196981923

/-! ## A316428.P7577108009414599908

`lt[A285729(n+1), A053585(A127852(n+1)+1)]+1`
-/

namespace A316428.P7577108009414599908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A127852 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A316428.P7577108009414599908

/-! ## A316428.P1836680360442305648

`record[A327076(A156301(A316495(n+1)))]`
-/

namespace A316428.P1836680360442305648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A156301 (A316495 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316428.P1836680360442305648

/-!
# A316429: Heinz numbers of integer partitions whose length is equal to their LCM.

The programs for A316429, there is no canonical definition to state claims against.
-/

/-! ## A316429.P7008445547309248654

`eq[A001222(n+1), A290103(n+1)]+1`
-/

namespace A316429.P7008445547309248654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316429.P7008445547309248654

/-! ## A316429.P5170507484047153972

`A020725(eq[A255201(n+1)/2, A290103(n+1)])`
-/

namespace A316429.P5170507484047153972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255201 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A316429.P5170507484047153972

/-! ## A316429.P17063293755516380209

`eq[A252736(3*(n+1)), A290103(n+1)]+1`
-/

namespace A316429.P17063293755516380209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316429.P17063293755516380209

/-!
# A316430: Heinz numbers of integer partitions whose length is equal to the GCD of all the parts.

The programs for A316430, there is no canonical definition to state claims against.
-/

/-! ## A316430.P9924430006089399402

`eq[A001222(n+1), A289508(n+1)]+1`
-/

namespace A316430.P9924430006089399402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316430.P9924430006089399402

/-! ## A316430.P9659552882699035807

`eq[A008481(n+1), A289508(n+1)]+1`
-/

namespace A316430.P9659552882699035807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316430.P9659552882699035807

/-! ## A316430.P7793962212659323186

`A141310(eq[A001222(n+1), A289508(n+1)])`
-/

namespace A316430.P7793962212659323186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316430.P7793962212659323186

/-! ## A316430.P1216517728674692758

`A141310(eq[A008481(n+1), A289508(n+1)])`
-/

namespace A316430.P1216517728674692758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316430.P1216517728674692758

/-! ## A316430.P471824779673870082

`eq[A289506(A061142(n+1)), A289508(n+1)]+1`
-/

namespace A316430.P471824779673870082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A061142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316430.P471824779673870082

/-!
# A316431: Least common multiple divided by greatest common divisor of the integer partition with Heinz number n > 1.

The programs for A316431, there is no canonical definition to state claims against.
-/

/-! ## A316431.P15989539340243373162

`A290103(n+2)/A289508(n+2)`
-/

namespace A316431.P15989539340243373162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290103 (n + 2) : ℚ) / (A289508 (n + 2) : ℚ)

end

end A316431.P15989539340243373162

/-! ## A316431.P11524127907926954165

`A290103(A316437(n+2))`
-/

namespace A316431.P11524127907926954165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A316437 (n + 2)).toNat

end

end A316431.P11524127907926954165

/-! ## A316431.P3641982484981360439

`A003963(n+2)/(A289508(n+2)*A290104(n+2))`
-/

namespace A316431.P3641982484981360439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 2) : ℚ) / (A289508 (n + 2) * A290104 (n + 2) : ℚ)

end

end A316431.P3641982484981360439

/-! ## A316431.P5079540354449869464

`A290103(n+2)/A056239(n+2)*A316436(n+2)`
-/

namespace A316431.P5079540354449869464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290103 (n + 2) : ℚ) / (A056239 (n + 2) : ℚ) * (A316436 (n + 2) : ℚ)

end

end A316431.P5079540354449869464

/-! ## A316431.P8559026072125481069

`gcd(A319567(n+1), A319575(A319541(n+1)))`
-/

namespace A316431.P8559026072125481069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319567 (n + 1)) (A319575 (A319541 (n + 1)).toNat)

end

end A316431.P8559026072125481069

/-!
# A316432: Number of integer partitions of n whose length is equal to the GCD of all parts.

The programs for A316432, there is no canonical definition to state claims against.
-/

/-! ## A316432.P10873689187553136251

`∑{d}[n+1, A008683(#)*A143773((n+1)/#)]`
-/

namespace A316432.P10873689187553136251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A143773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316432.P10873689187553136251

/-! ## A316432.P3285244777701270385

`A025147(A072189(n)+A032742(n+1))`
-/

namespace A316432.P3285244777701270385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (A072189 n + A032742 (n + 1)).toNat

end

end A316432.P3285244777701270385

/-! ## A316432.P2179765724809695762

`A025147(A280497(n+1)+A072189(n))`
-/

namespace A316432.P2179765724809695762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (A280497 (n + 1) + A072189 n).toNat

end

end A316432.P2179765724809695762

/-! ## A316432.P16298672480315399602

`A025147(A032742(n+1)%record[A176849(n)])`
-/

namespace A316432.P16298672480315399602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (Int.tmod (A032742 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A316432.P16298672480315399602

/-! ## A316432.P11623378634799197789

`A103221(A319162(n+1)%A223172(2*(n+2)))`
-/

namespace A316432.P11623378634799197789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.tmod (A319162 (n + 1)) (A223172 (2 * (n + 2)))).toNat

end

end A316432.P11623378634799197789

/-!
# A316433: Number of integer partitions of n whose length is equal to the LCM of all parts.

The programs for A316433, there is no canonical definition to state claims against.
-/

/-! ## A316433.P10969621470332655642

`A285274(A014551(n))+Δ[A326449(n+3)]`
-/

namespace A316433.P10969621470332655642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326449 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285274 (A014551 n).toNat + (f1 (n + 1) - f1 n)

end

end A316433.P10969621470332655642

/-!
# A316434: a(n) = a(pi(n)) + a(n-pi(n)) with a(1) = a(2) = 1.

The programs for A316434, the canonical program `A316434.P12650173987918989671` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316434 has offset 1).

The definition of A316434 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(A000720(n+1)-1)+a(n-A000720(n+1))` (program `A316434.P12650173987918989671`, by `A316434.P12650173987918989671.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316434.P15371982418303686105

`a(A000720(n+1)-1)+a(A062298(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A316434.P15371982418303686105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A000720 (n + 1) - 1).toNat + a (A062298 (n + 1) - 1).toNat

end

end A316434.P15371982418303686105

namespace A316434

/-- `a(A000720(n+1)-1)+a(A062298(n+1)-1)` -/
def P15371982418303686105.Spec : Prop :=
  ∀ n, (P15371982418303686105.a n : ℤ) = A316434 (n + 1)

theorem P15371982418303686105.correct : P15371982418303686105.Spec := by
  intro n
  simp only [A316434, Nat.add_sub_cancel, A316434.P15371982418303686105.a, A316434.P12650173987918989671.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A316434

/-! ## A316434.P12650173987918989671

`a(A000720(n+1)-1)+a(n-A000720(n+1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A316434

/-- `a(A000720(n+1)-1)+a(n-A000720(n+1))` -/
def P12650173987918989671.Spec : Prop :=
  ∀ n, (P12650173987918989671.a n : ℤ) = A316434 (n + 1)

theorem P12650173987918989671.correct : P12650173987918989671.Spec := by
  intro n
  simp only [A316434, Nat.add_sub_cancel]

end A316434

/-! ## A316434.P18146741451807400798

`∑[A241916(A269847(n+1))%2]`
-/

namespace A316434.P18146741451807400798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241916 (A269847 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316434.P18146741451807400798

namespace A316434

/-- `∑[A241916(A269847(n+1))%2]` -/
def P18146741451807400798.Spec : Prop :=
  ∀ n, P18146741451807400798.a n = A316434 (n + 1)

end A316434

/-! ## A316434.P2942291056989276816

`∑[A267053(A017054(A296529(n+6)))]`
-/

namespace A316434.P2942291056989276816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 (A017054 (A296529 (n + 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316434.P2942291056989276816

namespace A316434

/-- `∑[A267053(A017054(A296529(n+6)))]` -/
def P2942291056989276816.Spec : Prop :=
  ∀ n, P2942291056989276816.a n = A316434 (n + 1)

end A316434

/-! ## A316434.P14214468463473129757

`∑[A285592(∑[A299581(3*n+4)])]`
-/

namespace A316434.P14214468463473129757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299581 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316434.P14214468463473129757

namespace A316434

/-- `∑[A285592(∑[A299581(3*n+4)])]` -/
def P14214468463473129757.Spec : Prop :=
  ∀ n, P14214468463473129757.a n = A316434 (n + 1)

end A316434

/-!
# A316436: Sum divided by GCD of the integer partition with Heinz number n > 1.

The programs for A316436, there is no canonical definition to state claims against.
-/

/-! ## A316436.P11956296121100295342

`A056239(A316437(n+2))`
-/

namespace A316436.P11956296121100295342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A316437 (n + 2)).toNat

end

end A316436.P11956296121100295342

/-! ## A316436.P14475764237352416766

`∑{d}[A316437(n+2), A000720(A014963(#))]`
-/

namespace A316436.P14475764237352416766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 (A014963 d).toNat

end

end A316436.P14475764237352416766

/-! ## A316436.P7066520529946821013

`A056239(n+2)/A289508(n+2)`
-/

namespace A316436.P7066520529946821013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 2) : ℚ) / (A289508 (n + 2) : ℚ)

end

end A316436.P7066520529946821013

/-! ## A316436.P6791615469168720159

`A056239(n+2)/A289506(n+2)*A289507(n+2)`
-/

namespace A316436.P6791615469168720159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 2) : ℚ) / (A289506 (n + 2) : ℚ) * (A289507 (n + 2) : ℚ)

end

end A316436.P6791615469168720159

/-! ## A316436.P8916827366180810623

`A056239(n+2)/A290103(n+2)*A316431(n+2)`
-/

namespace A316436.P8916827366180810623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 2) : ℚ) / (A290103 (n + 2) : ℚ) * (A316431 (n + 2) : ℚ)

end

end A316436.P8916827366180810623

/-! ## A316436.P5534484467565335061

`A346698(A316437((n+2)²))`
-/

namespace A316436.P5534484467565335061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A316437 ((n + 2) ^ 2)).toNat

end

end A316436.P5534484467565335061

/-!
# A316437: Take the integer partition with Heinz number n, divide all parts by the GCD of the parts, then take the Heinz number of the resulting partition.

The programs for A316437, there is no canonical definition to state claims against.
-/

/-! ## A316437.P6512424475150205024

`A122111(A052410(A122111(n+1)))`
-/

namespace A316437.P6512424475150205024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A052410 (A122111 (n + 1)).toNat).toNat

end

end A316437.P6512424475150205024

/-! ## A316437.P9837948778154936568

`A153212(A052410(A153212(n+1)))`
-/

namespace A316437.P9837948778154936568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (A052410 (A153212 (n + 1)).toNat).toNat

end

end A316437.P9837948778154936568

/-! ## A316437.P7971903428776136999

`A279351(A052410(A279351(n+1)²))`
-/

namespace A316437.P7971903428776136999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279351 (A052410 (A279351 (n + 1) ^ 2).toNat).toNat

end

end A316437.P7971903428776136999

/-! ## A316437.P5823144264366731481

`A349612(A242474(n+1)²)+1+n`
-/

namespace A316437.P5823144264366731481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (A242474 (n + 1) ^ 2).toNat + 1 + (n : ℤ)

end

end A316437.P5823144264366731481

/-! ## A316437.P4594378474388308597

`or(A185294(A054250(n)), A348717(n+1))`
-/

namespace A316437.P4594378474388308597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185294 (A054250 n).toNat) (A348717 (n + 1))

end

end A316437.P4594378474388308597

/-!
# A316438: Heinz numbers of integer partitions whose product is strictly greater than the LCM of the parts.

The programs for A316438, there is no canonical definition to state claims against.
-/

/-! ## A316438.P3848698430055142696

`lt[1, A290104(n+1)]+1`
-/

namespace A316438.P3848698430055142696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A316438.P3848698430055142696

/-! ## A316438.P6627175218258209598

`lt[2, 2*a(A290104(n))]` with `a(0)=1, a(1)=1`
-/

namespace A316438.P6627175218258209598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (A290104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316438.P6627175218258209598

/-! ## A316438.P3246964431097832439

`comp[A302569(n+1)-2]+2`
-/

namespace A316438.P3246964431097832439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A316438.P3246964431097832439

/-! ## A316438.P12264060690500251986

`lt[A327512(2*(n+1)), n]+1`
-/

namespace A316438.P12264060690500251986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A316438.P12264060690500251986

/-! ## A316438.P469009298645598155

`lt[A327512(abs(1-n)+1+n), n]`
-/

namespace A316438.P469009298645598155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A316438.P469009298645598155

/-! ## A316438.P13563835813252781670

`lt[A327512(n+2+n)+1, n]+1`
-/

namespace A316438.P13563835813252781670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 2 + n) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A316438.P13563835813252781670

/-! ## A316438.P8029510049371226999

`lt[1, A290104(A004277(n))]`
-/

namespace A316438.P8029510049371226999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316438.P8029510049371226999

/-! ## A316438.P17491002251751944280

`lt[1, A290104(A008574(n))]`
-/

namespace A316438.P17491002251751944280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316438.P17491002251751944280

/-! ## A316438.P8554660733594525218

`A020725(lt[A327512(2*(n+1)), n])`
-/

namespace A316438.P8554660733594525218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A316438.P8554660733594525218

/-!
# A316439: Irregular triangle where T(n,k) is the number of factorizations of n into k factors > 1, with k ranging from 1 to Omega(n).

The programs for A316439, there is no canonical definition to state claims against.
-/

/-! ## A316439.P7101897443342576465

`A048724(A327783(n+1))%A335078(n+2)+1`
-/

namespace A316439.P7101897443342576465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048724 (A327783 (n + 1)).toNat) (A335078 (n + 2)) + 1

end

end A316439.P7101897443342576465

/-! ## A316439.P1612508345169733009

`A335093(A335121(3*n+1)%A335078(n+2))`
-/

namespace A316439.P1612508345169733009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335093 (Int.tmod (A335121 (3 * n + 1)) (A335078 (n + 2))).toNat

end

end A316439.P1612508345169733009

/-! ## A316439.P18097721390529545226

`A130497(A101754(n+1)-1)%A335078(n+2)+1`
-/

namespace A316439.P18097721390529545226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130497 (A101754 (n + 1) - 1).toNat) (A335078 (n + 2)) + 1

end

end A316439.P18097721390529545226

/-! ## A316439.P2939478758502372981

`A375295(n+1)%A335078(n+2)+1`
-/

namespace A316439.P2939478758502372981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375295 (n + 1)) (A335078 (n + 2)) + 1

end

end A316439.P2939478758502372981

/-! ## A316439.P12397400862007415315

`A335050(A335075(n+4)%A335078(n+2))`
-/

namespace A316439.P12397400862007415315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335050 (Int.tmod (A335075 (n + 4)) (A335078 (n + 2))).toNat

end

end A316439.P12397400862007415315

/-! ## A316439.P2339269651168138273

`A130497(A325245(n))%A335078(n+2)+1`
-/

namespace A316439.P2339269651168138273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130497 (A325245 n).toNat) (A335078 (n + 2)) + 1

end

end A316439.P2339269651168138273

/-! ## A316439.P4003914751964999119

`A335050(A335050(n+2)%A335078(n+2))`
-/

namespace A316439.P4003914751964999119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335050 (Int.tmod (A335050 (n + 2)) (A335078 (n + 2))).toNat

end

end A316439.P4003914751964999119

/-! ## A316439.P14214345245656087872

`A000040((2*n+1)²)%A335078(n+2)+1`
-/

namespace A316439.P14214345245656087872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((2 * n + 1) ^ 2)) (A335078 (n + 2)) + 1

end

end A316439.P14214345245656087872

/-!
# A316440: Number of integer partitions of n such that every submultiset has an integer average.

The programs for A316440, there is no canonical definition to state claims against.
-/

/-! ## A316440.P16712676935952280012

`A319951(A319056(n))`
-/

namespace A316440.P16712676935952280012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A319056 n).toNat

end

end A316440.P16712676935952280012

/-! ## A316440.P15394896496984664532

`A339399(A300549(n))`
-/

namespace A316440.P15394896496984664532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (A300549 n).toNat

end

end A316440.P15394896496984664532

/-! ## A316440.P1324980840463556750

`A055980(A279789(n)²)`
-/

namespace A316440.P1324980840463556750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A279789 n ^ 2).toNat

end

end A316440.P1324980840463556750

/-! ## A316440.P744821299755839356

`A225644(A319056(n)-1)`
-/

namespace A316440.P744821299755839356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A319056 n - 1).toNat

end

end A316440.P744821299755839356

/-! ## A316440.P4253160782619493255

`A055980(A279789(n)^2)`
-/

namespace A316440.P4253160782619493255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A279789 n ^ 2).toNat

end

end A316440.P4253160782619493255

/-!
# A316441: a(n) = Sum (-1)^k where the sum is over all factorizations of n into factors > 1 and k is the number of factors.

The programs for A316441, there is no canonical definition to state claims against.
-/

/-! ## A316441.P17126272408210835124

`A320835(A181819(n+1))`
-/

namespace A316441.P17126272408210835124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320835 (A181819 (n + 1)).toNat

end

end A316441.P17126272408210835124

/-! ## A316441.P2658773633826887582

`A339846(n+1)-A339890(n+1)`
-/

namespace A316441.P2658773633826887582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (n + 1) - A339890 (n + 1)

end

end A316441.P2658773633826887582

/-! ## A316441.P1889388383531650209

`Δ[A096276(n)]-2*A339890(n+1)`
-/

namespace A316441.P1889388383531650209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A339890 (n + 1)

end

end A316441.P1889388383531650209

/-! ## A316441.P7264107174840734436

`2*A339846(n+1)-A001055(n+1)`
-/

namespace A316441.P7264107174840734436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339846 (n + 1) - A001055 (n + 1)

end

end A316441.P7264107174840734436

/-! ## A316441.P16743017134853517773

`A001055(n+1)-2*A339890(n+1)`
-/

namespace A316441.P16743017134853517773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - 2 * A339890 (n + 1)

end

end A316441.P16743017134853517773

/-! ## A316441.P291224422454546923

`∑{d}[n+1, A114592(#)*A347438((n+1)/#)]`
-/

namespace A316441.P291224422454546923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A347438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P291224422454546923

/-! ## A316441.P4651359488750219689

`A001055(n+1)-A005843(A339890(n+1))`
-/

namespace A316441.P4651359488750219689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A005843 (A339890 (n + 1)).toNat

end

end A316441.P4651359488750219689

/-! ## A316441.P18003422739057794879

`∑{d}[n+1, A328706(#)*A339718((n+1)/#)]`
-/

namespace A316441.P18003422739057794879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P18003422739057794879

/-! ## A316441.P7252148352410662976

`∑{d}[n+1, A339337(#)*A339721((n+1)/#)]`
-/

namespace A316441.P7252148352410662976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339337 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P7252148352410662976

/-! ## A316441.P6850910996423670880

`∑{d}[n+1, A339338(#)*A339722((n+1)/#)]`
-/

namespace A316441.P6850910996423670880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339338 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P6850910996423670880

/-! ## A316441.P78607867933333346

`∑{d}[n+1, A339340(#)*A339735((n+1)/#)]`
-/

namespace A316441.P78607867933333346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339340 d * A339735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P78607867933333346

/-! ## A316441.P14197663962059417371

`∑{d}[n+1, A339335(#)*A339719((n+1)/#)]`
-/

namespace A316441.P14197663962059417371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P14197663962059417371

/-! ## A316441.P13996706007635760262

`∑{d}[n+1, A339336(#)*A339720((n+1)/#)]`
-/

namespace A316441.P13996706007635760262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339336 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P13996706007635760262

/-! ## A316441.P2804403416691084558

`A344369(n+1)/(n+1)`
-/

namespace A316441.P2804403416691084558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344369 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A316441.P2804403416691084558

/-! ## A316441.P10322255657552551688

`∑{d}[n+1, A045778(#)*A339717((n+1)/#)]`
-/

namespace A316441.P10322255657552551688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P10322255657552551688

/-! ## A316441.P7508614582436038552

`∑{d}[n+1, A328731(#)*A328877((n+1)/#)]`
-/

namespace A316441.P7508614582436038552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328731 d * A328877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P7508614582436038552

/-! ## A316441.P15344281186906804608

`∑{d}[n+1, A339339(#)*A339734((n+1)/#)]`
-/

namespace A316441.P15344281186906804608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339339 d * A339734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316441.P15344281186906804608

/-! ## A316441.P12405296090644100610

`A101455(A349922(n+1))`
-/

namespace A316441.P12405296090644100610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A349922 (n + 1)).toNat

end

end A316441.P12405296090644100610

/-! ## A316441.P3117514764116679026

`A175629(2*A339338(n+1))`
-/

namespace A316441.P3117514764116679026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (2 * A339338 (n + 1)).toNat

end

end A316441.P3117514764116679026

/-!
# A316442: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316442, there is no canonical definition to state claims against.
-/

/-! ## A316442.P391776336750355299

`A316448(∑[4*n]+1)`
-/

namespace A316442.P391776336750355299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316442.P391776336750355299

/-! ## A316442.P5081832318452580427

`record[A316448(Δ[A235355(n)])]`
-/

namespace A316442.P5081832318452580427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316442.P5081832318452580427

/-! ## A316442.P13937842897012269636

`record[A316448(A330613(n+1))]`
-/

namespace A316442.P13937842897012269636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316442.P13937842897012269636

/-! ## A316442.P465850622528928457

`A316448(A001844(n))+char[9]`
-/

namespace A316442.P465850622528928457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316442.P465850622528928457

/-! ## A316442.P12042509930582458361

`record[A316448(Δ[A079824(n+1)])]`
-/

namespace A316442.P12042509930582458361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316442.P12042509930582458361

/-!
# A316443: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316443, there is no canonical definition to state claims against.
-/

/-! ## A316443.P12511287141418025728

`A316448(∑[n+2]+4)`
-/

namespace A316443.P12511287141418025728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316443.P12511287141418025728

/-! ## A316443.P95594016261710741

`record[A316448(A008795(n)+3)]`
-/

namespace A316443.P95594016261710741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316443.P95594016261710741

/-! ## A316443.P2404076340855721330

`A316448(A167614(n+1))+char[17]`
-/

namespace A316443.P2404076340855721330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316443.P2404076340855721330

/-! ## A316443.P1078973947985385718

`record[gcd(A303913(n), A316448(n+1))]`
-/

namespace A316443.P1078973947985385718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A316448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316443.P1078973947985385718

/-! ## A316443.P13133052472550268360

`record[gcd(A238416(n+2), A316448(n+5))]`
-/

namespace A316443.P13133052472550268360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238416 (n + 2)) (A316448 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316443.P13133052472550268360

/-!
# A316444: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316444, there is no canonical definition to state claims against.
-/

/-! ## A316444.P9815634781815945768

`A316448(∑[n+3]+7)`
-/

namespace A316444.P9815634781815945768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316444.P9815634781815945768

/-! ## A316444.P16248591293139311163

`A316448(A052905(n)+9)+char[16]`
-/

namespace A316444.P16248591293139311163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316444.P16248591293139311163

/-! ## A316444.P7369827102960560666

`A316448(A052905(n)+9)%A000108(n+12)`
-/

namespace A316444.P7369827102960560666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316448 (A052905 n + 9).toNat) (A000108 (n + 12))

end

end A316444.P7369827102960560666

/-! ## A316444.P13444588187557676868

`A007318(C(2, n+1))*A316448(A052905(n)+9)`
-/

namespace A316444.P13444588187557676868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A316448 (A052905 n + 9).toNat

end

end A316444.P13444588187557676868

/-! ## A316444.P14563840715219606467

`A000041(C(2, n+2))*A316448(A052905(n)+9)`
-/

namespace A316444.P14563840715219606467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A316448 (A052905 n + 9).toNat

end

end A316444.P14563840715219606467

/-!
# A316445: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316445, there is no canonical definition to state claims against.
-/

/-! ## A316445.P1396347938158632030

`A316448(A374005(n+1))`
-/

namespace A316445.P1396347938158632030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A374005 (n + 1)).toNat

end

end A316445.P1396347938158632030

/-! ## A316445.P17530395503606508227

`A316448(A167499(n+3))`
-/

namespace A316445.P17530395503606508227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A167499 (n + 3)).toNat

end

end A316445.P17530395503606508227

/-! ## A316445.P12413920937561197742

`A316448(A155212(n)+13)`
-/

namespace A316445.P12413920937561197742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A155212 n + 13).toNat

end

end A316445.P12413920937561197742

/-! ## A316445.P7227975799618466465

`A316448(A056000(n)+15)`
-/

namespace A316445.P7227975799618466465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A056000 n + 15).toNat

end

end A316445.P7227975799618466465

/-! ## A316445.P15379046822518287164

`A316448(eq[7, A066657(n)])`
-/

namespace A316445.P15379046822518287164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316445.P15379046822518287164

/-!
# A316446: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316446, there is no canonical definition to state claims against.
-/

/-! ## A316446.P9257396492981107028

`A316448(A374007(n+1))`
-/

namespace A316446.P9257396492981107028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A374007 (n + 1)).toNat

end

end A316446.P9257396492981107028

/-! ## A316446.P14854817812078025359

`A316448(A056115(n)+21)`
-/

namespace A316446.P14854817812078025359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A056115 n + 21).toNat

end

end A316446.P14854817812078025359

/-! ## A316446.P10576172633156311354

`A316448(A167499(n+4)+1)`
-/

namespace A316446.P10576172633156311354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A167499 (n + 4) + 1).toNat

end

end A316446.P10576172633156311354

/-! ## A316446.P13313049964369784021

`A316448(A000096(n+4)+7)`
-/

namespace A316446.P13313049964369784021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A000096 (n + 4) + 7).toNat

end

end A316446.P13313049964369784021

/-! ## A316446.P5037903640945656483

`A316448(A155212(n+1)+14)`
-/

namespace A316446.P5037903640945656483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A155212 (n + 1) + 14).toNat

end

end A316446.P5037903640945656483

/-!
# A316447: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316447, there is no canonical definition to state claims against.
-/

/-! ## A316447.P2402285793246231406

`A316448(A374008(n+1))`
-/

namespace A316447.P2402285793246231406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A374008 (n + 1)).toNat

end

end A316447.P2402285793246231406

/-! ## A316447.P4222340896708730025

`A316448(A056119(n)+28)`
-/

namespace A316447.P4222340896708730025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A056119 n + 28).toNat

end

end A316447.P4222340896708730025

/-! ## A316447.P11381869706887823669

`A316448(eq[11, A066657(n)])`
-/

namespace A316447.P11381869706887823669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316447.P11381869706887823669

/-! ## A316447.P7373044130217620689

`A316448(eq[8, A131818(n+1)])`
-/

namespace A316447.P7373044130217620689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316447.P7373044130217620689

/-! ## A316447.P1844853362780896377

`A316448(A055999(n+4))`
-/

namespace A316447.P1844853362780896377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316448 (A055999 (n + 4)).toNat

end

end A316447.P1844853362780896377

/-!
# A316448: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316448, there is no canonical definition to state claims against.
-/

/-! ## A316448.P4314720476882995962

`A304697(n+1)+A173636(A174545(n))`
-/

namespace A316448.P4314720476882995962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (n + 1) + A173636 (A174545 n).toNat

end

end A316448.P4314720476882995962

/-! ## A316448.P1920613743297714844

`A304697(n+1)+A065040(A282230(n+1))`
-/

namespace A316448.P1920613743297714844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (n + 1) + A065040 (A282230 (n + 1)).toNat

end

end A316448.P1920613743297714844

/-! ## A316448.P8630452070377883367

`A304697(n+1)-A305633(A334709(n+1))`
-/

namespace A316448.P8630452070377883367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (n + 1) - A305633 (A334709 (n + 1)).toNat

end

end A316448.P8630452070377883367

/-! ## A316448.P3016912363629728728

`A304697(n+1)+A321936(A001263(n+1))²`
-/

namespace A316448.P3016912363629728728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (n + 1) + A321936 (A001263 (n + 1)).toNat ^ 2

end

end A316448.P3016912363629728728

/-! ## A316448.P15651873892347818858

`A304697(n+1)+A055641(A331968(n+1))`
-/

namespace A316448.P15651873892347818858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304697 (n + 1) + A055641 (A331968 (n + 1)).toNat

end

end A316448.P15651873892347818858

/-!
# A316449: Number of nXn 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316449, there is no canonical definition to state claims against.
-/

/-! ## A316449.P3393343915969092166

`A316455(∑[4*n]+1)`
-/

namespace A316449.P3393343915969092166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316449.P3393343915969092166

/-! ## A316449.P3147681145118270499

`and(-1, A316455(A001844(n)))`
-/

namespace A316449.P3147681145118270499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316455 (A001844 n).toNat)

end

end A316449.P3147681145118270499

/-! ## A316449.P11278973137705108455

`record[A316455(A272267(n+1))]`
-/

namespace A316449.P11278973137705108455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316449.P11278973137705108455

/-! ## A316449.P10128822295800398319

`record[A003982(n)*A316455(n+1)]`
-/

namespace A316449.P10128822295800398319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316449.P10128822295800398319

/-! ## A316449.P14876682637690405278

`record[A203994(n+1)*A316455(n+1)]`
-/

namespace A316449.P14876682637690405278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A316455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316449.P14876682637690405278

/-!
# A316450: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316450, there is no canonical definition to state claims against.
-/

/-! ## A316450.P4647100934722614057

`A316455(∑[n+2]+4)`
-/

namespace A316450.P4647100934722614057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316450.P4647100934722614057

/-! ## A316450.P18425320181221811960

`and(-1, A316455(A167614(n+1)))`
-/

namespace A316450.P18425320181221811960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316455 (A167614 (n + 1)).toNat)

end

end A316450.P18425320181221811960

/-! ## A316450.P9092249265120089950

`A326545(n)+A316455(A167614(n+1))`
-/

namespace A316450.P9092249265120089950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A316455 (A167614 (n + 1)).toNat

end

end A316450.P9092249265120089950

/-! ## A316450.P7821260683331408255

`gcd(A000038(n), A316455(A167614(n+1)))`
-/

namespace A316450.P7821260683331408255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A316455 (A167614 (n + 1)).toNat)

end

end A316450.P7821260683331408255

/-! ## A316450.P4291675437701878166

`lcm(A033999(n), A316455(A167614(n+1)))`
-/

namespace A316450.P4291675437701878166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A316455 (A167614 (n + 1)).toNat)

end

end A316450.P4291675437701878166

/-!
# A316451: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316451, there is no canonical definition to state claims against.
-/

/-! ## A316451.P13100764235781732242

`A316455(∑[n+3]+7)`
-/

namespace A316451.P13100764235781732242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316451.P13100764235781732242

/-! ## A316451.P4574751721246494232

`A316455(A055999(n)+10)+char[16]`
-/

namespace A316451.P4574751721246494232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316451.P4574751721246494232

/-! ## A316451.P6555601645899362749

`A316455(A167614(n+2)+1)+char[21]`
-/

namespace A316451.P6555601645899362749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316451.P6555601645899362749

/-! ## A316451.P9288893774781201972

`A316455(A167614(n+2)+1)%A316452(n+1)`
-/

namespace A316451.P9288893774781201972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316455 (A167614 (n + 2) + 1).toNat) (A316452 (n + 1))

end

end A316451.P9288893774781201972

/-! ## A316451.P4403855906276982260

`A014963(10*(n+1))*A316455(A055999(n)+10)`
-/

namespace A316451.P4403855906276982260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A316455 (A055999 n + 10).toNat

end

end A316451.P4403855906276982260

/-!
# A316452: Number of n X 5 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316452, there is no canonical definition to state claims against.
-/

/-! ## A316452.P4930782707894708892

`A316455(A374005(n+1))`
-/

namespace A316452.P4930782707894708892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A374005 (n + 1)).toNat

end

end A316452.P4930782707894708892

/-! ## A316452.P2881128202083658559

`A316455(A167499(n+3))`
-/

namespace A316452.P2881128202083658559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A167499 (n + 3)).toNat

end

end A316452.P2881128202083658559

/-! ## A316452.P1499297210798625752

`A316455(A155212(n)+13)`
-/

namespace A316452.P1499297210798625752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A155212 n + 13).toNat

end

end A316452.P1499297210798625752

/-! ## A316452.P11517698515314121738

`A316455(A056000(n)+15)`
-/

namespace A316452.P11517698515314121738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A056000 n + 15).toNat

end

end A316452.P11517698515314121738

/-! ## A316452.P5820874355186896901

`A316455(eq[7, A066657(n)])`
-/

namespace A316452.P5820874355186896901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316452.P5820874355186896901

/-!
# A316453: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316453, there is no canonical definition to state claims against.
-/

/-! ## A316453.P1281338828798817490

`A316455(A374007(n+1))`
-/

namespace A316453.P1281338828798817490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A374007 (n + 1)).toNat

end

end A316453.P1281338828798817490

/-! ## A316453.P10138298466199251628

`A316455(A166136(n+4))`
-/

namespace A316453.P10138298466199251628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A166136 (n + 4)).toNat

end

end A316453.P10138298466199251628

/-! ## A316453.P8347378909143930380

`A316455(A056115(n)+21)`
-/

namespace A316453.P8347378909143930380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A056115 n + 21).toNat

end

end A316453.P8347378909143930380

/-! ## A316453.P4074791563869999035

`A316455(Δ[A264443(n)]+10)`
-/

namespace A316453.P4074791563869999035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (f1 (n + 1) - f1 n + 10).toNat

end

end A316453.P4074791563869999035

/-! ## A316453.P1939138934251531911

`A316455(∑[A020710(n)]+16)`
-/

namespace A316453.P1939138934251531911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A316453.P1939138934251531911

/-!
# A316454: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316454, there is no canonical definition to state claims against.
-/

/-! ## A316454.P2139135413079080460

`A316455(A374008(n+1))`
-/

namespace A316454.P2139135413079080460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A374008 (n + 1)).toNat

end

end A316454.P2139135413079080460

/-! ## A316454.P5930560886138024558

`A316455(A056119(n)+28)`
-/

namespace A316454.P5930560886138024558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A056119 n + 28).toNat

end

end A316454.P5930560886138024558

/-! ## A316454.P15928399799078164082

`A316455(eq[11, A066657(n)])`
-/

namespace A316454.P15928399799078164082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316454.P15928399799078164082

/-! ## A316454.P726582958068860340

`A316455(A167499(n+5)+2)`
-/

namespace A316454.P726582958068860340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A167499 (n + 5) + 2).toNat

end

end A316454.P726582958068860340

/-! ## A316454.P12476937078444940937

`A316455(A167614(n+5)+4)`
-/

namespace A316454.P12476937078444940937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316455 (A167614 (n + 5) + 4).toNat

end

end A316454.P12476937078444940937

/-!
# A316455: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316455, there is no canonical definition to state claims against.
-/

/-! ## A316455.P4623933416955790690

`A304704(n+1)+A186034(A022167(n))`
-/

namespace A316455.P4623933416955790690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (n + 1) + A186034 (A022167 n).toNat

end

end A316455.P4623933416955790690

/-! ## A316455.P9401873724212558188

`A304704(n+1)+A184159(A099594(n))`
-/

namespace A316455.P9401873724212558188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (n + 1) + A184159 (A099594 n).toNat

end

end A316455.P9401873724212558188

/-! ## A316455.P9700659848207821733

`A304704(n+1)+A173920(A173917(n))`
-/

namespace A316455.P9700659848207821733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (n + 1) + A173920 (A173917 n).toNat

end

end A316455.P9700659848207821733

/-! ## A316455.P4806345156485443117

`A304704(n+1)-A016389(A027336(n))`
-/

namespace A316455.P4806345156485443117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (n + 1) - A016389 (A027336 n).toNat

end

end A316455.P4806345156485443117

/-! ## A316455.P17589193715755092465

`A304704(n+1)-A016389(A176561(n))`
-/

namespace A316455.P17589193715755092465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (n + 1) - A016389 (A176561 n).toNat

end

end A316455.P17589193715755092465

/-!
# A316457: Expansion of x*(31 + 326*x + 336*x^2 + 26*x^3 + x^4) / (1 - x)^6.

The programs for A316457, the canonical program `A316457.P17649362685013717694` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316457 has offset 1).

The definition of A316457 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((31+326x+336x^2+26x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A316457.P17649362685013717694`, by `A316457.P17649362685013717694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316457.P17649362685013717694

`ogf((31+326x+336x^2+26x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A316457

/-- `ogf((31+326x+336x^2+26x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17649362685013717694.Spec : Prop :=
  ∀ n, P17649362685013717694.a n = A316457 (n + 1)

theorem P17649362685013717694.correct : P17649362685013717694.Spec := by
  intro n
  simp only [A316457, Nat.add_sub_cancel]

end A316457

/-! ## A316457.P7071672294731559351

`6*(n+1)^5+15*(n+1)^4+10*(n+1)^3`
-/

namespace A316457.P7071672294731559351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1) ^ 5 + 15 * (n + 1) ^ 4 + 10 * (n + 1) ^ 3

end

end A316457.P7071672294731559351

namespace A316457

/-- `6*(n+1)^5+15*(n+1)^4+10*(n+1)^3` -/
def P7071672294731559351.Spec : Prop :=
  ∀ n, (P7071672294731559351.a n : ℤ) = A316457 (n + 1)

end A316457

/-! ## A316457.P17702897319313959401

`(n+1)²*∑[A081275(n+1)]`
-/

namespace A316457.P17702897319313959401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316457.P17702897319313959401

namespace A316457

/-- `(n+1)²*∑[A081275(n+1)]` -/
def P17702897319313959401.Spec : Prop :=
  ∀ n, P17702897319313959401.a n = A316457 (n + 1)

end A316457

/-! ## A316457.P17858116361791856105

`(n+1)^3*A085473(n+2)`
-/

namespace A316457.P17858116361791856105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A085473 (n + 2)

end

end A316457.P17858116361791856105

namespace A316457

/-- `(n+1)^3*A085473(n+2)` -/
def P17858116361791856105.Spec : Prop :=
  ∀ n, P17858116361791856105.a n = A316457 (n + 1)

end A316457

/-! ## A316457.P2867372810522656516

`A316349(3*n+1)`
-/

namespace A316457.P2867372810522656516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316349 (3 * n + 1)

end

end A316457.P2867372810522656516

namespace A316457

/-- `A316349(3*n+1)` -/
def P2867372810522656516.Spec : Prop :=
  ∀ n, P2867372810522656516.a n = A316457 (n + 1)

end A316457

/-! ## A316457.P4238496499181541936

`∑[A158558((n+1)²)]`
-/

namespace A316457.P4238496499181541936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316457.P4238496499181541936

namespace A316457

/-- `∑[A158558((n+1)²)]` -/
def P4238496499181541936.Spec : Prop :=
  ∀ n, P4238496499181541936.a n = A316457 (n + 1)

end A316457

/-! ## A316457.P11636133101028800003

`∑[A158560((n+1)²)+2]`
-/

namespace A316457.P11636133101028800003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158560 ((n + 1) ^ 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316457.P11636133101028800003

namespace A316457

/-- `∑[A158560((n+1)²)+2]` -/
def P11636133101028800003.Spec : Prop :=
  ∀ n, P11636133101028800003.a n = A316457 (n + 1)

end A316457

/-! ## A316457.P16085957412100712612

`∑[A244636((n+1)²)+1]`
-/

namespace A316457.P16085957412100712612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244636 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316457.P16085957412100712612

namespace A316457

/-- `∑[A244636((n+1)²)+1]` -/
def P16085957412100712612.Spec : Prop :=
  ∀ n, P16085957412100712612.a n = A316457 (n + 1)

end A316457

/-! ## A316457.P16036953652880489633

`∑[A005903((n+1)²)-1]`
-/

namespace A316457.P16036953652880489633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005903 ((n + 1) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316457.P16036953652880489633

namespace A316457

/-- `∑[A005903((n+1)²)-1]` -/
def P16036953652880489633.Spec : Prop :=
  ∀ n, P16036953652880489633.a n = A316457 (n + 1)

end A316457

/-!
# A316458: Expansion of 60*x*(1 + 4*x + x^2) / (1 - x)^5.

The programs for A316458, the canonical program `A316458.P10957358468932677082` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316458 has offset 1).

The definition of A316458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((60+240x+60x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A316458.P10957358468932677082`, by `A316458.P10957358468932677082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316458.P10957358468932677082

`ogf((60+240x+60x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A316458

/-- `ogf((60+240x+60x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10957358468932677082.Spec : Prop :=
  ∀ n, P10957358468932677082.a n = A316458 (n + 1)

theorem P10957358468932677082.correct : P10957358468932677082.Spec := by
  intro n
  simp only [A316458, Nat.add_sub_cancel]

end A316458

/-! ## A316458.P1803192515399198999

`15*(n+1)^4+30*(n+1)^3+15*(n+1)²`
-/

namespace A316458.P1803192515399198999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * (n + 1) ^ 4 + 30 * (n + 1) ^ 3 + 15 * (n + 1) ^ 2

end

end A316458.P1803192515399198999

namespace A316458

/-- `15*(n+1)^4+30*(n+1)^3+15*(n+1)²` -/
def P1803192515399198999.Spec : Prop :=
  ∀ n, (P1803192515399198999.a n : ℤ) = A316458 (n + 1)

end A316458

/-! ## A316458.P7497846439592747952

`60*A000537(n+1)`
-/

namespace A316458.P7497846439592747952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A000537 (n + 1)

end

end A316458.P7497846439592747952

namespace A316458

/-- `60*A000537(n+1)` -/
def P7497846439592747952.Spec : Prop :=
  ∀ n, P7497846439592747952.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P9648886580270870473

`∑[∑[5*(A016946(n)+3)]]`
-/

namespace A316458.P9648886580270870473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A016946 n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316458.P9648886580270870473

namespace A316458

/-- `∑[∑[5*(A016946(n)+3)]]` -/
def P9648886580270870473.Spec : Prop :=
  ∀ n, P9648886580270870473.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P15780032162417044376

`∑[2*30*A000578(n+1)]`
-/

namespace A316458.P15780032162417044376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (30 * A000578 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316458.P15780032162417044376

namespace A316458

/-- `∑[2*30*A000578(n+1)]` -/
def P15780032162417044376.Spec : Prop :=
  ∀ n, P15780032162417044376.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P10881026209558333854

`∑[(n+1)*(A158670(n+1)+1)]`
-/

namespace A316458.P10881026209558333854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158670 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316458.P10881026209558333854

namespace A316458

/-- `∑[(n+1)*(A158670(n+1)+1)]` -/
def P10881026209558333854.Spec : Prop :=
  ∀ n, P10881026209558333854.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P13294089386961275557

`∑[15*Δ[C(n+1, 2)*A046092(n)]]`
-/

namespace A316458.P13294089386961275557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) * A046092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316458.P13294089386961275557

namespace A316458

/-- `∑[15*Δ[C(n+1, 2)*A046092(n)]]` -/
def P13294089386961275557.Spec : Prop :=
  ∀ n, P13294089386961275557.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P9579794660500725117

`Δ[Δ[3*C(n²+n, 3)]]`
-/

namespace A316458.P9579794660500725117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n ^ 2 + n) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316458.P9579794660500725117

namespace A316458

/-- `Δ[Δ[3*C(n²+n, 3)]]` -/
def P9579794660500725117.Spec : Prop :=
  ∀ n, P9579794660500725117.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P9095953810632970539

`∑[6*A244729(n+1)]`
-/

namespace A316458.P9095953810632970539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A244729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316458.P9095953810632970539

namespace A316458

/-- `∑[6*A244729(n+1)]` -/
def P9095953810632970539.Spec : Prop :=
  ∀ n, P9095953810632970539.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P8171845529286649366

`∑[10*A244726(n+1)]`
-/

namespace A316458.P8171845529286649366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A244726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316458.P8171845529286649366

namespace A316458

/-- `∑[10*A244726(n+1)]` -/
def P8171845529286649366.Spec : Prop :=
  ∀ n, P8171845529286649366.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P3143543141791438234

`15/(1/A002378(n+1))²`
-/

namespace A316458.P3143543141791438234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 / (1 / (A002378 (n + 1) : ℚ)) ^ 2

end

end A316458.P3143543141791438234

namespace A316458

/-- `15/(1/A002378(n+1))²` -/
def P3143543141791438234.Spec : Prop :=
  ∀ n, P3143543141791438234.a n = (A316458 (n + 1) : ℚ)

end A316458

/-! ## A316458.P17070821221357948443

`∑[n+1]²*A040870(n+1)`
-/

namespace A316458.P17070821221357948443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A040870 (n + 1)

end

end A316458.P17070821221357948443

namespace A316458

/-- `∑[n+1]²*A040870(n+1)` -/
def P17070821221357948443.Spec : Prop :=
  ∀ n, P17070821221357948443.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P3802327696257602671

`A028896(n+1)*A124080(n+1)`
-/

namespace A316458.P3802327696257602671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 1) * A124080 (n + 1)

end

end A316458.P3802327696257602671

namespace A316458

/-- `A028896(n+1)*A124080(n+1)` -/
def P3802327696257602671.Spec : Prop :=
  ∀ n, P3802327696257602671.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P9981346110508122743

`(A028895(n+1)+A024966(n+1))*A028895(n+1)`
-/

namespace A316458.P9981346110508122743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028895 (n + 1) + A024966 (n + 1)) * A028895 (n + 1)

end

end A316458.P9981346110508122743

namespace A316458

/-- `(A028895(n+1)+A024966(n+1))*A028895(n+1)` -/
def P9981346110508122743.Spec : Prop :=
  ∀ n, P9981346110508122743.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P15500502490166251823

`(A045943(n+1)+A027468(n+1))*A028895(n+1)`
-/

namespace A316458.P15500502490166251823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045943 (n + 1) + A027468 (n + 1)) * A028895 (n + 1)

end

end A316458.P15500502490166251823

namespace A316458

/-- `(A045943(n+1)+A027468(n+1))*A028895(n+1)` -/
def P15500502490166251823.Spec : Prop :=
  ∀ n, P15500502490166251823.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P13713630853237013055

`(A046092(n+1)+A028896(n+1))*A028896(n+1)`
-/

namespace A316458.P13713630853237013055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 (n + 1) + A028896 (n + 1)) * A028896 (n + 1)

end

end A316458.P13713630853237013055

namespace A316458

/-- `(A046092(n+1)+A028896(n+1))*A028896(n+1)` -/
def P13713630853237013055.Spec : Prop :=
  ∀ n, P13713630853237013055.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P13753440209232874107

`(A028895(n+1)+A000217(n+1))*A124080(n+1)`
-/

namespace A316458.P13753440209232874107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028895 (n + 1) + A000217 (n + 1)) * A124080 (n + 1)

end

end A316458.P13753440209232874107

namespace A316458

/-- `(A028895(n+1)+A000217(n+1))*A124080(n+1)` -/
def P13753440209232874107.Spec : Prop :=
  ∀ n, P13753440209232874107.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P918793423732083229

`(A124080(n+1)+A002378(n+1))*A028895(n+1)`
-/

namespace A316458.P918793423732083229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124080 (n + 1) + A002378 (n + 1)) * A028895 (n + 1)

end

end A316458.P918793423732083229

namespace A316458

/-- `(A124080(n+1)+A002378(n+1))*A028895(n+1)` -/
def P918793423732083229.Spec : Prop :=
  ∀ n, P918793423732083229.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P10823278010441537843

`(A002378(n+1)+A000217(n+1))*A163761(n+1)`
-/

namespace A316458.P10823278010441537843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) + A000217 (n + 1)) * A163761 (n + 1)

end

end A316458.P10823278010441537843

namespace A316458

/-- `(A002378(n+1)+A000217(n+1))*A163761(n+1)` -/
def P10823278010441537843.Spec : Prop :=
  ∀ n, P10823278010441537843.a n = A316458 (n + 1)

end A316458

/-! ## A316458.P17473238335942230129

`(A046092(n+1)+A002378(n+1))*A124080(n+1)`
-/

namespace A316458.P17473238335942230129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 (n + 1) + A002378 (n + 1)) * A124080 (n + 1)

end

end A316458.P17473238335942230129

namespace A316458

/-- `(A046092(n+1)+A002378(n+1))*A124080(n+1)` -/
def P17473238335942230129.Spec : Prop :=
  ∀ n, P17473238335942230129.a n = A316458 (n + 1)

end A316458

/-!
# A316459: Expansion of 30*x*(1 + x) / (1 - x)^4.

The programs for A316459, the canonical program `A316459.P7863680635087886835` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316459 has offset 1).

The definition of A316459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((30+30x)/(1-4x+6x^2-4x^3+x^4))` (program `A316459.P7863680635087886835`, by `A316459.P7863680635087886835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316459.P7863680635087886835

`ogf((30+30x)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A316459

/-- `ogf((30+30x)/(1-4x+6x^2-4x^3+x^4))` -/
def P7863680635087886835.Spec : Prop :=
  ∀ n, P7863680635087886835.a n = A316459 (n + 1)

theorem P7863680635087886835.correct : P7863680635087886835.Spec := by
  intro n
  simp only [A316459, Nat.add_sub_cancel]

end A316459

/-! ## A316459.P12891777922361159005

`10*(n+1)^3+15*(n+1)²+5*(n+1)`
-/

namespace A316459.P12891777922361159005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1) ^ 3 + 15 * (n + 1) ^ 2 + 5 * (n + 1)

end

end A316459.P12891777922361159005

namespace A316459

/-- `10*(n+1)^3+15*(n+1)²+5*(n+1)` -/
def P12891777922361159005.Spec : Prop :=
  ∀ n, (P12891777922361159005.a n : ℤ) = A316459 (n + 1)

end A316459

/-! ## A316459.P5812968323369125631

`30*A000330(n+1)`
-/

namespace A316459.P5812968323369125631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A000330 (n + 1)

end

end A316459.P5812968323369125631

namespace A316459

/-- `30*A000330(n+1)` -/
def P5812968323369125631.Spec : Prop :=
  ∀ n, P5812968323369125631.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P17813987977550623047

`Δ[5*C((n+1)², 2)]`
-/

namespace A316459.P17813987977550623047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose ((n + 1) ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A316459.P17813987977550623047

namespace A316459

/-- `Δ[5*C((n+1)², 2)]` -/
def P17813987977550623047.Spec : Prop :=
  ∀ n, P17813987977550623047.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P13059014043097316655

`10*∑[∑[a(n-1)+6]]` with `a(0)=3`
-/

namespace A316459.P13059014043097316655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316459.P13059014043097316655

namespace A316459

/-- `10*∑[∑[a(n-1)+6]]` -/
def P13059014043097316655.Spec : Prop :=
  ∀ n, (P13059014043097316655.a n : ℤ) = A316459 (n + 1)

end A316459

/-! ## A316459.P5015190168405219533

`5*6*C(2*(n+2), 3)/4`
-/

namespace A316459.P5015190168405219533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((6 * Nat.choose (2 * (n + 2)) 3 : ℚ) / 4)

end

end A316459.P5015190168405219533

namespace A316459

/-- `5*6*C(2*(n+2), 3)/4` -/
def P5015190168405219533.Spec : Prop :=
  ∀ n, P5015190168405219533.a n = (A316459 (n + 1) : ℚ)

end A316459

/-! ## A316459.P5223493767358871113

`5/4*A069074(n)`
-/

namespace A316459.P5223493767358871113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A069074 n : ℚ)

end

end A316459.P5223493767358871113

namespace A316459

/-- `5/4*A069074(n)` -/
def P5223493767358871113.Spec : Prop :=
  ∀ n, P5223493767358871113.a n = (A316459 (n + 1) : ℚ)

end A316459

/-! ## A316459.P6988219701782172433

`3*∑[A033583(n+1)]`
-/

namespace A316459.P6988219701782172433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316459.P6988219701782172433

namespace A316459

/-- `3*∑[A033583(n+1)]` -/
def P6988219701782172433.Spec : Prop :=
  ∀ n, P6988219701782172433.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P11519801643927831899

`5*∑[A033581(n+1)]`
-/

namespace A316459.P11519801643927831899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316459.P11519801643927831899

namespace A316459

/-- `5*∑[A033581(n+1)]` -/
def P11519801643927831899.Spec : Prop :=
  ∀ n, P11519801643927831899.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P17622866503345787427

`(n+2)*∑[A290781(n)]`
-/

namespace A316459.P17622866503345787427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316459.P17622866503345787427

namespace A316459

/-- `(n+2)*∑[A290781(n)]` -/
def P17622866503345787427.Spec : Prop :=
  ∀ n, P17622866503345787427.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P13622897586379846181

`3/2*A188050(n+1)`
-/

namespace A316459.P13622897586379846181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A188050 (n + 1) : ℚ)

end

end A316459.P13622897586379846181

namespace A316459

/-- `3/2*A188050(n+1)` -/
def P13622897586379846181.Spec : Prop :=
  ∀ n, P13622897586379846181.a n = (A316459 (n + 1) : ℚ)

end A316459

/-! ## A316459.P15592291158988910692

`5*6/2*A006331(n+1)`
-/

namespace A316459.P15592291158988910692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((6 : ℚ) / 2) * (A006331 (n + 1) : ℚ)

end

end A316459.P15592291158988910692

namespace A316459

/-- `5*6/2*A006331(n+1)` -/
def P15592291158988910692.Spec : Prop :=
  ∀ n, P15592291158988910692.a n = (A316459 (n + 1) : ℚ)

end A316459

/-! ## A316459.P13339879916112173699

`(A154600(n+1)-A142463(n+1))*A000217(n+1)`
-/

namespace A316459.P13339879916112173699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154600 (n + 1) - A142463 (n + 1)) * A000217 (n + 1)

end

end A316459.P13339879916112173699

namespace A316459

/-- `(A154600(n+1)-A142463(n+1))*A000217(n+1)` -/
def P13339879916112173699.Spec : Prop :=
  ∀ n, P13339879916112173699.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P12617246610535418481

`∑[A244636(n+1)]`
-/

namespace A316459.P12617246610535418481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316459.P12617246610535418481

namespace A316459

/-- `∑[A244636(n+1)]` -/
def P12617246610535418481.Spec : Prop :=
  ∀ n, P12617246610535418481.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P3867036048949278582

`Δ[A385897(n)/2]`
-/

namespace A316459.P3867036048949278582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385897 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316459.P3867036048949278582

namespace A316459

/-- `Δ[A385897(n)/2]` -/
def P3867036048949278582.Spec : Prop :=
  ∀ n, P3867036048949278582.a n = (A316459 (n + 1) : ℚ)

end A316459

/-! ## A316459.P3089244544739378789

`A063497(n+1)/2`
-/

namespace A316459.P3089244544739378789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063497 (n + 1) : ℚ) / 2

end

end A316459.P3089244544739378789

namespace A316459

/-- `A063497(n+1)/2` -/
def P3089244544739378789.Spec : Prop :=
  ∀ n, P3089244544739378789.a n = (A316459 (n + 1) : ℚ)

end A316459

/-! ## A316459.P9869551735210393254

`5*A055112(n+1)`
-/

namespace A316459.P9869551735210393254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A055112 (n + 1)

end

end A316459.P9869551735210393254

namespace A316459

/-- `5*A055112(n+1)` -/
def P9869551735210393254.Spec : Prop :=
  ∀ n, P9869551735210393254.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P4017239335932430518

`2*∑[A064761(n+1)]`
-/

namespace A316459.P4017239335932430518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316459.P4017239335932430518

namespace A316459

/-- `2*∑[A064761(n+1)]` -/
def P4017239335932430518.Spec : Prop :=
  ∀ n, P4017239335932430518.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P16674623090101123002

`Δ[5*A083374(n+1)]`
-/

namespace A316459.P16674623090101123002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A083374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316459.P16674623090101123002

namespace A316459

/-- `Δ[5*A083374(n+1)]` -/
def P16674623090101123002.Spec : Prop :=
  ∀ n, P16674623090101123002.a n = A316459 (n + 1)

end A316459

/-! ## A316459.P5142191036587279899

`A002378(n+1)*A017329(n+1)`
-/

namespace A316459.P5142191036587279899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) * A017329 (n + 1)

end

end A316459.P5142191036587279899

namespace A316459

/-- `A002378(n+1)*A017329(n+1)` -/
def P5142191036587279899.Spec : Prop :=
  ∀ n, P5142191036587279899.a n = A316459 (n + 1)

end A316459

/-!
# A316460: Even integers not of the form prime(prime(x)) + prime(prime(y)) with x > y > 0.

The programs for A316460, there is no canonical definition to state claims against.
-/

/-! ## A316460.P5632021237775506670

`eq[A000007(A006855(n+1)), A196563(3*n+1)]`
-/

namespace A316460.P5632021237775506670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A006855 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316460.P5632021237775506670

/-! ## A316460.P3343158793572290248

`eq[A019590(A064026(n+1)), A196563(3*n+1)]`
-/

namespace A316460.P3343158793572290248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A064026 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316460.P3343158793572290248

/-! ## A316460.P9510440831109774320

`lt[A198277(2*(n+1)), A198277(A327539(3*n+1))]`
-/

namespace A316460.P9510440831109774320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198277 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198277 (A327539 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316460.P9510440831109774320

/-! ## A316460.P7363491276430216456

`eq[log2(A178544(3*n+1)), floor(1/(n+1))]`
-/

namespace A316460.P7363491276430216456
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A178544 (3 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A316460.P7363491276430216456

/-!
# A316461: Expansion of Product_{k>=1} 1/(1-x^k)^(9*k).

The programs for A316461, there is no canonical definition to state claims against.
-/

/-! ## A316461.P6576848629471610042

`A255961(A051936(n+10)-1)`
-/

namespace A316461.P6576848629471610042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A051936 (n + 10) - 1).toNat

end

end A316461.P6576848629471610042

/-! ## A316461.P9154524951860957874

`A255961(A055998(n+8)-7)`
-/

namespace A316461.P9154524951860957874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A055998 (n + 8) - 7).toNat

end

end A316461.P9154524951860957874

/-! ## A316461.P1799035926334145895

`A255961(A000217(n+10)-10)`
-/

namespace A316461.P1799035926334145895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A000217 (n + 10) - 10).toNat

end

end A316461.P1799035926334145895

/-! ## A316461.P16960940766322349000

`A255961(A133263(n+5)+A016885(n+5))`
-/

namespace A316461.P16960940766322349000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A133263 (n + 5) + A016885 (n + 5)).toNat

end

end A316461.P16960940766322349000

/-! ## A316461.P17255041454771017058

`A255961(A002378(n+7)-A000124(n+4))`
-/

namespace A316461.P17255041454771017058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A002378 (n + 7) - A000124 (n + 4)).toNat

end

end A316461.P17255041454771017058

/-! ## A316461.P18128370642457265761

`A255961(A046691(n+5)+A008585(n+7))`
-/

namespace A316461.P18128370642457265761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A046691 (n + 5) + A008585 (n + 7)).toNat

end

end A316461.P18128370642457265761

/-!
# A316462: Expansion of Product_{k>=1} 1/(1-x^k)^(10*k).

The programs for A316462, there is no canonical definition to state claims against.
-/

/-! ## A316462.P5640774752755970481

`A255961(A051936(n+11)-2)`
-/

namespace A316462.P5640774752755970481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A051936 (n + 11) - 2).toNat

end

end A316462.P5640774752755970481

/-! ## A316462.P11874656179257307038

`A255961(A055998(n+9)-8)`
-/

namespace A316462.P11874656179257307038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A055998 (n + 9) - 8).toNat

end

end A316462.P11874656179257307038

/-! ## A316462.P1334545997610518409

`A255961((n+9)²-A167499(n+5))`
-/

namespace A316462.P1334545997610518409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (((n + 9) ^ 2 : ℤ) - A167499 (n + 5)).toNat

end

end A316462.P1334545997610518409

/-! ## A316462.P1297775788760878905

`A255961(A133263(n+8)+A016789(n+5))`
-/

namespace A316462.P1297775788760878905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A133263 (n + 8) + A016789 (n + 5)).toNat

end

end A316462.P1297775788760878905

/-! ## A316462.P1508671984407534437

`A255961(A008585(n+6)+A000124(n+8))`
-/

namespace A316462.P1508671984407534437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A008585 (n + 6) + A000124 (n + 8)).toNat

end

end A316462.P1508671984407534437

/-! ## A316462.P4336992905947862182

`A255961(A036572(n+7)+A036572(n+10))`
-/

namespace A316462.P4336992905947862182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A036572 (n + 7) + A036572 (n + 10)).toNat

end

end A316462.P4336992905947862182

/-!
# A316463: Expansion of Product_{k>0} (1 - x^k)^(4*k).

The programs for A316463, there is no canonical definition to state claims against.
-/

/-! ## A316463.P6334401882454228085

`A276554(∑[n+5]+5)`
-/

namespace A316463.P6334401882454228085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A316463.P6334401882454228085

/-! ## A316463.P8252905154425735655

`A276554(A052905(n+2))%A005051(n)`
-/

namespace A316463.P8252905154425735655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276554 (A052905 (n + 2)).toNat) (A005051 n)

end

end A316463.P8252905154425735655

/-! ## A316463.P12453589121408362745

`A025469(n)!*A276554(A052905(n+2))`
-/

namespace A316463.P12453589121408362745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025469 n).toNat : ℤ) * A276554 (A052905 (n + 2)).toNat

end

end A316463.P12453589121408362745

/-! ## A316463.P15111724692171122035

`and(-A000034(n), A276554(A052905(n+2)))`
-/

namespace A316463.P15111724692171122035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A276554 (A052905 (n + 2)).toNat)

end

end A316463.P15111724692171122035

/-! ## A316463.P17349617531291706848

`A276554(A052905(n+2))+A000038(n+1)`
-/

namespace A316463.P17349617531291706848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A052905 (n + 2)).toNat + A000038 (n + 1)

end

end A316463.P17349617531291706848

/-! ## A316463.P16354012065056267243

`A057427(n+1)*A276554(A052905(n+2))`
-/

namespace A316463.P16354012065056267243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A276554 (A052905 (n + 2)).toNat

end

end A316463.P16354012065056267243

/-! ## A316463.P6930077709141605143

`A007318(C(2, n+2))*A276554(A052905(n+2))`
-/

namespace A316463.P6930077709141605143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A276554 (A052905 (n + 2)).toNat

end

end A316463.P6930077709141605143

/-! ## A316463.P7170824598533431448

`A008683(n+2)²!*A276554(A052905(n+2))`
-/

namespace A316463.P7170824598533431448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 2) ^ 2).toNat : ℤ) * A276554 (A052905 (n + 2)).toNat

end

end A316463.P7170824598533431448

/-! ## A316463.P17911887573139589585

`and(1, A002024(n+1))!*A276554(A052905(n+2))`
-/

namespace A316463.P17911887573139589585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A002024 (n + 1))).toNat : ℤ) * A276554 (A052905 (n + 2)).toNat

end

end A316463.P17911887573139589585

/-! ## A316463.P14304834006269974771

`A007318(A000096(n))*A276554(A052905(n+2))`
-/

namespace A316463.P14304834006269974771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A276554 (A052905 (n + 2)).toNat

end

end A316463.P14304834006269974771

/-! ## A316463.P9776577017400356981

`A019425(A310526(n))*A276554(A052905(n+2))`
-/

namespace A316463.P9776577017400356981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A310526 n).toNat * A276554 (A052905 (n + 2)).toNat

end

end A316463.P9776577017400356981

/-! ## A316463.P4266255083008055448

`A276554(A052905(n+2))^A019425(A004275(n))`
-/

namespace A316463.P4266255083008055448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276554 (A052905 (n + 2)).toNat : ℚ) ^ (A019425 (A004275 n).toNat : ℤ)

end

end A316463.P4266255083008055448

/-! ## A316463.P12239068365807685881

`A276554(A052905(n+2))^A019425(A005843(n))`
-/

namespace A316463.P12239068365807685881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276554 (A052905 (n + 2)).toNat : ℚ) ^ (A019425 (A005843 n).toNat : ℤ)

end

end A316463.P12239068365807685881

/-! ## A316463.P3926583695135440697

`A276554(A052905(n+2))^A019425(A019425(n))`
-/

namespace A316463.P3926583695135440697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276554 (A052905 (n + 2)).toNat : ℚ) ^ (A019425 (A019425 n).toNat : ℤ)

end

end A316463.P3926583695135440697

/-! ## A316463.P13853076195341121561

`A276554(A052905(n+2))+A023531(A072669(n+1))`
-/

namespace A316463.P13853076195341121561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A052905 (n + 2)).toNat + A023531 (A072669 (n + 1)).toNat

end

end A316463.P13853076195341121561

/-! ## A316463.P8598802905436759103

`A285949(A285950(n+1))+A276554(A052905(n+2))`
-/

namespace A316463.P8598802905436759103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285949 (A285950 (n + 1)).toNat + A276554 (A052905 (n + 2)).toNat

end

end A316463.P8598802905436759103

/-! ## A316463.P13076657088157292426

`A276554(A052905(n+2))*A285949(A285951(n+1))`
-/

namespace A316463.P13076657088157292426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A052905 (n + 2)).toNat * A285949 (A285951 (n + 1)).toNat

end

end A316463.P13076657088157292426

/-! ## A316463.P4146632192062328275

`A014963(A014574(n+4))*A276554(A052905(n+2))`
-/

namespace A316463.P4146632192062328275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014574 (n + 4)).toNat * A276554 (A052905 (n + 2)).toNat

end

end A316463.P4146632192062328275

/-!
# A316464: Expansion of Product_{k>0} (1 - x^k)^(5*k).

The programs for A316464, there is no canonical definition to state claims against.
-/

/-! ## A316464.P8225619653615109415

`A276554(A055999(n+3))`
-/

namespace A316464.P8225619653615109415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A055999 (n + 3)).toNat

end

end A316464.P8225619653615109415

/-! ## A316464.P5507456556859864906

`A276554(Δ[A023551(n+1)])`
-/

namespace A316464.P5507456556859864906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (f1 (n + 1) - f1 n).toNat

end

end A316464.P5507456556859864906

/-! ## A316464.P3173050558894290265

`A276554(Δ[A026054(n+3)])`
-/

namespace A316464.P3173050558894290265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (f1 (n + 1) - f1 n).toNat

end

end A316464.P3173050558894290265

/-! ## A316464.P11693880053119204598

`A276554(A055998(n+4)-3)`
-/

namespace A316464.P11693880053119204598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A055998 (n + 4) - 3).toNat

end

end A316464.P11693880053119204598

/-! ## A316464.P15209823242736595675

`A276554(eq[6, A004736(n+1)])`
-/

namespace A316464.P15209823242736595675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316464.P15209823242736595675

/-! ## A316464.P9637998724264174947

`A276554(A000096(n+4)+n+1)`
-/

namespace A316464.P9637998724264174947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A316464.P9637998724264174947

/-! ## A316464.P3928508489331516096

`A276554(A077169(n+5)+2*n)`
-/

namespace A316464.P3928508489331516096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276554 (A077169 (n + 5) + (2 * n : ℤ)).toNat

end

end A316464.P3928508489331516096

/-!
# A316465: Heinz numbers of integer partitions such that every nonempty submultiset has an integer average.

The programs for A316465, there is no canonical definition to state claims against.
-/

/-! ## A316465.P8803096384737370552

`eq[A316314(n+1), A316557(n+1)]+1`
-/

namespace A316465.P8803096384737370552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316465.P8803096384737370552

/-! ## A316465.P17769375786791670707

`or(A025456(A005491(n)), A305504(n+1))`
-/

namespace A316465.P17769375786791670707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025456 (A005491 n).toNat) (A305504 (n + 1))

end

end A316465.P17769375786791670707

/-! ## A316465.P14648644522249977417

`or(A295297(A020695(n)), A305504(n+1))`
-/

namespace A316465.P14648644522249977417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A295297 (A020695 n).toNat) (A305504 (n + 1))

end

end A316465.P14648644522249977417

/-! ## A316465.P2424655321759820206

`lt[A283617(A345914(2*(n+1))), A319442(n+5)]`
-/

namespace A316465.P2424655321759820206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283617 (A345914 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316465.P2424655321759820206

/-! ## A316465.P6732373727845232495

`eq[A009194(n+1), A091887(A219282(n)+1)]+1`
-/

namespace A316465.P6732373727845232495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091887 (A219282 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316465.P6732373727845232495

/-!
# A316466: a(n) = 2*n*(7*n - 3).

The programs for A316466, the canonical program `A316466.P14248741323085177896` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316466 has offset 0).

The definition of A316466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(7*n-3)` (program `A316466.P14248741323085177896`, by `A316466.P14248741323085177896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A316466.P14248741323085177896

`2*n*(7*n-3)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A316466

/-- `2*n*(7*n-3)` -/
def P14248741323085177896.Spec : Prop :=
  ∀ n, P14248741323085177896.a n = A316466 n

theorem P14248741323085177896.correct : P14248741323085177896.Spec := by
  intro n
  simp only [A316466]

end A316466

/-! ## A316466.P4816738068557338450

`∑[a(n-1)+28]` with `a(0)=0, a(1)=8`
-/

namespace A316466.P4816738068557338450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316466.P4816738068557338450

namespace A316466

/-- `∑[a(n-1)+28]` -/
def P4816738068557338450.Spec : Prop :=
  ∀ n, (P4816738068557338450.a n : ℤ) = A316466 n

end A316466

/-! ## A316466.P92094284929078130

`7*C(2*n, 2)+n`
-/

namespace A316466.P92094284929078130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose (2 * n) 2 + n

end

end A316466.P92094284929078130

namespace A316466

/-- `7*C(2*n, 2)+n` -/
def P92094284929078130.Spec : Prop :=
  ∀ n, (P92094284929078130.a n : ℤ) = A316466 n

theorem P92094284929078130.correct : P92094284929078130.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P92094284929078130.a, A316466.P14248741323085177896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P16012213928386433215

`A195320(n)+n`
-/

namespace A316466.P16012213928386433215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195320 n + (n : ℤ)

end

end A316466.P16012213928386433215

namespace A316466

/-- `A195320(n)+n` -/
def P16012213928386433215.Spec : Prop :=
  ∀ n, P16012213928386433215.a n = A316466 n

theorem P16012213928386433215.correct : P16012213928386433215.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P16012213928386433215.a, A316466.P14248741323085177896.a, A195320, A195320.P13388806394777680698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P10725213271824357229

`8*A218471(n)/2`
-/

namespace A316466.P10725213271824357229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A218471 n : ℚ) / 2

end

end A316466.P10725213271824357229

namespace A316466

/-- `8*A218471(n)/2` -/
def P10725213271824357229.Spec : Prop :=
  ∀ n, P10725213271824357229.a n = (A316466 n : ℚ)

end A316466

/-! ## A316466.P6357210097001290151

`A195023(n)-2*n`
-/

namespace A316466.P6357210097001290151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195023 n - (2 * n : ℤ)

end

end A316466.P6357210097001290151

namespace A316466

/-- `A195023(n)-2*n` -/
def P6357210097001290151.Spec : Prop :=
  ∀ n, P6357210097001290151.a n = A316466 n

theorem P6357210097001290151.correct : P6357210097001290151.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P6357210097001290151.a, A316466.P14248741323085177896.a, A195023, A195023.P13395883807883486776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P697424278778778985

`A152760(n)+4*n`
-/

namespace A316466.P697424278778778985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n + (4 * n : ℤ)

end

end A316466.P697424278778778985

namespace A316466

/-- `A152760(n)+4*n` -/
def P697424278778778985.Spec : Prop :=
  ∀ n, P697424278778778985.a n = A316466 n

theorem P697424278778778985.correct : P697424278778778985.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P697424278778778985.a, A316466.P14248741323085177896.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P9144676293440928434

`A185019(n)-3*n`
-/

namespace A316466.P9144676293440928434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n - (3 * n : ℤ)

end

end A316466.P9144676293440928434

namespace A316466

/-- `A185019(n)-3*n` -/
def P9144676293440928434.Spec : Prop :=
  ∀ n, P9144676293440928434.a n = A316466 n

theorem P9144676293440928434.correct : P9144676293440928434.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P9144676293440928434.a, A316466.P14248741323085177896.a, A185019, A185019.P9430512347604204283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P10853314976111106245

`A195021(n)+5*n`
-/

namespace A316466.P10853314976111106245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195021 n + (5 * n : ℤ)

end

end A316466.P10853314976111106245

namespace A316466

/-- `A195021(n)+5*n` -/
def P10853314976111106245.Spec : Prop :=
  ∀ n, P10853314976111106245.a n = A316466 n

theorem P10853314976111106245.correct : P10853314976111106245.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P10853314976111106245.a, A316466.P14248741323085177896.a, A195021, A195021.P8547858062426879313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P6219301863882959427

`A195024(n)-5*n`
-/

namespace A316466.P6219301863882959427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195024 n - (5 * n : ℤ)

end

end A316466.P6219301863882959427

namespace A316466

/-- `A195024(n)-5*n` -/
def P6219301863882959427.Spec : Prop :=
  ∀ n, P6219301863882959427.a n = A316466 n

theorem P6219301863882959427.correct : P6219301863882959427.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P6219301863882959427.a, A316466.P14248741323085177896.a, A195024, A195024.P14352591559818533670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P8359204016391460319

`A152746(n)+2*n²`
-/

namespace A316466.P8359204016391460319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n + (2 * n ^ 2 : ℤ)

end

end A316466.P8359204016391460319

namespace A316466

/-- `A152746(n)+2*n²` -/
def P8359204016391460319.Spec : Prop :=
  ∀ n, P8359204016391460319.a n = A316466 n

theorem P8359204016391460319.correct : P8359204016391460319.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P8359204016391460319.a, A316466.P14248741323085177896.a, A152746, A152746.P17154373183025308854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P16238254861255537385

`A153784(n)+(2*n)²`
-/

namespace A316466.P16238254861255537385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n + ((2 * n) ^ 2 : ℤ)

end

end A316466.P16238254861255537385

namespace A316466

/-- `A153784(n)+(2*n)²` -/
def P16238254861255537385.Spec : Prop :=
  ∀ n, P16238254861255537385.a n = A316466 n

theorem P16238254861255537385.correct : P16238254861255537385.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P16238254861255537385.a, A316466.P14248741323085177896.a, A153784, A153784.P16889375824211601871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P16702739021807965478

`A153780(n)-(n²+n)`
-/

namespace A316466.P16702739021807965478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n - (n ^ 2 + n : ℤ)

end

end A316466.P16702739021807965478

namespace A316466

/-- `A153780(n)-(n²+n)` -/
def P16702739021807965478.Spec : Prop :=
  ∀ n, P16702739021807965478.a n = A316466 n

theorem P16702739021807965478.correct : P16702739021807965478.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P16702739021807965478.a, A316466.P14248741323085177896.a, A153780, A153780.P13444899708151239759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P6711742862545469322

`4*A000567(n)+(n+1)*2*n`
-/

namespace A316466.P6711742862545469322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000567 n + ((n + 1) * (2 * n) : ℤ)

end

end A316466.P6711742862545469322

namespace A316466

/-- `4*A000567(n)+(n+1)*2*n` -/
def P6711742862545469322.Spec : Prop :=
  ∀ n, P6711742862545469322.a n = A316466 n

theorem P6711742862545469322.correct : P6711742862545469322.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P6711742862545469322.a, A316466.P14248741323085177896.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P17993689143429070281

`A051624(n)+A013656(n)`
-/

namespace A316466.P17993689143429070281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n + A013656 n

end

end A316466.P17993689143429070281

namespace A316466

/-- `A051624(n)+A013656(n)` -/
def P17993689143429070281.Spec : Prop :=
  ∀ n, P17993689143429070281.a n = A316466 n

theorem P17993689143429070281.correct : P17993689143429070281.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P17993689143429070281.a, A316466.P14248741323085177896.a, A013656, A013656.P11559324039876728310.a, A051624, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P11091880273244998459

`A051867(n)+A022272(n)`
-/

namespace A316466.P11091880273244998459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n + A022272 n

end

end A316466.P11091880273244998459

namespace A316466

/-- `A051867(n)+A022272(n)` -/
def P11091880273244998459.Spec : Prop :=
  ∀ n, P11091880273244998459.a n = A316466 n

end A316466

/-! ## A316466.P674429831545107729

`A051869(n)+A022271(n)`
-/

namespace A316466.P674429831545107729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + A022271 n

end

end A316466.P674429831545107729

namespace A316466

/-- `A051869(n)+A022271(n)` -/
def P674429831545107729.Spec : Prop :=
  ∀ n, P674429831545107729.a n = A316466 n

end A316466

/-! ## A316466.P5797016052611238031

`A051875(n)+A024966(n)`
-/

namespace A316466.P5797016052611238031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n + A024966 n

end

end A316466.P5797016052611238031

namespace A316466

/-- `A051875(n)+A024966(n)` -/
def P5797016052611238031.Spec : Prop :=
  ∀ n, P5797016052611238031.a n = A316466 n

end A316466

/-! ## A316466.P18174071352539928756

`A062783(n)+A014107(n)`
-/

namespace A316466.P18174071352539928756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n + A014107 n

end

end A316466.P18174071352539928756

namespace A316466

/-- `A062783(n)+A014107(n)` -/
def P18174071352539928756.Spec : Prop :=
  ∀ n, P18174071352539928756.a n = A316466 n

theorem P18174071352539928756.correct : P18174071352539928756.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P18174071352539928756.a, A316466.P14248741323085177896.a, A014107, A014107.P7046062318563033165.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-! ## A316466.P2635265396143885507

`A051868(n)+A033582(n)`
-/

namespace A316466.P2635265396143885507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n + A033582 n

end

end A316466.P2635265396143885507

namespace A316466

/-- `A051868(n)+A033582(n)` -/
def P2635265396143885507.Spec : Prop :=
  ∀ n, P2635265396143885507.a n = A316466 n

theorem P2635265396143885507.correct : P2635265396143885507.Spec := by
  intro n
  simp only [A316466, Nat.add_sub_cancel, A316466.P2635265396143885507.a, A316466.P14248741323085177896.a, A033582, A033582.P4303886374806047270.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316466

/-!
# A316467: Matula-Goebel numbers of locally stable rooted identity trees, meaning no branch is a subset of any other branch of the same root.

The programs for A316467, there is no canonical definition to state claims against.
-/

/-! ## A316467.P15424734985558796260

`record[A348066(A316468(n+1))]`
-/

namespace A316467.P15424734985558796260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A316468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316467.P15424734985558796260

/-! ## A316467.P6860366284090970008

`∩[A276625(n+1), A316468(n+1)]`
-/

namespace A316467.P6860366284090970008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316467.P6860366284090970008

/-! ## A316467.P2059596509425186092

`∩[A297571(n+1), A316468(n+1)]`
-/

namespace A316467.P2059596509425186092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316467.P2059596509425186092

/-! ## A316467.P12199723533339127926

`∩[A316468(n+1), A316494(n+1)]`
-/

namespace A316467.P12199723533339127926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316467.P12199723533339127926

/-! ## A316467.P1722389235186676865

`∩[A316468(n+1), A316503(n+1)]`
-/

namespace A316467.P1722389235186676865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316467.P1722389235186676865

/-!
# A316468: Matula-Goebel numbers of locally stable rooted trees, meaning no branch is a submultiset of any other branch of the same root.

The programs for A316468, there is no canonical definition to state claims against.
-/

/-! ## A316468.P18005484806281359696

`lt[A335474(n+1), A335465(2*n)]`
-/

namespace A316468.P18005484806281359696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316468.P18005484806281359696

/-! ## A316468.P2784796092725071809

`lt[A110765(n+1), A230224(A241487(n+1))]`
-/

namespace A316468.P2784796092725071809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230224 (A241487 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316468.P2784796092725071809

/-! ## A316468.P13805676289810277252

`lt[A255062(A000120(n+1)), A335465(2*n)]`
-/

namespace A316468.P13805676289810277252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (A000120 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316468.P13805676289810277252

/-! ## A316468.P5079952908213932167

`lt[A000045(A335454(n+1)), A335465(2*n)]`
-/

namespace A316468.P5079952908213932167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A335454 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316468.P5079952908213932167

/-! ## A316468.P1545645764819017748

`lt[A233564(A335458(n+1)), A335465(2*n)]`
-/

namespace A316468.P1545645764819017748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (A335458 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316468.P1545645764819017748

/-!
# A316469: Matula-Goebel numbers of unlabeled rooted identity RPMG-trees, meaning the Matula-Goebel numbers of the branches of any non-leaf node are relatively prime.

The programs for A316469, there is no canonical definition to state claims against.
-/

/-! ## A316469.P16842925788433067630

`∩[A202854(n+1), A331963(n+1)]`
-/

namespace A316469.P16842925788433067630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316469.P16842925788433067630

/-! ## A316469.P11637427308431018746

`A319270(A075058(n))`
-/

namespace A316469.P11637427308431018746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319270 (A075058 n).toNat

end

end A316469.P11637427308431018746

/-! ## A316469.P8574737267705141297

`record[A348066(A319270(n+1))]`
-/

namespace A316469.P8574737267705141297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A319270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316469.P8574737267705141297

/-!
# A316470: Matula-Goebel numbers of unlabeled rooted RPMG-trees, meaning the Matula-Goebel numbers of the branches of any non-leaf node are relatively prime.

The programs for A316470, there is no canonical definition to state claims against.
-/

/-! ## A316470.P3730626761648269134

`lt[A184169(n+1), 2]+1`
-/

namespace A316470.P3730626761648269134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A316470.P3730626761648269134

/-! ## A316470.P18295634212574513037

`eq[n, n*a(A184169(n))]` with `a(0)=1`
-/

namespace A316470.P18295634212574513037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (A184169 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316470.P18295634212574513037

/-! ## A316470.P12996141900301919689

`eq[1, A184169(ceil(n-(atan(n)-1)))]`
-/

namespace A316470.P12996141900301919689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184169 ⌈(n : ℝ) - (Real.arctan (n : ℝ) - 1)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316470.P12996141900301919689

/-! ## A316470.P6639058781087462474

`eq[A057427(n), A184169(n+1)]+1`
-/

namespace A316470.P6639058781087462474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316470.P6639058781087462474

/-! ## A316470.P3309560484730566046

`eq[A184168(n+1), A342507(n+1)]+1`
-/

namespace A316470.P3309560484730566046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316470.P3309560484730566046

/-!
# A316471: Number of locally disjoint rooted identity trees with n nodes, meaning no branch overlaps any other branch of the same root.

The programs for A316471, there is no canonical definition to state claims against.
-/

/-! ## A316471.P13183454533085193851

`A007477(n)-A102677(A124302(n))`
-/

namespace A316471.P13183454533085193851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 n - A102677 (A124302 n).toNat

end

end A316471.P13183454533085193851

/-! ## A316471.P17467021440122021257

`A023193(A036611(n)+A036618(n)-1)`
-/

namespace A316471.P17467021440122021257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A036611 n + (A036618 n - 1)).toNat

end

end A316471.P17467021440122021257

/-! ## A316471.P16547772317186454326

`A023193(A036612(n)+A036617(n)-1)`
-/

namespace A316471.P16547772317186454326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A036612 n + (A036617 n - 1)).toNat

end

end A316471.P16547772317186454326

/-! ## A316471.P725221068429724363

`A331993(n+1)-A319710(A292549(n))`
-/

namespace A316471.P725221068429724363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331993 (n + 1) - A319710 (A292549 n).toNat

end

end A316471.P725221068429724363

/-! ## A316471.P15934655120569870002

`A331993(n+1)-A386586(A160089(3*n+2))`
-/

namespace A316471.P15934655120569870002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331993 (n + 1) - A386586 (A160089 (3 * n + 2)).toNat

end

end A316471.P15934655120569870002

/-!
# A316472: Inverse permutation to A316385.

The programs for A316472, the canonical program `A316472.P15815370962677773689` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316472 has offset 1).

The definition of A316472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316472.P15815370962677773689

`A057889(A153152(A059893(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A316472

/-- `A057889(A153152(A059893(n+1)))` -/
def P15815370962677773689.Spec : Prop :=
  ∀ n, P15815370962677773689.a n = A316472 (n + 1)

theorem P15815370962677773689.correct : P15815370962677773689.Spec := by
  intro n
  simp only [A316472, Nat.add_sub_cancel]

end A316472

/-! ## A316472.P10571940987098900661

`A059894(A316385(A059894(n+1)))`
-/

namespace A316472.P10571940987098900661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A316385 (A059894 (n + 1)).toNat).toNat

end

end A316472.P10571940987098900661

namespace A316472

/-- `A059894(A316385(A059894(n+1)))` -/
def P10571940987098900661.Spec : Prop :=
  ∀ n, P10571940987098900661.a n = A316472 (n + 1)

end A316472

/-! ## A316472.P17273844147910183386

`A057889(A059893(n+1)+Δ[A062050(n+1)])`
-/

namespace A316472.P17273844147910183386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A059893 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A316472.P17273844147910183386

namespace A316472

/-- `A057889(A059893(n+1)+Δ[A062050(n+1)])` -/
def P17273844147910183386.Spec : Prop :=
  ∀ n, P17273844147910183386.a n = A316472 (n + 1)

end A316472

/-! ## A316472.P15194231574295497644

`A139708(A153142(n+1))`
-/

namespace A316472.P15194231574295497644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (A153142 (n + 1)).toNat

end

end A316472.P15194231574295497644

namespace A316472

/-- `A139708(A153142(n+1))` -/
def P15194231574295497644.Spec : Prop :=
  ∀ n, P15194231574295497644.a n = A316472 (n + 1)

end A316472

/-!
# A316473: Number of locally disjoint rooted trees with n nodes, meaning no branch overlaps any other (unequal) branch of the same root.

The programs for A316473, there is no canonical definition to state claims against.
-/

/-! ## A316473.P6502756681960117068

`A024417(A078484(n)+A078008(n))`
-/

namespace A316473.P6502756681960117068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A078484 n + A078008 n).toNat

end

end A316473.P6502756681960117068

/-! ## A316473.P11569700949785106621

`A166444(n)+A055086(A133189(n))`
-/

namespace A316473.P11569700949785106621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A055086 (A133189 n).toNat

end

end A316473.P11569700949785106621

/-! ## A316473.P16270345651937110417

`A001462(A148847(n)-A286418(n+1))`
-/

namespace A316473.P16270345651937110417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A148847 n - A286418 (n + 1)).toNat

end

end A316473.P16270345651937110417

/-! ## A316473.P865734448905851008

`A036624(A077739(n+1))-Δ[A036644(n)]`
-/

namespace A316473.P865734448905851008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036624 (A077739 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A316473.P865734448905851008

/-!
# A316474: Number of locally stable rooted identity trees with n nodes, meaning no branch is a subset of any other branch of the same root.

The programs for A316474, there is no canonical definition to state claims against.
-/

/-! ## A316474.P9305872465516250589

`A000196(A336009(n)*A342517(n))`
-/

namespace A316474.P9305872465516250589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A336009 n * A342517 n).toNat

end

end A316474.P9305872465516250589

/-! ## A316474.P12013525472534913256

`ceil(A174201(n+1)/35)`
-/

namespace A316474.P12013525472534913256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174201 (n + 1) : ℚ) / 35⌉

end

end A316474.P12013525472534913256

/-! ## A316474.P2449369490523212219

`A083023(A360810(n))`
-/

namespace A316474.P2449369490523212219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A360810 n).toNat

end

end A316474.P2449369490523212219

/-! ## A316474.P1019904527332681268

`A128559(A260403(n)+1)`
-/

namespace A316474.P1019904527332681268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A260403 n + 1).toNat

end

end A316474.P1019904527332681268

/-! ## A316474.P7362347629118469105

`A280814(A330627(n+2))`
-/

namespace A316474.P7362347629118469105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (A330627 (n + 2)).toNat

end

end A316474.P7362347629118469105

/-!
# A316475: Number of locally stable rooted trees with n nodes, meaning no branch is a submultiset of any other (unequal) branch of the same root.

The programs for A316475, there is no canonical definition to state claims against.
-/

/-! ## A316475.P5961780594508854314

`A100795(A275427(n+1))`
-/

namespace A316475.P5961780594508854314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A275427 (n + 1)).toNat

end

end A316475.P5961780594508854314

/-! ## A316475.P8847543988194309231

`A283303(A229046(n))+1`
-/

namespace A316475.P8847543988194309231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283303 (A229046 n).toNat + 1

end

end A316475.P8847543988194309231

/-! ## A316475.P10998127797851635120

`A004788(A316473(n+1)+2)`
-/

namespace A316475.P10998127797851635120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A316473 (n + 1) + 2).toNat

end

end A316475.P10998127797851635120

/-! ## A316475.P6200684141557592147

`A004526(n)+A003056(A001004(n))`
-/

namespace A316475.P6200684141557592147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A003056 (A001004 n).toNat

end

end A316475.P6200684141557592147

/-! ## A316475.P9375245430149930218

`A199246(n+1)+A108602(A000108(n))`
-/

namespace A316475.P9375245430149930218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (n + 1) + A108602 (A000108 n).toNat

end

end A316475.P9375245430149930218

/-!
# A316476: Stable numbers. Numbers whose distinct prime indices are pairwise indivisible.

The programs for A316476, there is no canonical definition to state claims against.
-/

/-! ## A316476.P14462693522726709233

`eq[1, A378442(n+1)]+1`
-/

namespace A316476.P14462693522726709233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316476.P14462693522726709233

/-! ## A316476.P70217682467182069

`filter[A320340(n+1), A378442(#)]`
-/

namespace A316476.P70217682467182069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P70217682467182069

/-! ## A316476.P8430111788023138389

`eq[1, A327402(n+1)]+1`
-/

namespace A316476.P8430111788023138389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316476.P8430111788023138389

/-! ## A316476.P15556180840907237596

`record[A000027(n+1)/A327402(n+1)]`
-/

namespace A316476.P15556180840907237596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A327402 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316476.P15556180840907237596

/-! ## A316476.P995344738171842382

`filter[A293205(n+1), A378442(#)]`
-/

namespace A316476.P995344738171842382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P995344738171842382

/-! ## A316476.P2048834631246331938

`filter[A107750(n+1), A378442(#)]`
-/

namespace A316476.P2048834631246331938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P2048834631246331938

/-! ## A316476.P14432040165571663818

`filter[A094520(n+1), A378442(#)]`
-/

namespace A316476.P14432040165571663818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P14432040165571663818

/-! ## A316476.P14291107683696116550

`filter[A348577(n+1), A378442(#)]`
-/

namespace A316476.P14291107683696116550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P14291107683696116550

/-! ## A316476.P12722331649742656705

`filter[A228869(n+1), A378442(#)]`
-/

namespace A316476.P12722331649742656705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P12722331649742656705

/-! ## A316476.P9006591579738741910

`filter[A387892(n+1), A378442(#)]`
-/

namespace A316476.P9006591579738741910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P9006591579738741910

/-! ## A316476.P17830457130662741196

`filter[A079298(n+2), A378442(#)]`
-/

namespace A316476.P17830457130662741196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P17830457130662741196

/-! ## A316476.P7823586414838206593

`filter[A047253(n+1), A378442(#)]`
-/

namespace A316476.P7823586414838206593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P7823586414838206593

/-! ## A316476.P16767590890255291639

`filter[A129657(n+1), A378442(#)]`
-/

namespace A316476.P16767590890255291639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P16767590890255291639

/-! ## A316476.P15817966212449735904

`filter[A047595(n+2), A378442(#)]`
-/

namespace A316476.P15817966212449735904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P15817966212449735904

/-! ## A316476.P14399564776952998675

`filter[A067251(n+1), A378442(#)]`
-/

namespace A316476.P14399564776952998675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P14399564776952998675

/-! ## A316476.P10798506039700711527

`filter[A097010(n+1), A378442(#)]`
-/

namespace A316476.P10798506039700711527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P10798506039700711527

/-! ## A316476.P5704616840486411317

`filter[A063742(n+2), A378442(#)]`
-/

namespace A316476.P5704616840486411317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P5704616840486411317

/-! ## A316476.P4727012432236292960

`filter[A168186(n+1), A378442(#)]`
-/

namespace A316476.P4727012432236292960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P4727012432236292960

/-! ## A316476.P2993968268153107085

`filter[A000401(n+2), A378442(#)]`
-/

namespace A316476.P2993968268153107085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P2993968268153107085

/-! ## A316476.P15647627524619864645

`filter[A064598(n+1), A378442(#)]`
-/

namespace A316476.P15647627524619864645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A316476.P15647627524619864645

/-!
# A316479: a(n) is the smallest prime whose base-b expansion, read as a base-10 number, is a prime for every b in 2, 3, ..., n. (For n > 10, each base-b expansion for 10 < b <= n must contain no digit larger than 9.)

The programs for A316479, there is no canonical definition to state claims against.
-/

/-! ## A316479.P207336089929020956

`A040148(A171384(n+1)!)`
-/

namespace A316479.P207336089929020956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040148 (Nat.factorial (A171384 (n + 1)).toNat)

end

end A316479.P207336089929020956

/-!
# A316480: Table read by rows: T(n,k), 0 <= k <= 9, is the number of n-digit squares whose average digit is exactly k.

The programs for A316480, there is no canonical definition to state claims against.
-/

/-! ## A316480.P10222861547361110662

`A010052(A171397(n))*A137152(A015919(n+1))`
-/

namespace A316480.P10222861547361110662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A171397 n).toNat * A137152 (A015919 (n + 1)).toNat

end

end A316480.P10222861547361110662

/-!
# A316481: Squares whose arithmetic mean of digits is 1 (i.e., the sum of digits equals the number of digits).

The programs for A316481, there is no canonical definition to state claims against.
-/

/-! ## A316481.P10013698022786118517

`A164771(n+1)²`
-/

namespace A316481.P10013698022786118517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164771 (n + 1) ^ 2

end

end A316481.P10013698022786118517

/-! ## A316481.P11052515883391177565

`A164771(C(n+1, n))^2`
-/

namespace A316481.P11052515883391177565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164771 (Nat.choose (n + 1) n) ^ 2

end

end A316481.P11052515883391177565

/-! ## A316481.P2583933661932925453

`A164771(ϕ²-(ϕ-n))^2`
-/

namespace A316481.P2583933661932925453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164771 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat ^ 2

end

end A316481.P2583933661932925453

/-! ## A316481.P1674206052859467972

`record[A164771(A106466(n))²]`
-/

namespace A316481.P1674206052859467972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164771 (A106466 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316481.P1674206052859467972

/-! ## A316481.P13892790828656847554

`record[A164771(A133310(n))²]`
-/

namespace A316481.P13892790828656847554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164771 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316481.P13892790828656847554

/-!
# A316482: Squares whose arithmetic mean of digits is 2 (i.e., the sum of digits is twice the number of digits).

The programs for A316482, there is no canonical definition to state claims against.
-/

/-! ## A316482.P4352815505289575232

`A164770(n+1)²`
-/

namespace A316482.P4352815505289575232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164770 (n + 1) ^ 2

end

end A316482.P4352815505289575232

/-! ## A316482.P1625948227667617223

`A164770(n+1)*A164770(n%(n+1)+1)`
-/

namespace A316482.P1625948227667617223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164770 (n + 1) * A164770 (n % (n + 1) + 1)

end

end A316482.P1625948227667617223

/-! ## A316482.P10963895348465354787

`A164770(A000027(n+1))*A164770(n+1)`
-/

namespace A316482.P10963895348465354787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164770 (A000027 (n + 1)).toNat * A164770 (n + 1)

end

end A316482.P10963895348465354787

/-! ## A316482.P7407447348190547855

`A164770(n+1)^A000005(A065091(n+1))`
-/

namespace A316482.P7407447348190547855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164770 (n + 1) : ℚ) ^ (A000005 (A065091 (n + 1)).toNat : ℤ)

end

end A316482.P7407447348190547855

/-! ## A316482.P8374114504788044503

`A164770(n+1)^A000005(A008578(n+2))`
-/

namespace A316482.P8374114504788044503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164770 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 2)).toNat : ℤ)

end

end A316482.P8374114504788044503

/-! ## A316482.P4591228619828563943

`A164770(n+1)^A000010(Δ[A175884(n+2)]+1)`
-/

namespace A316482.P4591228619828563943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164770 (n + 1) : ℚ) ^ (A000010 (f1 (n + 1) - f1 n + 1).toNat : ℤ)

end

end A316482.P4591228619828563943

/-! ## A316482.P13976772301752680921

`A164770(n+1)^A000034(2*n+3)`
-/

namespace A316482.P13976772301752680921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164770 (n + 1) : ℚ) ^ (A000034 (2 * n + 3) : ℤ)

end

end A316482.P13976772301752680921

/-! ## A316482.P13454493998072580641

`A164770(n+1)^A000005(A030431(n+1))`
-/

namespace A316482.P13454493998072580641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164770 (n + 1) : ℚ) ^ (A000005 (A030431 (n + 1)).toNat : ℤ)

end

end A316482.P13454493998072580641

/-! ## A316482.P8387367735956486591

`A164770(n+1)^A000005(A001359(n+1))`
-/

namespace A316482.P8387367735956486591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164770 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A316482.P8387367735956486591

/-! ## A316482.P13255845492336535309

`A164770(n+1)^A000005(A006512(n+1))`
-/

namespace A316482.P13255845492336535309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164770 (n + 1) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A316482.P13255845492336535309

/-! ## A316482.P5365975573114992671

`A164770(n+1)^A000005(A118359(n+1))`
-/

namespace A316482.P5365975573114992671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164770 (n + 1) : ℚ) ^ (A000005 (A118359 (n + 1)).toNat : ℤ)

end

end A316482.P5365975573114992671

/-!
# A316483: Squares whose arithmetic mean of digits is 3 (i.e., the sum of digits is 3 times the number of digits).

The programs for A316483, there is no canonical definition to state claims against.
-/

/-! ## A316483.P16370305826416976976

`A164782(n+1)²`
-/

namespace A316483.P16370305826416976976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164782 (n + 1) ^ 2

end

end A316483.P16370305826416976976

/-! ## A316483.P7464153695888450639

`A164782(A000027(n+1))*A164782(n+1)`
-/

namespace A316483.P7464153695888450639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164782 (A000027 (n + 1)).toNat * A164782 (n + 1)

end

end A316483.P7464153695888450639

/-! ## A316483.P10686378418257788847

`A164782(n+1)^A296078(A134744(n+1))`
-/

namespace A316483.P10686378418257788847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164782 (n + 1) : ℚ) ^ (A296078 (A134744 (n + 1)).toNat : ℤ)

end

end A316483.P10686378418257788847

/-! ## A316483.P7911888366952396317

`A164782(n+1)^A296078(A300518(n+1))`
-/

namespace A316483.P7911888366952396317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164782 (n + 1) : ℚ) ^ (A296078 (A300518 (n + 1)).toNat : ℤ)

end

end A316483.P7911888366952396317

/-! ## A316483.P6288869825446196137

`A164782(A005843(n+1)-(n+1))*A164782(n+1)`
-/

namespace A316483.P6288869825446196137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164782 (A005843 (n + 1) - (n + 1 : ℤ)).toNat * A164782 (n + 1)

end

end A316483.P6288869825446196137

/-! ## A316483.P14033179791432666220

`A164782(n+1)^(2%A140689(n+1))`
-/

namespace A316483.P14033179791432666220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164782 (n + 1) : ℚ) ^ (Int.tmod 2 (A140689 (n + 1)) : ℤ)

end

end A316483.P14033179791432666220

/-! ## A316483.P7891773550660588969

`A164782(n+1)*A164782((n+1)%A140689(n+1))`
-/

namespace A316483.P7891773550660588969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164782 (n + 1) * A164782 (Int.tmod (n + 1 : ℤ) (A140689 (n + 1))).toNat

end

end A316483.P7891773550660588969

/-! ## A316483.P566252681046159427

`A164782(n+1)^A000010(Δ[A175884(n+2)]+1)`
-/

namespace A316483.P566252681046159427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164782 (n + 1) : ℚ) ^ (A000010 (f1 (n + 1) - f1 n + 1).toNat : ℤ)

end

end A316483.P566252681046159427

/-! ## A316483.P7233748922640446504

`A164782(n+1)^A000005(A065091(n+1))`
-/

namespace A316483.P7233748922640446504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164782 (n + 1) : ℚ) ^ (A000005 (A065091 (n + 1)).toNat : ℤ)

end

end A316483.P7233748922640446504

/-! ## A316483.P6625612342834166470

`A164782(n+1)^A000005(A001359(n+1))`
-/

namespace A316483.P6625612342834166470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164782 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A316483.P6625612342834166470

/-! ## A316483.P17946382174988083867

`A164782(n+1)^A000005(A006512(n+1))`
-/

namespace A316483.P17946382174988083867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164782 (n + 1) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A316483.P17946382174988083867

/-! ## A316483.P9601147006004520229

`A164782(n+1)^A000005(A118359(n+1))`
-/

namespace A316483.P9601147006004520229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164782 (n + 1) : ℚ) ^ (A000005 (A118359 (n + 1)).toNat : ℤ)

end

end A316483.P9601147006004520229

/-! ## A316483.P241920152929310956

`A054977(A044688(n+1))*A164782(n+1)*A164782(n+1)`
-/

namespace A316483.P241920152929310956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A044688 (n + 1)).toNat * A164782 (n + 1) * A164782 (n + 1)

end

end A316483.P241920152929310956

/-!
# A316484: Squares whose arithmetic mean of digits is 4 (i.e., the sum of digits is 4 times the number of digits).

The programs for A316484, there is no canonical definition to state claims against.
-/

/-! ## A316484.P1580337425724678109

`A164776(n+1)²`
-/

namespace A316484.P1580337425724678109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164776 (n + 1) ^ 2

end

end A316484.P1580337425724678109

/-! ## A316484.P4454582586109161293

`record[A164776(A286378(n))²]`
-/

namespace A316484.P4454582586109161293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164776 (A286378 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316484.P4454582586109161293

/-! ## A316484.P1198861153679237765

`record[A164776(A291769(n))²]`
-/

namespace A316484.P1198861153679237765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164776 (A291769 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316484.P1198861153679237765

/-! ## A316484.P17732995773111836720

`record[A164776(A133310(n))²]`
-/

namespace A316484.P17732995773111836720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164776 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316484.P17732995773111836720

/-! ## A316484.P10095179199460909914

`record[A164776(A106466(n))²]`
-/

namespace A316484.P10095179199460909914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164776 (A106466 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316484.P10095179199460909914

/-!
# A316485: Squares whose arithmetic mean of digits is 5 (i.e., the sum of digits is 5 times the number of digits).

The programs for A316485, there is no canonical definition to state claims against.
-/

/-! ## A316485.P6994468317136509790

`A164774(n+1)²`
-/

namespace A316485.P6994468317136509790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164774 (n + 1) ^ 2

end

end A316485.P6994468317136509790

/-! ## A316485.P17314269792781318061

`A164774(A000027(n+1))*A164774(n+1)`
-/

namespace A316485.P17314269792781318061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164774 (A000027 (n + 1)).toNat * A164774 (n + 1)

end

end A316485.P17314269792781318061

/-! ## A316485.P10058880595559118433

`A164774(n+1)^A230594(A020639(n+5))`
-/

namespace A316485.P10058880595559118433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164774 (n + 1) : ℚ) ^ (A230594 (A020639 (n + 5)).toNat : ℤ)

end

end A316485.P10058880595559118433

/-! ## A316485.P17572194471073926812

`record[A164774(A133310(n))²]`
-/

namespace A316485.P17572194471073926812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164774 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316485.P17572194471073926812

/-! ## A316485.P11525021991239845555

`record[A164774(A106466(n))²]`
-/

namespace A316485.P11525021991239845555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164774 (A106466 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316485.P11525021991239845555

/-! ## A316485.P6738132839113286390

`A164774(n+1)^A134451(A091065(n+4))`
-/

namespace A316485.P6738132839113286390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164774 (n + 1) : ℚ) ^ (A134451 (A091065 (n + 4)).toNat : ℤ)

end

end A316485.P6738132839113286390

/-! ## A316485.P6900306281985171231

`A164774(n+1)^A181819(A107801(n+1))`
-/

namespace A316485.P6900306281985171231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164774 (n + 1) : ℚ) ^ (A181819 (A107801 (n + 1)).toNat : ℤ)

end

end A316485.P6900306281985171231

/-! ## A316485.P9459295868345966616

`A164774(n+1)^A134451(A125259(2*(n+1)))`
-/

namespace A316485.P9459295868345966616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164774 (n + 1) : ℚ) ^ (A134451 (A125259 (2 * (n + 1))).toNat : ℤ)

end

end A316485.P9459295868345966616

/-! ## A316485.P1843089701333370552

`A002620(2*A164774(n+1))`
-/

namespace A316485.P1843089701333370552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A164774 (n + 1)).toNat

end

end A316485.P1843089701333370552

/-! ## A316485.P5446497290046949048

`A004652(2*A164774(n+1))`
-/

namespace A316485.P5446497290046949048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A164774 (n + 1)).toNat

end

end A316485.P5446497290046949048

/-!
# A316486: Squares whose arithmetic mean of digits is 6 (i.e., the sum of digits is 6 times the number of digits).

The programs for A316486, there is no canonical definition to state claims against.
-/

/-! ## A316486.P15119365337247338268

`A164778(n+1)²`
-/

namespace A316486.P15119365337247338268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164778 (n + 1) ^ 2

end

end A316486.P15119365337247338268

/-! ## A316486.P16647484588948530826

`A164778(A000027(n+1))^2`
-/

namespace A316486.P16647484588948530826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164778 (A000027 (n + 1)).toNat ^ 2

end

end A316486.P16647484588948530826

/-! ## A316486.P12352120511720929859

`A164778(n+1)*A164778(n%(n+1)+1)`
-/

namespace A316486.P12352120511720929859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164778 (n + 1) * A164778 (n % (n + 1) + 1)

end

end A316486.P12352120511720929859

/-! ## A316486.P7990338278297042480

`A164778(A000027(n+1))*A164778(n+1)`
-/

namespace A316486.P7990338278297042480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164778 (A000027 (n + 1)).toNat * A164778 (n + 1)

end

end A316486.P7990338278297042480

/-! ## A316486.P6681292839470180555

`A164778(n+1)^(A057427(n+1)+1)`
-/

namespace A316486.P6681292839470180555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164778 (n + 1) : ℚ) ^ (A057427 (n + 1) + 1 : ℤ)

end

end A316486.P6681292839470180555

/-! ## A316486.P1431888887567497659

`A000007(n+1)+A164778(n+1)*A164778(n+1)`
-/

namespace A316486.P1431888887567497659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A164778 (n + 1) * A164778 (n + 1)

end

end A316486.P1431888887567497659

/-! ## A316486.P654364429794589341

`A164778(n+1)^A000010(Δ[A175884(n+2)]+1)`
-/

namespace A316486.P654364429794589341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164778 (n + 1) : ℚ) ^ (A000010 (f1 (n + 1) - f1 n + 1).toNat : ℤ)

end

end A316486.P654364429794589341

/-! ## A316486.P6709881654924226423

`A164778(n+1)^A000005(A065091(n+1))`
-/

namespace A316486.P6709881654924226423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164778 (n + 1) : ℚ) ^ (A000005 (A065091 (n + 1)).toNat : ℤ)

end

end A316486.P6709881654924226423

/-! ## A316486.P1308398027043434344

`A164778(n+1)^(A000035(2*n+1)+1)`
-/

namespace A316486.P1308398027043434344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164778 (n + 1) : ℚ) ^ (A000035 (2 * n + 1) + 1 : ℤ)

end

end A316486.P1308398027043434344

/-! ## A316486.P124612308580307906

`A164778(n+1)^A000034(2*n+7)`
-/

namespace A316486.P124612308580307906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164778 (n + 1) : ℚ) ^ (A000034 (2 * n + 7) : ℤ)

end

end A316486.P124612308580307906

/-! ## A316486.P5217275110010359567

`A164778(n+1)^A000005(A001359(n+1))`
-/

namespace A316486.P5217275110010359567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164778 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A316486.P5217275110010359567

/-! ## A316486.P5211863723853901515

`A164778(n+1)^A000005(A006512(n+1))`
-/

namespace A316486.P5211863723853901515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164778 (n + 1) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A316486.P5211863723853901515

/-! ## A316486.P15510545785738636863

`A164778(n+1)^(2%A242077(n+1))`
-/

namespace A316486.P15510545785738636863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164778 (n + 1) : ℚ) ^ (Int.tmod 2 (A242077 (n + 1)) : ℤ)

end

end A316486.P15510545785738636863

/-! ## A316486.P15912518715672844294

`A164778(n+1)^A000005(A118359(n+1))`
-/

namespace A316486.P15912518715672844294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164778 (n + 1) : ℚ) ^ (A000005 (A118359 (n + 1)).toNat : ℤ)

end

end A316486.P15912518715672844294

/-!
# A316487: Squares whose arithmetic mean of digits is 7 (i.e., the sum of digits is 7 times the number of digits).

The programs for A316487, there is no canonical definition to state claims against.
-/

/-! ## A316487.P6329825446839935060

`A164773(n+1)²`
-/

namespace A316487.P6329825446839935060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164773 (n + 1) ^ 2

end

end A316487.P6329825446839935060

/-! ## A316487.P11464751273028505842

`A164773(n+1)*A164773(n%(n+1)+1)`
-/

namespace A316487.P11464751273028505842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164773 (n + 1) * A164773 (n % (n + 1) + 1)

end

end A316487.P11464751273028505842

/-! ## A316487.P7462506778137659839

`A164773(A000027(n+1))*A164773(n+1)`
-/

namespace A316487.P7462506778137659839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164773 (A000027 (n + 1)).toNat * A164773 (n + 1)

end

end A316487.P7462506778137659839

/-! ## A316487.P1073374615903143835

`A164773(n+1)^A000005(A000928(n+1))`
-/

namespace A316487.P1073374615903143835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164773 (n + 1) : ℚ) ^ (A000005 (A000928 (n + 1)).toNat : ℤ)

end

end A316487.P1073374615903143835

/-! ## A316487.P2205590227938649590

`A164773(n+1)^A000005(A001097(n+1))`
-/

namespace A316487.P2205590227938649590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164773 (n + 1) : ℚ) ^ (A000005 (A001097 (n + 1)).toNat : ℤ)

end

end A316487.P2205590227938649590

/-! ## A316487.P8134824755044960996

`A164773(n+1)^A000005(A001359(n+1))`
-/

namespace A316487.P8134824755044960996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164773 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A316487.P8134824755044960996

/-! ## A316487.P2661803140008501257

`A164773(n+1)^A000005(A006512(n+1))`
-/

namespace A316487.P2661803140008501257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164773 (n + 1) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A316487.P2661803140008501257

/-! ## A316487.P3207283334697781304

`A164773(n+1)^A000005(A065091(n+1))`
-/

namespace A316487.P3207283334697781304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164773 (n + 1) : ℚ) ^ (A000005 (A065091 (n + 1)).toNat : ℤ)

end

end A316487.P3207283334697781304

/-! ## A316487.P11985745426133211532

`A164773(n+1)^A290091(3^A001222(n+1))`
-/

namespace A316487.P11985745426133211532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164773 (n + 1) : ℚ) ^ (A290091 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat : ℤ)

end

end A316487.P11985745426133211532

/-! ## A316487.P6613041948264233890

`A164773(n+1)^A000010(Δ[A175884(n+2)]+1)`
-/

namespace A316487.P6613041948264233890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164773 (n + 1) : ℚ) ^ (A000010 (f1 (n + 1) - f1 n + 1).toNat : ℤ)

end

end A316487.P6613041948264233890

/-! ## A316487.P16402203016040185057

`A000007(n+1)+A164773(n+1)*A164773(n+1)`
-/

namespace A316487.P16402203016040185057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A164773 (n + 1) * A164773 (n + 1)

end

end A316487.P16402203016040185057

/-! ## A316487.P4456830699265015241

`(A164773(n+1)%A164773(n+2))^2`
-/

namespace A316487.P4456830699265015241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164773 (n + 1)) (A164773 (n + 2)) ^ 2

end

end A316487.P4456830699265015241

/-! ## A316487.P10563819919993898736

`A164773(n+1)^A000005(A118359(n+1))`
-/

namespace A316487.P10563819919993898736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164773 (n + 1) : ℚ) ^ (A000005 (A118359 (n + 1)).toNat : ℤ)

end

end A316487.P10563819919993898736

/-!
# A316488: 

The programs for A316488, there is no canonical definition to state claims against.
-/

/-! ## A316488.P6554258235454760991

`A164772(n+1)²`
-/

namespace A316488.P6554258235454760991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164772 (n + 1) ^ 2

end

end A316488.P6554258235454760991

/-! ## A316488.P2160699053284233654

`A164772(n+1)^A000005(A164816(n+1))`
-/

namespace A316488.P2160699053284233654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164772 (n + 1) : ℚ) ^ (A000005 (A164816 (n + 1)).toNat : ℤ)

end

end A316488.P2160699053284233654

/-! ## A316488.P8764868873751680025

`A164772(A161953(n+1))*A164772(n+1)`
-/

namespace A316488.P8764868873751680025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164772 (A161953 (n + 1)).toNat * A164772 (n + 1)

end

end A316488.P8764868873751680025

/-! ## A316488.P8782550443954850811

`A164772(n+1)^A000005(A164767(n+1))`
-/

namespace A316488.P8782550443954850811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164772 (n + 1) : ℚ) ^ (A000005 (A164767 (n + 1)).toNat : ℤ)

end

end A316488.P8782550443954850811

/-! ## A316488.P11785506194757377354

`A164772(n+1)^A020639(A164810(3*n+4))`
-/

namespace A316488.P11785506194757377354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164772 (n + 1) : ℚ) ^ (A020639 (A164810 (3 * n + 4)).toNat : ℤ)

end

end A316488.P11785506194757377354

/-!
# A316489: Positive numbers of the form 8*k + 4 that cannot be expressed as the sum of four distinct odd squares.

The programs for A316489, there is no canonical definition to state claims against.
-/

/-! ## A316489.P6646402583998169754

`record[lcm(4, A001948(n+1))]`
-/

namespace A316489.P6646402583998169754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A001948 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316489.P6646402583998169754

/-! ## A316489.P14408876073360492979

`2*record[lcm(2, A004195(n+1))]`
-/

namespace A316489.P14408876073360492979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A004195 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316489.P14408876073360492979

/-! ## A316489.P10698828883754534064

`A017113(eq[0, A316491(n)])`
-/

namespace A316489.P10698828883754534064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316489.P10698828883754534064

/-! ## A316489.P2715613540453180156

`A017113(lt[A316491(n), 1])`
-/

namespace A316489.P2715613540453180156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316491 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A316489.P2715613540453180156

/-! ## A316489.P9124637095480265090

`record[A109045(A001948(n+1))]`
-/

namespace A316489.P9124637095480265090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 (A001948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316489.P9124637095480265090

/-!
# A316491: Number of ways to represent 8*n + 4 as the sum of four distinct odd squares.

The programs for A316491, there is no canonical definition to state claims against.
-/

/-! ## A316491.P5661733437119200591

`A025443(2*n+1)+A025437(2*n+1)`
-/

namespace A316491.P5661733437119200591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (2 * n + 1) + A025437 (2 * n + 1)

end

end A316491.P5661733437119200591

/-! ## A316491.P12519543183342971464

`A025442(2*n+1)+2*A025443(2*n+1)`
-/

namespace A316491.P12519543183342971464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (2 * n + 1) + 2 * A025443 (2 * n + 1)

end

end A316491.P12519543183342971464

/-! ## A316491.P17931035320888432999

`2*A025437(2*n+1)-A025442(2*n+1)`
-/

namespace A316491.P17931035320888432999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025437 (2 * n + 1) - A025442 (2 * n + 1)

end

end A316491.P17931035320888432999

/-! ## A316491.P9059781798166878629

`A025443(8*n+4)-A025443(2*n+1)`
-/

namespace A316491.P9059781798166878629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (8 * n + 4) - A025443 (2 * n + 1)

end

end A316491.P9059781798166878629

/-! ## A316491.P2573997055630852376

`A025437(8*n+4)-A025437(2*n+1)`
-/

namespace A316491.P2573997055630852376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (8 * n + 4) - A025437 (2 * n + 1)

end

end A316491.P2573997055630852376

/-! ## A316491.P16379849865858684001

`A281083(A016897(n))%A316490(A016897(n))`
-/

namespace A316491.P16379849865858684001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281083 (A016897 n).toNat) (A316490 (A016897 n).toNat)

end

end A316491.P16379849865858684001

/-! ## A316491.P12341307913665821196

`A357072(n)-A357070(n)`
-/

namespace A316491.P12341307913665821196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357072 n - A357070 n

end

end A316491.P12341307913665821196

/-! ## A316491.P14695613306963119455

`A307598(n)+A357072(n)-A357071(n)`
-/

namespace A316491.P14695613306963119455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + (A357072 n - A357071 n)

end

end A316491.P14695613306963119455

/-! ## A316491.P1599941649219279262

`A167700(Δ[A016813(n²)])`
-/

namespace A316491.P1599941649219279262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (f1 (n + 1) - f1 n).toNat

end

end A316491.P1599941649219279262

/-!
# A316492: Numbers k such that the average digit in the concatenation of the numbers from 1 through k is an integer.

The programs for A316492, there is no canonical definition to state claims against.
-/

/-! ## A316492.P15518707302021428541

`or(2*n, (5^C(n, 5))!)`
-/

namespace A316492.P15518707302021428541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.factorial (5 ^ Nat.choose n 5))

end

end A316492.P15518707302021428541

/-! ## A316492.P16752687813120033570

`∑[∑[A196020(4^n)]]`
-/

namespace A316492.P16752687813120033570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (4 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316492.P16752687813120033570

/-!
# A316493: Record high values in A318291.

The programs for A316493, there is no canonical definition to state claims against.
-/

/-! ## A316493.P2485574976030830452

`A318291(A318561(n+1))`
-/

namespace A316493.P2485574976030830452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318291 (A318561 (n + 1)).toNat

end

end A316493.P2485574976030830452

/-!
# A316494: Matula-Goebel numbers of locally disjoint rooted identity trees, meaning no branch overlaps any other branch of the same root.

The programs for A316494, there is no canonical definition to state claims against.
-/

/-! ## A316494.P12182305433188019435

`∩[A302534(n+1), A316503(n+1)]`
-/

namespace A316494.P12182305433188019435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316494.P12182305433188019435

/-! ## A316494.P7145417911005748895

`record[A348066(A302505(n+1))]`
-/

namespace A316494.P7145417911005748895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A302505 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316494.P7145417911005748895

/-! ## A316494.P5642207178204782321

`∩[A276625(n+1), A302505(n+1)]`
-/

namespace A316494.P5642207178204782321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316494.P5642207178204782321

/-! ## A316494.P11253540165219329399

`∩[A297571(n+1), A302505(n+1)]`
-/

namespace A316494.P11253540165219329399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316494.P11253540165219329399

/-! ## A316494.P13578424207813882265

`∩[A302505(n+1), A316503(n+1)]`
-/

namespace A316494.P13578424207813882265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316494.P13578424207813882265

/-!
# A316495: Matula-Goebel numbers of locally disjoint unlabeled rooted trees, meaning no branch overlaps any other (unequal) branch of the same root.

The programs for A316495, there is no canonical definition to state claims against.
-/

/-! ## A316495.P3783516777646050543

`∩[A316502(n+1), A338331(n+1)]`
-/

namespace A316495.P3783516777646050543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316495.P3783516777646050543

/-! ## A316495.P9697517564090583488

`∩[comp[A317789(n+1)], A338331(n+1)]`
-/

namespace A316495.P9697517564090583488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317789 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A316495.P9697517564090583488

/-! ## A316495.P3510047806585136314

`record[A316502(n+1)%A127816(n+1)]`
-/

namespace A316495.P3510047806585136314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316502 (n + 1)) (A127816 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316495.P3510047806585136314

/-! ## A316495.P6503769815029959018

`and(A117060(n+1), A316502(n+1))`
-/

namespace A316495.P6503769815029959018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 1)) (A316502 (n + 1))

end

end A316495.P6503769815029959018

/-! ## A316495.P15280892343293115295

`and(A145038(n+1), A316502(n+1))`
-/

namespace A316495.P15280892343293115295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145038 (n + 1)) (A316502 (n + 1))

end

end A316495.P15280892343293115295

/-!
# A316497: a(n) = gcd(A081939(n), A081939(n+1)).

The programs for A316497, there is no canonical definition to state claims against.
-/

/-! ## A316497.P13229511087940294855

`gcd(A081939(n+1), A081939(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316497.P13229511087940294855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081939 (n + 1)) (A081939 (n + 2))

end

end A316497.P13229511087940294855

/-!
# A316499: Intersection of A001694 and A195069.

The programs for A316499, there is no canonical definition to state claims against.
-/

/-! ## A316499.P15974875999135825945

`filter[A195069(n+1), A319988(#)]`
-/

namespace A316499.P15974875999135825945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A316499.P15974875999135825945

/-! ## A316499.P14351439529245659868

`A195069(A034838(2*n+1))+A098158(A324767(3*(n+1)))`
-/

namespace A316499.P14351439529245659868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195069 (A034838 (2 * n + 1)).toNat + A098158 (A324767 (3 * (n + 1))).toNat

end

end A316499.P14351439529245659868

