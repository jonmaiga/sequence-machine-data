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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A186202: The maximal set of disjoint prime cycle permutations on n elements which generate unique subgroups of S(n).

The programs for A186202, there is no canonical definition to state claims against.
-/

/-! ## A186202.P2612498337992893353

`A181951(n+1)+A001465(n+1)`
-/

namespace A186202.P2612498337992893353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181951 (n + 1) + A001465 (n + 1)

end

end A186202.P2612498337992893353

/-! ## A186202.P12782994793126285327

`A000085(n+1)+A181951(n+1)-A000704(n+1)`
-/

namespace A186202.P12782994793126285327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) + (A181951 (n + 1) - A000704 (n + 1))

end

end A186202.P12782994793126285327

/-! ## A186202.P7054565987111446041

`A181954(n+1)-A214003(n+1)`
-/

namespace A186202.P7054565987111446041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181954 (n + 1) - A214003 (n + 1)

end

end A186202.P7054565987111446041

/-! ## A186202.P9087976664255429666

`A181954(n+1)+1-A060181(n+1)`
-/

namespace A186202.P9087976664255429666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181954 (n + 1) + (1 - A060181 (n + 1))

end

end A186202.P9087976664255429666

/-! ## A186202.P12663577911528839077

`A001465(n+1)+A181955(n+1)+A001465(n+1)-(A060181(n+1)-1)`
-/

namespace A186202.P12663577911528839077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001465 (n + 1) + (A181955 (n + 1) + A001465 (n + 1)) - (A060181 (n + 1) - 1)

end

end A186202.P12663577911528839077

/-!
# A186203: Limit of the position distance between the n-th odd partition of odd numbers and its successor in the list of all integer partitions sorted in reverse lexicographic order; also first differences of A186130.

The programs for A186203, there is no canonical definition to state claims against.
-/

/-! ## A186203.P10776230765260426579

`Δ[A186130(n+1)]`
-/

namespace A186203.P10776230765260426579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186203.P10776230765260426579

/-! ## A186203.P16090160851479459836

`A186130(n+2)-A186130(n+1)`
-/

namespace A186203.P16090160851479459836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186130 (n + 2) - A186130 (n + 1)

end

end A186203.P16090160851479459836

/-! ## A186203.P2549569547585354491

`Δ[record[A186130(A133310(n))]]`
-/

namespace A186203.P2549569547585354491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186130 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186203.P2549569547585354491

/-! ## A186203.P14485749560637154037

`Δ[record[A186130(A246694(n))]]`
-/

namespace A186203.P14485749560637154037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186130 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186203.P14485749560637154037

/-! ## A186203.P6054247516843882206

`Δ[record[A186130(A134478(n))]]`
-/

namespace A186203.P6054247516843882206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186130 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186203.P6054247516843882206

/-! ## A186203.P6884365378856322780

`Δ[record[A186130(A028920(n))]]`
-/

namespace A186203.P6884365378856322780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186130 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186203.P6884365378856322780

/-! ## A186203.P723534775486180332

`Δ[record[A186130(A193592(n))]]`
-/

namespace A186203.P723534775486180332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186130 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186203.P723534775486180332

/-!
# A186204: Limit of the position distance between the n-th odd partition of even numbers and its successor in the list of all integer partitions sorted in reverse lexicographic order; also first differences of A186131.

The programs for A186204, there is no canonical definition to state claims against.
-/

/-! ## A186204.P12055249764253194959

`Δ[A186131(n+1)]`
-/

namespace A186204.P12055249764253194959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186204.P12055249764253194959

/-! ## A186204.P18092707383592199141

`A186131(n+2)-A186131(n+1)`
-/

namespace A186204.P18092707383592199141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186131 (n + 2) - A186131 (n + 1)

end

end A186204.P18092707383592199141

/-! ## A186204.P17823648784629393450

`Δ[record[A186131(A133310(n))]]`
-/

namespace A186204.P17823648784629393450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186131 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186204.P17823648784629393450

/-! ## A186204.P3684122474695671190

`Δ[record[A186131(A158416(n))]]`
-/

namespace A186204.P3684122474695671190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186131 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186204.P3684122474695671190

/-! ## A186204.P4427200989174269627

`Δ[record[A186131(A134478(n))]]`
-/

namespace A186204.P4427200989174269627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186131 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186204.P4427200989174269627

/-! ## A186204.P12465948047926719157

`Δ[record[A186131(A028920(n))]]`
-/

namespace A186204.P12465948047926719157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186131 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186204.P12465948047926719157

/-! ## A186204.P5783614135764233224

`Δ[record[A186131(A193592(n))]]`
-/

namespace A186204.P5783614135764233224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186131 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186204.P5783614135764233224

/-!
# A186210: Coefficients of modular function denoted G_5(tau) by Atkin.

The programs for A186210, there is no canonical definition to state claims against.
-/

/-! ## A186210.P12804626372349669980

`A304002(A208864(n+1))+A000735(n)`
-/

namespace A186210.P12804626372349669980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304002 (A208864 (n + 1)).toNat + A000735 n

end

end A186210.P12804626372349669980

/-!
# A186211: Number of (n+1)X2 0..2 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186211, there is no canonical definition to state claims against.
-/

/-! ## A186211.P15533638446233060469

`A186218(∑[n]+1)`
-/

namespace A186211.P15533638446233060469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186211.P15533638446233060469

/-! ## A186211.P1791882891983333930

`A187425(∑[n]+1)`
-/

namespace A186211.P1791882891983333930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186211.P1791882891983333930

/-! ## A186211.P11372076904044279931

`record[A186218(A114091(n+1))]`
-/

namespace A186211.P11372076904044279931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186211.P11372076904044279931

/-! ## A186211.P18355804220947906608

`record[A186218(A166017(n+1))]`
-/

namespace A186211.P18355804220947906608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186211.P18355804220947906608

/-! ## A186211.P10230973496925613252

`record[A186218(A286235(n+1))]`
-/

namespace A186211.P10230973496925613252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186211.P10230973496925613252

/-!
# A186212: Number of (n+1)X3 0..2 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186212, there is no canonical definition to state claims against.
-/

/-! ## A186212.P6252206746567396326

`A186218(∑[n+1]+2)`
-/

namespace A186212.P6252206746567396326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186212.P6252206746567396326

/-! ## A186212.P1733483096833882721

`or(1, A186218(A000096(n)+3))`
-/

namespace A186212.P1733483096833882721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186218 (A000096 n + 3).toNat)

end

end A186212.P1733483096833882721

/-! ## A186212.P12963081161387683030

`record[A186218(A133263(abs(1-n)))]`
-/

namespace A186212.P12963081161387683030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186212.P12963081161387683030

/-! ## A186212.P1220694531145943605

`record[A186218(A114091(n+1)+1)]`
-/

namespace A186212.P1220694531145943605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186212.P1220694531145943605

/-! ## A186212.P6283042680625623370

`record[A186218(A166017(n+1)+1)]`
-/

namespace A186212.P6283042680625623370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186212.P6283042680625623370

/-!
# A186213: Number of (n+1)X4 0..2 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186213, there is no canonical definition to state claims against.
-/

/-! ## A186213.P4410849294947695971

`A186218(∑[n+2]+4)`
-/

namespace A186213.P4410849294947695971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186213.P4410849294947695971

/-! ## A186213.P14803629908535992731

`or(1, A186218(A167614(n+1)))`
-/

namespace A186213.P14803629908535992731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186218 (A167614 (n + 1)).toNat)

end

end A186213.P14803629908535992731

/-! ## A186213.P3991891349050864302

`A186218(A167614(n+1))+A014083(n)`
-/

namespace A186213.P3991891349050864302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A167614 (n + 1)).toNat + A014083 n

end

end A186213.P3991891349050864302

/-! ## A186213.P9191440892066881319

`A186218(A167614(n+1))+A070565(n)`
-/

namespace A186213.P9191440892066881319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A167614 (n + 1)).toNat + A070565 n

end

end A186213.P9191440892066881319

/-! ## A186213.P12769545427199319298

`A186218(A167614(n+1))+A102683(n)`
-/

namespace A186213.P12769545427199319298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A167614 (n + 1)).toNat + A102683 n

end

end A186213.P12769545427199319298

/-!
# A186214: Number of (n+1)X5 0..2 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186214, there is no canonical definition to state claims against.
-/

/-! ## A186214.P11110424705308633747

`A186218(∑[n+3]+7)`
-/

namespace A186214.P11110424705308633747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186214.P11110424705308633747

/-!
# A186215: Number of (n+1)X6 0..2 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186215, there is no canonical definition to state claims against.
-/

/-! ## A186215.P12276491458653067312

`A186218(∑[n+4]+11)`
-/

namespace A186215.P12276491458653067312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A186215.P12276491458653067312

/-! ## A186215.P12513647626354198938

`A326542(n)+A186218(A167499(n+3))`
-/

namespace A186215.P12513647626354198938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n + A186218 (A167499 (n + 3)).toNat

end

end A186215.P12513647626354198938

/-! ## A186215.P2466187844832743439

`A242528(n+1)+A186218(A167499(n+3))`
-/

namespace A186215.P2466187844832743439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242528 (n + 1) + A186218 (A167499 (n + 3)).toNat

end

end A186215.P2466187844832743439

/-!
# A186216: Number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock determinant equal to some horizontal or vertical neighbor 2 X 2 subblock determinant.

The programs for A186216, there is no canonical definition to state claims against.
-/

/-! ## A186216.P2882038153379613116

`A186218(A374007(n+1))`
-/

namespace A186216.P2882038153379613116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A374007 (n + 1)).toNat

end

end A186216.P2882038153379613116

/-!
# A186217: Number of (n+1)X8 0..2 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186217, there is no canonical definition to state claims against.
-/

/-! ## A186217.P3966776979980178631

`A186218(A055999(n+4))`
-/

namespace A186217.P3966776979980178631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186218 (A055999 (n + 4)).toNat

end

end A186217.P3966776979980178631

/-!
# A186218: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A186218, there is no canonical definition to state claims against.
-/

/-! ## A186218.P16616627919923946875

`A187425(∑[C(n, 7)*720+1])`
-/

namespace A186218.P16616627919923946875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 7 * 720 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186218.P16616627919923946875

/-! ## A186218.P251283192569788400

`A187425(C(n, 7)*720+n+1)`
-/

namespace A186218.P251283192569788400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (Nat.choose n 7 * 720 + (n + 1))

end

end A186218.P251283192569788400

/-! ## A186218.P1921433439360048621

`A187425(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^∏{e}[n+1, #])`
-/

namespace A186218.P1921433439360048621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))).toNat

end

end A186218.P1921433439360048621

/-!
# A186219: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and squares. Complement of A186220.

The programs for A186219, the canonical program `A186219.P12860771310950804366` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186219 has offset 1).

The definition of A186219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186219.P12860771310950804366

`n+1+floor(sqrt(((n+1)²+n+1)/2-1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186219

/-- `n+1+floor(sqrt(((n+1)²+n+1)/2-1))` -/
def P12860771310950804366.Spec : Prop :=
  ∀ n, P12860771310950804366.a n = A186219 (n + 1)

theorem P12860771310950804366.correct : P12860771310950804366.Spec := by
  intro n
  simp only [A186219, Nat.add_sub_cancel]

end A186219

/-! ## A186219.P659740704956618385

`comp[A214857(n)-1+n]`
-/

namespace A186219.P659740704956618385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186219.P659740704956618385

namespace A186219

/-- `comp[A214857(n)-1+n]` -/
def P659740704956618385.Spec : Prop :=
  ∀ n, (P659740704956618385.a n : ℤ) = A186219 (n + 1)

end A186219

/-! ## A186219.P9856317111685065626

`floor(sqrt(A000096(n))+1+n)`
-/

namespace A186219.P9856317111685065626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000096 n : ℝ) + 1 + (n : ℝ)⌋

end

end A186219.P9856317111685065626

namespace A186219

/-- `floor(sqrt(A000096(n))+1+n)` -/
def P9856317111685065626.Spec : Prop :=
  ∀ n, P9856317111685065626.a n = A186219 (n + 1)

end A186219

/-! ## A186219.P13245114745684058093

`comp[comp[lt[n, A175032(n)]]+n]`
-/

namespace A186219.P13245114745684058093
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A186219.P13245114745684058093

namespace A186219

/-- `comp[comp[lt[n, A175032(n)]]+n]` -/
def P13245114745684058093.Spec : Prop :=
  ∀ n, (P13245114745684058093.a n : ℤ) = A186219 (n + 1)

end A186219

/-! ## A186219.P5230288797670120843

`A004526(A248232(n+2)-1)`
-/

namespace A186219.P5230288797670120843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A248232 (n + 2) - 1).toNat

end

end A186219.P5230288797670120843

namespace A186219

/-- `A004526(A248232(n+2)-1)` -/
def P5230288797670120843.Spec : Prop :=
  ∀ n, P5230288797670120843.a n = A186219 (n + 1)

end A186219

/-! ## A186219.P16410761708636350007

`A248183(A360926(n+1))`
-/

namespace A186219.P16410761708636350007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A360926 (n + 1)).toNat

end

end A186219.P16410761708636350007

namespace A186219

/-- `A248183(A360926(n+1))` -/
def P16410761708636350007.Spec : Prop :=
  ∀ n, P16410761708636350007.a n = A186219 (n + 1)

end A186219

/-! ## A186219.P17695580531345243693

`record[A025581(n+1)+A000196(n)]`
-/

namespace A186219.P17695580531345243693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n + 1) + A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186219.P17695580531345243693

namespace A186219

/-- `record[A025581(n+1)+A000196(n)]` -/
def P17695580531345243693.Spec : Prop :=
  ∀ n, P17695580531345243693.a n = A186219 (n + 1)

end A186219

/-! ## A186219.P12926189455118267559

`A071860((n+1)²+n)`
-/

namespace A186219.P12926189455118267559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 ((n + 1) ^ 2 + n)

end

end A186219.P12926189455118267559

namespace A186219

/-- `A071860((n+1)²+n)` -/
def P12926189455118267559.Spec : Prop :=
  ∀ n, P12926189455118267559.a n = A186219 (n + 1)

end A186219

/-!
# A186220: Adjusted joint rank sequence of (g(i)) and (f(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and squares. Complement of A186219.

The programs for A186220, the canonical program `A186220.P16755767740802634993` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186220 has offset 1).

The definition of A186220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186220.P16755767740802634993

`A214857(n+1)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186220

/-- `A214857(n+1)+n` -/
def P16755767740802634993.Spec : Prop :=
  ∀ n, P16755767740802634993.a n = A186220 (n + 1)

theorem P16755767740802634993.correct : P16755767740802634993.Spec := by
  intro n
  simp only [A186220, Nat.add_sub_cancel]

end A186220

/-! ## A186220.P14779093233333650720

`∑[A214856(n+1)+1]`
-/

namespace A186220.P14779093233333650720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214856 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186220.P14779093233333650720

namespace A186220

/-- `∑[A214856(n+1)+1]` -/
def P14779093233333650720.Spec : Prop :=
  ∀ n, P14779093233333650720.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P1787512420805708076

`∑[A214857(Δ[A214857(n)])]`
-/

namespace A186220.P1787512420805708076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186220.P1787512420805708076

namespace A186220

/-- `∑[A214857(Δ[A214857(n)])]` -/
def P1787512420805708076.Spec : Prop :=
  ∀ n, P1787512420805708076.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P8181646265587545130

`A022846(n)+A378301(n)+n`
-/

namespace A186220.P8181646265587545130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n + (A378301 n + (n : ℤ))

end

end A186220.P8181646265587545130

namespace A186220

/-- `A022846(n)+A378301(n)+n` -/
def P8181646265587545130.Spec : Prop :=
  ∀ n, P8181646265587545130.a n = A186220 (n + 1)

theorem P8181646265587545130.correct : P8181646265587545130.Spec := by
  intro n
  simp only [A186220, Nat.add_sub_cancel, A186220.P8181646265587545130.a, A186220.P16755767740802634993.a, A022846, A022846.P4153130235843517023.a, A214857, A214857.P13673621577136797249.a, A378301, A378301.P12860967816760152657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A186220

/-! ## A186220.P13062291298980740124

`A361684(n+2)-(n+3)`
-/

namespace A186220.P13062291298980740124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361684 (n + 2) - (n + 3 : ℤ)

end

end A186220.P13062291298980740124

namespace A186220

/-- `A361684(n+2)-(n+3)` -/
def P13062291298980740124.Spec : Prop :=
  ∀ n, P13062291298980740124.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P3436268072780500045

`lt[A097508(n), A175032(n)]+n`
-/

namespace A186220.P3436268072780500045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n

end

end A186220.P3436268072780500045

namespace A186220

/-- `lt[A097508(n), A175032(n)]+n` -/
def P3436268072780500045.Spec : Prop :=
  ∀ n, (P3436268072780500045.a n : ℤ) = A186220 (n + 1)

end A186220

/-! ## A186220.P10532080567947913745

`A064506(A001952(n+1))`
-/

namespace A186220.P10532080567947913745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064506 (A001952 (n + 1)).toNat

end

end A186220.P10532080567947913745

namespace A186220

/-- `A064506(A001952(n+1))` -/
def P10532080567947913745.Spec : Prop :=
  ∀ n, P10532080567947913745.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P11097823803929704374

`A064506(A258834(n+1))`
-/

namespace A186220.P11097823803929704374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064506 (A258834 (n + 1)).toNat

end

end A186220.P11097823803929704374

namespace A186220

/-- `A064506(A258834(n+1))` -/
def P11097823803929704374.Spec : Prop :=
  ∀ n, P11097823803929704374.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P5870529395062509275

`A064506(A288999(n+1))`
-/

namespace A186220.P5870529395062509275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064506 (A288999 (n + 1)).toNat

end

end A186220.P5870529395062509275

namespace A186220

/-- `A064506(A288999(n+1))` -/
def P5870529395062509275.Spec : Prop :=
  ∀ n, P5870529395062509275.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P987099152656409801

`A064506(A289027(n+1))`
-/

namespace A186220.P987099152656409801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064506 (A289027 (n + 1)).toNat

end

end A186220.P987099152656409801

namespace A186220

/-- `A064506(A289027(n+1))` -/
def P987099152656409801.Spec : Prop :=
  ∀ n, P987099152656409801.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P146318964759506580

`A064506(A289037(n+1))`
-/

namespace A186220.P146318964759506580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064506 (A289037 (n + 1)).toNat

end

end A186220.P146318964759506580

namespace A186220

/-- `A064506(A289037(n+1))` -/
def P146318964759506580.Spec : Prop :=
  ∀ n, P146318964759506580.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P2606402291425338194

`A189574(A361684(n+2))+n`
-/

namespace A186220.P2606402291425338194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (A361684 (n + 2)).toNat + (n : ℤ)

end

end A186220.P2606402291425338194

namespace A186220

/-- `A189574(A361684(n+2))+n` -/
def P2606402291425338194.Spec : Prop :=
  ∀ n, P2606402291425338194.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P2898673346913087725

`A248183(2*(n+1))+n+1`
-/

namespace A186220.P2898673346913087725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A186220.P2898673346913087725

namespace A186220

/-- `A248183(2*(n+1))+n+1` -/
def P2898673346913087725.Spec : Prop :=
  ∀ n, P2898673346913087725.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P13470054077231437228

`A216256(A084672(n+1))+n`
-/

namespace A186220.P13470054077231437228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A084672 (n + 1)).toNat + (n : ℤ)

end

end A186220.P13470054077231437228

namespace A186220

/-- `A216256(A084672(n+1))+n` -/
def P13470054077231437228.Spec : Prop :=
  ∀ n, P13470054077231437228.a n = A186220 (n + 1)

end A186220

/-! ## A186220.P4578757178441621435

`A003056((n+1)²)+n+1`
-/

namespace A186220.P4578757178441621435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A186220.P4578757178441621435

namespace A186220

/-- `A003056((n+1)²)+n+1` -/
def P4578757178441621435.Spec : Prop :=
  ∀ n, P4578757178441621435.a n = A186220 (n + 1)

end A186220

/-!
# A186221: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and squares. Complement of A186222.

The programs for A186221, the canonical program `A186221.P4789931260051178945` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186221 has offset 1).

The definition of A186221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186221.P4789931260051178945

`n+1+floor(sqrt((n+1)*(n+2)/2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186221

/-- `n+1+floor(sqrt((n+1)*(n+2)/2))` -/
def P4789931260051178945.Spec : Prop :=
  ∀ n, P4789931260051178945.a n = A186221 (n + 1)

theorem P4789931260051178945.correct : P4789931260051178945.Spec := by
  intro n
  simp only [A186221, Nat.add_sub_cancel]

end A186221

/-! ## A186221.P13872063056583896594

`ceil(sqrt(C(n+2, 2)+1)+n)`
-/

namespace A186221.P13872063056583896594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (n + 2) 2 + 1 : ℝ) + (n : ℝ)⌉

end

end A186221.P13872063056583896594

namespace A186221

/-- `ceil(sqrt(C(n+2, 2)+1)+n)` -/
def P13872063056583896594.Spec : Prop :=
  ∀ n, P13872063056583896594.a n = A186221 (n + 1)

end A186221

/-! ## A186221.P8597629858851636057

`∪[A189457(n+1), A189458(n+1)]`
-/

namespace A186221.P8597629858851636057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186221.P8597629858851636057

namespace A186221

/-- `∪[A189457(n+1), A189458(n+1)]` -/
def P8597629858851636057.Spec : Prop :=
  ∀ n, (P8597629858851636057.a n : ℤ) = A186221 (n + 1)

end A186221

/-! ## A186221.P10105513902171140342

`ceil(sqrt(A000124(n+1))+n)`
-/

namespace A186221.P10105513902171140342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000124 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A186221.P10105513902171140342

namespace A186221

/-- `ceil(sqrt(A000124(n+1))+n)` -/
def P10105513902171140342.Spec : Prop :=
  ∀ n, P10105513902171140342.a n = A186221 (n + 1)

end A186221

/-! ## A186221.P1153701045927802421

`A181534(A097432(n+1)+n)`
-/

namespace A186221.P1153701045927802421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181534 (A097432 (n + 1) + (n : ℤ)).toNat

end

end A186221.P1153701045927802421

namespace A186221

/-- `A181534(A097432(n+1)+n)` -/
def P1153701045927802421.Spec : Prop :=
  ∀ n, P1153701045927802421.a n = A186221 (n + 1)

end A186221

/-! ## A186221.P1615453618746528832

`A181534(A184117(n+1)+n+1)`
-/

namespace A186221.P1615453618746528832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181534 (A184117 (n + 1) + (n + 1 : ℤ)).toNat

end

end A186221.P1615453618746528832

namespace A186221

/-- `A181534(A184117(n+1)+n+1)` -/
def P1615453618746528832.Spec : Prop :=
  ∀ n, P1615453618746528832.a n = A186221 (n + 1)

end A186221

/-! ## A186221.P7212162412795126243

`A049474(A184118(n+1)-(n+2))`
-/

namespace A186221.P7212162412795126243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A184118 (n + 1) - (n + 2 : ℤ)).toNat

end

end A186221.P7212162412795126243

namespace A186221

/-- `A049474(A184118(n+1)-(n+2))` -/
def P7212162412795126243.Spec : Prop :=
  ∀ n, P7212162412795126243.a n = A186221 (n + 1)

end A186221

/-! ## A186221.P6252078339132797457

`A258703(A086377(n+2))`
-/

namespace A186221.P6252078339132797457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (A086377 (n + 2)).toNat

end

end A186221.P6252078339132797457

namespace A186221

/-- `A258703(A086377(n+2))` -/
def P6252078339132797457.Spec : Prop :=
  ∀ n, P6252078339132797457.a n = A186221 (n + 1)

end A186221

/-! ## A186221.P2936657935680053305

`A004526(A184118(n+1))`
-/

namespace A186221.P2936657935680053305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184118 (n + 1)).toNat

end

end A186221.P2936657935680053305

namespace A186221

/-- `A004526(A184118(n+1))` -/
def P2936657935680053305.Spec : Prop :=
  ∀ n, P2936657935680053305.a n = A186221 (n + 1)

end A186221

/-! ## A186221.P11254655261729737628

`A140106(A184119(n+2))`
-/

namespace A186221.P11254655261729737628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A184119 (n + 2)).toNat

end

end A186221.P11254655261729737628

namespace A186221

/-- `A140106(A184119(n+2))` -/
def P11254655261729737628.Spec : Prop :=
  ∀ n, P11254655261729737628.a n = A186221 (n + 1)

end A186221

/-!
# A186222: Adjusted joint rank sequence of (g(i)) and (f(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and squares. Complement of A186221.

The programs for A186222, the canonical program `A186222.P18232856454018472991` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186222 has offset 1).

The definition of A186222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186222.P18232856454018472991

`n+1+floor(sqrt(2*(n+1)²)-1/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186222

/-- `n+1+floor(sqrt(2*(n+1)²)-1/2)` -/
def P18232856454018472991.Spec : Prop :=
  ∀ n, P18232856454018472991.a n = A186222 (n + 1)

theorem P18232856454018472991.correct : P18232856454018472991.Spec := by
  intro n
  simp only [A186222, Nat.add_sub_cancel]

end A186222

/-! ## A186222.P6475724638930413012

`ceil(A022842(n+1)/2+n)`
-/

namespace A186222.P6475724638930413012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022842 (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A186222.P6475724638930413012

namespace A186222

/-- `ceil(A022842(n+1)/2+n)` -/
def P6475724638930413012.Spec : Prop :=
  ∀ n, P6475724638930413012.a n = A186222 (n + 1)

end A186222

/-! ## A186222.P12463977553577847399

`A197878(n+1)%A080754(n+1)`
-/

namespace A186222.P12463977553577847399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197878 (n + 1)) (A080754 (n + 1))

end

end A186222.P12463977553577847399

namespace A186222

/-- `A197878(n+1)%A080754(n+1)` -/
def P12463977553577847399.Spec : Prop :=
  ∀ n, P12463977553577847399.a n = A186222 (n + 1)

end A186222

/-! ## A186222.P16917368930788196295

`A023443(A003153(n+1))`
-/

namespace A186222.P16917368930788196295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003153 (n + 1)).toNat

end

end A186222.P16917368930788196295

namespace A186222

/-- `A023443(A003153(n+1))` -/
def P16917368930788196295.Spec : Prop :=
  ∀ n, P16917368930788196295.a n = A186222 (n + 1)

end A186222

/-! ## A186222.P1837070113621450666

`A061288(A022846(n+1)+2*n+1)`
-/

namespace A186222.P1837070113621450666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A022846 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A186222.P1837070113621450666

namespace A186222

/-- `A061288(A022846(n+1)+2*n+1)` -/
def P1837070113621450666.Spec : Prop :=
  ∀ n, P1837070113621450666.a n = A186222 (n + 1)

end A186222

/-! ## A186222.P11357026412683372040

`A061288(A022846(A022846(n+1)+n))`
-/

namespace A186222.P11357026412683372040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A022846 (A022846 (n + 1) + (n : ℤ)).toNat).toNat

end

end A186222.P11357026412683372040

namespace A186222

/-- `A061288(A022846(A022846(n+1)+n))` -/
def P11357026412683372040.Spec : Prop :=
  ∀ n, P11357026412683372040.a n = A186222 (n + 1)

end A186222

/-! ## A186222.P11906387957783606700

`A004526(A184921(n+1))`
-/

namespace A186222.P11906387957783606700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184921 (n + 1)).toNat

end

end A186222.P11906387957783606700

namespace A186222

/-- `A004526(A184921(n+1))` -/
def P11906387957783606700.Spec : Prop :=
  ∀ n, P11906387957783606700.a n = A186222 (n + 1)

end A186222

/-! ## A186222.P12561833388965426533

`A097508(A197878(n+1)+n)`
-/

namespace A186222.P12561833388965426533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A197878 (n + 1) + (n : ℤ)).toNat

end

end A186222.P12561833388965426533

namespace A186222

/-- `A097508(A197878(n+1)+n)` -/
def P12561833388965426533.Spec : Prop :=
  ∀ n, P12561833388965426533.a n = A186222 (n + 1)

end A186222

/-!
# A186223: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and pentagonal numbers. Complement of A186224.

The programs for A186223, the canonical program `A186223.P14969326225886735878` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186223 has offset 1).

The definition of A186223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186223.P14969326225886735878

`comp[round(sqrt(∑[6*n+2]+1))+n-1]+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186223

/-- `comp[round(sqrt(∑[6*n+2]+1))+n-1]+1` -/
def P14969326225886735878.Spec : Prop :=
  ∀ n, (P14969326225886735878.a n : ℤ) = A186223 (n + 1)

theorem P14969326225886735878.correct : P14969326225886735878.Spec := by
  intro n
  simp only [A186223, Nat.add_sub_cancel]

end A186223

/-! ## A186223.P8774017381172145656

`A097337(floor(A186542(2*n+3)/2))`
-/

namespace A186223.P8774017381172145656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 ⌊(A186542 (2 * n + 3) : ℚ) / 2⌋.toNat

end

end A186223.P8774017381172145656

namespace A186223

/-- `A097337(floor(A186542(2*n+3)/2))` -/
def P8774017381172145656.Spec : Prop :=
  ∀ n, P8774017381172145656.a n = A186223 (n + 1)

end A186223

/-! ## A186223.P2806030539824651082

`A134478(A183294(∑[n+1]))`
-/

namespace A186223.P2806030539824651082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A183294 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A186223.P2806030539824651082

namespace A186223

/-- `A134478(A183294(∑[n+1]))` -/
def P2806030539824651082.Spec : Prop :=
  ∀ n, P2806030539824651082.a n = A186223 (n + 1)

end A186223

/-! ## A186223.P3039443286894023389

`record[A183294(n+1)-A061579(n)]`
-/

namespace A186223.P3039443286894023389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183294 (n + 1) - A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186223.P3039443286894023389

namespace A186223

/-- `record[A183294(n+1)-A061579(n)]` -/
def P3039443286894023389.Spec : Prop :=
  ∀ n, P3039443286894023389.a n = A186223 (n + 1)

end A186223

/-! ## A186223.P8870025464521087523

`A092206(A137928(n+1))%A137928(n+1)`
-/

namespace A186223.P8870025464521087523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092206 (A137928 (n + 1)).toNat) (A137928 (n + 1))

end

end A186223.P8870025464521087523

namespace A186223

/-- `A092206(A137928(n+1))%A137928(n+1)` -/
def P8870025464521087523.Spec : Prop :=
  ∀ n, P8870025464521087523.a n = A186223 (n + 1)

end A186223

/-! ## A186223.P270213322002218660

`A118759(2*n+1-floor(8*n/19))`
-/

namespace A186223.P270213322002218660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((2 * n + 1 : ℤ) - ⌊8 * ((n : ℚ) / 19)⌋).toNat

end

end A186223.P270213322002218660

namespace A186223

/-- `A118759(2*n+1-floor(8*n/19))` -/
def P270213322002218660.Spec : Prop :=
  ∀ n, P270213322002218660.a n = A186223 (n + 1)

end A186223

/-! ## A186223.P9979701071346275415

`A003056(A028242(∑[5*(n+1)]))`
-/

namespace A186223.P9979701071346275415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A028242 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A186223.P9979701071346275415

namespace A186223

/-- `A003056(A028242(∑[5*(n+1)]))` -/
def P9979701071346275415.Spec : Prop :=
  ∀ n, P9979701071346275415.a n = A186223 (n + 1)

end A186223

/-!
# A186224: Adjusted joint rank sequence of (g(i)) and (f(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and pentagonal numbers. Complement of A186223.

The programs for A186224, the canonical program `A186224.P17658972517725617087` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186224 has offset 1).

The definition of A186224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186224.P17658972517725617087

`round(sqrt(∑[6*n+2]+1))+n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186224

/-- `round(sqrt(∑[6*n+2]+1))+n` -/
def P17658972517725617087.Spec : Prop :=
  ∀ n, P17658972517725617087.a n = A186224 (n + 1)

theorem P17658972517725617087.correct : P17658972517725617087.Spec := by
  intro n
  simp only [A186224, Nat.add_sub_cancel]

end A186224

/-! ## A186224.P6183671744251227167

`round(sqrt(∑[A016921(n)+1]+1)+n)`
-/

namespace A186224.P6183671744251227167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℝ) + (n : ℝ))

end

end A186224.P6183671744251227167

namespace A186224

/-- `round(sqrt(∑[A016921(n)+1]+1)+n)` -/
def P6183671744251227167.Spec : Prop :=
  ∀ n, P6183671744251227167.a n = A186224 (n + 1)

end A186224

/-! ## A186224.P13149355286787344333

`round(sqrt(2*(n*A003512(n+1)+1+n)+1))`
-/

namespace A186224.P13149355286787344333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * ((n : ℤ) * A003512 (n + 1) + 1 + (n : ℤ)) + 1 : ℝ))

end

end A186224.P13149355286787344333

namespace A186224

/-- `round(sqrt(2*(n*A003512(n+1)+1+n)+1))` -/
def P13149355286787344333.Spec : Prop :=
  ∀ n, P13149355286787344333.a n = A186224 (n + 1)

end A186224

/-! ## A186224.P4162230679779573327

`round(sqrt((sqrt(A049450(n+1))+n)²+1))`
-/

namespace A186224.P4162230679779573327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Real.sqrt (A049450 (n + 1) : ℝ) + (n : ℝ)) ^ 2 + 1))

end

end A186224.P4162230679779573327

namespace A186224

/-- `round(sqrt((sqrt(A049450(n+1))+n)²+1))` -/
def P4162230679779573327.Spec : Prop :=
  ∀ n, P4162230679779573327.a n = A186224 (n + 1)

end A186224

/-! ## A186224.P15328943104770442714

`round(sqrt(A097922(3*(n+1)))+n)`
-/

namespace A186224.P15328943104770442714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A097922 (3 * (n + 1)) : ℝ) + (n : ℝ))

end

end A186224.P15328943104770442714

namespace A186224

/-- `round(sqrt(A097922(3*(n+1)))+n)` -/
def P15328943104770442714.Spec : Prop :=
  ∀ n, P15328943104770442714.a n = A186224 (n + 1)

end A186224

/-! ## A186224.P3988361344802355145

`A003056((A054088(n+1)+1+n)*(n+1))`
-/

namespace A186224.P3988361344802355145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((A054088 (n + 1) + 1 + (n : ℤ)) * (n + 1 : ℤ)).toNat

end

end A186224.P3988361344802355145

namespace A186224

/-- `A003056((A054088(n+1)+1+n)*(n+1))` -/
def P3988361344802355145.Spec : Prop :=
  ∀ n, P3988361344802355145.a n = A186224 (n + 1)

end A186224

/-! ## A186224.P2413199972251877127

`A003056((n+1)*(A188069(n+1)+1)+n+1)`
-/

namespace A186224.P2413199972251877127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n + 1 : ℤ) * (A188069 (n + 1) + 1) + (n : ℤ) + 1).toNat

end

end A186224.P2413199972251877127

namespace A186224

/-- `A003056((n+1)*(A188069(n+1)+1)+n+1)` -/
def P2413199972251877127.Spec : Prop :=
  ∀ n, P2413199972251877127.a n = A186224 (n + 1)

end A186224

/-!
# A186225: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and pentagonal numbers. Complement of A186226.

The programs for A186225, the canonical program `A186225.P9074722489243742899` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186225 has offset 1).

The definition of A186225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186225.P9074722489243742899

`A008620(A180124(n+1)-n)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186225

/-- `A008620(A180124(n+1)-n)+n` -/
def P9074722489243742899.Spec : Prop :=
  ∀ n, P9074722489243742899.a n = A186225 (n + 1)

theorem P9074722489243742899.correct : P9074722489243742899.Spec := by
  intro n
  simp only [A186225, Nat.add_sub_cancel]

end A186225

/-! ## A186225.P1223546699649999536

`ceil(A054406(2*(n+1)+1)/3)-1`
-/

namespace A186225.P1223546699649999536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054406 (2 * (n + 1) + 1) : ℚ) / 3⌉ - 1

end

end A186225.P1223546699649999536

namespace A186225

/-- `ceil(A054406(2*(n+1)+1)/3)-1` -/
def P1223546699649999536.Spec : Prop :=
  ∀ n, P1223546699649999536.a n = A186225 (n + 1)

end A186225

/-! ## A186225.P9971250856344579416

`A097337(A054087(n+2))`
-/

namespace A186225.P9971250856344579416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A054087 (n + 2)).toNat

end

end A186225.P9971250856344579416

namespace A186225

/-- `A097337(A054087(n+2))` -/
def P9971250856344579416.Spec : Prop :=
  ∀ n, P9971250856344579416.a n = A186225 (n + 1)

end A186225

/-! ## A186225.P12795145817028672228

`A097337(A180124(n+1)+1)`
-/

namespace A186225.P12795145817028672228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A180124 (n + 1) + 1).toNat

end

end A186225.P12795145817028672228

namespace A186225

/-- `A097337(A180124(n+1)+1)` -/
def P12795145817028672228.Spec : Prop :=
  ∀ n, P12795145817028672228.a n = A186225 (n + 1)

end A186225

/-! ## A186225.P17977744120714143218

`A097337(A003511(2*n+3))`
-/

namespace A186225.P17977744120714143218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A003511 (2 * n + 3)).toNat

end

end A186225.P17977744120714143218

namespace A186225

/-- `A097337(A003511(2*n+3))` -/
def P17977744120714143218.Spec : Prop :=
  ∀ n, P17977744120714143218.a n = A186225 (n + 1)

end A186225

/-! ## A186225.P10924561034788512868

`A008620(A180124(n+1)+2*n)`
-/

namespace A186225.P10924561034788512868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A180124 (n + 1) + (2 * n : ℤ)).toNat

end

end A186225.P10924561034788512868

namespace A186225

/-- `A008620(A180124(n+1)+2*n)` -/
def P10924561034788512868.Spec : Prop :=
  ∀ n, P10924561034788512868.a n = A186225 (n + 1)

end A186225

/-! ## A186225.P1592743355107613378

`A008620(A180124(n+1)+n+n)`
-/

namespace A186225.P1592743355107613378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A180124 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A186225.P1592743355107613378

namespace A186225

/-- `A008620(A180124(n+1)+n+n)` -/
def P1592743355107613378.Spec : Prop :=
  ∀ n, P1592743355107613378.a n = A186225 (n + 1)

end A186225

/-! ## A186225.P7871176220638977786

`A002264(A003511(2*n+3)+2*(n+1))`
-/

namespace A186225.P7871176220638977786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A003511 (2 * n + 3) + (2 * (n + 1) : ℤ)).toNat

end

end A186225.P7871176220638977786

namespace A186225

/-- `A002264(A003511(2*n+3)+2*(n+1))` -/
def P7871176220638977786.Spec : Prop :=
  ∀ n, P7871176220638977786.a n = A186225 (n + 1)

end A186225

/-! ## A186225.P12513552621161412311

`A097337(A097337(A054406(2*n+3)))`
-/

namespace A186225.P12513552621161412311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A097337 (A054406 (2 * n + 3)).toNat).toNat

end

end A186225.P12513552621161412311

namespace A186225

/-- `A097337(A097337(A054406(2*n+3)))` -/
def P12513552621161412311.Spec : Prop :=
  ∀ n, P12513552621161412311.a n = A186225 (n + 1)

end A186225

/-! ## A186225.P6354689710103249334

`A180447(∑[n+1])+n+1`
-/

namespace A186225.P6354689710103249334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A186225.P6354689710103249334

namespace A186225

/-- `A180447(∑[n+1])+n+1` -/
def P6354689710103249334.Spec : Prop :=
  ∀ n, P6354689710103249334.a n = A186225 (n + 1)

end A186225

/-!
# A186226: Adjusted joint rank sequence of (g(j)) and (f(i)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and pentagonal numbers. Complement of A186225.

The programs for A186226, the canonical program `A186226.P10771073335976570360` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186226 has offset 1).

The definition of A186226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186226.P10771073335976570360

`round(sqrt(Δ[(n+1)*n²]))+n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186226

/-- `round(sqrt(Δ[(n+1)*n²]))+n` -/
def P10771073335976570360.Spec : Prop :=
  ∀ n, P10771073335976570360.a n = A186226 (n + 1)

theorem P10771073335976570360.correct : P10771073335976570360.Spec := by
  intro n
  simp only [A186226, Nat.add_sub_cancel]

end A186226

/-! ## A186226.P6469675171495010497

`round(sqrt(A144390(n+1))+n)`
-/

namespace A186226.P6469675171495010497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A144390 (n + 1) : ℝ) + (n : ℝ))

end

end A186226.P6469675171495010497

namespace A186226

/-- `round(sqrt(A144390(n+1))+n)` -/
def P6469675171495010497.Spec : Prop :=
  ∀ n, P6469675171495010497.a n = A186226 (n + 1)

end A186226

/-! ## A186226.P2768534472962912100

`round(sqrt(A049450(n+1))+n)`
-/

namespace A186226.P2768534472962912100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A049450 (n + 1) : ℝ) + (n : ℝ))

end

end A186226.P2768534472962912100

namespace A186226

/-- `round(sqrt(A049450(n+1))+n)` -/
def P2768534472962912100.Spec : Prop :=
  ∀ n, P2768534472962912100.a n = A186226 (n + 1)

end A186226

/-! ## A186226.P15954800332240890571

`round(sqrt(A001859(2*n+1))+n)`
-/

namespace A186226.P15954800332240890571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001859 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186226.P15954800332240890571

namespace A186226

/-- `round(sqrt(A001859(2*n+1))+n)` -/
def P15954800332240890571.Spec : Prop :=
  ∀ n, P15954800332240890571.a n = A186226 (n + 1)

end A186226

/-! ## A186226.P5746413183727204338

`round(sqrt(A135370(2*n+1))+n)`
-/

namespace A186226.P5746413183727204338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A135370 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186226.P5746413183727204338

namespace A186226

/-- `round(sqrt(A135370(2*n+1))+n)` -/
def P5746413183727204338.Spec : Prop :=
  ∀ n, P5746413183727204338.a n = A186226 (n + 1)

end A186226

/-! ## A186226.P11184268291480234332

`round(sqrt(A152749(2*n+1))+n)`
-/

namespace A186226.P11184268291480234332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A152749 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186226.P11184268291480234332

namespace A186226

/-- `round(sqrt(A152749(2*n+1))+n)` -/
def P11184268291480234332.Spec : Prop :=
  ∀ n, P11184268291480234332.a n = A186226 (n + 1)

end A186226

/-! ## A186226.P8680813504614114274

`round(sqrt(A184005(2*n+1))+n)`
-/

namespace A186226.P8680813504614114274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A184005 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186226.P8680813504614114274

namespace A186226

/-- `round(sqrt(A184005(2*n+1))+n)` -/
def P8680813504614114274.Spec : Prop :=
  ∀ n, P8680813504614114274.a n = A186226 (n + 1)

end A186226

/-! ## A186226.P9648691736708377569

`round(sqrt(A238377(2*n+1))+n)`
-/

namespace A186226.P9648691736708377569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A238377 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186226.P9648691736708377569

namespace A186226

/-- `round(sqrt(A238377(2*n+1))+n)` -/
def P9648691736708377569.Spec : Prop :=
  ∀ n, P9648691736708377569.a n = A186226 (n + 1)

end A186226

/-! ## A186226.P12344839321899741432

`A097337(A054088(A144077(n+1)))`
-/

namespace A186226.P12344839321899741432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A054088 (A144077 (n + 1)).toNat).toNat

end

end A186226.P12344839321899741432

namespace A186226

/-- `A097337(A054088(A144077(n+1)))` -/
def P12344839321899741432.Spec : Prop :=
  ∀ n, P12344839321899741432.a n = A186226 (n + 1)

end A186226

/-! ## A186226.P14395022896080480335

`floor(log2(A094432(n+2)))`
-/

namespace A186226.P14395022896080480335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A094432 (n + 2)).toNat

end

end A186226.P14395022896080480335

namespace A186226

/-- `floor(log2(A094432(n+2)))` -/
def P14395022896080480335.Spec : Prop :=
  ∀ n, (P14395022896080480335.a n : ℤ) = A186226 (n + 1)

end A186226

/-!
# A186227: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and heptagonal numbers. Complement of A186228.

The programs for A186227, the canonical program `A186227.P15814989772072999567` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186227 has offset 1).

The definition of A186227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186227.P15814989772072999567

`eq[char[A186228(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186227

/-- `eq[char[A186228(n+1)], A000007(n)]` -/
def P15814989772072999567.Spec : Prop :=
  ∀ n, (P15814989772072999567.a n : ℤ) = A186227 (n + 1)

theorem P15814989772072999567.correct : P15814989772072999567.Spec := by
  intro n
  simp only [A186227, Nat.add_sub_cancel]

end A186227

/-! ## A186227.P5116909967541780879

`floor(A054770(2*n+3)/5)`
-/

namespace A186227.P5116909967541780879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054770 (2 * n + 3) : ℚ) / 5⌋

end

end A186227.P5116909967541780879

namespace A186227

/-- `floor(A054770(2*n+3)/5)` -/
def P5116909967541780879.Spec : Prop :=
  ∀ n, P5116909967541780879.a n = A186227 (n + 1)

end A186227

/-! ## A186227.P1520268966508683489

`floor(A305848(4*n+5)/10)`
-/

namespace A186227.P1520268966508683489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305848 (4 * n + 5) : ℚ) / 10⌋

end

end A186227.P1520268966508683489

namespace A186227

/-- `floor(A305848(4*n+5)/10)` -/
def P1520268966508683489.Spec : Prop :=
  ∀ n, P1520268966508683489.a n = A186227 (n + 1)

end A186227

/-! ## A186227.P3943408752702429137

`A002265(A003231(2*n+3)-A184746(n+2))`
-/

namespace A186227.P3943408752702429137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003231 (2 * n + 3) - A184746 (n + 2)).toNat

end

end A186227.P3943408752702429137

namespace A186227

/-- `A002265(A003231(2*n+3)-A184746(n+2))` -/
def P3943408752702429137.Spec : Prop :=
  ∀ n, P3943408752702429137.a n = A186227 (n + 1)

end A186227

/-! ## A186227.P1520451250764900592

`A002266(A026351(2*n+3)+4*(n+1))`
-/

namespace A186227.P1520451250764900592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A026351 (2 * n + 3) + (4 * (n + 1) : ℤ)).toNat

end

end A186227.P1520451250764900592

namespace A186227

/-- `A002266(A026351(2*n+3)+4*(n+1))` -/
def P1520451250764900592.Spec : Prop :=
  ∀ n, P1520451250764900592.a n = A186227 (n + 1)

end A186227

/-! ## A186227.P1973419193223373337

`A183296(∑[n+1])-∑[n]`
-/

namespace A186227.P1973419193223373337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183296 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A186227.P1973419193223373337

namespace A186227

/-- `A183296(∑[n+1])-∑[n]` -/
def P1973419193223373337.Spec : Prop :=
  ∀ n, P1973419193223373337.a n = A186227 (n + 1)

end A186227

/-! ## A186227.P2510486640804285709

`record[A183296(n+1)-A061579(n)]`
-/

namespace A186227.P2510486640804285709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183296 (n + 1) - A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186227.P2510486640804285709

namespace A186227

/-- `record[A183296(n+1)-A061579(n)]` -/
def P2510486640804285709.Spec : Prop :=
  ∀ n, P2510486640804285709.a n = A186227 (n + 1)

end A186227

/-! ## A186227.P15407657337282031214

`A002024(∑[A002264(A246301(n+1))])`
-/

namespace A186227.P15407657337282031214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A246301 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186227.P15407657337282031214

namespace A186227

/-- `A002024(∑[A002264(A246301(n+1))])` -/
def P15407657337282031214.Spec : Prop :=
  ∀ n, P15407657337282031214.a n = A186227 (n + 1)

end A186227

/-! ## A186227.P12526252928327188823

`A000194(A025747(2*n+1)-1)`
-/

namespace A186227.P12526252928327188823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A025747 (2 * n + 1) - 1).toNat

end

end A186227.P12526252928327188823

namespace A186227

/-- `A000194(A025747(2*n+1)-1)` -/
def P12526252928327188823.Spec : Prop :=
  ∀ n, P12526252928327188823.a n = A186227 (n + 1)

end A186227

/-! ## A186227.P12697682767860260448

`A000194(xor(A001511(n+1), A025747(2*n+1)))`
-/

namespace A186227.P12697682767860260448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor (A001511 (n + 1)) (A025747 (2 * n + 1))).toNat

end

end A186227.P12697682767860260448

namespace A186227

/-- `A000194(xor(A001511(n+1), A025747(2*n+1)))` -/
def P12697682767860260448.Spec : Prop :=
  ∀ n, P12697682767860260448.a n = A186227 (n + 1)

end A186227

/-!
# A186228: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and heptagonal numbers. Complement of A186227.

The programs for A186228, the canonical program `A186228.P1421286630599041458` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186228 has offset 1).

The definition of A186228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186228.P4520606374521313890

`round(sqrt((n+1)*(5*n+2)+1))+n`
-/

namespace A186228.P4520606374521313890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) * (5 * n + 2) + 1 : ℝ)) + (n : ℤ)

end

end A186228.P4520606374521313890

namespace A186228

/-- `round(sqrt((n+1)*(5*n+2)+1))+n` -/
def P4520606374521313890.Spec : Prop :=
  ∀ n, P4520606374521313890.a n = A186228 (n + 1)

end A186228

/-! ## A186228.P1421286630599041458

`floor(sqrt(Δ[n²]*A003622(2*(n+1))))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A186228

/-- `floor(sqrt(Δ[n²]*A003622(2*(n+1))))` -/
def P1421286630599041458.Spec : Prop :=
  ∀ n, P1421286630599041458.a n = A186228 (n + 1)

theorem P1421286630599041458.correct : P1421286630599041458.Spec := by
  intro n
  simp only [A186228, Nat.add_sub_cancel]

end A186228

/-! ## A186228.P4226545131203077184

`round(sqrt(A060544(n+1)+A000217(n+2))+n)`
-/

namespace A186228.P4226545131203077184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A060544 (n + 1) + A000217 (n + 2) : ℝ) + (n : ℝ))

end

end A186228.P4226545131203077184

namespace A186228

/-- `round(sqrt(A060544(n+1)+A000217(n+2))+n)` -/
def P4226545131203077184.Spec : Prop :=
  ∀ n, P4226545131203077184.a n = A186228 (n + 1)

end A186228

/-! ## A186228.P773479377881036452

`A005206(A003259(2*(n+1))-1)`
-/

namespace A186228.P773479377881036452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003259 (2 * (n + 1)) - 1).toNat

end

end A186228.P773479377881036452

namespace A186228

/-- `A005206(A003259(2*(n+1))-1)` -/
def P773479377881036452.Spec : Prop :=
  ∀ n, P773479377881036452.a n = A186228 (n + 1)

end A186228

/-! ## A186228.P3393402373010031674

`A060143(A003259(2*(n+1)))`
-/

namespace A186228.P3393402373010031674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A003259 (2 * (n + 1))).toNat

end

end A186228.P3393402373010031674

namespace A186228

/-- `A060143(A003259(2*(n+1)))` -/
def P3393402373010031674.Spec : Prop :=
  ∀ n, P3393402373010031674.a n = A186228 (n + 1)

end A186228

/-! ## A186228.P3456879116597568109

`A005378(A003259(2*(n+1))-1)`
-/

namespace A186228.P3456879116597568109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A003259 (2 * (n + 1)) - 1).toNat

end

end A186228.P3456879116597568109

namespace A186228

/-- `A005378(A003259(2*(n+1))-1)` -/
def P3456879116597568109.Spec : Prop :=
  ∀ n, P3456879116597568109.a n = A186228 (n + 1)

end A186228

/-! ## A186228.P18163437526198113539

`round(log(A099524(2*n+1)))`
-/

namespace A186228.P18163437526198113539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A099524 (2 * n + 1) : ℝ))

end

end A186228.P18163437526198113539

namespace A186228

/-- `round(log(A099524(2*n+1)))` -/
def P18163437526198113539.Spec : Prop :=
  ∀ n, P18163437526198113539.a n = A186228 (n + 1)

end A186228

/-!
# A186229: Expansion of (2F1( (-(1/2), 1/6); (-2/3))( 16 x) -1)/(2*x).

The programs for A186229, there is no canonical definition to state claims against.
-/

/-! ## A186229.P4975065524400980115

`A060900(2*n+1)-A060900(2*n)`
-/

namespace A186229.P4975065524400980115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060900 (2 * n + 1) - A060900 (2 * n)

end

end A186229.P4975065524400980115

/-! ## A186229.P16009751661512497808

`record[A060900(A000265(n+1))-A060900(n)]`
-/

namespace A186229.P16009751661512497808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060900 (A000265 (n + 1)).toNat - A060900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186229.P16009751661512497808

/-! ## A186229.P2060272624882800856

`A183407(A133263(2*n+1))-A183407(A133263(2*n))`
-/

namespace A186229.P2060272624882800856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A133263 (2 * n + 1)).toNat - A183407 (A133263 (2 * n)).toNat

end

end A186229.P2060272624882800856

/-!
# A186230: Triangle T(n,k), n>=1, 1<=k<=n, read by rows: T(n,k) is the number of positive integers j<k such that j,k,n are pairwise coprime.

The programs for A186230, there is no canonical definition to state claims against.
-/

/-! ## A186230.P16234756674135763413

`A144379(n+1)%A127368(n+1)!`
-/

namespace A186230.P16234756674135763413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144379 (n + 1)) (Nat.factorial (A127368 (n + 1)).toNat : ℤ)

end

end A186230.P16234756674135763413

/-! ## A186230.P5561119053073215457

`(A054521(n+1)*A144379(n+1))%A008288(n)`
-/

namespace A186230.P5561119053073215457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054521 (n + 1) * A144379 (n + 1)) (A008288 n)

end

end A186230.P5561119053073215457

/-! ## A186230.P15848897941230767130

`(A144379(n+1)-A051731(n+1))*A054521(n+1)`
-/

namespace A186230.P15848897941230767130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144379 (n + 1) - A051731 (n + 1)) * A054521 (n + 1)

end

end A186230.P15848897941230767130

/-! ## A186230.P207190027365909946

`(A144379(n+1)-A054522(n+1))*A054521(n+1)`
-/

namespace A186230.P207190027365909946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144379 (n + 1) - A054522 (n + 1)) * A054521 (n + 1)

end

end A186230.P207190027365909946

/-! ## A186230.P16065424131072220878

`(A144379(n+1)-A054524(n+1))*A054521(n+1)`
-/

namespace A186230.P16065424131072220878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144379 (n + 1) - A054524 (n + 1)) * A054521 (n + 1)

end

end A186230.P16065424131072220878

/-!
# A186231: Expansion of ( 2F1([-1/4, 1/4]; [-1/2], 16*x) - 1 ) / (2*x).

The programs for A186231, the canonical program `A186231.P17956698847854566928` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186231 has offset 0).

The definition of A186231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186231.P17956698847854566928

`A001791(2*n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A186231

/-- `A001791(2*n+1)` -/
def P17956698847854566928.Spec : Prop :=
  ∀ n, P17956698847854566928.a n = A186231 n

theorem P17956698847854566928.correct : P17956698847854566928.Spec := by
  intro n
  simp only [A186231]

end A186231

/-! ## A186231.P13414221785135133358

`C(4*n+2, 2*n)`
-/

namespace A186231.P13414221785135133358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 2) (2 * n)

end

end A186231.P13414221785135133358

namespace A186231

/-- `C(4*n+2, 2*n)` -/
def P13414221785135133358.Spec : Prop :=
  ∀ n, (P13414221785135133358.a n : ℤ) = A186231 n

end A186231

/-! ## A186231.P5228584599347798344

`record[A158500(n)]`
-/

namespace A186231.P5228584599347798344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186231.P5228584599347798344

namespace A186231

/-- `record[A158500(n)]` -/
def P5228584599347798344.Spec : Prop :=
  ∀ n, P5228584599347798344.a n = A186231 n

end A186231

/-! ## A186231.P16438408629718874325

`A026023(4*n)`
-/

namespace A186231.P16438408629718874325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 (4 * n)

end

end A186231.P16438408629718874325

namespace A186231

/-- `A026023(4*n)` -/
def P16438408629718874325.Spec : Prop :=
  ∀ n, P16438408629718874325.a n = A186231 n

end A186231

/-! ## A186231.P11665817395735046600

`A117187(4*n)`
-/

namespace A186231.P11665817395735046600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117187 (4 * n)

end

end A186231.P11665817395735046600

namespace A186231

/-- `A117187(4*n)` -/
def P11665817395735046600.Spec : Prop :=
  ∀ n, P11665817395735046600.a n = A186231 n

end A186231

/-! ## A186231.P8026965523711349672

`A158500(2*(n+1))`
-/

namespace A186231.P8026965523711349672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158500 (2 * (n + 1))

end

end A186231.P8026965523711349672

namespace A186231

/-- `A158500(2*(n+1))` -/
def P8026965523711349672.Spec : Prop :=
  ∀ n, P8026965523711349672.a n = A186231 n

end A186231

/-! ## A186231.P16419607175316860701

`A322938(2*n)+1`
-/

namespace A186231.P16419607175316860701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322938 (2 * n) + 1

end

end A186231.P16419607175316860701

namespace A186231

/-- `A322938(2*n)+1` -/
def P16419607175316860701.Spec : Prop :=
  ∀ n, P16419607175316860701.a n = A186231 n

end A186231

/-! ## A186231.P14443889024772636106

`A007007(4*n+2)`
-/

namespace A186231.P14443889024772636106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (4 * n + 2)

end

end A186231.P14443889024772636106

namespace A186231

/-- `A007007(4*n+2)` -/
def P14443889024772636106.Spec : Prop :=
  ∀ n, P14443889024772636106.a n = A186231 n

end A186231

/-! ## A186231.P16467296776535026989

`A037952(4*n+2)`
-/

namespace A186231.P16467296776535026989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (4 * n + 2)

end

end A186231.P16467296776535026989

namespace A186231

/-- `A037952(4*n+2)` -/
def P16467296776535026989.Spec : Prop :=
  ∀ n, P16467296776535026989.a n = A186231 n

end A186231

/-! ## A186231.P429663191609323645

`A037955(4*n+2)`
-/

namespace A186231.P429663191609323645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (4 * n + 2)

end

end A186231.P429663191609323645

namespace A186231

/-- `A037955(4*n+2)` -/
def P429663191609323645.Spec : Prop :=
  ∀ n, P429663191609323645.a n = A186231 n

end A186231

/-!
# A186232: Row sums of A185249.

The programs for A186232, there is no canonical definition to state claims against.
-/

/-! ## A186232.P2148570048951602172

`A024417(A059219(n)+1)`
-/

namespace A186232.P2148570048951602172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A059219 n + 1).toNat

end

end A186232.P2148570048951602172

/-! ## A186232.P6461705700436923983

`A261104(A006154(n)+1)`
-/

namespace A186232.P6461705700436923983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A006154 n + 1).toNat

end

end A186232.P6461705700436923983

/-! ## A186232.P2286116221143470951

`A008647(3*A225504(n))`
-/

namespace A186232.P2286116221143470951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (3 * A225504 n).toNat

end

end A186232.P2286116221143470951

/-! ## A186232.P1351635498662565458

`A024417(A059235(∑[n+1])+1)`
-/

namespace A186232.P1351635498662565458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A059235 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A186232.P1351635498662565458

/-!
# A186233: The number of lucky numbers between n and 2n, exclusive.

The programs for A186233, there is no canonical definition to state claims against.
-/

/-! ## A186233.P15119999998051448434

`A109497(2*n)-A109497(n)`
-/

namespace A186233.P15119999998051448434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (2 * n) - A109497 n

end

end A186233.P15119999998051448434

/-! ## A186233.P3438184731888641981

`∑[A145649(Δ[n²])-A145649(n+1)]`
-/

namespace A186233.P3438184731888641981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186233.P3438184731888641981

/-! ## A186233.P13255582847176143252

`abs(A109497(n)-A109497(A223134(n)))`
-/

namespace A186233.P13255582847176143252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109497 n - A109497 (A223134 n).toNat|

end

end A186233.P13255582847176143252

/-! ## A186233.P7941747452449023414

`A109497(A223134(n))-∑[A145649(n+1)]`
-/

namespace A186233.P7941747452449023414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A223134 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186233.P7941747452449023414

/-! ## A186233.P7355081161699810068

`A109497(2*n+1)+A001478(A109497(n))`
-/

namespace A186233.P7355081161699810068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (2 * n + 1) + A001478 (A109497 n).toNat

end

end A186233.P7355081161699810068

/-! ## A186233.P7083807867818160567

`A109497(A005843(n))-∑[A257725(n+1)%2]`
-/

namespace A186233.P7083807867818160567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257725 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A005843 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186233.P7083807867818160567

/-! ## A186233.P4830540007578721209

`∑[A145649(A004280(n+2))-A145649(n+1)]+1`
-/

namespace A186233.P4830540007578721209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A004280 (n + 2)).toNat - A145649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A186233.P4830540007578721209

/-!
# A186235: Total Wiener index of double-star trees with n nodes.

The programs for A186235, the canonical program `A186235.P7235591364071035020` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186235 has offset 4).

The definition of A186235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186235.P7235591364071035020

`A294473(n+2)+A294473(n+3)-A294139(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A186235

/-- `A294473(n+2)+A294473(n+3)-A294139(n+2)` -/
def P7235591364071035020.Spec : Prop :=
  ∀ n, P7235591364071035020.a n = A186235 (n + 4)

theorem P7235591364071035020.correct : P7235591364071035020.Spec := by
  intro n
  simp only [A186235, Nat.add_sub_cancel]

end A186235

/-!
# A186236: G.f.: exp( Sum_{n>=0} [ Sum_{k=0..2*n} A027907(n,k)^2 * x^k ]* x^n/n ), where A027907 is the triangle of trinomial coefficients.

The programs for A186236, there is no canonical definition to state claims against.
-/

/-! ## A186236.P1033791329059881693

`A318229(n+1)+C(n, 6)`
-/

namespace A186236.P1033791329059881693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) + (Nat.choose n 6 : ℤ)

end

end A186236.P1033791329059881693

/-! ## A186236.P13273225238109400955

`A245473(A050385(n+1))`
-/

namespace A186236.P13273225238109400955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A050385 (n + 1)).toNat

end

end A186236.P13273225238109400955

/-! ## A186236.P16810933759867983938

`A047449(A321994(n+1))`
-/

namespace A186236.P16810933759867983938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (A321994 (n + 1)).toNat

end

end A186236.P16810933759867983938

/-! ## A186236.P13246119366523683233

`A157271(Δ[A339837(n+2)])`
-/

namespace A186236.P13246119366523683233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339837 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (f1 (n + 1) - f1 n).toNat

end

end A186236.P13246119366523683233

/-!
# A186237: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers (A000217) and heptagonal numbers (A000566). Complement of A186238.

The programs for A186237, the canonical program `A186237.P13313159862021497232` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186237 has offset 1).

The definition of A186237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186237.P13313159862021497232

`comp[A186238(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186237

/-- `comp[A186238(n+1)-1]+1` -/
def P13313159862021497232.Spec : Prop :=
  ∀ n, (P13313159862021497232.a n : ℤ) = A186237 (n + 1)

theorem P13313159862021497232.correct : P13313159862021497232.Spec := by
  intro n
  simp only [A186237, Nat.add_sub_cancel]

end A186237

/-! ## A186237.P12891826757974815359

`2*(n+1)-A060065(2*(n+1))`
-/

namespace A186237.P12891826757974815359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A060065 (2 * (n + 1))

end

end A186237.P12891826757974815359

namespace A186237

/-- `2*(n+1)-A060065(2*(n+1))` -/
def P12891826757974815359.Spec : Prop :=
  ∀ n, P12891826757974815359.a n = A186237 (n + 1)

end A186237

/-! ## A186237.P14617603480155451847

`A183296(∑[n+1]+1)-(∑[n]+1)`
-/

namespace A186237.P14617603480155451847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183296 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A186237.P14617603480155451847

namespace A186237

/-- `A183296(∑[n+1]+1)-(∑[n]+1)` -/
def P14617603480155451847.Spec : Prop :=
  ∀ n, P14617603480155451847.a n = A186237 (n + 1)

end A186237

/-! ## A186237.P3517981318026726333

`abs(A034856(n+1)-A183296(A000124(n+1))-n)+n`
-/

namespace A186237.P3517981318026726333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034856 (n + 1) - A183296 (A000124 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A186237.P3517981318026726333

namespace A186237

/-- `abs(A034856(n+1)-A183296(A000124(n+1))-n)+n` -/
def P3517981318026726333.Spec : Prop :=
  ∀ n, P3517981318026726333.a n = A186237 (n + 1)

end A186237

/-! ## A186237.P6247495204646544257

`A002024(∑[A246405(n+1)]+1)`
-/

namespace A186237.P6247495204646544257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A186237.P6247495204646544257

namespace A186237

/-- `A002024(∑[A246405(n+1)]+1)` -/
def P6247495204646544257.Spec : Prop :=
  ∀ n, P6247495204646544257.a n = A186237 (n + 1)

end A186237

/-! ## A186237.P395428959472959409

`A003056(∑[A246405(n+1)])+1`
-/

namespace A186237.P395428959472959409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A186237.P395428959472959409

namespace A186237

/-- `A003056(∑[A246405(n+1)])+1` -/
def P395428959472959409.Spec : Prop :=
  ∀ n, P395428959472959409.a n = A186237 (n + 1)

end A186237

/-! ## A186237.P1049606189594607719

`A123578(∑[A246405(n+1)]+1)`
-/

namespace A186237.P1049606189594607719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A186237.P1049606189594607719

namespace A186237

/-- `A123578(∑[A246405(n+1)]+1)` -/
def P1049606189594607719.Spec : Prop :=
  ∀ n, P1049606189594607719.a n = A186237 (n + 1)

end A186237

/-! ## A186237.P14775038503886620537

`ceil(A131507(∑[A246405(n+1)])/2)`
-/

namespace A186237.P14775038503886620537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131507 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌉

end

end A186237.P14775038503886620537

namespace A186237

/-- `ceil(A131507(∑[A246405(n+1)])/2)` -/
def P14775038503886620537.Spec : Prop :=
  ∀ n, P14775038503886620537.a n = A186237 (n + 1)

end A186237

/-! ## A186237.P17944303334709338938

`A110654(A131507(∑[A246405(n+1)]))`
-/

namespace A186237.P17944303334709338938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A131507 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A186237.P17944303334709338938

namespace A186237

/-- `A110654(A131507(∑[A246405(n+1)]))` -/
def P17944303334709338938.Spec : Prop :=
  ∀ n, P17944303334709338938.a n = A186237 (n + 1)

end A186237

/-! ## A186237.P14068348917227763235

`A137734(∑[A246405(2*(n+1))]-n)`
-/

namespace A186237.P14068348917227763235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A186237.P14068348917227763235

namespace A186237

/-- `A137734(∑[A246405(2*(n+1))]-n)` -/
def P14068348917227763235.Spec : Prop :=
  ∀ n, P14068348917227763235.a n = A186237 (n + 1)

end A186237

/-!
# A186238: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and heptagonal numbers. Complement of A186237.

The programs for A186238, the canonical program `A186238.P14388284756040784702` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186238 has offset 1).

The definition of A186238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186238.P14388284756040784702

`round(sqrt((5*n+2)*(n+1)))+n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186238

/-- `round(sqrt((5*n+2)*(n+1)))+n` -/
def P14388284756040784702.Spec : Prop :=
  ∀ n, P14388284756040784702.a n = A186238 (n + 1)

theorem P14388284756040784702.correct : P14388284756040784702.Spec := by
  intro n
  simp only [A186238, Nat.add_sub_cancel]

end A186238

/-! ## A186238.P11107105874189937598

`round(sqrt(∑[A017293(n)])+n)`
-/

namespace A186238.P11107105874189937598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n : ℝ))

end

end A186238.P11107105874189937598

namespace A186238

/-- `round(sqrt(∑[A017293(n)])+n)` -/
def P11107105874189937598.Spec : Prop :=
  ∀ n, P11107105874189937598.a n = A186238 (n + 1)

end A186238

/-! ## A186238.P17001235285757694805

`round(sqrt(2*A000566(n+1))+n)`
-/

namespace A186238.P17001235285757694805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A000566 (n + 1) : ℝ) + (n : ℝ))

end

end A186238.P17001235285757694805

namespace A186238

/-- `round(sqrt(2*A000566(n+1))+n)` -/
def P17001235285757694805.Spec : Prop :=
  ∀ n, P17001235285757694805.a n = A186238 (n + 1)

end A186238

/-! ## A186238.P18383606860552554449

`round(sqrt(2*n*A001962(n+1)+1))`
-/

namespace A186238.P18383606860552554449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * n : ℤ) * A001962 (n + 1) + 1 : ℝ))

end

end A186238.P18383606860552554449

namespace A186238

/-- `round(sqrt(2*n*A001962(n+1)+1))` -/
def P18383606860552554449.Spec : Prop :=
  ∀ n, P18383606860552554449.a n = A186238 (n + 1)

end A186238

/-! ## A186238.P14458760623613394494

`round(sqrt(A135706(n+1))+n)`
-/

namespace A186238.P14458760623613394494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A135706 (n + 1) : ℝ) + (n : ℝ))

end

end A186238.P14458760623613394494

namespace A186238

/-- `round(sqrt(A135706(n+1))+n)` -/
def P14458760623613394494.Spec : Prop :=
  ∀ n, P14458760623613394494.a n = A186238 (n + 1)

end A186238

/-!
# A186239: G.f. A(x) satisfies A(x) = 1+x*A(x)+x^2*A(x)^2+2*x^3*A(x)^3.

The programs for A186239, there is no canonical definition to state claims against.
-/

/-! ## A186239.P8862275754809903080

`ceil(sqrt(A340940(∑[n+3]+n+3)))`
-/

namespace A186239.P8862275754809903080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A340940 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)) : ℝ)⌉

end

end A186239.P8862275754809903080

/-! ## A186239.P13890666811686361121

`A289494(A113436(n)+A092295(n))`
-/

namespace A186239.P13890666811686361121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A113436 n + A092295 n).toNat

end

end A186239.P13890666811686361121

/-! ## A186239.P15211254144893275396

`A289494(A113436(n)+A113435(n))`
-/

namespace A186239.P15211254144893275396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A113436 n + A113435 n).toNat

end

end A186239.P15211254144893275396

/-! ## A186239.P10448643426777624470

`A321410(A004271(n))+A206603(n)`
-/

namespace A186239.P10448643426777624470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321410 (A004271 n).toNat + A206603 n

end

end A186239.P10448643426777624470

/-!
# A186240: G.f. A(x) defined by A(x) = 1 +x*A(x) +x^2*A(x)^2 +3*x^3*A(x)^3.

The programs for A186240, there is no canonical definition to state claims against.
-/

/-! ## A186240.P739668148486715200

`A023193(A150254(n))`
-/

namespace A186240.P739668148486715200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150254 n).toNat

end

end A186240.P739668148486715200

/-! ## A186240.P16793969911845853829

`A325946(a(n-1)+2)+A010060(n+4)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A186240.P16793969911845853829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A325946 (a (n - 1) + 2).toNat + A010060 (n + 4)

end

end A186240.P16793969911845853829

/-! ## A186240.P11865331437469896266

`A303838(A266328(n))+A192738(n)`
-/

namespace A186240.P11865331437469896266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (A266328 n).toNat + A192738 n

end

end A186240.P11865331437469896266

/-!
# A186241: G.f. satisfies A(x) = 1 + x*A(x)^2 + x^2*A(x)^4 + x^3*A(x)^6.

The programs for A186241, there is no canonical definition to state claims against.
-/

/-! ## A186241.P3693086738817055779

`A064580(A046092(n))/(n+1)`
-/

namespace A186241.P3693086738817055779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064580 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A186241.P3693086738817055779

/-! ## A186241.P8948109050759206703

`A008287(A003154(n+1))/Δ[n²]`
-/

namespace A186241.P8948109050759206703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008287 (A003154 (n + 1)).toNat : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A186241.P8948109050759206703

/-! ## A186241.P16386384882481839353

`A008287(A032528(2*n+1))/(2*n+1)`
-/

namespace A186241.P16386384882481839353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008287 (A032528 (2 * n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A186241.P16386384882481839353

/-! ## A186241.P7348772741130772468

`A262082(∑[n+3])`
-/

namespace A186241.P7348772741130772468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262082 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186241.P7348772741130772468

/-!
# A186242: G.f. A(x) given by A(x) = 1+x*A(x)^2+x^2*A(x)^4+2*x^3*A(x)^6.

The programs for A186242, there is no canonical definition to state claims against.
-/

/-! ## A186242.P1148566541154024106

`A350478(n+1)-A049502(A000272(n))`
-/

namespace A186242.P1148566541154024106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350478 (n + 1) - A049502 (A000272 n).toNat

end

end A186242.P1148566541154024106

/-! ## A186242.P11734543081692095350

`A030530(C(4*n+2, n)/(2*n+1))-n`
-/

namespace A186242.P11734543081692095350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (SequenceMachineLib.roundAway ((Nat.choose (4 * n + 2) n : ℚ) / (2 * n + 1 : ℚ))).toNat - (n : ℤ)

end

end A186242.P11734543081692095350

/-!
# A186243: Numbers k such that 6*k-5 and 6*k-1 are both primes.

The programs for A186243, there is no canonical definition to state claims against.
-/

/-! ## A186243.P11642076798280249523

`A056956(n+1)+1`
-/

namespace A186243.P11642076798280249523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1) + 1

end

end A186243.P11642076798280249523

/-! ## A186243.P17247868949648113648

`ceil(A157834(n+1)/2)`
-/

namespace A186243.P17247868949648113648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157834 (n + 1) : ℚ) / 2⌉

end

end A186243.P17247868949648113648

/-! ## A186243.P13558651463281257133

`ceil(A111981(n+1)/3)`
-/

namespace A186243.P13558651463281257133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111981 (n + 1) : ℚ) / 3⌉

end

end A186243.P13558651463281257133

/-! ## A186243.P16939564487952927283

`ceil(A029710(n+1)/6)`
-/

namespace A186243.P16939564487952927283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029710 (n + 1) : ℚ) / 6⌉

end

end A186243.P16939564487952927283

/-! ## A186243.P7135372186797801238

`round(A029708(n+1)/6)`
-/

namespace A186243.P7135372186797801238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A029708 (n + 1) : ℚ) / 6)

end

end A186243.P7135372186797801238

/-! ## A186243.P15558501409526598487

`(floor((A031505(n+1)-1)/3)+1)/2`
-/

namespace A186243.P15558501409526598487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A031505 (n + 1) - 1 : ℚ) / 3⌋ + 1 : ℚ) / 2

end

end A186243.P15558501409526598487

/-! ## A186243.P5512173236271834430

`A111981(n+1)+1-A157834(n+1)`
-/

namespace A186243.P5512173236271834430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111981 (n + 1) + (1 - A157834 (n + 1))

end

end A186243.P5512173236271834430

/-! ## A186243.P385281947120191345

`A047847(n+2)/3+1`
-/

namespace A186243.P385281947120191345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047847 (n + 2) : ℚ) / 3 + 1

end

end A186243.P385281947120191345

/-! ## A186243.P8405974129122062030

`(A088762(n+2)+2)/3`
-/

namespace A186243.P8405974129122062030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088762 (n + 2) + 2 : ℚ) / 3

end

end A186243.P8405974129122062030

/-! ## A186243.P3930648248885787330

`(A046132(n+2)-5)/6+1`
-/

namespace A186243.P3930648248885787330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046132 (n + 2) - 5 : ℚ) / 6 + 1

end

end A186243.P3930648248885787330

/-! ## A186243.P18223994510149334022

`∩[A024898(n+1), A024899(n+1)+1]`
-/

namespace A186243.P18223994510149334022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186243.P18223994510149334022

/-! ## A186243.P12343721767990656811

`∩[A024899(n+1), A059325(n+1)]+1`
-/

namespace A186243.P12343721767990656811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A186243.P12343721767990656811

/-! ## A186243.P8794169379882032189

`∩[A024898(n+1), A153218(n+1)+2]`
-/

namespace A186243.P8794169379882032189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186243.P8794169379882032189

/-! ## A186243.P11513072201785311346

`A275111(A029709(n+1))`
-/

namespace A186243.P11513072201785311346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275111 (A029709 (n + 1)).toNat

end

end A186243.P11513072201785311346

/-! ## A186243.P11318600262197631819

`A000203(A046132(n+2))/6`
-/

namespace A186243.P11318600262197631819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A046132 (n + 2)).toNat : ℚ) / 6

end

end A186243.P11318600262197631819

/-! ## A186243.P17903677917911934494

`A000203(A015913(n+2)+4)/6`
-/

namespace A186243.P17903677917911934494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A015913 (n + 2) + 4).toNat : ℚ) / 6

end

end A186243.P17903677917911934494

/-! ## A186243.P12559046530428310396

`A020725(A056956(n+1))`
-/

namespace A186243.P12559046530428310396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056956 (n + 1)).toNat

end

end A186243.P12559046530428310396

/-! ## A186243.P15967099227619373962

`eq[A072815(n), A167020(n+1)]+1`
-/

namespace A186243.P15967099227619373962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A186243.P15967099227619373962

/-! ## A186243.P18016505714373421297

`A000463(A157834(n+1))`
-/

namespace A186243.P18016505714373421297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A157834 (n + 1)).toNat

end

end A186243.P18016505714373421297

/-! ## A186243.P7194425802983482817

`A008620(A111981(n+1))`
-/

namespace A186243.P7194425802983482817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A111981 (n + 1)).toNat

end

end A186243.P7194425802983482817

/-!
# A186244: Number of ternary strings of length n containing 00.

The programs for A186244, the canonical program `A186244.P14326985804142618526` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186244 has offset 0).

The definition of A186244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186244.P1347810461340281311

`2*a(n-1)+2*a(n-2)+3^(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A186244.P1347810461340281311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A186244.P1347810461340281311

namespace A186244

/-- `2*a(n-1)+2*a(n-2)+3^(n-2)` -/
def P1347810461340281311.Spec : Prop :=
  ∀ n, P1347810461340281311.a n = (A186244 n : ℚ)

end A186244

/-! ## A186244.P14326985804142618526

`3^n-A028859(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186244

/-- `3^n-A028859(n)` -/
def P14326985804142618526.Spec : Prop :=
  ∀ n, P14326985804142618526.a n = A186244 n

theorem P14326985804142618526.correct : P14326985804142618526.Spec := by
  intro n
  simp only [A186244]

end A186244

/-! ## A186244.P894479873199394359

`ogf(x^2/(1-5x+4x^2+6x^3))`
-/

namespace A186244.P894479873199394359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -5, 4, 6] n

end

end A186244.P894479873199394359

namespace A186244

/-- `ogf(x^2/(1-5x+4x^2+6x^3))` -/
def P894479873199394359.Spec : Prop :=
  ∀ n, P894479873199394359.a n = A186244 n

end A186244

/-! ## A186244.P18110956275903364880

`3^n-A155020(n+1)`
-/

namespace A186244.P18110956275903364880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A155020 (n + 1)

end

end A186244.P18110956275903364880

namespace A186244

/-- `3^n-A155020(n+1)` -/
def P18110956275903364880.Spec : Prop :=
  ∀ n, P18110956275903364880.a n = A186244 n

end A186244

/-! ## A186244.P13617384038383551318

`A024023(n)-A005666(n)`
-/

namespace A186244.P13617384038383551318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n - A005666 n

end

end A186244.P13617384038383551318

namespace A186244

/-- `A024023(n)-A005666(n)` -/
def P13617384038383551318.Spec : Prop :=
  ∀ n, P13617384038383551318.a n = A186244 n

end A186244

/-! ## A186244.P9046753665579005008

`abs(A000244(n)-A028859(n))`
-/

namespace A186244.P9046753665579005008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A028859 n|

end

end A186244.P9046753665579005008

namespace A186244

/-- `abs(A000244(n)-A028859(n))` -/
def P9046753665579005008.Spec : Prop :=
  ∀ n, P9046753665579005008.a n = A186244 n

end A186244

/-! ## A186244.P9457665573103410022

`∑[A025192(n)-A052945(n)]`
-/

namespace A186244.P9457665573103410022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186244.P9457665573103410022

namespace A186244

/-- `∑[A025192(n)-A052945(n)]` -/
def P9457665573103410022.Spec : Prop :=
  ∀ n, P9457665573103410022.a n = A186244 n

end A186244

/-! ## A186244.P9793105692417807666

`Δ[A003462(n)-A057960(n)]`
-/

namespace A186244.P9793105692417807666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A057960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186244.P9793105692417807666

namespace A186244

/-- `Δ[A003462(n)-A057960(n)]` -/
def P9793105692417807666.Spec : Prop :=
  ∀ n, P9793105692417807666.a n = A186244 n

end A186244

/-! ## A186244.P16906348835816814315

`Δ[A115098(n)-A057960(n)]`
-/

namespace A186244.P16906348835816814315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - A057960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186244.P16906348835816814315

namespace A186244

/-- `Δ[A115098(n)-A057960(n)]` -/
def P16906348835816814315.Spec : Prop :=
  ∀ n, P16906348835816814315.a n = A186244 n

end A186244

/-! ## A186244.P4925063063816005956

`A119826(n)+A231430(n)-A028859(n)`
-/

namespace A186244.P4925063063816005956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119826 n + (A231430 n - A028859 n)

end

end A186244.P4925063063816005956

namespace A186244

/-- `A119826(n)+A231430(n)-A028859(n)` -/
def P4925063063816005956.Spec : Prop :=
  ∀ n, P4925063063816005956.a n = A186244 n

end A186244

/-! ## A186244.P7322012332840579474

`A000244(n)-(A002605(n+1)+A002605(n))`
-/

namespace A186244.P7322012332840579474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (A002605 (n + 1) + A002605 n)

end

end A186244.P7322012332840579474

namespace A186244

/-- `A000244(n)-(A002605(n+1)+A002605(n))` -/
def P7322012332840579474.Spec : Prop :=
  ∀ n, P7322012332840579474.a n = A186244 n

end A186244

/-!
# A186245: a(n) = binomial(n^2, 2*n).

The programs for A186245, the canonical program `A186245.P15600229286351100897` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186245 has offset 2).

The definition of A186245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C((n+2)², 2*(n+2))` (program `A186245.P15600229286351100897`, by `A186245.P15600229286351100897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186245.P15600229286351100897

`C((n+2)², 2*(n+2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186245

/-- `C((n+2)², 2*(n+2))` -/
def P15600229286351100897.Spec : Prop :=
  ∀ n, (P15600229286351100897.a n : ℤ) = A186245 (n + 2)

theorem P15600229286351100897.correct : P15600229286351100897.Spec := by
  intro n
  simp only [A186245, Nat.add_sub_cancel]

end A186245

/-! ## A186245.P12831457061877725198

`A155869(∑[4*(n+1)])`
-/

namespace A186245.P12831457061877725198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186245.P12831457061877725198

namespace A186245

/-- `A155869(∑[4*(n+1)])` -/
def P12831457061877725198.Spec : Prop :=
  ∀ n, P12831457061877725198.a n = A186245 (n + 2)

end A186245

/-! ## A186245.P14501377595545197124

`record[C(n², 2*n)]`
-/

namespace A186245.P14501377595545197124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186245.P14501377595545197124

namespace A186245

/-- `record[C(n², 2*n)]` -/
def P14501377595545197124.Spec : Prop :=
  ∀ n, (P14501377595545197124.a n : ℤ) = A186245 (n + 2)

end A186245

/-! ## A186245.P6741743490567464644

`A209330(∑[n+2]+3)`
-/

namespace A186245.P6741743490567464644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209330 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A186245.P6741743490567464644

namespace A186245

/-- `A209330(∑[n+2]+3)` -/
def P6741743490567464644.Spec : Prop :=
  ∀ n, P6741743490567464644.a n = A186245 (n + 2)

end A186245

/-! ## A186245.P6367860426293040026

`A214398(A060544(n+2)+n+1)`
-/

namespace A186245.P6367860426293040026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214398 (A060544 (n + 2) + (n + 1 : ℤ)).toNat

end

end A186245.P6367860426293040026

namespace A186245

/-- `A214398(A060544(n+2)+n+1)` -/
def P6367860426293040026.Spec : Prop :=
  ∀ n, P6367860426293040026.a n = A186245 (n + 2)

end A186245

/-!
# A186246: (2n+1)-th derivative of arccot(x) at x=0.

The programs for A186246, the canonical program `A186246.P15876438766731320112` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186246 has offset 0).

The definition of A186246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186246.P15876438766731320112

`(-1)^(n+1)*(2*n)!`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186246

/-- `(-1)^(n+1)*(2*n)!` -/
def P15876438766731320112.Spec : Prop :=
  ∀ n, P15876438766731320112.a n = A186246 n

theorem P15876438766731320112.correct : P15876438766731320112.Spec := by
  intro n
  simp only [A186246]

end A186246

/-! ## A186246.P16214060462378630745

`(-1)^(n+1)*A010050(n)`
-/

namespace A186246.P16214060462378630745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A010050 n

end

end A186246.P16214060462378630745

namespace A186246

/-- `(-1)^(n+1)*A010050(n)` -/
def P16214060462378630745.Spec : Prop :=
  ∀ n, P16214060462378630745.a n = A186246 n

end A186246

/-! ## A186246.P7682396003736096210

`-((-1)^n*(2*n)!)`
-/

namespace A186246.P7682396003736096210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * (Nat.factorial (2 * n) : ℤ))

end

end A186246.P7682396003736096210

namespace A186246

/-- `-((-1)^n*(2*n)!)` -/
def P7682396003736096210.Spec : Prop :=
  ∀ n, P7682396003736096210.a n = A186246 n

theorem P7682396003736096210.correct : P7682396003736096210.Spec := by
  intro n
  simp only [A186246, Nat.add_sub_cancel, A186246.P7682396003736096210.a, A186246.P15876438766731320112.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A186246

/-! ## A186246.P9388233731466203638

`∏[2*n-gcd(2*n, (2*n+1)!)²]`
-/

namespace A186246.P9388233731466203638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.gcd (2 * n) (Nat.factorial (2 * n + 1)) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186246.P9388233731466203638

namespace A186246

/-- `∏[2*n-gcd(2*n, (2*n+1)!)²]` -/
def P9388233731466203638.Spec : Prop :=
  ∀ n, P9388233731466203638.a n = A186246 n

end A186246

/-! ## A186246.P11182597155975258578

`-A165233(2*n)`
-/

namespace A186246.P11182597155975258578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A165233 (2 * n)

end

end A186246.P11182597155975258578

namespace A186246

/-- `-A165233(2*n)` -/
def P11182597155975258578.Spec : Prop :=
  ∀ n, P11182597155975258578.a n = A186246 n

end A186246

/-!
# A186247: n-th derivative of sec(x)^x at x=0.

The programs for A186247, there is no canonical definition to state claims against.
-/

/-! ## A186247.P13266479060555060552

`(-1)^n*A215347(n)`
-/

namespace A186247.P13266479060555060552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215347 n

end

end A186247.P13266479060555060552

/-! ## A186247.P8415666141096080695

`abs(A215347(n))`
-/

namespace A186247.P8415666141096080695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215347 n|

end

end A186247.P8415666141096080695

/-! ## A186247.P6112269722134395980

`gcd(A000038(n), A215347(n))`
-/

namespace A186247.P6112269722134395980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A215347 n)

end

end A186247.P6112269722134395980

/-! ## A186247.P1016638507965549115

`lcm(A040001(n), A215347(n))`
-/

namespace A186247.P1016638507965549115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A215347 n)

end

end A186247.P1016638507965549115

/-! ## A186247.P866306497863685732

`gcd(A137579(n), A215347(A061479(n)))`
-/

namespace A186247.P866306497863685732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137579 n) (A215347 (A061479 n).toNat)

end

end A186247.P866306497863685732

/-!
# A186248: 2n-th derivative of sec(x)^cos(x) at x=0.

The programs for A186248, there is no canonical definition to state claims against.
-/

/-! ## A186248.P2204226618965933465

`A033999(n)*A215677(n)`
-/

namespace A186248.P2204226618965933465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215677 n

end

end A186248.P2204226618965933465

/-! ## A186248.P6013683530889757433

`∑[A280560(n)]*A215677(n)`
-/

namespace A186248.P6013683530889757433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A215677 n

end

end A186248.P6013683530889757433

/-! ## A186248.P1605736428643734335

`(2-A010684(n))*A215677(n)`
-/

namespace A186248.P1605736428643734335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A215677 n

end

end A186248.P1605736428643734335

/-! ## A186248.P15085360183901564415

`A057077(2*n)*A215677(n)`
-/

namespace A186248.P15085360183901564415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A215677 n

end

end A186248.P15085360183901564415

/-! ## A186248.P8145688160994288341

`A087204(n²+1)*A215677(n)`
-/

namespace A186248.P8145688160994288341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (n ^ 2 + 1) * A215677 n

end

end A186248.P8145688160994288341

/-!
# A186249: 2n-th derivative of sec(x)^sec(x) at x=0.

The programs for A186249, there is no canonical definition to state claims against.
-/

/-! ## A186249.P8151295202679445007

`abs(A186250(n))`
-/

namespace A186249.P8151295202679445007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A186250 n|

end

end A186249.P8151295202679445007

/-! ## A186249.P9092584397589362960

`A033999(n)*A186250(n)`
-/

namespace A186249.P9092584397589362960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A186250 n

end

end A186249.P9092584397589362960

/-! ## A186249.P2882001839935873017

`lcm(A165326(n), A186250(n))`
-/

namespace A186249.P2882001839935873017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A186250 n)

end

end A186249.P2882001839935873017

/-! ## A186249.P14409490067953733161

`A165326(n+1)*A186250(n)`
-/

namespace A186249.P14409490067953733161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) * A186250 n

end

end A186249.P14409490067953733161

/-! ## A186249.P3638582135066604883

`A056594(2*n)*A186250(n)`
-/

namespace A186249.P3638582135066604883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A186250 n

end

end A186249.P3638582135066604883

/-!
# A186250: 2n-th derivative of sech(x)^sech(x) at x=0.

The programs for A186250, there is no canonical definition to state claims against.
-/

/-! ## A186250.P8182455140907563815

`A033999(n)*A186249(n)`
-/

namespace A186250.P8182455140907563815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A186249 n

end

end A186250.P8182455140907563815

/-! ## A186250.P2729369517411862676

`A056594(2*n)*A186249(n)`
-/

namespace A186250.P2729369517411862676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A186249 n

end

end A186250.P2729369517411862676

/-! ## A186250.P15758942568877694701

`(A004442(n)-n)*A186249(n)`
-/

namespace A186250.P15758942568877694701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A186249 n

end

end A186250.P15758942568877694701

/-! ## A186250.P8878168246200458664

`A053120(A000217(2*n))*A186249(n)`
-/

namespace A186250.P8878168246200458664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A000217 (2 * n)).toNat * A186249 n

end

end A186250.P8878168246200458664

/-! ## A186250.P14591087633928752886

`A008836(2^n)*A186249(n)`
-/

namespace A186250.P14591087633928752886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (2 ^ n) * A186249 n

end

end A186250.P14591087633928752886

/-!
# A186251: 2n-th derivative of sec(x)^cosh(x) at x=0.

The programs for A186251, there is no canonical definition to state claims against.
-/

/-! ## A186251.P8920760876291131935

`A195993(A326283(n)+A049614(2*n))`
-/

namespace A186251.P8920760876291131935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195993 (A326283 n + A049614 (2 * n)).toNat

end

end A186251.P8920760876291131935

/-!
# A186252: a(n)=Product{k=0..n-1, (3k+1)*A000108(k)}.

The programs for A186252, there is no canonical definition to state claims against.
-/

/-! ## A186252.P13225568011591300283

`∏[Δ[A323230(n)]]`
-/

namespace A186252.P13225568011591300283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186252.P13225568011591300283

/-! ## A186252.P7842539114138881013

`∏[A072405(∑[4*n])]`
-/

namespace A186252.P7842539114138881013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186252.P7842539114138881013

/-! ## A186252.P11554093920705842029

`∏[Δ[n*A120588(n)]]`
-/

namespace A186252.P11554093920705842029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186252.P11554093920705842029

/-! ## A186252.P10589685471625076689

`a(n-1)*A051924(n)` with `a(0)=1`
-/

namespace A186252.P10589685471625076689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A051924 n

end

end A186252.P10589685471625076689

/-! ## A186252.P14337604595145001629

`a(n-1)*Δ[A007318((n-1)*2*n)]` with `a(0)=1`
-/

namespace A186252.P14337604595145001629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((n : ℤ) - 1) * (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A186252.P14337604595145001629

/-!
# A186253: Indices of zeros of the sequence u(n)=abs(u(n-1)-gcd(u(n-1),n-1)), u(1)=1.

The programs for A186253, there is no canonical definition to state claims against.
-/

/-! ## A186253.P4657105187178792642

`A260940(a(n-1))` with `a(0)=2`
-/

namespace A186253.P4657105187178792642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A260940 (a (n - 1)).toNat

end

end A186253.P4657105187178792642

/-! ## A186253.P17024143067826914767

`record[A261301(n+3)]`
-/

namespace A186253.P17024143067826914767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261301 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186253.P17024143067826914767

/-! ## A186253.P8768522085739509821

`eq[n, A261301(n+1)]`
-/

namespace A186253.P8768522085739509821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186253.P8768522085739509821

/-! ## A186253.P17945574028612257020

`A261301(∑[2^n])+∑[2^n]`
-/

namespace A186253.P17945574028612257020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261301 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A186253.P17945574028612257020

/-! ## A186253.P16426109478587336468

`xor(2^(n+1), A261301(2^(n+1)))`
-/

namespace A186253.P16426109478587336468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ (n + 1) : ℤ) (A261301 (2 ^ (n + 1)))

end

end A186253.P16426109478587336468

/-!
# A186254: a(n) = 2*b(n)+1, where b(n) lists the zeros of the sequence u(n)=abs(u(n-1)-gcd(u(n-1),2*n-1)), u(1)=1.

The programs for A186254, there is no canonical definition to state claims against.
-/

/-! ## A186254.P15765072449368180506

`record[A261302(n+3)]`
-/

namespace A186254.P15765072449368180506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261302 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186254.P15765072449368180506

/-! ## A186254.P15310609232566934552

`p?[record[A261302(or(1, n))]]`
-/

namespace A186254.P15310609232566934552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261302 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186254.P15310609232566934552

/-! ## A186254.P11125462910092124253

`p?[C(A261302(n+1), 2*n)]`
-/

namespace A186254.P11125462910092124253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A261302 (n + 1)).toNat (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A186254.P11125462910092124253

/-! ## A186254.P5429116898659002667

`p?[record[A261302(A005408(n))]]`
-/

namespace A186254.P5429116898659002667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261302 (A005408 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186254.P5429116898659002667

/-!
# A186255: a(n) = 3*b_3(n)+2, where b_3 lists the zeros of the sequence A261303: u(n+1)=abs(u(n)-gcd(u(n),3*n+2)), u(1)=1.

The programs for A186255, there is no canonical definition to state claims against.
-/

/-! ## A186255.P13140920910894718089

`record[A261303(n+3)]`
-/

namespace A186255.P13140920910894718089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261303 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186255.P13140920910894718089

/-!
# A186256: a(n) = 4*b_4(n)+3, where b_4 lists the indices of zeros of the sequence A261304: u(n) = abs(u(n-1)-gcd(u(n-1),4*n-1)), u(1) = 1.

The programs for A186256, there is no canonical definition to state claims against.
-/

/-! ## A186256.P7893406677106997255

`record[A261304(2*n+3)]`
-/

namespace A186256.P7893406677106997255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261304 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186256.P7893406677106997255

/-! ## A186256.P1939745656786432136

`p?[record[A261304(A005099(n+1))]]`
-/

namespace A186256.P1939745656786432136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261304 (A005099 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186256.P1939745656786432136

/-!
# A186262: Expansion of 3F2( 2, 1/2, 3/2; 3, 4;16 x).

The programs for A186262, the canonical program `A186262.P1002457883260242200` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186262 has offset 0).

The definition of A186262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186262.P1002457883260242200

`C(2*n, n)*C(2*n+2, n)/C(n+3, 3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186262

/-- `C(2*n, n)*C(2*n+2, n)/C(n+3, 3)` -/
def P1002457883260242200.Spec : Prop :=
  ∀ n, P1002457883260242200.a n = (A186262 n : ℚ)

end A186262

/-! ## A186262.P5577268629891329092

`(n+1)*A005700(n)`
-/

namespace A186262.P5577268629891329092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005700 n

end

end A186262.P5577268629891329092

namespace A186262

/-- `(n+1)*A005700(n)` -/
def P5577268629891329092.Spec : Prop :=
  ∀ n, P5577268629891329092.a n = A186262 n

end A186262

/-! ## A186262.P3575262629428075849

`(n+1)*A039797(∑[n])`
-/

namespace A186262.P3575262629428075849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039797 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186262.P3575262629428075849

namespace A186262

/-- `(n+1)*A039797(∑[n])` -/
def P3575262629428075849.Spec : Prop :=
  ∀ n, P3575262629428075849.a n = A186262 n

end A186262

/-! ## A186262.P8732870456633513798

`(n+1)*A138349(2*n)`
-/

namespace A186262.P8732870456633513798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A138349 (2 * n)

end

end A186262.P8732870456633513798

namespace A186262

/-- `(n+1)*A138349(2*n)` -/
def P8732870456633513798.Spec : Prop :=
  ∀ n, P8732870456633513798.a n = A186262 n

end A186262

/-! ## A186262.P8550028145733028761

`A005700(n)*A008619(2*n)`
-/

namespace A186262.P8550028145733028761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 n * A008619 (2 * n)

end

end A186262.P8550028145733028761

namespace A186262

/-- `A005700(n)*A008619(2*n)` -/
def P8550028145733028761.Spec : Prop :=
  ∀ n, P8550028145733028761.a n = A186262 n

end A186262

/-! ## A186262.P13963422998623375107

`A026008(2*n+1)/A004273(n+1)*A026008(2*n)`
-/

namespace A186262.P13963422998623375107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026008 (2 * n + 1) : ℚ) / (A004273 (n + 1) : ℚ) * (A026008 (2 * n) : ℚ)

end

end A186262.P13963422998623375107

namespace A186262

/-- `A026008(2*n+1)/A004273(n+1)*A026008(2*n)` -/
def P13963422998623375107.Spec : Prop :=
  ∀ n, P13963422998623375107.a n = (A186262 n : ℚ)

end A186262

/-! ## A186262.P9326126702575665472

`A026008(2*n+1)/A004442(2*n)*A026008(2*n)`
-/

namespace A186262.P9326126702575665472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026008 (2 * n + 1) : ℚ) / (A004442 (2 * n) : ℚ) * (A026008 (2 * n) : ℚ)

end

end A186262.P9326126702575665472

namespace A186262

/-- `A026008(2*n+1)/A004442(2*n)*A026008(2*n)` -/
def P9326126702575665472.Spec : Prop :=
  ∀ n, P9326126702575665472.a n = (A186262 n : ℚ)

end A186262

/-! ## A186262.P9634712898937556382

`A227169(n)/(2*n+1)`
-/

namespace A186262.P9634712898937556382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227169 n : ℚ) / (2 * n + 1 : ℚ)

end

end A186262.P9634712898937556382

namespace A186262

/-- `A227169(n)/(2*n+1)` -/
def P9634712898937556382.Spec : Prop :=
  ∀ n, P9634712898937556382.a n = (A186262 n : ℚ)

end A186262

/-! ## A186262.P7897414571332006122

`4/A017113(n)*A227169(n)`
-/

namespace A186262.P7897414571332006122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A017113 n : ℚ) * (A227169 n : ℚ)

end

end A186262.P7897414571332006122

namespace A186262

/-- `4/A017113(n)*A227169(n)` -/
def P7897414571332006122.Spec : Prop :=
  ∀ n, P7897414571332006122.a n = (A186262 n : ℚ)

end A186262

/-!
# A186264: Expansion of 3F2( 1, 3/2, 3/2; 3, 4;16 x).

The programs for A186264, the canonical program `A186264.P3241324499981187001` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186264 has offset 0).

The definition of A186264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186264.P659955711156931978

`3/(n+3)*A000108(n+1)²`
-/

namespace A186264.P659955711156931978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 3 : ℚ) * (A000108 (n + 1) ^ 2 : ℚ)

end

end A186264.P659955711156931978

namespace A186264

/-- `3/(n+3)*A000108(n+1)²` -/
def P659955711156931978.Spec : Prop :=
  ∀ n, P659955711156931978.a n = (A186264 n : ℚ)

end A186264

/-! ## A186264.P3241324499981187001

`3/((n+3)*(n+2)²)*C(2*n+2, n+1)²`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186264

/-- `3/((n+3)*(n+2)²)*C(2*n+2, n+1)²` -/
def P3241324499981187001.Spec : Prop :=
  ∀ n, P3241324499981187001.a n = (A186264 n : ℚ)

end A186264

/-! ## A186264.P221023467480402140

`3/((n+3)*(n+2)²)*(2*n+2)!²/(n+1)!^4`
-/

namespace A186264.P221023467480402140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / ((n + 3) * (n + 2) ^ 2 : ℚ) * (Nat.factorial (2 * n + 2) ^ 2 : ℚ) / (Nat.factorial (n + 1) ^ 4 : ℚ)

end

end A186264.P221023467480402140

namespace A186264

/-- `3/((n+3)*(n+2)²)*(2*n+2)!²/(n+1)!^4` -/
def P221023467480402140.Spec : Prop :=
  ∀ n, P221023467480402140.a n = (A186264 n : ℚ)

end A186264

/-! ## A186264.P14940531479654990856

`Δ[n²]*A005700(n)`
-/

namespace A186264.P14940531479654990856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A005700 n

end

end A186264.P14940531479654990856

namespace A186264

/-- `Δ[n²]*A005700(n)` -/
def P14940531479654990856.Spec : Prop :=
  ∀ n, P14940531479654990856.a n = A186264 n

end A186264

/-! ## A186264.P14661898405635404562

`(2*n+1)*A039797(∑[n])`
-/

namespace A186264.P14661898405635404562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A039797 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186264.P14661898405635404562

namespace A186264

/-- `(2*n+1)*A039797(∑[n])` -/
def P14661898405635404562.Spec : Prop :=
  ∀ n, P14661898405635404562.a n = A186264 n

end A186264

/-! ## A186264.P6356845680844508252

`(2*n+1)*A138349(2*n)`
-/

namespace A186264.P6356845680844508252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A138349 (2 * n)

end

end A186264.P6356845680844508252

namespace A186264

/-- `(2*n+1)*A138349(2*n)` -/
def P6356845680844508252.Spec : Prop :=
  ∀ n, P6356845680844508252.a n = A186264 n

end A186264

/-! ## A186264.P16284655568229284124

`A000108(n+1)/2*A007054(n+1)`
-/

namespace A186264.P16284655568229284124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / 2 * (A007054 (n + 1) : ℚ)

end

end A186264.P16284655568229284124

namespace A186264

/-- `A000108(n+1)/2*A007054(n+1)` -/
def P16284655568229284124.Spec : Prop :=
  ∀ n, P16284655568229284124.a n = (A186264 n : ℚ)

end A186264

/-! ## A186264.P10543748341332605594

`A000108(n+1)/(n+1)*A000245(n+1)`
-/

namespace A186264.P10543748341332605594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000245 (n + 1) : ℚ)

end

end A186264.P10543748341332605594

namespace A186264

/-- `A000108(n+1)/(n+1)*A000245(n+1)` -/
def P10543748341332605594.Spec : Prop :=
  ∀ n, P10543748341332605594.a n = (A186264 n : ℚ)

end A186264

/-! ## A186264.P8905531107679757927

`A005700(n)*A008619(A016813(n))`
-/

namespace A186264.P8905531107679757927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 n * A008619 (A016813 n).toNat

end

end A186264.P8905531107679757927

namespace A186264

/-- `A005700(n)*A008619(A016813(n))` -/
def P8905531107679757927.Spec : Prop :=
  ∀ n, P8905531107679757927.a n = A186264 n

end A186264

/-! ## A186264.P3164770906309265379

`A001791(n+1)/A000292(n+1)*A001700(n)`
-/

namespace A186264.P3164770906309265379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001791 (n + 1) : ℚ) / (A000292 (n + 1) : ℚ) * (A001700 n : ℚ)

end

end A186264.P3164770906309265379

namespace A186264

/-- `A001791(n+1)/A000292(n+1)*A001700(n)` -/
def P3164770906309265379.Spec : Prop :=
  ∀ n, P3164770906309265379.a n = (A186264 n : ℚ)

end A186264

/-!
# A186265: a(n) = b_f(n) where f is the 2-periodic sequence f(k) = (-1)^k (see comments).

The programs for A186265, there is no canonical definition to state claims against.
-/

/-! ## A186265.P12919208036364437980

`A251416(A382111(3*n)+A213056(n))`
-/

namespace A186265.P12919208036364437980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (A382111 (3 * n) + A213056 n).toNat

end

end A186265.P12919208036364437980

/-!
# A186266: Expansion of 2F1( 1/2, 3/2; 4; 16*x ).

The programs for A186266, the canonical program `A186266.P11491383351930044938` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186266 has offset 0).

The definition of A186266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186266.P11491383351930044938

`3*A000108(n)*A000108(n+1)*(n+1)/(n+3)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186266

/-- `3*A000108(n)*A000108(n+1)*(n+1)/(n+3)` -/
def P11491383351930044938.Spec : Prop :=
  ∀ n, P11491383351930044938.a n = (A186266 n : ℚ)

end A186266

/-! ## A186266.P13404342229249392747

`∑[n+1]*A005700(n)`
-/

namespace A186266.P13404342229249392747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005700 n

end

end A186266.P13404342229249392747

namespace A186266

/-- `∑[n+1]*A005700(n)` -/
def P13404342229249392747.Spec : Prop :=
  ∀ n, P13404342229249392747.a n = A186266 n

end A186266

/-! ## A186266.P6820549288905955439

`C(2*n, n)/(n+1)*Δ[A120304(n+1)]`
-/

namespace A186266.P6820549288905955439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A186266.P6820549288905955439

namespace A186266

/-- `C(2*n, n)/(n+1)*Δ[A120304(n+1)]` -/
def P6820549288905955439.Spec : Prop :=
  ∀ n, P6820549288905955439.a n = (A186266 n : ℚ)

end A186266

/-! ## A186266.P2666590468693373018

`C(2*n, n)/(n+1)*Δ[A120588(n+2)]`
-/

namespace A186266.P2666590468693373018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A186266.P2666590468693373018

namespace A186266

/-- `C(2*n, n)/(n+1)*Δ[A120588(n+2)]` -/
def P2666590468693373018.Spec : Prop :=
  ∀ n, P2666590468693373018.a n = (A186266 n : ℚ)

end A186266

/-! ## A186266.P1832787255185410177

`A342288(n)-A005568(n)`
-/

namespace A186266.P1832787255185410177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342288 n - A005568 n

end

end A186266.P1832787255185410177

namespace A186266

/-- `A342288(n)-A005568(n)` -/
def P1832787255185410177.Spec : Prop :=
  ∀ n, P1832787255185410177.a n = A186266 n

end A186266

/-! ## A186266.P3896071778930520789

`A000108(n)*∑[A026012(n)]`
-/

namespace A186266.P3896071778930520789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186266.P3896071778930520789

namespace A186266

/-- `A000108(n)*∑[A026012(n)]` -/
def P3896071778930520789.Spec : Prop :=
  ∀ n, P3896071778930520789.a n = A186266 n

end A186266

/-! ## A186266.P1080858570102697981

`A000108(n)*A000245(n+1)`
-/

namespace A186266.P1080858570102697981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000245 (n + 1)

end

end A186266.P1080858570102697981

namespace A186266

/-- `A000108(n)*A000245(n+1)` -/
def P1080858570102697981.Spec : Prop :=
  ∀ n, P1080858570102697981.a n = A186266 n

end A186266

/-! ## A186266.P3730537307063801626

`A000108(n)*A071724(n+1)`
-/

namespace A186266.P3730537307063801626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A071724 (n + 1)

end

end A186266.P3730537307063801626

namespace A186266

/-- `A000108(n)*A071724(n+1)` -/
def P3730537307063801626.Spec : Prop :=
  ∀ n, P3730537307063801626.a n = A186266 n

end A186266

/-! ## A186266.P3370723042052262098

`Δ[Δ[A014137(n)]]*A000108(n)`
-/

namespace A186266.P3370723042052262098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000108 n

end

end A186266.P3370723042052262098

namespace A186266

/-- `Δ[Δ[A014137(n)]]*A000108(n)` -/
def P3370723042052262098.Spec : Prop :=
  ∀ n, P3370723042052262098.a n = A186266 n

end A186266

/-! ## A186266.P6704298031902890239

`Δ[Δ[A014138(n)]]*A000108(n)`
-/

namespace A186266.P6704298031902890239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000108 n

end

end A186266.P6704298031902890239

namespace A186266

/-- `Δ[Δ[A014138(n)]]*A000108(n)` -/
def P6704298031902890239.Spec : Prop :=
  ∀ n, P6704298031902890239.a n = A186266 n

end A186266

/-!
# A186267: a(n) = b_f(n) where f is the 3-periodic sequence [-1,1,5] (see comments).

The programs for A186267, there is no canonical definition to state claims against.
-/

/-! ## A186267.P729780722904719650

`A173135(A173143(n+1)+A173126(n))`
-/

namespace A186267.P729780722904719650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173135 (A173143 (n + 1) + A173126 n).toNat

end

end A186267.P729780722904719650

/-! ## A186267.P5379508621681033716

`A261198(A350996(n+1))`
-/

namespace A186267.P5379508621681033716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261198 (A350996 (n + 1)).toNat

end

end A186267.P5379508621681033716

/-!
# A186268: Central coefficients of A175105.

The programs for A186268, there is no canonical definition to state claims against.
-/

/-! ## A186268.P1842782555990895889

`A175105(∑[4*n]+1)`
-/

namespace A186268.P1842782555990895889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175105 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186268.P1842782555990895889

/-! ## A186268.P6041756522182206321

`record[A175105(A236283(n+1))]`
-/

namespace A186268.P6041756522182206321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175105 (A236283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186268.P6041756522182206321

/-!
# A186269: a(n) = Product_{k=0..n-1} A084057(k+1).

The programs for A186269, there is no canonical definition to state claims against.
-/

/-! ## A186269.P1839169962164624023

`∏[2*a(n-1)+4*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A186269.P1839169962164624023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) + 4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186269.P1839169962164624023

/-! ## A186269.P15045495257044222920

`∏[A084057(n)]`
-/

namespace A186269.P15045495257044222920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186269.P15045495257044222920

/-! ## A186269.P4831200424762512634

`∏[Δ[A085449(n)]]`
-/

namespace A186269.P4831200424762512634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186269.P4831200424762512634

/-! ## A186269.P5419213280057459756

`∏[2^(n-1)*A000032(n)]`
-/

namespace A186269.P5419213280057459756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186269.P5419213280057459756

/-! ## A186269.P17683298873692814014

`∏[Δ[2^(n-1)*A000045(n)]]`
-/

namespace A186269.P17683298873692814014
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186269.P17683298873692814014

/-!
# A186270: a(n)=Product{k=0..n, A003665(k)}.

The programs for A186270, there is no canonical definition to state claims against.
-/

/-! ## A186270.P6088409866879597727

`∏[C(char[2*n]+2^n, 2)]`
-/

namespace A186270.P6088409866879597727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f2 j = n then 1 else 0) + 2 ^ n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186270.P6088409866879597727

/-! ## A186270.P6717397164529898114

`((-2)^n+4^n)/2*a(n-1)` with `a(0)=1`
-/

namespace A186270.P6717397164529898114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((-2) ^ n + (4 ^ n : ℤ) : ℚ) / 2 * a (n - 1)

end

end A186270.P6717397164529898114

/-! ## A186270.P209172614445589958

`∏[2*(a(n-1)+a(n-2)/(1/2)²)]` with `a(0)=1, a(1)=1`
-/

namespace A186270.P209172614445589958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2) / ((1 : ℚ) / 2) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186270.P209172614445589958

/-! ## A186270.P1174751033677494010

`∏[A003665(n)]`
-/

namespace A186270.P1174751033677494010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186270.P1174751033677494010

/-! ## A186270.P6582139711211681194

`∏[Δ[A003683(n)]]`
-/

namespace A186270.P6582139711211681194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186270.P6582139711211681194

/-!
# A186272: The sum of the Fibonacci and shifted tribonacci sequences.

The programs for A186272, there is no canonical definition to state claims against.
-/

/-! ## A186272.P102710542969751795

`A000006(ceil(sqrt(A249015(n))))`
-/

namespace A186272.P102710542969751795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 ⌈Real.sqrt (A249015 n : ℝ)⌉.toNat

end

end A186272.P102710542969751795

/-! ## A186272.P14718954934760249581

`A227568(A218250(n))`
-/

namespace A186272.P14718954934760249581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A218250 n).toNat

end

end A186272.P14718954934760249581

/-! ## A186272.P9420355337025692845

`Δ[record[A008651(A303025(n+1))]]`
-/

namespace A186272.P9420355337025692845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A303025 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186272.P9420355337025692845

/-! ## A186272.P17655363041380863431

`A143644(3*(n+1))+A014306(A341114(n))`
-/

namespace A186272.P17655363041380863431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143644 (3 * (n + 1)) + A014306 (A341114 n).toNat

end

end A186272.P17655363041380863431

/-! ## A186272.P2305851864875566545

`floor(record[sqrt(A316273(n+1))])`
-/

namespace A186272.P2305851864875566545
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A316273 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A186272.P2305851864875566545

/-!
# A186274: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and octagonal numbers. Complement of A186159.

The programs for A186274, the canonical program `A186274.P639508217315749323` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186274 has offset 1).

The definition of A186274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186274.P639508217315749323

`round(sqrt(∑[12*n+2]+1))+n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186274

/-- `round(sqrt(∑[12*n+2]+1))+n` -/
def P639508217315749323.Spec : Prop :=
  ∀ n, P639508217315749323.a n = A186274 (n + 1)

theorem P639508217315749323.correct : P639508217315749323.Spec := by
  intro n
  simp only [A186274, Nat.add_sub_cancel]

end A186274

/-! ## A186274.P2635590234283182896

`round(sqrt(A126587(n+1))+n)`
-/

namespace A186274.P2635590234283182896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A126587 (n + 1) : ℝ) + (n : ℝ))

end

end A186274.P2635590234283182896

namespace A186274

/-- `round(sqrt(A126587(n+1))+n)` -/
def P2635590234283182896.Spec : Prop :=
  ∀ n, P2635590234283182896.a n = A186274 (n + 1)

end A186274

/-! ## A186274.P930995512389692994

`round(sqrt(A033568(n+1)+n+1)+n)`
-/

namespace A186274.P930995512389692994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A033568 (n + 1) + (n + 1 : ℤ) : ℝ) + (n : ℝ))

end

end A186274.P930995512389692994

namespace A186274

/-- `round(sqrt(A033568(n+1)+n+1)+n)` -/
def P930995512389692994.Spec : Prop :=
  ∀ n, P930995512389692994.a n = A186274 (n + 1)

end A186274

/-! ## A186274.P15338924540369704219

`round(sqrt(A227017(2*(n+1)))+n)`
-/

namespace A186274.P15338924540369704219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A227017 (2 * (n + 1)) : ℝ) + (n : ℝ))

end

end A186274.P15338924540369704219

namespace A186274

/-- `round(sqrt(A227017(2*(n+1)))+n)` -/
def P15338924540369704219.Spec : Prop :=
  ∀ n, P15338924540369704219.a n = A186274 (n + 1)

end A186274

/-! ## A186274.P14014846594830281931

`∑[Δ[A003056(A000567(n))]+1]`
-/

namespace A186274.P14014846594830281931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000567 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186274.P14014846594830281931

namespace A186274

/-- `∑[Δ[A003056(A000567(n))]+1]` -/
def P14014846594830281931.Spec : Prop :=
  ∀ n, P14014846594830281931.a n = A186274 (n + 1)

end A186274

/-!
# A186275: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and octagonal numbers. Complement of A186276.

The programs for A186275, the canonical program `A186275.P15284518141499837964` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186275 has offset 1).

The definition of A186275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186275.P15284518141499837964

`comp[round(sqrt(∑[12*n+2])+n)-1]+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186275

/-- `comp[round(sqrt(∑[12*n+2])+n)-1]+1` -/
def P15284518141499837964.Spec : Prop :=
  ∀ n, (P15284518141499837964.a n : ℤ) = A186275 (n + 1)

theorem P15284518141499837964.correct : P15284518141499837964.Spec := by
  intro n
  simp only [A186275, Nat.add_sub_cancel]

end A186275

/-! ## A186275.P15653835287427663525

`A003059(A184636(n+1)+1-A045546(n+1))`
-/

namespace A186275.P15653835287427663525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A184636 (n + 1) + (1 - A045546 (n + 1))).toNat

end

end A186275.P15653835287427663525

namespace A186275

/-- `A003059(A184636(n+1)+1-A045546(n+1))` -/
def P15653835287427663525.Spec : Prop :=
  ∀ n, P15653835287427663525.a n = A186275 (n + 1)

end A186275

/-! ## A186275.P15957029034341306839

`A000196(∑[∑[4-A010057(n+2)]])`
-/

namespace A186275.P15957029034341306839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A010057 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186275.P15957029034341306839

namespace A186275

/-- `A000196(∑[∑[4-A010057(n+2)]])` -/
def P15957029034341306839.Spec : Prop :=
  ∀ n, P15957029034341306839.a n = A186275 (n + 1)

end A186275

/-! ## A186275.P8707377359337621689

`A002024(A192438(n+2)+A002378(n))`
-/

namespace A186275.P8707377359337621689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A192438 (n + 2) + A002378 n).toNat

end

end A186275.P8707377359337621689

namespace A186275

/-- `A002024(A192438(n+2)+A002378(n))` -/
def P8707377359337621689.Spec : Prop :=
  ∀ n, P8707377359337621689.a n = A186275 (n + 1)

end A186275

/-! ## A186275.P16413551105919471491

`A083277(∑[6*n+3-A204166(n+1)])`
-/

namespace A186275.P16413551105919471491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - A204166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186275.P16413551105919471491

namespace A186275

/-- `A083277(∑[6*n+3-A204166(n+1)])` -/
def P16413551105919471491.Spec : Prop :=
  ∀ n, P16413551105919471491.a n = A186275 (n + 1)

end A186275

/-!
# A186276: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the triangular numbers and octagonal numbers. Complement of A186275.

The programs for A186276, the canonical program `A186276.P11345113236721523505` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186276 has offset 1).

The definition of A186276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186276.P11345113236721523505

`round(sqrt(∑[12*n+2])+n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186276

/-- `round(sqrt(∑[12*n+2])+n)` -/
def P11345113236721523505.Spec : Prop :=
  ∀ n, P11345113236721523505.a n = A186276 (n + 1)

theorem P11345113236721523505.correct : P11345113236721523505.Spec := by
  intro n
  simp only [A186276, Nat.add_sub_cancel]

end A186276

/-! ## A186276.P12658013143938285230

`round(sqrt(∑[a(n-1)+12]))+n` with `a(0)=2`
-/

namespace A186276.P12658013143938285230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) + (n : ℤ)

end

end A186276.P12658013143938285230

namespace A186276

/-- `round(sqrt(∑[a(n-1)+12]))+n` -/
def P12658013143938285230.Spec : Prop :=
  ∀ n, P12658013143938285230.a n = A186276 (n + 1)

end A186276

/-! ## A186276.P14961958596168794133

`round(sqrt(A239325(n)))+n`
-/

namespace A186276.P14961958596168794133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A239325 n : ℝ)) + (n : ℤ)

end

end A186276.P14961958596168794133

namespace A186276

/-- `round(sqrt(A239325(n)))+n` -/
def P14961958596168794133.Spec : Prop :=
  ∀ n, P14961958596168794133.a n = A186276 (n + 1)

end A186276

/-! ## A186276.P18325765440611988878

`round(sqrt(A126587(n+1)-1))+n`
-/

namespace A186276.P18325765440611988878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A126587 (n + 1) - 1 : ℝ)) + (n : ℤ)

end

end A186276.P18325765440611988878

namespace A186276

/-- `round(sqrt(A126587(n+1)-1))+n` -/
def P18325765440611988878.Spec : Prop :=
  ∀ n, P18325765440611988878.a n = A186276 (n + 1)

end A186276

/-! ## A186276.P8027473393993972610

`round(sqrt((A016921(n)+1)*(n+1)))+n`
-/

namespace A186276.P8027473393993972610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A016921 n + 1) * (n + 1 : ℤ) : ℝ)) + (n : ℤ)

end

end A186276.P8027473393993972610

namespace A186276

/-- `round(sqrt((A016921(n)+1)*(n+1)))+n` -/
def P8027473393993972610.Spec : Prop :=
  ∀ n, P8027473393993972610.a n = A186276 (n + 1)

end A186276

/-! ## A186276.P13628839271014540241

`round(sqrt((A016873(n)+n)*(n+1)))+n`
-/

namespace A186276.P13628839271014540241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A016873 n + (n : ℤ)) * (n + 1 : ℤ) : ℝ)) + (n : ℤ)

end

end A186276.P13628839271014540241

namespace A186276

/-- `round(sqrt((A016873(n)+n)*(n+1)))+n` -/
def P13628839271014540241.Spec : Prop :=
  ∀ n, P13628839271014540241.a n = A186276 (n + 1)

end A186276

/-! ## A186276.P11257000639406397884

`A002024(∑[6*n+1])+n`
-/

namespace A186276.P11257000639406397884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A186276.P11257000639406397884

namespace A186276

/-- `A002024(∑[6*n+1])+n` -/
def P11257000639406397884.Spec : Prop :=
  ∀ n, P11257000639406397884.a n = A186276 (n + 1)

end A186276

/-! ## A186276.P17490533469544643565

`A123578(Δ[n^3]+n)+n`
-/

namespace A186276.P17490533469544643565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat + (n : ℤ)

end

end A186276.P17490533469544643565

namespace A186276

/-- `A123578(Δ[n^3]+n)+n` -/
def P17490533469544643565.Spec : Prop :=
  ∀ n, P17490533469544643565.a n = A186276 (n + 1)

end A186276

/-! ## A186276.P11275048926321481136

`A003056(n*(3*n+4))+n+1`
-/

namespace A186276.P11275048926321481136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n * (3 * n + 4)) + (n + 1 : ℤ)

end

end A186276.P11275048926321481136

namespace A186276

/-- `A003056(n*(3*n+4))+n+1` -/
def P11275048926321481136.Spec : Prop :=
  ∀ n, P11275048926321481136.a n = A186276 (n + 1)

end A186276

/-! ## A186276.P8725598549522329799

`A003056(A140676(n))+1+n`
-/

namespace A186276.P8725598549522329799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A140676 n).toNat + 1 + (n : ℤ)

end

end A186276.P8725598549522329799

namespace A186276

/-- `A003056(A140676(n))+1+n` -/
def P8725598549522329799.Spec : Prop :=
  ∀ n, P8725598549522329799.a n = A186276 (n + 1)

end A186276

/-!
# A186277: a(n) is the number of transitive Galois groups for polynomials of degree p = prime(n).

The programs for A186277, there is no canonical definition to state claims against.
-/

/-! ## A186277.P2979747397472308860

`A002106(A000040(n+1))`
-/

namespace A186277.P2979747397472308860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002106 (A000040 (n + 1)).toNat

end

end A186277.P2979747397472308860

/-! ## A186277.P10536877105974845769

`A000019(Δ[A007504(n)])`
-/

namespace A186277.P10536877105974845769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (f1 (n + 1) - f1 n).toNat

end

end A186277.P10536877105974845769

/-! ## A186277.P1206224665630834185

`A000019(A006005(n+1))`
-/

namespace A186277.P1206224665630834185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A006005 (n + 1)).toNat

end

end A186277.P1206224665630834185

/-! ## A186277.P5718895311571123611

`A000019(A008578(n+2))`
-/

namespace A186277.P5718895311571123611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A008578 (n + 2)).toNat

end

end A186277.P5718895311571123611

/-! ## A186277.P13526038047494422698

`A000019(A075643(n+2))`
-/

namespace A186277.P13526038047494422698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A075643 (n + 2)).toNat

end

end A186277.P13526038047494422698

/-! ## A186277.P2755381163732861391

`A000019(A182986(n+2))`
-/

namespace A186277.P2755381163732861391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A182986 (n + 2)).toNat

end

end A186277.P2755381163732861391

/-! ## A186277.P4214701423639187830

`A000019(record[A006530(n+2)])`
-/

namespace A186277.P4214701423639187830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186277.P4214701423639187830

/-! ## A186277.P17798119507982887731

`A000019(record[A014963(n+2)])`
-/

namespace A186277.P17798119507982887731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186277.P17798119507982887731

/-! ## A186277.P2191446059904722657

`A000019(record[A020639(n+2)])`
-/

namespace A186277.P2191446059904722657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186277.P2191446059904722657

/-! ## A186277.P3355266244131044443

`A000019(p?[A167175(n+1)])`
-/

namespace A186277.P3355266244131044443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186277.P3355266244131044443

/-! ## A186277.P18088091321728925579

`A000019(A207790(2*(n+1)))`
-/

namespace A186277.P18088091321728925579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A207790 (2 * (n + 1))).toNat

end

end A186277.P18088091321728925579

/-! ## A186277.P2553056930748997318

`A000019(A100484(n+1)/2)`
-/

namespace A186277.P2553056930748997318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A186277.P2553056930748997318

/-! ## A186277.P12389034632874447578

`A000019(eq[2, A000005(n+1)]+1)`
-/

namespace A186277.P12389034632874447578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A186277.P12389034632874447578

/-! ## A186277.P7990934308460507658

`A000019(A006530(A100484(n+1)))`
-/

namespace A186277.P7990934308460507658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A006530 (A100484 (n + 1)).toNat).toNat

end

end A186277.P7990934308460507658

/-! ## A186277.P12314605330535040878

`A000019(lt[A000010(n+1), A020639(n+1)]+1)`
-/

namespace A186277.P12314605330535040878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A186277.P12314605330535040878

/-! ## A186277.P4396042160807070729

`A000019(eq[2, A000001(2*n)])`
-/

namespace A186277.P4396042160807070729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186277.P4396042160807070729

/-!
# A186278: Numbers k such that the sum of the digits of k plus the sum of the digits of k^2 is prime.

The programs for A186278, the canonical program `A186278.P5249949395028030588` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186278 has offset 1).

The definition of A186278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186278.P18198151073942818543

`eq[1, A003415(A007953(n)+A004159(n))]`
-/

namespace A186278.P18198151073942818543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n + A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186278.P18198151073942818543

namespace A186278

/-- `eq[1, A003415(A007953(n)+A004159(n))]` -/
def P18198151073942818543.Spec : Prop :=
  ∀ n, (P18198151073942818543.a n : ℤ) = A186278 (n + 1)

end A186278

/-! ## A186278.P5249949395028030588

`eq[1, A032741(A007953(n)+A004159(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186278

/-- `eq[1, A032741(A007953(n)+A004159(n))]` -/
def P5249949395028030588.Spec : Prop :=
  ∀ n, (P5249949395028030588.a n : ℤ) = A186278 (n + 1)

theorem P5249949395028030588.correct : P5249949395028030588.Spec := by
  intro n
  simp only [A186278, Nat.add_sub_cancel]

end A186278

/-!
# A186280: Primes within A186279.

The programs for A186280, there is no canonical definition to state claims against.
-/

/-! ## A186280.P7219923402964203972

`p?[A186279(n+1)]`
-/

namespace A186280.P7219923402964203972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186280.P7219923402964203972

/-! ## A186280.P18276529265462263183

`∩[A003627(n+1), A186279(n+1)]`
-/

namespace A186280.P18276529265462263183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P18276529265462263183

/-! ## A186280.P16356969459687984968

`∩[A007528(n+1), A186279(n+1)]`
-/

namespace A186280.P16356969459687984968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P16356969459687984968

/-! ## A186280.P789396658732307502

`∩[A009087(n+1), A186279(n+1)]`
-/

namespace A186280.P789396658732307502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P789396658732307502

/-! ## A186280.P2046915017399595576

`∩[A025584(n+1), A186279(n+1)]`
-/

namespace A186280.P2046915017399595576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P2046915017399595576

/-! ## A186280.P17331868369913273587

`∩[A034849(n+1), A186279(n+1)]`
-/

namespace A186280.P17331868369913273587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P17331868369913273587

/-! ## A186280.P1178898110235823889

`∩[A040028(n+1), A186279(n+1)]`
-/

namespace A186280.P1178898110235823889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P1178898110235823889

/-! ## A186280.P13915119394624627990

`∩[A040036(n+1), A186279(n+1)]`
-/

namespace A186280.P13915119394624627990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P13915119394624627990

/-! ## A186280.P14384183899977294249

`∩[A040044(n+1), A186279(n+1)]`
-/

namespace A186280.P14384183899977294249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P14384183899977294249

/-! ## A186280.P4227400516997702409

`∩[A040046(n+1), A186279(n+1)]`
-/

namespace A186280.P4227400516997702409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P4227400516997702409

/-! ## A186280.P8798748885973566226

`∩[A040049(n+1), A186279(n+1)]`
-/

namespace A186280.P8798748885973566226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P8798748885973566226

/-! ## A186280.P2516865552073985326

`∩[A040054(n+1), A186279(n+1)]`
-/

namespace A186280.P2516865552073985326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P2516865552073985326

/-! ## A186280.P16423471377061792145

`∩[A040060(n+1), A186279(n+1)]`
-/

namespace A186280.P16423471377061792145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P16423471377061792145

/-! ## A186280.P13735151263389809669

`∩[A040062(n+1), A186279(n+1)]`
-/

namespace A186280.P13735151263389809669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P13735151263389809669

/-! ## A186280.P6359666895382728881

`∩[A040065(n+1), A186279(n+1)]`
-/

namespace A186280.P6359666895382728881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P6359666895382728881

/-! ## A186280.P17435944083982474294

`∩[A040078(n+1), A186279(n+1)]`
-/

namespace A186280.P17435944083982474294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P17435944083982474294

/-! ## A186280.P4769730974163959169

`∩[A040083(n+1), A186279(n+1)]`
-/

namespace A186280.P4769730974163959169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P4769730974163959169

/-! ## A186280.P5730648579655380868

`∩[A040085(n+1), A186279(n+1)]`
-/

namespace A186280.P5730648579655380868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P5730648579655380868

/-! ## A186280.P9203745463098374105

`∩[A040087(n+1), A186279(n+1)]`
-/

namespace A186280.P9203745463098374105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P9203745463098374105

/-! ## A186280.P8919687043019498930

`∩[A040089(n+1), A186279(n+1)]`
-/

namespace A186280.P8919687043019498930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186280.P8919687043019498930

/-!
# A186281: Primes within A186278.

The programs for A186281, the canonical program `A186281.P5592322813747269097` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186281 has offset 1).

The definition of A186281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186281.P5592322813747269097

`p?[A186278(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A186281

/-- `p?[A186278(n+1)]` -/
def P5592322813747269097.Spec : Prop :=
  ∀ n, P5592322813747269097.a n = A186281 (n + 1)

theorem P5592322813747269097.correct : P5592322813747269097.Spec := by
  intro n
  simp only [A186281, Nat.add_sub_cancel]

end A186281

/-! ## A186281.P6546984643072906569

`∩[A002476(n+1), A186278(n+1)]`
-/

namespace A186281.P6546984643072906569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P6546984643072906569

namespace A186281

/-- `∩[A002476(n+1), A186278(n+1)]` -/
def P6546984643072906569.Spec : Prop :=
  ∀ n, (P6546984643072906569.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P11840259971961073594

`∩[A007645(n+1), A186278(n+1)]`
-/

namespace A186281.P11840259971961073594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P11840259971961073594

namespace A186281

/-- `∩[A007645(n+1), A186278(n+1)]` -/
def P11840259971961073594.Spec : Prop :=
  ∀ n, (P11840259971961073594.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P15600826409715052531

`∩[A040116(n+1), A186278(n+1)]`
-/

namespace A186281.P15600826409715052531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P15600826409715052531

namespace A186281

/-- `∩[A040116(n+1), A186278(n+1)]` -/
def P15600826409715052531.Spec : Prop :=
  ∀ n, (P15600826409715052531.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P5183253003535197147

`∩[A045331(n+1), A186278(n+1)]`
-/

namespace A186281.P5183253003535197147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P5183253003535197147

namespace A186281

/-- `∩[A045331(n+1), A186278(n+1)]` -/
def P5183253003535197147.Spec : Prop :=
  ∀ n, (P5183253003535197147.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P2690484555314717869

`∩[A045375(n+1), A186278(n+1)]`
-/

namespace A186281.P2690484555314717869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P2690484555314717869

namespace A186281

/-- `∩[A045375(n+1), A186278(n+1)]` -/
def P2690484555314717869.Spec : Prop :=
  ∀ n, (P2690484555314717869.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P2982150701378986017

`∩[A059500(n+1), A186278(n+1)]`
-/

namespace A186281.P2982150701378986017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P2982150701378986017

namespace A186281

/-- `∩[A059500(n+1), A186278(n+1)]` -/
def P2982150701378986017.Spec : Prop :=
  ∀ n, (P2982150701378986017.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P4671205285206723990

`∩[A049591(n+1), A186278(n+1)]`
-/

namespace A186281.P4671205285206723990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P4671205285206723990

namespace A186281

/-- `∩[A049591(n+1), A186278(n+1)]` -/
def P4671205285206723990.Spec : Prop :=
  ∀ n, (P4671205285206723990.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P13922655550011904506

`∩[A053176(n+1), A186278(n+1)]`
-/

namespace A186281.P13922655550011904506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P13922655550011904506

namespace A186281

/-- `∩[A053176(n+1), A186278(n+1)]` -/
def P13922655550011904506.Spec : Prop :=
  ∀ n, (P13922655550011904506.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P5653302252250427964

`∩[A059456(n+1), A186278(n+1)]`
-/

namespace A186281.P5653302252250427964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P5653302252250427964

namespace A186281

/-- `∩[A059456(n+1), A186278(n+1)]` -/
def P5653302252250427964.Spec : Prop :=
  ∀ n, (P5653302252250427964.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P11472864565927137889

`∩[A000040(n+1), A186278(n+1)]`
-/

namespace A186281.P11472864565927137889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P11472864565927137889

namespace A186281

/-- `∩[A000040(n+1), A186278(n+1)]` -/
def P11472864565927137889.Spec : Prop :=
  ∀ n, (P11472864565927137889.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P6768497612319324280

`∩[A004139(n+1), A186278(n+1)]`
-/

namespace A186281.P6768497612319324280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P6768497612319324280

namespace A186281

/-- `∩[A004139(n+1), A186278(n+1)]` -/
def P6768497612319324280.Spec : Prop :=
  ∀ n, (P6768497612319324280.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P16048803455027237384

`∩[A045319(n+1), A186278(n+1)]`
-/

namespace A186281.P16048803455027237384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P16048803455027237384

namespace A186281

/-- `∩[A045319(n+1), A186278(n+1)]` -/
def P16048803455027237384.Spec : Prop :=
  ∀ n, (P16048803455027237384.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P6391282114305445843

`∩[A045344(n+1), A186278(n+1)]`
-/

namespace A186281.P6391282114305445843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P6391282114305445843

namespace A186281

/-- `∩[A045344(n+1), A186278(n+1)]` -/
def P6391282114305445843.Spec : Prop :=
  ∀ n, (P6391282114305445843.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P5442981559479471628

`∩[A064728(n+1), A186278(n+1)]`
-/

namespace A186281.P5442981559479471628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P5442981559479471628

namespace A186281

/-- `∩[A064728(n+1), A186278(n+1)]` -/
def P5442981559479471628.Spec : Prop :=
  ∀ n, (P5442981559479471628.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P12264127422008252495

`∩[A065091(n+1), A186278(n+1)]`
-/

namespace A186281.P12264127422008252495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P12264127422008252495

namespace A186281

/-- `∩[A065091(n+1), A186278(n+1)]` -/
def P12264127422008252495.Spec : Prop :=
  ∀ n, (P12264127422008252495.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P7274378613544683498

`∩[A065396(n+1), A186278(n+1)]`
-/

namespace A186281.P7274378613544683498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P7274378613544683498

namespace A186281

/-- `∩[A065396(n+1), A186278(n+1)]` -/
def P7274378613544683498.Spec : Prop :=
  ∀ n, (P7274378613544683498.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P8698461038689400721

`∩[A186278(n+1), A189710(n+1)]`
-/

namespace A186281.P8698461038689400721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186281.P8698461038689400721

namespace A186281

/-- `∩[A186278(n+1), A189710(n+1)]` -/
def P8698461038689400721.Spec : Prop :=
  ∀ n, (P8698461038689400721.a n : ℤ) = A186281 (n + 1)

end A186281

/-! ## A186281.P2978994015859933293

`filter[A186278(n+1), A010051(#)]`
-/

namespace A186281.P2978994015859933293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A186281.P2978994015859933293

namespace A186281

/-- `filter[A186278(n+1), A010051(#)]` -/
def P2978994015859933293.Spec : Prop :=
  ∀ n, P2978994015859933293.a n = A186281 (n + 1)

end A186281

/-! ## A186281.P9588371723051420790

`filter[A186278(n+2), A380467(#)]`
-/

namespace A186281.P9588371723051420790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A186281.P9588371723051420790

namespace A186281

/-- `filter[A186278(n+2), A380467(#)]` -/
def P9588371723051420790.Spec : Prop :=
  ∀ n, P9588371723051420790.a n = A186281 (n + 1)

end A186281

/-!
# A186283: Least number k such that k*n+1 is a prime dividing 2^n-1.

The programs for A186283, there is no canonical definition to state claims against.
-/

/-! ## A186283.P10224720949537750367

`(A186522(n+2)-1)/(n+2)`
-/

namespace A186283.P10224720949537750367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186522 (n + 2) - 1 : ℚ) / (n + 2 : ℚ)

end

end A186283.P10224720949537750367

/-! ## A186283.P8433804163043816921

`floor(A186522(n+2)/(n+2))`
-/

namespace A186283.P8433804163043816921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186522 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A186283.P8433804163043816921

/-! ## A186283.P892309289116330121

`A000010(A186522(n+2))/A030545(n)`
-/

namespace A186283.P892309289116330121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A186522 (n + 2)).toNat : ℚ) / (A030545 n : ℚ)

end

end A186283.P892309289116330121

/-! ## A186283.P15785725438742155284

`A000010(A186522(n+2))/A058321(n)`
-/

namespace A186283.P15785725438742155284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A186522 (n + 2)).toNat : ℚ) / (A058321 n : ℚ)

end

end A186283.P15785725438742155284

/-!
# A186285: Numbers of the form p^(3^k) where p is prime and k >= 0.

The programs for A186285, the canonical program `A186285.P14281072484363093120` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186285 has offset 1).

The definition of A186285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186285.P14281072484363093120

`eq[2, A038148(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A186285

/-- `eq[2, A038148(n+1)]+1` -/
def P14281072484363093120.Spec : Prop :=
  ∀ n, (P14281072484363093120.a n : ℤ) = A186285 (n + 1)

theorem P14281072484363093120.correct : P14281072484363093120.Spec := by
  intro n
  simp only [A186285, Nat.add_sub_cancel]

end A186285

/-! ## A186285.P8082361278001359910

`eq[n+2, A049418(n+1)]+1`
-/

namespace A186285.P8082361278001359910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A186285.P8082361278001359910

namespace A186285

/-- `eq[n+2, A049418(n+1)]+1` -/
def P8082361278001359910.Spec : Prop :=
  ∀ n, (P8082361278001359910.a n : ℤ) = A186285 (n + 1)

end A186285

/-! ## A186285.P2741188861262686348

`eq[2, A038148(A028310(n))]`
-/

namespace A186285.P2741188861262686348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038148 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186285.P2741188861262686348

namespace A186285

/-- `eq[2, A038148(A028310(n))]` -/
def P2741188861262686348.Spec : Prop :=
  ∀ n, (P2741188861262686348.a n : ℤ) = A186285 (n + 1)

end A186285

/-! ## A186285.P1070675911341931410

`record[(A005408(n)+1)/A038148(n+1)]`
-/

namespace A186285.P1070675911341931410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n + 1 : ℚ) / (A038148 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186285.P1070675911341931410

namespace A186285

/-- `record[(A005408(n)+1)/A038148(n+1)]` -/
def P1070675911341931410.Spec : Prop :=
  ∀ n, P1070675911341931410.a n = (A186285 (n + 1) : ℚ)

end A186285

/-! ## A186285.P9460370003146517211

`record[A005843(n+1)/A038148(n+1)]`
-/

namespace A186285.P9460370003146517211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A038148 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186285.P9460370003146517211

namespace A186285

/-- `record[A005843(n+1)/A038148(n+1)]` -/
def P9460370003146517211.Spec : Prop :=
  ∀ n, P9460370003146517211.a n = (A186285 (n + 1) : ℚ)

end A186285

/-! ## A186285.P13276331611569208099

`record[A240230(n+2)]`
-/

namespace A186285.P13276331611569208099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240230 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186285.P13276331611569208099

namespace A186285

/-- `record[A240230(n+2)]` -/
def P13276331611569208099.Spec : Prop :=
  ∀ n, P13276331611569208099.a n = A186285 (n + 1)

end A186285

/-! ## A186285.P13662184094734318929

`eq[n+1, A049418(A233583(n+1))]`
-/

namespace A186285.P13662184094734318929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049418 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186285.P13662184094734318929

namespace A186285

/-- `eq[n+1, A049418(A233583(n+1))]` -/
def P13662184094734318929.Spec : Prop :=
  ∀ n, (P13662184094734318929.a n : ℤ) = A186285 (n + 1)

end A186285

/-! ## A186285.P3066986706493518369

`A143265(A393213(n+1))`
-/

namespace A186285.P3066986706493518369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143265 (A393213 (n + 1)).toNat

end

end A186285.P3066986706493518369

namespace A186285

/-- `A143265(A393213(n+1))` -/
def P3066986706493518369.Spec : Prop :=
  ∀ n, P3066986706493518369.a n = A186285 (n + 1)

end A186285

/-! ## A186285.P2589736710235083616

`filter[A052106(n+2), A353788(#)]`
-/

namespace A186285.P2589736710235083616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A186285.P2589736710235083616

namespace A186285

/-- `filter[A052106(n+2), A353788(#)]` -/
def P2589736710235083616.Spec : Prop :=
  ∀ n, P2589736710235083616.a n = A186285 (n + 1)

end A186285

/-! ## A186285.P7863622723251224328

`A393213(n+1)%A002189(n)`
-/

namespace A186285.P7863622723251224328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393213 (n + 1)) (A002189 n)

end

end A186285.P7863622723251224328

namespace A186285

/-- `A393213(n+1)%A002189(n)` -/
def P7863622723251224328.Spec : Prop :=
  ∀ n, P7863622723251224328.a n = A186285 (n + 1)

end A186285

/-!
# A186286: a(n) is the numerator of the rational number whose "factorization" into terms of A186285 has the balanced ternary representation corresponding to n.

The programs for A186286, there is no canonical definition to state claims against.
-/

/-! ## A186286.P12781570414950575473

`A054842(A112867(n))`
-/

namespace A186286.P12781570414950575473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A112867 n).toNat

end

end A186286.P12781570414950575473

/-! ## A186286.P12106286105710489508

`A101278(A060372(n))%A065069(n+1)`
-/

namespace A186286.P12106286105710489508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101278 (A060372 n).toNat) (A065069 (n + 1))

end

end A186286.P12106286105710489508

/-! ## A186286.P919882500181707124

`A019565(A343228(n))%A065069(n+1)`
-/

namespace A186286.P919882500181707124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019565 (A343228 n).toNat) (A065069 (n + 1))

end

end A186286.P919882500181707124

/-! ## A186286.P2385503217882974760

`A019565(A343228(n)%A236592(n+1))`
-/

namespace A186286.P2385503217882974760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.tmod (A343228 n) (A236592 (n + 1))).toNat

end

end A186286.P2385503217882974760

/-! ## A186286.P16713183696020184537

`A282530(2*n+5)+A019565(A343228(n))`
-/

namespace A186286.P16713183696020184537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282530 (2 * n + 5) + A019565 (A343228 n).toNat

end

end A186286.P16713183696020184537

/-!
# A186287: a(n) is the denominator of the rational number whose "factorization" into terms of A186285 has the balanced ternary representation corresponding to n.

The programs for A186287, there is no canonical definition to state claims against.
-/

/-! ## A186287.P10286294713165273856

`A097248(2^A343229(n))`
-/

namespace A186287.P10286294713165273856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A343229 n : ℤ))).toNat

end

end A186287.P10286294713165273856

/-! ## A186287.P11416532642506740776

`A293442(3^A343229(n))`
-/

namespace A186287.P11416532642506740776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A343229 n : ℤ))).toNat

end

end A186287.P11416532642506740776

/-! ## A186287.P4784642299359209425

`A101278(A060373(n))%A065069(n+1)`
-/

namespace A186287.P4784642299359209425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101278 (A060373 n).toNat) (A065069 (n + 1))

end

end A186287.P4784642299359209425

/-!
# A186288: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186289.

The programs for A186288, the canonical program `A186288.P8673100312429212378` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186288 has offset 1).

The definition of A186288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186288.P8673100312429212378

`comp[floor(sqrt(A000326(n))+n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186288

/-- `comp[floor(sqrt(A000326(n))+n)]` -/
def P8673100312429212378.Spec : Prop :=
  ∀ n, (P8673100312429212378.a n : ℤ) = A186288 (n + 1)

theorem P8673100312429212378.correct : P8673100312429212378.Spec := by
  intro n
  simp only [A186288, Nat.add_sub_cancel]

end A186288

/-! ## A186288.P4187569598918089849

`comp[A186289(n+1)-1]+1`
-/

namespace A186288.P4187569598918089849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186289 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186288.P4187569598918089849

namespace A186288

/-- `comp[A186289(n+1)-1]+1` -/
def P4187569598918089849.Spec : Prop :=
  ∀ n, (P4187569598918089849.a n : ℤ) = A186288 (n + 1)

end A186288

/-! ## A186288.P5898665271080055108

`A186290(n+1)-char[A251914(n+1)]`
-/

namespace A186288.P5898665271080055108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186290 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186288.P5898665271080055108

namespace A186288

/-- `A186290(n+1)-char[A251914(n+1)]` -/
def P5898665271080055108.Spec : Prop :=
  ∀ n, P5898665271080055108.a n = A186288 (n + 1)

end A186288

/-! ## A186288.P6675134648353702655

`comp[A186291(n+1)-1]+1-char[A251914(n+1)]`
-/

namespace A186288.P6675134648353702655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186291 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186288.P6675134648353702655

namespace A186288

/-- `comp[A186291(n+1)-1]+1-char[A251914(n+1)]` -/
def P6675134648353702655.Spec : Prop :=
  ∀ n, P6675134648353702655.a n = A186288 (n + 1)

end A186288

/-! ## A186288.P12490115726357747255

`A097992(A198083(2*(n+1)))+n`
-/

namespace A186288.P12490115726357747255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A198083 (2 * (n + 1))).toNat + (n : ℤ)

end

end A186288.P12490115726357747255

namespace A186288

/-- `A097992(A198083(2*(n+1)))+n` -/
def P12490115726357747255.Spec : Prop :=
  ∀ n, P12490115726357747255.a n = A186288 (n + 1)

end A186288

/-! ## A186288.P6890337457510862720

`A002264(A277645(2*(n+1))-A277645(n+1))`
-/

namespace A186288.P6890337457510862720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A277645 (2 * (n + 1)) - A277645 (n + 1)).toNat

end

end A186288.P6890337457510862720

namespace A186288

/-- `A002264(A277645(2*(n+1))-A277645(n+1))` -/
def P6890337457510862720.Spec : Prop :=
  ∀ n, P6890337457510862720.a n = A186288 (n + 1)

end A186288

/-! ## A186288.P6532291620542543914

`comp[A186291(n+1)-1]+1-A010057(A135628(n))`
-/

namespace A186288.P6532291620542543914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186291 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - A010057 (A135628 n).toNat

end

end A186288.P6532291620542543914

namespace A186288

/-- `comp[A186291(n+1)-1]+1-A010057(A135628(n))` -/
def P6532291620542543914.Spec : Prop :=
  ∀ n, P6532291620542543914.a n = A186288 (n + 1)

end A186288

/-! ## A186288.P1899048410196447192

`A083277((n+1)²)+n`
-/

namespace A186288.P1899048410196447192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 ((n + 1) ^ 2) + (n : ℤ)

end

end A186288.P1899048410196447192

namespace A186288

/-- `A083277((n+1)²)+n` -/
def P1899048410196447192.Spec : Prop :=
  ∀ n, P1899048410196447192.a n = A186288 (n + 1)

end A186288

/-! ## A186288.P15027084521808717852

`A183294((n+1)²)-(n²+n)`
-/

namespace A186288.P15027084521808717852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183294 ((n + 1) ^ 2) - (n ^ 2 + n : ℤ)

end

end A186288.P15027084521808717852

namespace A186288

/-- `A183294((n+1)²)-(n²+n)` -/
def P15027084521808717852.Spec : Prop :=
  ∀ n, P15027084521808717852.a n = A186288 (n + 1)

end A186288

/-! ## A186288.P729145500754181984

`A186290(n+1)-A019590(A270079(n))`
-/

namespace A186288.P729145500754181984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186290 (n + 1) - A019590 (A270079 n).toNat

end

end A186288.P729145500754181984

namespace A186288

/-- `A186290(n+1)-A019590(A270079(n))` -/
def P729145500754181984.Spec : Prop :=
  ∀ n, P729145500754181984.a n = A186288 (n + 1)

end A186288

/-!
# A186289: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186288.

The programs for A186289, the canonical program `A186289.P4937028171788868200` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186289 has offset 1).

The definition of A186289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186289.P14202993524039613794

`ceil(sqrt(∑[or(2, 3*n)])+n)`
-/

namespace A186289.P14202993524039613794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ)⌉

end

end A186289.P14202993524039613794

namespace A186289

/-- `ceil(sqrt(∑[or(2, 3*n)])+n)` -/
def P14202993524039613794.Spec : Prop :=
  ∀ n, P14202993524039613794.a n = A186289 (n + 1)

end A186289

/-! ## A186289.P7233185036449129289

`floor(sqrt(∑[3*n+1])+n+1)`
-/

namespace A186289.P7233185036449129289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ)⌋

end

end A186289.P7233185036449129289

namespace A186289

/-- `floor(sqrt(∑[3*n+1])+n+1)` -/
def P7233185036449129289.Spec : Prop :=
  ∀ n, P7233185036449129289.a n = A186289 (n + 1)

end A186289

/-! ## A186289.P6188981100833455863

`floor(sqrt(∑[A016777(n)])+n)+1`
-/

namespace A186289.P6188981100833455863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n : ℝ)⌋ + 1

end

end A186289.P6188981100833455863

namespace A186289

/-- `floor(sqrt(∑[A016777(n)])+n)+1` -/
def P6188981100833455863.Spec : Prop :=
  ∀ n, P6188981100833455863.a n = A186289 (n + 1)

end A186289

/-! ## A186289.P4937028171788868200

`floor(sqrt(A000326(n+1)))+n+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186289

/-- `floor(sqrt(A000326(n+1)))+n+1` -/
def P4937028171788868200.Spec : Prop :=
  ∀ n, P4937028171788868200.a n = A186289 (n + 1)

theorem P4937028171788868200.correct : P4937028171788868200.Spec := by
  intro n
  simp only [A186289, Nat.add_sub_cancel]

end A186289

/-! ## A186289.P3650179139707578021

`floor(sqrt(A005448(n+1)+n))+n+1`
-/

namespace A186289.P3650179139707578021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005448 (n + 1) + (n : ℤ)) + (n + 1 : ℤ)

end

end A186289.P3650179139707578021

namespace A186289

/-- `floor(sqrt(A005448(n+1)+n))+n+1` -/
def P3650179139707578021.Spec : Prop :=
  ∀ n, P3650179139707578021.a n = A186289 (n + 1)

end A186289

/-! ## A186289.P10832010655342816353

`floor(sqrt(A245288(2*(n+1))))+n+1`
-/

namespace A186289.P10832010655342816353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A245288 (2 * (n + 1))) + (n + 1 : ℤ)

end

end A186289.P10832010655342816353

namespace A186289

/-- `floor(sqrt(A245288(2*(n+1))))+n+1` -/
def P10832010655342816353.Spec : Prop :=
  ∀ n, P10832010655342816353.a n = A186289 (n + 1)

end A186289

/-! ## A186289.P7164927833526994425

`A000196(∑[3*n+1])+1+n`
-/

namespace A186289.P7164927833526994425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A186289.P7164927833526994425

namespace A186289

/-- `A000196(∑[3*n+1])+1+n` -/
def P7164927833526994425.Spec : Prop :=
  ∀ n, P7164927833526994425.a n = A186289 (n + 1)

end A186289

/-! ## A186289.P15721123857644271491

`A000196(Δ[A002411(n)])+n+1`
-/

namespace A186289.P15721123857644271491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat + (n + 1 : ℤ)

end

end A186289.P15721123857644271491

namespace A186289

/-- `A000196(Δ[A002411(n)])+n+1` -/
def P15721123857644271491.Spec : Prop :=
  ∀ n, P15721123857644271491.a n = A186289 (n + 1)

end A186289

/-! ## A186289.P4112893732263672062

`A000196(A000326(n+1))+n+1`
-/

namespace A186289.P4112893732263672062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000326 (n + 1)).toNat + (n + 1 : ℤ)

end

end A186289.P4112893732263672062

namespace A186289

/-- `A000196(A000326(n+1))+n+1` -/
def P4112893732263672062.Spec : Prop :=
  ∀ n, P4112893732263672062.a n = A186289 (n + 1)

end A186289

/-! ## A186289.P1516993889082291996

`A000196(A001318(2*n+1))+n+1`
-/

namespace A186289.P1516993889082291996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001318 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A186289.P1516993889082291996

namespace A186289

/-- `A000196(A001318(2*n+1))+n+1` -/
def P1516993889082291996.Spec : Prop :=
  ∀ n, P1516993889082291996.a n = A186289 (n + 1)

end A186289

/-!
# A186290: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186291.

The programs for A186290, the canonical program `A186290.P8934827223131993448` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186290 has offset 1).

The definition of A186290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186290.P628930355313567001

`comp[A186291(n+1)-1]+1`
-/

namespace A186290.P628930355313567001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186291 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186290.P628930355313567001

namespace A186290

/-- `comp[A186291(n+1)-1]+1` -/
def P628930355313567001.Spec : Prop :=
  ∀ n, (P628930355313567001.a n : ℤ) = A186290 (n + 1)

end A186290

/-! ## A186290.P8934827223131993448

`A186288(n+1)+char[A251914(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A186290

/-- `A186288(n+1)+char[A251914(n+1)]` -/
def P8934827223131993448.Spec : Prop :=
  ∀ n, P8934827223131993448.a n = A186290 (n + 1)

theorem P8934827223131993448.correct : P8934827223131993448.Spec := by
  intro n
  simp only [A186290, Nat.add_sub_cancel]

end A186290

/-! ## A186290.P1313855904563069004

`char[A251914(n+1)]+comp[A186289(n+1)-1]+1`
-/

namespace A186290.P1313855904563069004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186289 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

end

end A186290.P1313855904563069004

namespace A186290

/-- `char[A251914(n+1)]+comp[A186289(n+1)-1]+1` -/
def P1313855904563069004.Spec : Prop :=
  ∀ n, (P1313855904563069004.a n : ℤ) = A186290 (n + 1)

end A186290

/-! ## A186290.P13580883720863685930

`A020725(comp[A186291(n+1)-1])`
-/

namespace A186290.P13580883720863685930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186291 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A186290.P13580883720863685930

namespace A186290

/-- `A020725(comp[A186291(n+1)-1])` -/
def P13580883720863685930.Spec : Prop :=
  ∀ n, P13580883720863685930.a n = A186290 (n + 1)

end A186290

/-! ## A186290.P1506661472118884367

`A186288(n+1)+A010057(A135628(n))`
-/

namespace A186290.P1506661472118884367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186288 (n + 1) + A010057 (A135628 n).toNat

end

end A186290.P1506661472118884367

namespace A186290

/-- `A186288(n+1)+A010057(A135628(n))` -/
def P1506661472118884367.Spec : Prop :=
  ∀ n, P1506661472118884367.a n = A186290 (n + 1)

end A186290

/-! ## A186290.P4038717382967061080

`A010057(A135628(n))+comp[A186289(n+1)-1]+1`
-/

namespace A186290.P4038717382967061080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186289 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A135628 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A186290.P4038717382967061080

namespace A186290

/-- `A010057(A135628(n))+comp[A186289(n+1)-1]+1` -/
def P4038717382967061080.Spec : Prop :=
  ∀ n, P4038717382967061080.a n = A186290 (n + 1)

end A186290

/-! ## A186290.P10593901114312080490

`A000196(A000969(n)-A048766(n))+1+n`
-/

namespace A186290.P10593901114312080490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000969 n - A048766 n).toNat + 1 + (n : ℤ)

end

end A186290.P10593901114312080490

namespace A186290

/-- `A000196(A000969(n)-A048766(n))+1+n` -/
def P10593901114312080490.Spec : Prop :=
  ∀ n, P10593901114312080490.a n = A186290 (n + 1)

end A186290

/-! ## A186290.P8580605453053680115

`A180447((n+1)²)+n+1`
-/

namespace A186290.P8580605453053680115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A186290.P8580605453053680115

namespace A186290

/-- `A180447((n+1)²)+n+1` -/
def P8580605453053680115.Spec : Prop :=
  ∀ n, P8580605453053680115.a n = A186290 (n + 1)

end A186290

/-! ## A186290.P9294287673871188313

`char[A251914(n+1)]+A083277((n+1)²)+n`
-/

namespace A186290.P9294287673871188313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A083277 ((n + 1) ^ 2) + (n : ℤ))

end

end A186290.P9294287673871188313

namespace A186290

/-- `char[A251914(n+1)]+A083277((n+1)²)+n` -/
def P9294287673871188313.Spec : Prop :=
  ∀ n, P9294287673871188313.a n = A186290 (n + 1)

end A186290

/-! ## A186290.P5821316336773187206

`A083277((n+1)²+1)+n`
-/

namespace A186290.P5821316336773187206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 ((n + 1) ^ 2 + 1) + (n : ℤ)

end

end A186290.P5821316336773187206

namespace A186290

/-- `A083277((n+1)²+1)+n` -/
def P5821316336773187206.Spec : Prop :=
  ∀ n, P5821316336773187206.a n = A186290 (n + 1)

end A186290

/-!
# A186291: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and pentagonal numbers. Complement of A186290.

The programs for A186291, the canonical program `A186291.P10157803117145755113` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186291 has offset 1).

The definition of A186291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186291.P10157803117145755113

`ceil(sqrt(∑[3*n+1])+n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A186291

/-- `ceil(sqrt(∑[3*n+1])+n)` -/
def P10157803117145755113.Spec : Prop :=
  ∀ n, P10157803117145755113.a n = A186291 (n + 1)

theorem P10157803117145755113.correct : P10157803117145755113.Spec := by
  intro n
  simp only [A186291, Nat.add_sub_cancel]

end A186291

/-! ## A186291.P18022037274197683508

`ceil(sqrt(A000326(n+1)))+n`
-/

namespace A186291.P18022037274197683508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000326 (n + 1) : ℝ)⌉ + (n : ℤ)

end

end A186291.P18022037274197683508

namespace A186291

/-- `ceil(sqrt(A000326(n+1)))+n` -/
def P18022037274197683508.Spec : Prop :=
  ∀ n, P18022037274197683508.a n = A186291 (n + 1)

end A186291

/-! ## A186291.P9933550604376364098

`floor(sqrt(A045943(n)+n)+n+1)`
-/

namespace A186291.P9933550604376364098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A045943 n + (n : ℤ) : ℝ) + (n + 1 : ℝ)⌋

end

end A186291.P9933550604376364098

namespace A186291

/-- `floor(sqrt(A045943(n)+n)+n+1)` -/
def P9933550604376364098.Spec : Prop :=
  ∀ n, P9933550604376364098.a n = A186291 (n + 1)

end A186291

/-! ## A186291.P285941465690935853

`ceil(sqrt(A005448(n+1)+n))+n`
-/

namespace A186291.P285941465690935853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A005448 (n + 1) + (n : ℤ) : ℝ)⌉ + (n : ℤ)

end

end A186291.P285941465690935853

namespace A186291

/-- `ceil(sqrt(A005448(n+1)+n))+n` -/
def P285941465690935853.Spec : Prop :=
  ∀ n, P285941465690935853.a n = A186291 (n + 1)

end A186291

/-! ## A186291.P14425571316427634396

`floor(sqrt(∑[A319280(n+1)])+n+1)`
-/

namespace A186291.P14425571316427634396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n + 1 : ℝ)⌋

end

end A186291.P14425571316427634396

namespace A186291

/-- `floor(sqrt(∑[A319280(n+1)])+n+1)` -/
def P14425571316427634396.Spec : Prop :=
  ∀ n, P14425571316427634396.a n = A186291 (n + 1)

end A186291

/-! ## A186291.P12298093986252690822

`ceil(sqrt(A245288(2*(n+1))))+n`
-/

namespace A186291.P12298093986252690822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A245288 (2 * (n + 1)) : ℝ)⌉ + (n : ℤ)

end

end A186291.P12298093986252690822

namespace A186291

/-- `ceil(sqrt(A245288(2*(n+1))))+n` -/
def P12298093986252690822.Spec : Prop :=
  ∀ n, P12298093986252690822.a n = A186291 (n + 1)

end A186291

/-! ## A186291.P16737621092999803902

`A172471(A032766(∑[n+1])-(n+1))+n+1`
-/

namespace A186291.P16737621092999803902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A032766 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)).toNat + (n + 1 : ℤ)

end

end A186291.P16737621092999803902

namespace A186291

/-- `A172471(A032766(∑[n+1])-(n+1))+n+1` -/
def P16737621092999803902.Spec : Prop :=
  ∀ n, P16737621092999803902.a n = A186291 (n + 1)

end A186291

/-! ## A186291.P417854950548075984

`A003059(∑[3*n+1])+n`
-/

namespace A186291.P417854950548075984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A186291.P417854950548075984

namespace A186291

/-- `A003059(∑[3*n+1])+n` -/
def P417854950548075984.Spec : Prop :=
  ∀ n, P417854950548075984.a n = A186291 (n + 1)

end A186291

/-! ## A186291.P13861545932492874084

`A000196(A144065(2*n))+n+1`
-/

namespace A186291.P13861545932492874084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A144065 (2 * n)).toNat + (n + 1 : ℤ)

end

end A186291.P13861545932492874084

namespace A186291

/-- `A000196(A144065(2*n))+n+1` -/
def P13861545932492874084.Spec : Prop :=
  ∀ n, P13861545932492874084.a n = A186291 (n + 1)

end A186291

/-! ## A186291.P18147467109151711240

`A000196(A045943(n)+n)+n+1`
-/

namespace A186291.P18147467109151711240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A045943 n + (n : ℤ)).toNat + (n + 1 : ℤ)

end

end A186291.P18147467109151711240

namespace A186291

/-- `A000196(A045943(n)+n)+n+1` -/
def P18147467109151711240.Spec : Prop :=
  ∀ n, P18147467109151711240.a n = A186291 (n + 1)

end A186291

/-!
# A186293: a(n) = (A007519(n)-1)/2.

The programs for A186293, the canonical program `A186293.P900579189785350023` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186293 has offset 1).

The definition of A186293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186293.P1394412985678294052

`A186294(n+1)-1`
-/

namespace A186293.P1394412985678294052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186294 (n + 1) - 1

end

end A186293.P1394412985678294052

namespace A186293

/-- `A186294(n+1)-1` -/
def P1394412985678294052.Spec : Prop :=
  ∀ n, P1394412985678294052.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P12206311987398501372

`4*A005123(n+1)`
-/

namespace A186293.P12206311987398501372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005123 (n + 1)

end

end A186293.P12206311987398501372

namespace A186293

/-- `4*A005123(n+1)` -/
def P12206311987398501372.Spec : Prop :=
  ∀ n, P12206311987398501372.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P900579189785350023

`(A007519(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186293

/-- `(A007519(n+1)-1)/2` -/
def P900579189785350023.Spec : Prop :=
  ∀ n, P900579189785350023.a n = (A186293 (n + 1) : ℚ)

end A186293

/-! ## A186293.P7405243165166474515

`floor(p?[8*n+1]/2)`
-/

namespace A186293.P7405243165166474515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋

end

end A186293.P7405243165166474515

namespace A186293

/-- `floor(p?[8*n+1]/2)` -/
def P7405243165166474515.Spec : Prop :=
  ∀ n, P7405243165166474515.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P12332698322023883900

`(p?[8*n+1]-1)/2`
-/

namespace A186293.P12332698322023883900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 2

end

end A186293.P12332698322023883900

namespace A186293

/-- `(p?[8*n+1]-1)/2` -/
def P12332698322023883900.Spec : Prop :=
  ∀ n, P12332698322023883900.a n = (A186293 (n + 1) : ℚ)

end A186293

/-! ## A186293.P1236343849686696669

`xor(1, p?[8*n+1])/2`
-/

namespace A186293.P1236343849686696669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A186293.P1236343849686696669

namespace A186293

/-- `xor(1, p?[8*n+1])/2` -/
def P1236343849686696669.Spec : Prop :=
  ∀ n, P1236343849686696669.a n = (A186293 (n + 1) : ℚ)

end A186293

/-! ## A186293.P5016638861013772658

`floor(A007519(n+1)/2)`
-/

namespace A186293.P5016638861013772658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007519 (n + 1) : ℚ) / 2⌋

end

end A186293.P5016638861013772658

namespace A186293

/-- `floor(A007519(n+1)/2)` -/
def P5016638861013772658.Spec : Prop :=
  ∀ n, P5016638861013772658.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P13625136424201433751

`ceil(A186295(n+1)/2)`
-/

namespace A186293.P13625136424201433751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186295 (n + 1) : ℚ) / 2⌉

end

end A186293.P13625136424201433751

namespace A186293

/-- `ceil(A186295(n+1)/2)` -/
def P13625136424201433751.Spec : Prop :=
  ∀ n, P13625136424201433751.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P5299566697232576451

`4*(A153762(n+1)+1)`
-/

namespace A186293.P5299566697232576451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A153762 (n + 1) + 1)

end

end A186293.P5299566697232576451

namespace A186293

/-- `4*(A153762(n+1)+1)` -/
def P5299566697232576451.Spec : Prop :=
  ∀ n, P5299566697232576451.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P3794937699052223082

`A007519(n+1)%A186294(n+1)`
-/

namespace A186293.P3794937699052223082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007519 (n + 1)) (A186294 (n + 1))

end

end A186293.P3794937699052223082

namespace A186293

/-- `A007519(n+1)%A186294(n+1)` -/
def P3794937699052223082.Spec : Prop :=
  ∀ n, P3794937699052223082.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P3382720311832339954

`(A045390(n+2)-1)/2`
-/

namespace A186293.P3382720311832339954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045390 (n + 2) - 1 : ℚ) / 2

end

end A186293.P3382720311832339954

namespace A186293

/-- `(A045390(n+2)-1)/2` -/
def P3382720311832339954.Spec : Prop :=
  ∀ n, P3382720311832339954.a n = (A186293 (n + 1) : ℚ)

end A186293

/-! ## A186293.P7307251182834346954

`filter[A067812(n+1), A121262(#)]`
-/

namespace A186293.P7307251182834346954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A186293.P7307251182834346954

namespace A186293

/-- `filter[A067812(n+1), A121262(#)]` -/
def P7307251182834346954.Spec : Prop :=
  ∀ n, P7307251182834346954.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P13394968291908382081

`A102781(A269704(n+1))`
-/

namespace A186293.P13394968291908382081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (A269704 (n + 1)).toNat

end

end A186293.P13394968291908382081

namespace A186293

/-- `A102781(A269704(n+1))` -/
def P13394968291908382081.Spec : Prop :=
  ∀ n, P13394968291908382081.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P9333134506467594608

`filter[A005097(n+1), A121262(#)]`
-/

namespace A186293.P9333134506467594608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A186293.P9333134506467594608

namespace A186293

/-- `filter[A005097(n+1), A121262(#)]` -/
def P9333134506467594608.Spec : Prop :=
  ∀ n, P9333134506467594608.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P15894024190144047304

`filter[A102781(n+2), A121262(#)]`
-/

namespace A186293.P15894024190144047304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A186293.P15894024190144047304

namespace A186293

/-- `filter[A102781(n+2), A121262(#)]` -/
def P15894024190144047304.Spec : Prop :=
  ∀ n, P15894024190144047304.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P15647942587701154411

`filter[A130290(n+2), A121262(#)]`
-/

namespace A186293.P15647942587701154411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A186293.P15647942587701154411

namespace A186293

/-- `filter[A130290(n+2), A121262(#)]` -/
def P15647942587701154411.Spec : Prop :=
  ∀ n, P15647942587701154411.a n = A186293 (n + 1)

end A186293

/-! ## A186293.P16753758713886733204

`4*eq[1, A001222(8*n+1)]`
-/

namespace A186293.P16753758713886733204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186293.P16753758713886733204

namespace A186293

/-- `4*eq[1, A001222(8*n+1)]` -/
def P16753758713886733204.Spec : Prop :=
  ∀ n, (P16753758713886733204.a n : ℤ) = A186293 (n + 1)

end A186293

/-! ## A186293.P13295480567893903936

`4*eq[2, A000005(8*n+1)]`
-/

namespace A186293.P13295480567893903936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186293.P13295480567893903936

namespace A186293

/-- `4*eq[2, A000005(8*n+1)]` -/
def P13295480567893903936.Spec : Prop :=
  ∀ n, (P13295480567893903936.a n : ℤ) = A186293 (n + 1)

end A186293

/-! ## A186293.P10744347634408307289

`eq[2*n, lcm(8, A000010(2*n+1))]`
-/

namespace A186293.P10744347634408307289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A000010 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186293.P10744347634408307289

namespace A186293

/-- `eq[2*n, lcm(8, A000010(2*n+1))]` -/
def P10744347634408307289.Spec : Prop :=
  ∀ n, (P10744347634408307289.a n : ℤ) = A186293 (n + 1)

end A186293

/-! ## A186293.P14688084058563075907

`eq[2*n, A000010(and(n, n+3)+n+1)]`
-/

namespace A186293.P14688084058563075907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.land n (n + 3) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186293.P14688084058563075907

namespace A186293

/-- `eq[2*n, A000010(and(n, n+3)+n+1)]` -/
def P14688084058563075907.Spec : Prop :=
  ∀ n, (P14688084058563075907.a n : ℤ) = A186293 (n + 1)

end A186293

/-!
# A186294: (A007519(n)+1)/2.

The programs for A186294, the canonical program `A186294.P1128626915274176743` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186294 has offset 1).

The definition of A186294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186294.P1128626915274176743

`(A007519(n+1)+1)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186294

/-- `(A007519(n+1)+1)/2` -/
def P1128626915274176743.Spec : Prop :=
  ∀ n, P1128626915274176743.a n = (A186294 (n + 1) : ℚ)

end A186294

/-! ## A186294.P5232359495136993773

`ceil(p?[8*n+1]/2)`
-/

namespace A186294.P5232359495136993773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉

end

end A186294.P5232359495136993773

namespace A186294

/-- `ceil(p?[8*n+1]/2)` -/
def P5232359495136993773.Spec : Prop :=
  ∀ n, P5232359495136993773.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P17996895738150883219

`round(p?[8*n+1]/2)`
-/

namespace A186294.P17996895738150883219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2)

end

end A186294.P17996895738150883219

namespace A186294

/-- `round(p?[8*n+1]/2)` -/
def P17996895738150883219.Spec : Prop :=
  ∀ n, P17996895738150883219.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P13972644897232099245

`(p?[8*n+1]+1)/2`
-/

namespace A186294.P13972644897232099245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2

end

end A186294.P13972644897232099245

namespace A186294

/-- `(p?[8*n+1]+1)/2` -/
def P13972644897232099245.Spec : Prop :=
  ∀ n, P13972644897232099245.a n = (A186294 (n + 1) : ℚ)

end A186294

/-! ## A186294.P13507106426376523338

`A186293(n+1)+1`
-/

namespace A186294.P13507106426376523338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186293 (n + 1) + 1

end

end A186294.P13507106426376523338

namespace A186294

/-- `A186293(n+1)+1` -/
def P13507106426376523338.Spec : Prop :=
  ∀ n, P13507106426376523338.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P15349833495858828400

`ceil(A007519(n+1)/2)`
-/

namespace A186294.P15349833495858828400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007519 (n + 1) : ℚ) / 2⌉

end

end A186294.P15349833495858828400

namespace A186294

/-- `ceil(A007519(n+1)/2)` -/
def P15349833495858828400.Spec : Prop :=
  ∀ n, P15349833495858828400.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P15973600933310126559

`4*A005123(n+1)+1`
-/

namespace A186294.P15973600933310126559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005123 (n + 1) + 1

end

end A186294.P15973600933310126559

namespace A186294

/-- `4*A005123(n+1)+1` -/
def P15973600933310126559.Spec : Prop :=
  ∀ n, P15973600933310126559.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P17296053043071132697

`(A186295(n+1)+3)/2`
-/

namespace A186294.P17296053043071132697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186295 (n + 1) + 3 : ℚ) / 2

end

end A186294.P17296053043071132697

namespace A186294

/-- `(A186295(n+1)+3)/2` -/
def P17296053043071132697.Spec : Prop :=
  ∀ n, P17296053043071132697.a n = (A186294 (n + 1) : ℚ)

end A186294

/-! ## A186294.P17912281531533251378

`4*A153762(n+1)+5`
-/

namespace A186294.P17912281531533251378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A153762 (n + 1) + 5

end

end A186294.P17912281531533251378

namespace A186294

/-- `4*A153762(n+1)+5` -/
def P17912281531533251378.Spec : Prop :=
  ∀ n, P17912281531533251378.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P11019047856417245642

`(A045390(n+2)+1)/2`
-/

namespace A186294.P11019047856417245642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045390 (n + 2) + 1 : ℚ) / 2

end

end A186294.P11019047856417245642

namespace A186294

/-- `(A045390(n+2)+1)/2` -/
def P11019047856417245642.Spec : Prop :=
  ∀ n, P11019047856417245642.a n = (A186294 (n + 1) : ℚ)

end A186294

/-! ## A186294.P7837845234161567069

`A057024(A269704(n+1))`
-/

namespace A186294.P7837845234161567069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057024 (A269704 (n + 1)).toNat

end

end A186294.P7837845234161567069

namespace A186294

/-- `A057024(A269704(n+1))` -/
def P7837845234161567069.Spec : Prop :=
  ∀ n, P7837845234161567069.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P5382558699016190988

`4*eq[2, A000005(8*n+1)]+1`
-/

namespace A186294.P5382558699016190988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A186294.P5382558699016190988

namespace A186294

/-- `4*eq[2, A000005(8*n+1)]+1` -/
def P5382558699016190988.Spec : Prop :=
  ∀ n, (P5382558699016190988.a n : ℤ) = A186294 (n + 1)

end A186294

/-! ## A186294.P8352649872013291996

`eq[2*n, A000203(and(2*n+1, 2*n+3))]`
-/

namespace A186294.P8352649872013291996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.land (2 * n + 1) (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186294.P8352649872013291996

namespace A186294

/-- `eq[2*n, A000203(and(2*n+1, 2*n+3))]` -/
def P8352649872013291996.Spec : Prop :=
  ∀ n, (P8352649872013291996.a n : ℤ) = A186294 (n + 1)

end A186294

/-! ## A186294.P5302618450072485071

`A000265(A007519(n+1)+1)`
-/

namespace A186294.P5302618450072485071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007519 (n + 1) + 1).toNat

end

end A186294.P5302618450072485071

namespace A186294

/-- `A000265(A007519(n+1)+1)` -/
def P5302618450072485071.Spec : Prop :=
  ∀ n, P5302618450072485071.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P7912145119465125850

`A000203(A045390(n+2))/2`
-/

namespace A186294.P7912145119465125850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A045390 (n + 2)).toNat : ℚ) / 2

end

end A186294.P7912145119465125850

namespace A186294

/-- `A000203(A045390(n+2))/2` -/
def P7912145119465125850.Spec : Prop :=
  ∀ n, P7912145119465125850.a n = (A186294 (n + 1) : ℚ)

end A186294

/-! ## A186294.P7519919966167507303

`A004766(A005123(n+1))`
-/

namespace A186294.P7519919966167507303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A005123 (n + 1)).toNat

end

end A186294.P7519919966167507303

namespace A186294

/-- `A004766(A005123(n+1))` -/
def P7519919966167507303.Spec : Prop :=
  ∀ n, P7519919966167507303.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P11258385475553870968

`A000265(p?[A004768(n)]+1)`
-/

namespace A186294.P11258385475553870968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A186294.P11258385475553870968

namespace A186294

/-- `A000265(p?[A004768(n)]+1)` -/
def P11258385475553870968.Spec : Prop :=
  ∀ n, P11258385475553870968.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P13448751964954301633

`A192544(A153762(n+1))+1`
-/

namespace A186294.P13448751964954301633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (A153762 (n + 1)).toNat + 1

end

end A186294.P13448751964954301633

namespace A186294

/-- `A192544(A153762(n+1))+1` -/
def P13448751964954301633.Spec : Prop :=
  ∀ n, P13448751964954301633.a n = A186294 (n + 1)

end A186294

/-! ## A186294.P767250205396926485

`∩[A006254(n+1), A016813(n)]`
-/

namespace A186294.P767250205396926485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186294.P767250205396926485

namespace A186294

/-- `∩[A006254(n+1), A016813(n)]` -/
def P767250205396926485.Spec : Prop :=
  ∀ n, (P767250205396926485.a n : ℤ) = A186294 (n + 1)

end A186294

/-! ## A186294.P10947775483543817849

`∩[A119681(n+1), A016813(n)]`
-/

namespace A186294.P10947775483543817849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186294.P10947775483543817849

namespace A186294

/-- `∩[A119681(n+1), A016813(n)]` -/
def P10947775483543817849.Spec : Prop :=
  ∀ n, (P10947775483543817849.a n : ℤ) = A186294 (n + 1)

end A186294

/-!
# A186295: A007519(n)-2.

The programs for A186295, the canonical program `A186295.P16210222267034878699` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186295 has offset 1).

The definition of A186295 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007519(n+1)-2` (program `A186295.P16210222267034878699`, by `A186295.P16210222267034878699.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186295.P16210222267034878699

`A007519(n+1)-2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186295

/-- `A007519(n+1)-2` -/
def P16210222267034878699.Spec : Prop :=
  ∀ n, P16210222267034878699.a n = A186295 (n + 1)

theorem P16210222267034878699.correct : P16210222267034878699.Spec := by
  intro n
  simp only [A186295, Nat.add_sub_cancel]

end A186295

/-! ## A186295.P18017764523121066661

`2*A186294(n+1)-3`
-/

namespace A186295.P18017764523121066661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186294 (n + 1) - 3

end

end A186295.P18017764523121066661

namespace A186295

/-- `2*A186294(n+1)-3` -/
def P18017764523121066661.Spec : Prop :=
  ∀ n, P18017764523121066661.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P606596127885340194

`p?[8*n+1]-2`
-/

namespace A186295.P606596127885340194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2

end

end A186295.P606596127885340194

namespace A186295

/-- `p?[8*n+1]-2` -/
def P606596127885340194.Spec : Prop :=
  ∀ n, P606596127885340194.a n = A186295 (n + 1)

theorem P606596127885340194.correct : P606596127885340194.Spec := by
  intro n
  simp only [A186295, Nat.add_sub_cancel, A186295.P606596127885340194.f1, A186295.P606596127885340194.a, A186295.P16210222267034878699.a, A007519, A007519.P11660314281699166777.f1, A007519.P11660314281699166777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186295

/-! ## A186295.P9840267740065314893

`2*A186293(n+1)-1`
-/

namespace A186295.P9840267740065314893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186293 (n + 1) - 1

end

end A186295.P9840267740065314893

namespace A186295

/-- `2*A186293(n+1)-1` -/
def P9840267740065314893.Spec : Prop :=
  ∀ n, P9840267740065314893.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P8289493172817605039

`2*4*A005123(n+1)-1`
-/

namespace A186295.P8289493172817605039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A005123 (n + 1)) - 1

end

end A186295.P8289493172817605039

namespace A186295

/-- `2*4*A005123(n+1)-1` -/
def P8289493172817605039.Spec : Prop :=
  ∀ n, P8289493172817605039.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P16520335108856975763

`A340094(A318351(n))+A007519(n+1)`
-/

namespace A186295.P16520335108856975763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340094 (A318351 n).toNat + A007519 (n + 1)

end

end A186295.P16520335108856975763

namespace A186295

/-- `A340094(A318351(n))+A007519(n+1)` -/
def P16520335108856975763.Spec : Prop :=
  ∀ n, P16520335108856975763.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P14004411165732294818

`A045390(n+2)-2`
-/

namespace A186295.P14004411165732294818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 2) - 2

end

end A186295.P14004411165732294818

namespace A186295

/-- `A045390(n+2)-2` -/
def P14004411165732294818.Spec : Prop :=
  ∀ n, P14004411165732294818.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P6125751358228344419

`A209544(n+2)-2`
-/

namespace A186295.P6125751358228344419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 2) - 2

end

end A186295.P6125751358228344419

namespace A186295

/-- `A209544(n+2)-2` -/
def P6125751358228344419.Spec : Prop :=
  ∀ n, P6125751358228344419.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P15628818309892962219

`∩[A332226(n+1), A339819(n+1)]-2`
-/

namespace A186295.P15628818309892962219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339819 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186295.P15628818309892962219

namespace A186295

/-- `∩[A332226(n+1), A339819(n+1)]-2` -/
def P15628818309892962219.Spec : Prop :=
  ∀ n, P15628818309892962219.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P1178085564168594596

`∩[A332227(n+1), A339819(n+1)]-2`
-/

namespace A186295.P1178085564168594596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339819 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186295.P1178085564168594596

namespace A186295

/-- `∩[A332227(n+1), A339819(n+1)]-2` -/
def P1178085564168594596.Spec : Prop :=
  ∀ n, P1178085564168594596.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P3704630575328980221

`∩[A332227(n+1), A339879(n+1)]-2`
-/

namespace A186295.P3704630575328980221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186295.P3704630575328980221

namespace A186295

/-- `∩[A332227(n+1), A339879(n+1)]-2` -/
def P3704630575328980221.Spec : Prop :=
  ∀ n, P3704630575328980221.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P15098186727310737054

`A040976(A269704(n+1))`
-/

namespace A186295.P15098186727310737054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A269704 (n + 1)).toNat

end

end A186295.P15098186727310737054

namespace A186295

/-- `A040976(A269704(n+1))` -/
def P15098186727310737054.Spec : Prop :=
  ∀ n, P15098186727310737054.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P12503453958246848922

`A133655(A005123(n+1))`
-/

namespace A186295.P12503453958246848922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (A005123 (n + 1)).toNat

end

end A186295.P12503453958246848922

namespace A186295

/-- `A133655(A005123(n+1))` -/
def P12503453958246848922.Spec : Prop :=
  ∀ n, P12503453958246848922.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P4304048377347172285

`A004771(A153762(n+1))`
-/

namespace A186295.P4304048377347172285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A153762 (n + 1)).toNat

end

end A186295.P4304048377347172285

namespace A186295

/-- `A004771(A153762(n+1))` -/
def P4304048377347172285.Spec : Prop :=
  ∀ n, P4304048377347172285.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P6738816408621796984

`∩[A040976(n+1), A004771(n)]`
-/

namespace A186295.P6738816408621796984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186295.P6738816408621796984

namespace A186295

/-- `∩[A040976(n+1), A004771(n)]` -/
def P6738816408621796984.Spec : Prop :=
  ∀ n, (P6738816408621796984.a n : ℤ) = A186295 (n + 1)

end A186295

/-! ## A186295.P16204723644344839836

`record[A006530(A004768(n+1))-2]`
-/

namespace A186295.P16204723644344839836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004768 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186295.P16204723644344839836

namespace A186295

/-- `record[A006530(A004768(n+1))-2]` -/
def P16204723644344839836.Spec : Prop :=
  ∀ n, P16204723644344839836.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P891547243897908985

`A340094(A065091(n+1))+A007519(n+1)`
-/

namespace A186295.P891547243897908985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340094 (A065091 (n + 1)).toNat + A007519 (n + 1)

end

end A186295.P891547243897908985

namespace A186295

/-- `A340094(A065091(n+1))+A007519(n+1)` -/
def P891547243897908985.Spec : Prop :=
  ∀ n, P891547243897908985.a n = A186295 (n + 1)

end A186295

/-! ## A186295.P15402890776486989366

`∩[A004215(n+1), A040976(n+1)]`
-/

namespace A186295.P15402890776486989366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186295.P15402890776486989366

namespace A186295

/-- `∩[A004215(n+1), A040976(n+1)]` -/
def P15402890776486989366.Spec : Prop :=
  ∀ n, (P15402890776486989366.a n : ℤ) = A186295 (n + 1)

end A186295

/-! ## A186295.P7616342697377544100

`lt[or(6, n), A000010(n+2)]`
-/

namespace A186295.P7616342697377544100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186295.P7616342697377544100

namespace A186295

/-- `lt[or(6, n), A000010(n+2)]` -/
def P7616342697377544100.Spec : Prop :=
  ∀ n, (P7616342697377544100.a n : ℤ) = A186295 (n + 1)

end A186295

/-! ## A186295.P8994485645835806698

`lt[or(6, n), A006530(n+2)]`
-/

namespace A186295.P8994485645835806698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186295.P8994485645835806698

namespace A186295

/-- `lt[or(6, n), A006530(n+2)]` -/
def P8994485645835806698.Spec : Prop :=
  ∀ n, (P8994485645835806698.a n : ℤ) = A186295 (n + 1)

end A186295

/-!
# A186296: ( A007520(n)+1 )/2.

The programs for A186296, the canonical program `A186296.P12004062648873151931` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186296 has offset 1).

The definition of A186296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186296.P16090254179020382561

`A186297(n+1)+1`
-/

namespace A186296.P16090254179020382561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186297 (n + 1) + 1

end

end A186296.P16090254179020382561

namespace A186296

/-- `A186297(n+1)+1` -/
def P16090254179020382561.Spec : Prop :=
  ∀ n, P16090254179020382561.a n = A186296 (n + 1)

end A186296

/-! ## A186296.P12004062648873151931

`(A007520(n+1)+1)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186296

/-- `(A007520(n+1)+1)/2` -/
def P12004062648873151931.Spec : Prop :=
  ∀ n, P12004062648873151931.a n = (A186296 (n + 1) : ℚ)

end A186296

/-! ## A186296.P313711439249827291

`ceil(p?[8*n+3]/2)`
-/

namespace A186296.P313711439249827291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉

end

end A186296.P313711439249827291

namespace A186296

/-- `ceil(p?[8*n+3]/2)` -/
def P313711439249827291.Spec : Prop :=
  ∀ n, P313711439249827291.a n = A186296 (n + 1)

end A186296

/-! ## A186296.P9942866603630467948

`round(p?[8*n+3]/2)`
-/

namespace A186296.P9942866603630467948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2)

end

end A186296.P9942866603630467948

namespace A186296

/-- `round(p?[8*n+3]/2)` -/
def P9942866603630467948.Spec : Prop :=
  ∀ n, P9942866603630467948.a n = A186296 (n + 1)

end A186296

/-! ## A186296.P9267467216894241532

`(p?[8*n+3]+1)/2`
-/

namespace A186296.P9267467216894241532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2

end

end A186296.P9267467216894241532

namespace A186296

/-- `(p?[8*n+3]+1)/2` -/
def P9267467216894241532.Spec : Prop :=
  ∀ n, P9267467216894241532.a n = (A186296 (n + 1) : ℚ)

end A186296

/-! ## A186296.P10142336868665032858

`∑{d}[p?[or(3, 8*n)], #/2]`
-/

namespace A186296.P10142336868665032858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (8 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2

end

end A186296.P10142336868665032858

namespace A186296

/-- `∑{d}[p?[or(3, 8*n)], #/2]` -/
def P10142336868665032858.Spec : Prop :=
  ∀ n, P10142336868665032858.a n = (A186296 (n + 1) : ℚ)

end A186296

/-! ## A186296.P1276684802427558661

`ceil(A007520(n+1)/2)`
-/

namespace A186296.P1276684802427558661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007520 (n + 1) : ℚ) / 2⌉

end

end A186296.P1276684802427558661

namespace A186296

/-- `ceil(A007520(n+1)/2)` -/
def P1276684802427558661.Spec : Prop :=
  ∀ n, P1276684802427558661.a n = A186296 (n + 1)

end A186296

/-! ## A186296.P2629178620995178775

`4*A005124(n+1)+2`
-/

namespace A186296.P2629178620995178775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005124 (n + 1) + 2

end

end A186296.P2629178620995178775

namespace A186296

/-- `4*A005124(n+1)+2` -/
def P2629178620995178775.Spec : Prop :=
  ∀ n, P2629178620995178775.a n = A186296 (n + 1)

end A186296

/-! ## A186296.P15434980343230899823

`(A186298(n+1)+3)/2`
-/

namespace A186296.P15434980343230899823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186298 (n + 1) + 3 : ℚ) / 2

end

end A186296.P15434980343230899823

namespace A186296

/-- `(A186298(n+1)+3)/2` -/
def P15434980343230899823.Spec : Prop :=
  ∀ n, P15434980343230899823.a n = (A186296 (n + 1) : ℚ)

end A186296

/-! ## A186296.P14857833916279253223

`(A045339(n+2)+1)/2`
-/

namespace A186296.P14857833916279253223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045339 (n + 2) + 1 : ℚ) / 2

end

end A186296.P14857833916279253223

namespace A186296

/-- `(A045339(n+2)+1)/2` -/
def P14857833916279253223.Spec : Prop :=
  ∀ n, P14857833916279253223.a n = (A186296 (n + 1) : ℚ)

end A186296

/-! ## A186296.P15541538772907259797

`record[lcm(2, round(p?[4*n-1]/4))]`
-/

namespace A186296.P15541538772907259797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) / 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186296.P15541538772907259797

namespace A186296

/-- `record[lcm(2, round(p?[4*n-1]/4))]` -/
def P15541538772907259797.Spec : Prop :=
  ∀ n, (P15541538772907259797.a n : ℤ) = A186296 (n + 1)

end A186296

/-! ## A186296.P7878564975681283534

`∩[A104635(n+1), A224486(n+1)]+1`
-/

namespace A186296.P7878564975681283534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A186296.P7878564975681283534

namespace A186296

/-- `∩[A104635(n+1), A224486(n+1)]+1` -/
def P7878564975681283534.Spec : Prop :=
  ∀ n, (P7878564975681283534.a n : ℤ) = A186296 (n + 1)

end A186296

/-! ## A186296.P7143490172232731791

`A016825(A005124(n+1))`
-/

namespace A186296.P7143490172232731791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A005124 (n + 1)).toNat

end

end A186296.P7143490172232731791

namespace A186296

/-- `A016825(A005124(n+1))` -/
def P7143490172232731791.Spec : Prop :=
  ∀ n, P7143490172232731791.a n = A186296 (n + 1)

end A186296

/-! ## A186296.P5370635585211856333

`∩[A006254(n+1), A016825(n)]`
-/

namespace A186296.P5370635585211856333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186296.P5370635585211856333

namespace A186296

/-- `∩[A006254(n+1), A016825(n)]` -/
def P5370635585211856333.Spec : Prop :=
  ∀ n, (P5370635585211856333.a n : ℤ) = A186296 (n + 1)

end A186296

/-! ## A186296.P7403245984935819373

`∩[A111333(n+1), A016825(n)]`
-/

namespace A186296.P7403245984935819373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186296.P7403245984935819373

namespace A186296

/-- `∩[A111333(n+1), A016825(n)]` -/
def P7403245984935819373.Spec : Prop :=
  ∀ n, (P7403245984935819373.a n : ℤ) = A186296 (n + 1)

end A186296

/-! ## A186296.P9238104718337139598

`eq[2*n, A000203(xor(7, 2*n))]`
-/

namespace A186296.P9238104718337139598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.xor 7 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186296.P9238104718337139598

namespace A186296

/-- `eq[2*n, A000203(xor(7, 2*n))]` -/
def P9238104718337139598.Spec : Prop :=
  ∀ n, (P9238104718337139598.a n : ℤ) = A186296 (n + 1)

end A186296

/-! ## A186296.P18345294728913184320

`ceil(record[A020639(8*n+3)]/2)`
-/

namespace A186296.P18345294728913184320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A186296.P18345294728913184320

namespace A186296

/-- `ceil(record[A020639(8*n+3)]/2)` -/
def P18345294728913184320.Spec : Prop :=
  ∀ n, P18345294728913184320.a n = A186296 (n + 1)

end A186296

/-! ## A186296.P14236650146038916745

`4*eq[2, A000005(8*n+3)]+2`
-/

namespace A186296.P14236650146038916745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A186296.P14236650146038916745

namespace A186296

/-- `4*eq[2, A000005(8*n+3)]+2` -/
def P14236650146038916745.Spec : Prop :=
  ∀ n, (P14236650146038916745.a n : ℤ) = A186296 (n + 1)

end A186296

/-! ## A186296.P4595752215123335755

`A000203(A045339(n+2))/2`
-/

namespace A186296.P4595752215123335755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A045339 (n + 2)).toNat : ℚ) / 2

end

end A186296.P4595752215123335755

namespace A186296

/-- `A000203(A045339(n+2))/2` -/
def P4595752215123335755.Spec : Prop :=
  ∀ n, P4595752215123335755.a n = (A186296 (n + 1) : ℚ)

end A186296

/-! ## A186296.P15329135976480206593

`∩[A006254(n+1), A130824(n)]`
-/

namespace A186296.P15329135976480206593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186296.P15329135976480206593

namespace A186296

/-- `∩[A006254(n+1), A130824(n)]` -/
def P15329135976480206593.Spec : Prop :=
  ∀ n, (P15329135976480206593.a n : ℤ) = A186296 (n + 1)

end A186296

/-!
# A186297: a(n) = (A007520(n)-1)/2.

The programs for A186297, the canonical program `A186297.P2143825234397933090` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186297 has offset 1).

The definition of A186297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186297.P2143825234397933090

`A186296(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A186297

/-- `A186296(n+1)-1` -/
def P2143825234397933090.Spec : Prop :=
  ∀ n, P2143825234397933090.a n = A186297 (n + 1)

theorem P2143825234397933090.correct : P2143825234397933090.Spec := by
  intro n
  simp only [A186297, Nat.add_sub_cancel]

end A186297

/-! ## A186297.P12317448636971892521

`(A007520(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186297.P12317448636971892521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007520 (n + 1) - 1 : ℚ) / 2

end

end A186297.P12317448636971892521

namespace A186297

/-- `(A007520(n+1)-1)/2` -/
def P12317448636971892521.Spec : Prop :=
  ∀ n, P12317448636971892521.a n = (A186297 (n + 1) : ℚ)

end A186297

/-! ## A186297.P5130777771327322971

`floor(p?[8*n+3]/2)`
-/

namespace A186297.P5130777771327322971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋

end

end A186297.P5130777771327322971

namespace A186297

/-- `floor(p?[8*n+3]/2)` -/
def P5130777771327322971.Spec : Prop :=
  ∀ n, P5130777771327322971.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P4936685739957481961

`(p?[8*n+3]-1)/2`
-/

namespace A186297.P4936685739957481961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 2

end

end A186297.P4936685739957481961

namespace A186297

/-- `(p?[8*n+3]-1)/2` -/
def P4936685739957481961.Spec : Prop :=
  ∀ n, P4936685739957481961.a n = (A186297 (n + 1) : ℚ)

end A186297

/-! ## A186297.P12580553503874244113

`xor(3, ceil(p?[8*n+3]/2))`
-/

namespace A186297.P12580553503874244113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉

end

end A186297.P12580553503874244113

namespace A186297

/-- `xor(3, ceil(p?[8*n+3]/2))` -/
def P12580553503874244113.Spec : Prop :=
  ∀ n, P12580553503874244113.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P16844031664746285582

`xor(1, p?[a(n-1)+8])/2` with `a(0)=3`
-/

namespace A186297.P16844031664746285582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A186297.P16844031664746285582

namespace A186297

/-- `xor(1, p?[a(n-1)+8])/2` -/
def P16844031664746285582.Spec : Prop :=
  ∀ n, P16844031664746285582.a n = (A186297 (n + 1) : ℚ)

end A186297

/-! ## A186297.P9329812284988059876

`floor(A007520(n+1)/2)`
-/

namespace A186297.P9329812284988059876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007520 (n + 1) : ℚ) / 2⌋

end

end A186297.P9329812284988059876

namespace A186297

/-- `floor(A007520(n+1)/2)` -/
def P9329812284988059876.Spec : Prop :=
  ∀ n, P9329812284988059876.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P15113618026190906874

`ceil(A186298(n+1)/2)`
-/

namespace A186297.P15113618026190906874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186298 (n + 1) : ℚ) / 2⌉

end

end A186297.P15113618026190906874

namespace A186297

/-- `ceil(A186298(n+1)/2)` -/
def P15113618026190906874.Spec : Prop :=
  ∀ n, P15113618026190906874.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P18367334784707949578

`4*A005124(n+1)+1`
-/

namespace A186297.P18367334784707949578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005124 (n + 1) + 1

end

end A186297.P18367334784707949578

namespace A186297

/-- `4*A005124(n+1)+1` -/
def P18367334784707949578.Spec : Prop :=
  ∀ n, P18367334784707949578.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P427952052134275763

`A007520(n+1)%A186296(n+1)`
-/

namespace A186297.P427952052134275763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007520 (n + 1)) (A186296 (n + 1))

end

end A186297.P427952052134275763

namespace A186297

/-- `A007520(n+1)%A186296(n+1)` -/
def P427952052134275763.Spec : Prop :=
  ∀ n, P427952052134275763.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P923701286011994667

`(A045339(n+2)-1)/2`
-/

namespace A186297.P923701286011994667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045339 (n + 2) - 1 : ℚ) / 2

end

end A186297.P923701286011994667

namespace A186297

/-- `(A045339(n+2)-1)/2` -/
def P923701286011994667.Spec : Prop :=
  ∀ n, P923701286011994667.a n = (A186297 (n + 1) : ℚ)

end A186297

/-! ## A186297.P9965289107638239658

`∩[A104635(n+1), A224486(n+1)]`
-/

namespace A186297.P9965289107638239658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186297.P9965289107638239658

namespace A186297

/-- `∩[A104635(n+1), A224486(n+1)]` -/
def P9965289107638239658.Spec : Prop :=
  ∀ n, (P9965289107638239658.a n : ℤ) = A186297 (n + 1)

end A186297

/-! ## A186297.P13943598766852397531

`filter[A224486(n+1), A373157(#)]`
-/

namespace A186297.P13943598766852397531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A186297.P13943598766852397531

namespace A186297

/-- `filter[A224486(n+1), A373157(#)]` -/
def P13943598766852397531.Spec : Prop :=
  ∀ n, P13943598766852397531.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P14241815724571440157

`filter[A224486(n+1), A379952(#)]`
-/

namespace A186297.P14241815724571440157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A186297.P14241815724571440157

namespace A186297

/-- `filter[A224486(n+1), A379952(#)]` -/
def P14241815724571440157.Spec : Prop :=
  ∀ n, P14241815724571440157.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P14618212200431953765

`A016825(A005124(n+1))-1`
-/

namespace A186297.P14618212200431953765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A005124 (n + 1)).toNat - 1

end

end A186297.P14618212200431953765

namespace A186297

/-- `A016825(A005124(n+1))-1` -/
def P14618212200431953765.Spec : Prop :=
  ∀ n, P14618212200431953765.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P7727058638119326695

`filter[A224486(n+1), A035263(#)]`
-/

namespace A186297.P7727058638119326695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A186297.P7727058638119326695

namespace A186297

/-- `filter[A224486(n+1), A035263(#)]` -/
def P7727058638119326695.Spec : Prop :=
  ∀ n, P7727058638119326695.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P14606439910315260882

`filter[A224486(n+1), A152822(#)]`
-/

namespace A186297.P14606439910315260882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A186297.P14606439910315260882

namespace A186297

/-- `filter[A224486(n+1), A152822(#)]` -/
def P14606439910315260882.Spec : Prop :=
  ∀ n, P14606439910315260882.a n = A186297 (n + 1)

end A186297

/-! ## A186297.P11373840841601738801

`eq[3, A320109(2*n+1)]`
-/

namespace A186297.P11373840841601738801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320109 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186297.P11373840841601738801

namespace A186297

/-- `eq[3, A320109(2*n+1)]` -/
def P11373840841601738801.Spec : Prop :=
  ∀ n, (P11373840841601738801.a n : ℤ) = A186297 (n + 1)

end A186297

/-! ## A186297.P15534454883567761719

`4*eq[2, A000005(8*n+3)]+1`
-/

namespace A186297.P15534454883567761719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A186297.P15534454883567761719

namespace A186297

/-- `4*eq[2, A000005(8*n+3)]+1` -/
def P15534454883567761719.Spec : Prop :=
  ∀ n, (P15534454883567761719.a n : ℤ) = A186297 (n + 1)

end A186297

/-! ## A186297.P4996213453499223292

`eq[lcm(4, n+1), A000203(2*n+1)]`
-/

namespace A186297.P4996213453499223292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186297.P4996213453499223292

namespace A186297

/-- `eq[lcm(4, n+1), A000203(2*n+1)]` -/
def P4996213453499223292.Spec : Prop :=
  ∀ n, (P4996213453499223292.a n : ℤ) = A186297 (n + 1)

end A186297

/-!
# A186298: A007520(n)-2.

The programs for A186298, the canonical program `A186298.P971007839183561830` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186298 has offset 1).

The definition of A186298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007520(n+1)-2` (program `A186298.P971007839183561830`, by `A186298.P971007839183561830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186298.P971007839183561830

`A007520(n+1)-2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186298

/-- `A007520(n+1)-2` -/
def P971007839183561830.Spec : Prop :=
  ∀ n, P971007839183561830.a n = A186298 (n + 1)

theorem P971007839183561830.correct : P971007839183561830.Spec := by
  intro n
  simp only [A186298, Nat.add_sub_cancel]

end A186298

/-! ## A186298.P8825432166493056461

`p?[8*n+3]-2`
-/

namespace A186298.P8825432166493056461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2

end

end A186298.P8825432166493056461

namespace A186298

/-- `p?[8*n+3]-2` -/
def P8825432166493056461.Spec : Prop :=
  ∀ n, P8825432166493056461.a n = A186298 (n + 1)

theorem P8825432166493056461.correct : P8825432166493056461.Spec := by
  intro n
  simp only [A186298, Nat.add_sub_cancel, A186298.P8825432166493056461.f1, A186298.P8825432166493056461.a, A186298.P971007839183561830.a, A007520, A007520.P9970468352635506010.f1, A007520.P9970468352635506010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186298

/-! ## A186298.P17356067805094043920

`xor(2, p?[8*n+3])`
-/

namespace A186298.P17356067805094043920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A186298.P17356067805094043920

namespace A186298

/-- `xor(2, p?[8*n+3])` -/
def P17356067805094043920.Spec : Prop :=
  ∀ n, (P17356067805094043920.a n : ℤ) = A186298 (n + 1)

end A186298

/-! ## A186298.P580836743891044524

`or(1, p?[a(n-1)+8])-2` with `a(0)=3`
-/

namespace A186298.P580836743891044524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - 2

end

end A186298.P580836743891044524

namespace A186298

/-- `or(1, p?[a(n-1)+8])-2` -/
def P580836743891044524.Spec : Prop :=
  ∀ n, P580836743891044524.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P5057582057392450841

`xor(1, p?[a(n-1)+8])-1` with `a(0)=3`
-/

namespace A186298.P5057582057392450841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - 1

end

end A186298.P5057582057392450841

namespace A186298

/-- `xor(1, p?[a(n-1)+8])-1` -/
def P5057582057392450841.Spec : Prop :=
  ∀ n, P5057582057392450841.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P3697138945155508239

`2*A186297(n+1)-1`
-/

namespace A186298.P3697138945155508239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186297 (n + 1) - 1

end

end A186298.P3697138945155508239

namespace A186298

/-- `2*A186297(n+1)-1` -/
def P3697138945155508239.Spec : Prop :=
  ∀ n, P3697138945155508239.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P4035486558011019749

`2*A186296(n+1)-3`
-/

namespace A186298.P4035486558011019749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186296 (n + 1) - 3

end

end A186298.P4035486558011019749

namespace A186298

/-- `2*A186296(n+1)-3` -/
def P4035486558011019749.Spec : Prop :=
  ∀ n, P4035486558011019749.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P13778119802996128800

`2*(4*A005124(n+1)+1)-1`
-/

namespace A186298.P13778119802996128800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A005124 (n + 1) + 1) - 1

end

end A186298.P13778119802996128800

namespace A186298

/-- `2*(4*A005124(n+1)+1)-1` -/
def P13778119802996128800.Spec : Prop :=
  ∀ n, P13778119802996128800.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P5298634120886686950

`A045339(n+2)-2`
-/

namespace A186298.P5298634120886686950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 2) - 2

end

end A186298.P5298634120886686950

namespace A186298

/-- `A045339(n+2)-2` -/
def P5298634120886686950.Spec : Prop :=
  ∀ n, P5298634120886686950.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P15618940481625461892

`∩[A192717(n+1), A339879(n+1)]-2`
-/

namespace A186298.P15618940481625461892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186298.P15618940481625461892

namespace A186298

/-- `∩[A192717(n+1), A339879(n+1)]-2` -/
def P15618940481625461892.Spec : Prop :=
  ∀ n, P15618940481625461892.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P5000904257696519939

`∩[A332446(n+1), A339907(n+1)]-2`
-/

namespace A186298.P5000904257696519939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339907 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186298.P5000904257696519939

namespace A186298

/-- `∩[A332446(n+1), A339907(n+1)]-2` -/
def P5000904257696519939.Spec : Prop :=
  ∀ n, P5000904257696519939.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P13407202426191307383

`record[A006530(8*n+3)]-2`
-/

namespace A186298.P13407202426191307383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A186298.P13407202426191307383

namespace A186298

/-- `record[A006530(8*n+3)]-2` -/
def P13407202426191307383.Spec : Prop :=
  ∀ n, P13407202426191307383.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P580852067022308815

`record[A020639(8*n+3)]-2`
-/

namespace A186298.P580852067022308815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A186298.P580852067022308815

namespace A186298

/-- `record[A020639(8*n+3)]-2` -/
def P580852067022308815.Spec : Prop :=
  ∀ n, P580852067022308815.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P15679142728651469821

`∩[A192717(n+1), A222030(n)]-2`
-/

namespace A186298.P15679142728651469821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186298.P15679142728651469821

namespace A186298

/-- `∩[A192717(n+1), A222030(n)]-2` -/
def P15679142728651469821.Spec : Prop :=
  ∀ n, P15679142728651469821.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P11100208776390327487

`∩[A003629(n+1), A120127(n+1)]-2`
-/

namespace A186298.P11100208776390327487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186298.P11100208776390327487

namespace A186298

/-- `∩[A003629(n+1), A120127(n+1)]-2` -/
def P11100208776390327487.Spec : Prop :=
  ∀ n, P11100208776390327487.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P12466294847845022879

`∩[A014662(n+1), A120127(n+1)]-2`
-/

namespace A186298.P12466294847845022879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186298.P12466294847845022879

namespace A186298

/-- `∩[A014662(n+1), A120127(n+1)]-2` -/
def P12466294847845022879.Spec : Prop :=
  ∀ n, P12466294847845022879.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P1502457787792621632

`∩[A033203(n+2), A120127(n+2)]-2`
-/

namespace A186298.P1502457787792621632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186298.P1502457787792621632

namespace A186298

/-- `∩[A033203(n+2), A120127(n+2)]-2` -/
def P1502457787792621632.Spec : Prop :=
  ∀ n, P1502457787792621632.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P10664742034685206124

`∩[A042998(n+2), A120127(n+2)]-2`
-/

namespace A186298.P10664742034685206124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186298.P10664742034685206124

namespace A186298

/-- `∩[A042998(n+2), A120127(n+2)]-2` -/
def P10664742034685206124.Spec : Prop :=
  ∀ n, P10664742034685206124.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P10976024157939496352

`∩[A042999(n+2), A120127(n+2)]-2`
-/

namespace A186298.P10976024157939496352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186298.P10976024157939496352

namespace A186298

/-- `∩[A042999(n+2), A120127(n+2)]-2` -/
def P10976024157939496352.Spec : Prop :=
  ∀ n, P10976024157939496352.a n = A186298 (n + 1)

end A186298

/-! ## A186298.P15845567561049782747

`∩[A091317(n+2), A120127(n+2)]-2`
-/

namespace A186298.P15845567561049782747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091317 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186298.P15845567561049782747

namespace A186298

/-- `∩[A091317(n+2), A120127(n+2)]-2` -/
def P15845567561049782747.Spec : Prop :=
  ∀ n, P15845567561049782747.a n = A186298 (n + 1)

end A186298

/-!
# A186299: (A007521(n)-1)/2.

The programs for A186299, the canonical program `A186299.P12069743824327385336` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186299 has offset 1).

The definition of A186299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186299.P16657988667989920435

`A186300(n+1)-1`
-/

namespace A186299.P16657988667989920435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186300 (n + 1) - 1

end

end A186299.P16657988667989920435

namespace A186299

/-- `A186300(n+1)-1` -/
def P16657988667989920435.Spec : Prop :=
  ∀ n, P16657988667989920435.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P12069743824327385336

`(A007521(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A186299

/-- `(A007521(n+1)-1)/2` -/
def P12069743824327385336.Spec : Prop :=
  ∀ n, P12069743824327385336.a n = (A186299 (n + 1) : ℚ)

end A186299

/-! ## A186299.P5617789613916506216

`floor(p?[8*n-3]/2)`
-/

namespace A186299.P5617789613916506216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A186299.P5617789613916506216

namespace A186299

/-- `floor(p?[8*n-3]/2)` -/
def P5617789613916506216.Spec : Prop :=
  ∀ n, P5617789613916506216.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P14566810259686710377

`(p?[8*n-3]-1)/2`
-/

namespace A186299.P14566810259686710377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A186299.P14566810259686710377

namespace A186299

/-- `(p?[8*n-3]-1)/2` -/
def P14566810259686710377.Spec : Prop :=
  ∀ n, P14566810259686710377.a n = (A186299 (n + 1) : ℚ)

end A186299

/-! ## A186299.P17144625842478892186

`2*A230076(n+1)`
-/

namespace A186299.P17144625842478892186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230076 (n + 1)

end

end A186299.P17144625842478892186

namespace A186299

/-- `2*A230076(n+1)` -/
def P17144625842478892186.Spec : Prop :=
  ∀ n, P17144625842478892186.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P12775857948682898254

`floor(A007521(n+1)/2)`
-/

namespace A186299.P12775857948682898254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007521 (n + 1) : ℚ) / 2⌋

end

end A186299.P12775857948682898254

namespace A186299

/-- `floor(A007521(n+1)/2)` -/
def P12775857948682898254.Spec : Prop :=
  ∀ n, P12775857948682898254.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P3596431535904857058

`round(A186301(n+1)/2)`
-/

namespace A186299.P3596431535904857058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A186301 (n + 1) : ℚ) / 2)

end

end A186299.P3596431535904857058

namespace A186299

/-- `round(A186301(n+1)/2)` -/
def P3596431535904857058.Spec : Prop :=
  ∀ n, P3596431535904857058.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P13970200305572610693

`4*A105133(n+1)+2`
-/

namespace A186299.P13970200305572610693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105133 (n + 1) + 2

end

end A186299.P13970200305572610693

namespace A186299

/-- `4*A105133(n+1)+2` -/
def P13970200305572610693.Spec : Prop :=
  ∀ n, P13970200305572610693.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P10450922751167577882

`4*A005125(n+1)-2`
-/

namespace A186299.P10450922751167577882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005125 (n + 1) - 2

end

end A186299.P10450922751167577882

namespace A186299

/-- `4*A005125(n+1)-2` -/
def P10450922751167577882.Spec : Prop :=
  ∀ n, P10450922751167577882.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P16692216028340366084

`A007521(n+1)%A186300(n+1)`
-/

namespace A186299.P16692216028340366084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007521 (n + 1)) (A186300 (n + 1))

end

end A186299.P16692216028340366084

namespace A186299

/-- `A007521(n+1)%A186300(n+1)` -/
def P16692216028340366084.Spec : Prop :=
  ∀ n, P16692216028340366084.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P7715004016324308576

`floor(A045366(n+2)/2)`
-/

namespace A186299.P7715004016324308576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045366 (n + 2) : ℚ) / 2⌋

end

end A186299.P7715004016324308576

namespace A186299

/-- `floor(A045366(n+2)/2)` -/
def P7715004016324308576.Spec : Prop :=
  ∀ n, P7715004016324308576.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P9221919560395806261

`xor(A001222(A045323(n+1)), A186300(n+1))`
-/

namespace A186299.P9221919560395806261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A045323 (n + 1)).toNat) (A186300 (n + 1))

end

end A186299.P9221919560395806261

namespace A186299

/-- `xor(A001222(A045323(n+1)), A186300(n+1))` -/
def P9221919560395806261.Spec : Prop :=
  ∀ n, P9221919560395806261.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P6527530869387911733

`(A339900(A016825(n))-1)/2`
-/

namespace A186299.P6527530869387911733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339900 (A016825 n).toNat - 1 : ℚ) / 2

end

end A186299.P6527530869387911733

namespace A186299

/-- `(A339900(A016825(n))-1)/2` -/
def P6527530869387911733.Spec : Prop :=
  ∀ n, P6527530869387911733.a n = (A186299 (n + 1) : ℚ)

end A186299

/-! ## A186299.P17096639720222235625

`xor(A001222(A003629(n+1)), A186300(n+1))`
-/

namespace A186299.P17096639720222235625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A003629 (n + 1)).toNat) (A186300 (n + 1))

end

end A186299.P17096639720222235625

namespace A186299

/-- `xor(A001222(A003629(n+1)), A186300(n+1))` -/
def P17096639720222235625.Spec : Prop :=
  ∀ n, P17096639720222235625.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P8331912156719973282

`A016825(A105133(n+1))`
-/

namespace A186299.P8331912156719973282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A105133 (n + 1)).toNat

end

end A186299.P8331912156719973282

namespace A186299

/-- `A016825(A105133(n+1))` -/
def P8331912156719973282.Spec : Prop :=
  ∀ n, P8331912156719973282.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P10086658323012025965

`∩[A119681(n+1), A092899(n)]-1`
-/

namespace A186299.P10086658323012025965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A186299.P10086658323012025965

namespace A186299

/-- `∩[A119681(n+1), A092899(n)]-1` -/
def P10086658323012025965.Spec : Prop :=
  ∀ n, P10086658323012025965.a n = A186299 (n + 1)

end A186299

/-! ## A186299.P13213853797608903786

`2*∩[A005098(n+1), A047241(n+1)]`
-/

namespace A186299.P13213853797608903786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186299.P13213853797608903786

namespace A186299

/-- `2*∩[A005098(n+1), A047241(n+1)]` -/
def P13213853797608903786.Spec : Prop :=
  ∀ n, (P13213853797608903786.a n : ℤ) = A186299 (n + 1)

end A186299

/-! ## A186299.P13171438412110987876

`∩[A005097(n+1), A016825(n)]`
-/

namespace A186299.P13171438412110987876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186299.P13171438412110987876

namespace A186299

/-- `∩[A005097(n+1), A016825(n)]` -/
def P13171438412110987876.Spec : Prop :=
  ∀ n, (P13171438412110987876.a n : ℤ) = A186299 (n + 1)

end A186299

/-! ## A186299.P3973208296244139937

`∩[A016825(n), A102781(n+1)]`
-/

namespace A186299.P3973208296244139937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186299.P3973208296244139937

namespace A186299

/-- `∩[A016825(n), A102781(n+1)]` -/
def P3973208296244139937.Spec : Prop :=
  ∀ n, (P3973208296244139937.a n : ℤ) = A186299 (n + 1)

end A186299

/-! ## A186299.P17612075844551498431

`∩[A006254(n+1), A092899(n)]-1`
-/

namespace A186299.P17612075844551498431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A186299.P17612075844551498431

namespace A186299

/-- `∩[A006254(n+1), A092899(n)]-1` -/
def P17612075844551498431.Spec : Prop :=
  ∀ n, P17612075844551498431.a n = A186299 (n + 1)

end A186299

