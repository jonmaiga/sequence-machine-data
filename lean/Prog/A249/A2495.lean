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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A249500: Number of length 3+5 0..n arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249500, there is no canonical definition to state claims against.
-/

/-! ## A249500.P15533149827713213694

`A249497(∑[n+2]+4)`
-/

namespace A249500.P15533149827713213694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249500.P15533149827713213694

/-! ## A249500.P13220543024794812813

`record[A249497(A016028(n+1))]`
-/

namespace A249500.P13220543024794812813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249500.P13220543024794812813

/-! ## A249500.P4224627303893868436

`and(-1, A249497(A167614(n+1)))`
-/

namespace A249500.P4224627303893868436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A249497 (A167614 (n + 1)).toNat)

end

end A249500.P4224627303893868436

/-! ## A249500.P18274964928415238653

`record[A249497(A249725(n+1)+2)]`
-/

namespace A249500.P18274964928415238653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A249725 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249500.P18274964928415238653

/-! ## A249500.P7580042657045944121

`or(char[1], A249497(A016028(n+5)))`
-/

namespace A249500.P7580042657045944121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A249497 (A016028 (n + 5)).toNat)

end

end A249500.P7580042657045944121

/-!
# A249501: Number of length 4+5 0..n arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249501, there is no canonical definition to state claims against.
-/

/-! ## A249501.P11254829059357611531

`A249497(∑[n+3]+7)`
-/

namespace A249501.P11254829059357611531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249501.P11254829059357611531

/-! ## A249501.P7512923656382891148

`record[A249497(A077169(n)-n)]`
-/

namespace A249501.P7512923656382891148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A077169 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249501.P7512923656382891148

/-! ## A249501.P8157128156107653294

`or(n%2, A249497(A167614(n+2)+1))`
-/

namespace A249501.P8157128156107653294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A249497 (A167614 (n + 2) + 1).toNat)

end

end A249501.P8157128156107653294

/-! ## A249501.P15743993674724545203

`A000041(floor(n/30))*A249497(A167614(n+2)+1)`
-/

namespace A249501.P15743993674724545203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 30⌋.toNat * A249497 (A167614 (n + 2) + 1).toNat

end

end A249501.P15743993674724545203

/-! ## A249501.P12139267502775176675

`A249497(A167614(n+2)+1)+A008683(4*(n+1))`
-/

namespace A249501.P12139267502775176675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A167614 (n + 2) + 1).toNat + A008683 (4 * (n + 1))

end

end A249501.P12139267502775176675

/-!
# A249502: Number of length 5+5 0..n arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249502, there is no canonical definition to state claims against.
-/

/-! ## A249502.P643820448688824094

`record[A249497(A077169(n))]`
-/

namespace A249502.P643820448688824094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249502.P643820448688824094

/-! ## A249502.P17749756369532651808

`A249497(A155212(n)+13)`
-/

namespace A249502.P17749756369532651808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A155212 n + 13).toNat

end

end A249502.P17749756369532651808

/-! ## A249502.P12941709847582917589

`A249497(A056000(n)+15)`
-/

namespace A249502.P12941709847582917589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A056000 n + 15).toNat

end

end A249502.P12941709847582917589

/-! ## A249502.P2030648305147022192

`A249497(A167487(n+3)-2)`
-/

namespace A249502.P2030648305147022192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A167487 (n + 3) - 2).toNat

end

end A249502.P2030648305147022192

/-! ## A249502.P14371647296879764693

`A249497(A000124(n+4)+4)`
-/

namespace A249502.P14371647296879764693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A000124 (n + 4) + 4).toNat

end

end A249502.P14371647296879764693

/-!
# A249503: Number of length 6+5 0..n arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249503, there is no canonical definition to state claims against.
-/

/-! ## A249503.P6130098193366086773

`A249497(A056115(n)+21)`
-/

namespace A249503.P6130098193366086773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A056115 n + 21).toNat

end

end A249503.P6130098193366086773

/-! ## A249503.P6874921957353256848

`A249497(A167499(n+4)+1)`
-/

namespace A249503.P6874921957353256848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A167499 (n + 4) + 1).toNat

end

end A249503.P6874921957353256848

/-! ## A249503.P17428649990646357895

`A249497(A167614(n+4)+3)`
-/

namespace A249503.P17428649990646357895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A167614 (n + 4) + 3).toNat

end

end A249503.P17428649990646357895

/-! ## A249503.P2147435813491518382

`A249497(A000124(n+5)+5)`
-/

namespace A249503.P2147435813491518382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A000124 (n + 5) + 5).toNat

end

end A249503.P2147435813491518382

/-! ## A249503.P11683811304354803773

`A249497(A000096(n+4)+7)`
-/

namespace A249503.P11683811304354803773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A000096 (n + 4) + 7).toNat

end

end A249503.P11683811304354803773

/-!
# A249504: Number of length 7+5 0..n arrays with every six consecutive terms having five times some element equal to the sum of the remaining five.

The programs for A249504, there is no canonical definition to state claims against.
-/

/-! ## A249504.P15979750397664864393

`A249497(A167487(n+5))`
-/

namespace A249504.P15979750397664864393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A167487 (n + 5)).toNat

end

end A249504.P15979750397664864393

/-! ## A249504.P13309234495508481313

`A249497(A056119(n)+28)`
-/

namespace A249504.P13309234495508481313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A056119 n + 28).toNat

end

end A249504.P13309234495508481313

/-! ## A249504.P15026469100994804625

`A249497(A166136(n+5)+1)`
-/

namespace A249504.P15026469100994804625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A166136 (n + 5) + 1).toNat

end

end A249504.P15026469100994804625

/-! ## A249504.P15868743885783134532

`A249497(A000124(n+6)+6)`
-/

namespace A249504.P15868743885783134532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A000124 (n + 6) + 6).toNat

end

end A249504.P15868743885783134532

/-! ## A249504.P17098610409914612715

`A249497(A000096(n+5)+8)`
-/

namespace A249504.P17098610409914612715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249497 (A000096 (n + 5) + 8).toNat

end

end A249504.P17098610409914612715

/-!
# A249505: Primes p such that p+1 is a totient (i.e., in A000010).

The programs for A249505, there is no canonical definition to state claims against.
-/

/-! ## A249505.P12914983220811131439

`p?[A161785(n+1)-1]`
-/

namespace A249505.P12914983220811131439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161785 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249505.P12914983220811131439

/-! ## A249505.P17987099004782297448

`∩[A161785(n+1)-1, A283599(n+1)]`
-/

namespace A249505.P17987099004782297448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161785 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249505.P17987099004782297448

/-! ## A249505.P10746384364630343669

`p?[∑[A083533(n+1)]]`
-/

namespace A249505.P10746384364630343669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083533 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249505.P10746384364630343669

/-! ## A249505.P9898163446592463272

`p?[A002202(n+1)-1]`
-/

namespace A249505.P9898163446592463272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249505.P9898163446592463272

/-! ## A249505.P15157725868112203193

`p?[2*A002180(n+2)-1]`
-/

namespace A249505.P15157725868112203193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002180 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249505.P15157725868112203193

/-! ## A249505.P17818713849120242994

`p?[A002180(n+3)²-A002180(n+2)²]`
-/

namespace A249505.P17818713849120242994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (n + 3) ^ 2 - A002180 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249505.P17818713849120242994

/-! ## A249505.P9935419718174477018

`p?[lt[0, A280712(n+1)]]`
-/

namespace A249505.P9935419718174477018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280712 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A249505.P9935419718174477018

/-! ## A249505.P15560389552030578956

`p?[n*and(1, A323169(n+1))]`
-/

namespace A249505.P15560389552030578956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A323169 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249505.P15560389552030578956

/-! ## A249505.P1514895820141043084

`p?[lt[A323162(n+1), A323169(n+1)]]`
-/

namespace A249505.P1514895820141043084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A249505.P1514895820141043084

/-! ## A249505.P5631195745045416419

`p?[comp[A291205(n+1)]]`
-/

namespace A249505.P5631195745045416419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291205 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A249505.P5631195745045416419

/-! ## A249505.P371268944325016908

`p?[lt[0, A014197(n+1)]]`
-/

namespace A249505.P371268944325016908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A249505.P371268944325016908

/-! ## A249505.P8196101077298749011

`p?[lt[1, A316665(n+1)]]`
-/

namespace A249505.P8196101077298749011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A249505.P8196101077298749011

/-! ## A249505.P17393749771738556488

`p?[n*A067005(n+1)]`
-/

namespace A249505.P17393749771738556488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249505.P17393749771738556488

/-! ## A249505.P8948977353366846642

`p?[lt[0, char[A000010(n+1)]]-1]`
-/

namespace A249505.P8948977353366846642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249505.P8948977353366846642

/-! ## A249505.P1314905268996843312

`p?[eq[1, char[A000010(n+2)]]-1]`
-/

namespace A249505.P1314905268996843312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249505.P1314905268996843312

/-! ## A249505.P12587299877164049959

`eq[A003415(n), A067005(n+1)]`
-/

namespace A249505.P12587299877164049959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249505.P12587299877164049959

/-! ## A249505.P17417041605803421364

`eq[A055672(n), A066678(n+1)]`
-/

namespace A249505.P17417041605803421364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249505.P17417041605803421364

/-! ## A249505.P1218948230014173865

`eq[A066678(n+1), A098987(n)]`
-/

namespace A249505.P1218948230014173865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249505.P1218948230014173865

/-! ## A249505.P12077533390389703523

`eq[A066678(n+1), A129283(n)]`
-/

namespace A249505.P12077533390389703523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249505.P12077533390389703523

/-! ## A249505.P9870717671786084510

`eq[A066678(n+1), A181549(n)]`
-/

namespace A249505.P9870717671786084510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249505.P9870717671786084510

/-!
# A249506: Inverse permutation to A249494 (= permutation of the positive integers such that the parity of the first digit of a(n+1) equals that of a(n)'s last digit).

The programs for A249506, there is no canonical definition to state claims against.
-/

/-! ## A249506.P4925584423878371878

`A249279(A249494(A249279(n+1)))`
-/

namespace A249506.P4925584423878371878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249279 (A249494 (A249279 (n + 1)).toNat).toNat

end

end A249506.P4925584423878371878

/-!
# A249508: Lengths of complete iterations (direct and reverse branches) of the Kolakoski sequence A000002.

The programs for A249508, there is no canonical definition to state claims against.
-/

/-! ## A249508.P14569020936818106887

`∑[A329758(A028242(n+3))]+1`
-/

namespace A249508.P14569020936818106887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329758 (A028242 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249508.P14569020936818106887

/-! ## A249508.P10558867669155193104

`A187219(n+5)+A001221(A001790(n))`
-/

namespace A249508.P10558867669155193104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 5) + A001221 (A001790 n).toNat

end

end A249508.P10558867669155193104

/-! ## A249508.P6537235995652421613

`A238483(n+1)+∑[A177002(A157780(n))]`
-/

namespace A249508.P6537235995652421613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177002 (A157780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238483 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249508.P6537235995652421613

/-! ## A249508.P6781159921547772381

`A121900(A000096(n+2)*A000837(n+4))`
-/

namespace A249508.P6781159921547772381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A000096 (n + 2) * A000837 (n + 4)).toNat

end

end A249508.P6781159921547772381

/-! ## A249508.P17724831236461961715

`A109168(3*(n+1))+A056239(A004149(n)²)`
-/

namespace A249508.P17724831236461961715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (3 * (n + 1)) + A056239 (A004149 n ^ 2).toNat

end

end A249508.P17724831236461961715

/-!
# A249512: Expansion of 1/(1-x*sqrt(4*x^2+1)-2*x^2).

The programs for A249512, there is no canonical definition to state claims against.
-/

/-! ## A249512.P13208133539826524988

`A087817(A006725(n+1))`
-/

namespace A249512.P13208133539826524988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A006725 (n + 1)).toNat

end

end A249512.P13208133539826524988

/-! ## A249512.P6168389998609235079

`or(1, A023190(4%gcd(3, n)+n*a(n-1)))` with `a(0)=1`
-/

namespace A249512.P6168389998609235079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (A023190 (((4 % Nat.gcd 3 n : ℕ) : ℤ) + (n : ℤ) * a (n - 1)).toNat)

end

end A249512.P6168389998609235079

/-! ## A249512.P13908152726743135276

`A000267(∑[A242638(n)])`
-/

namespace A249512.P13908152726743135276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249512.P13908152726743135276

/-! ## A249512.P6296397434369263778

`A131507(A325262(∑[n]))`
-/

namespace A249512.P6296397434369263778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A325262 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A249512.P6296397434369263778

/-!
# A249513: Expansion of -(4*x*sqrt(4*x^2+1)+8*x^2+1)/((2*x^2-1)*sqrt(4*x^2+1) +4*x^3+x).

The programs for A249513, there is no canonical definition to state claims against.
-/

/-! ## A249513.P12464197849838991492

`A298981(2^comp[or(5, n)-6])`
-/

namespace A249513.P12464197849838991492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298981 (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A249513.P12464197849838991492

/-! ## A249513.P16521676466351155990

`A298981(∑[2*a(n-1)])` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A249513.P16521676466351155990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298981 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249513.P16521676466351155990

/-!
# A249514: Values of a in A216515.

The programs for A249514, there is no canonical definition to state claims against.
-/

/-! ## A249514.P11143126169974147474

`A190103(5*A002110(n))`
-/

namespace A249514.P11143126169974147474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190103 (5 * A002110 n).toNat

end

end A249514.P11143126169974147474

/-!
# A249515: Numbers k for which the digital sum of k contains the same distinct digits as k itself.

The programs for A249515, there is no canonical definition to state claims against.
-/

/-! ## A249515.P11684500551547296129

`A249517(n+1)%∏[char[∑[n+1]]+1]²`
-/

namespace A249515.P11684500551547296129
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249517 (n + 1)) (((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A249515.P11684500551547296129

/-! ## A249515.P18056320603537093723

`A087052(A061479(n))`
-/

namespace A249515.P18056320603537093723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A061479 n).toNat

end

end A249515.P18056320603537093723

/-! ## A249515.P10906870950521601518

`A087052(A135295(n))`
-/

namespace A249515.P10906870950521601518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A135295 n).toNat

end

end A249515.P10906870950521601518

/-! ## A249515.P15390693815425394721

`A087052(A030147(n+1))`
-/

namespace A249515.P15390693815425394721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A030147 (n + 1)).toNat

end

end A249515.P15390693815425394721

/-! ## A249515.P10638962605929762360

`A087052(A050783(n+1))`
-/

namespace A249515.P10638962605929762360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A050783 (n + 1)).toNat

end

end A249515.P10638962605929762360

/-!
# A249516: Numbers k for which the digital product A007954(k) contains the same distinct digits as the number k.

The programs for A249516, there is no canonical definition to state claims against.
-/

/-! ## A249516.P9951845335973168172

`eq[1, A364136(n)]`
-/

namespace A249516.P9951845335973168172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364136 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249516.P9951845335973168172

/-! ## A249516.P723899498229866858

`∑{e}[3^n, A239090(#)]`
-/

namespace A249516.P723899498229866858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A239090 (Nat.factorization (f1 n) p)

end

end A249516.P723899498229866858

/-! ## A249516.P12595276429274282347

`record[A355223(A049872(n))]`
-/

namespace A249516.P12595276429274282347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (A049872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249516.P12595276429274282347

/-! ## A249516.P2736710333194407360

`filter[A106000(n), A136522(#)]`
-/

namespace A249516.P2736710333194407360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A249516.P2736710333194407360

/-! ## A249516.P9773184085321563383

`filter[A049872(n), A202022(#)]`
-/

namespace A249516.P9773184085321563383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A249516.P9773184085321563383

/-!
# A249517: Numbers k for which the digital sum A007953(k) and the digital product A007954(k) both contain the same distinct digits as the number k.

The programs for A249517, there is no canonical definition to state claims against.
-/

/-! ## A249517.P1819938075314546541

`floor(n/10)*A283504(n)+n`
-/

namespace A249517.P1819938075314546541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋ * A283504 n + (n : ℤ)

end

end A249517.P1819938075314546541

/-! ## A249517.P3275959721760729136

`A351870(comp[a(n-2)+28])` with `a(0)=10, a(1)=10`
-/

namespace A249517.P3275959721760729136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 10] fun n f1 =>
  f1 (n - 2) + 28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A249517.P3275959721760729136

/-! ## A249517.P1441022539844498498

`∑{digits}[n, #]*A282796(n-∏{digits}[n, #])`
-/

namespace A249517.P1441022539844498498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A282796 (n - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod)

end

end A249517.P1441022539844498498

/-! ## A249517.P5280715496009527580

`A351870(lt[n/(xor(n, n+1)+1), 5])`
-/

namespace A249517.P5280715496009527580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A249517.P5280715496009527580

/-! ## A249517.P15969102510339116433

`A010785((∑[n+2]+4)*floor(n/10)+n)`
-/

namespace A249517.P15969102510339116433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ) * ⌊(n : ℚ) / 10⌋ + (n : ℤ)).toNat

end

end A249517.P15969102510339116433

/-!
# A249518: Value of b in A216515.

The programs for A249518, there is no canonical definition to state claims against.
-/

/-! ## A249518.P1060469538364222540

`A301750(A322530(5*n)²)`
-/

namespace A249518.P1060469538364222540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301750 (A322530 (5 * n) ^ 2).toNat

end

end A249518.P1060469538364222540

/-!
# A249519: Expansion of 4*x/(16*x+(sqrt(2)*sqrt(sqrt(1-16*x)+1)-1)*sqrt(1-16*x)-1).

The programs for A249519, there is no canonical definition to state claims against.
-/

/-! ## A249519.P15298693864111706359

`A336503(A144647(n))+A144636(n)`
-/

namespace A249519.P15298693864111706359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336503 (A144647 n).toNat + A144636 n

end

end A249519.P15298693864111706359

/-!
# A249520: Expansion of g.f. 2-(2*x)/(1-sqrt(sqrt(1-16*x)+1)/sqrt(2)).

The programs for A249520, there is no canonical definition to state claims against.
-/

/-! ## A249520.P2337474938902923616

`A348553(4*A052704(n))`
-/

namespace A249520.P2337474938902923616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (4 * A052704 n).toNat

end

end A249520.P2337474938902923616

/-!
# A249524: Number of length n+5 0..2 arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249524, there is no canonical definition to state claims against.
-/

/-! ## A249524.P17742145017600024994

`A249530(∑[n+2])`
-/

namespace A249524.P17742145017600024994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249524.P17742145017600024994

/-! ## A249524.P1962710568889789625

`record[A249530(A101881(n)+1)]`
-/

namespace A249524.P1962710568889789625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249524.P1962710568889789625

/-! ## A249524.P8056206301665822155

`record[A249530(A000096(A242112(n)))]`
-/

namespace A249524.P8056206301665822155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A000096 (A242112 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249524.P8056206301665822155

/-! ## A249524.P17586067950326850982

`record[A249530(A000096(A002260(n+1)))]`
-/

namespace A249524.P17586067950326850982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249524.P17586067950326850982

/-! ## A249524.P14702393888101790577

`record[A249530(A000096(A073820(n+1)))]`
-/

namespace A249524.P14702393888101790577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A000096 (A073820 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249524.P14702393888101790577

/-!
# A249525: Number of length n+5 0..3 arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249525, there is no canonical definition to state claims against.
-/

/-! ## A249525.P13952549588492226560

`A249530(∑[n+3]+1)`
-/

namespace A249525.P13952549588492226560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249525.P13952549588492226560

/-! ## A249525.P18316247361960254631

`record[A249530(A101881(n+2))]`
-/

namespace A249525.P18316247361960254631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A101881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249525.P18316247361960254631

/-! ## A249525.P15598704047938098368

`record[A249530(A347633(n+4))]`
-/

namespace A249525.P15598704047938098368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A347633 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249525.P15598704047938098368

/-!
# A249526: Number of length n+5 0..4 arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249526, there is no canonical definition to state claims against.
-/

/-! ## A249526.P10763926768233468586

`A249530(∑[n+4]+3)`
-/

namespace A249526.P10763926768233468586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A249526.P10763926768233468586

/-! ## A249526.P969904620120158570

`lcm(2, A249530(A155212(n)+5))`
-/

namespace A249526.P969904620120158570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249530 (A155212 n + 5).toNat)

end

end A249526.P969904620120158570

/-! ## A249526.P15600445790338945418

`A249530(A155212(n)+5)+A008683(4*(n+1))`
-/

namespace A249526.P15600445790338945418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A155212 n + 5).toNat + A008683 (4 * (n + 1))

end

end A249526.P15600445790338945418

/-! ## A249526.P13798305502521250795

`A007318(C(n+2, 2))*A249530(A155212(n)+5)`
-/

namespace A249526.P13798305502521250795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A249530 (A155212 n + 5).toNat

end

end A249526.P13798305502521250795

/-! ## A249526.P1267176391062596872

`A249530(A155212(n)+5)+A001222(((-1)^n)²)`
-/

namespace A249526.P1267176391062596872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A155212 n + 5).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A249526.P1267176391062596872

/-!
# A249527: Number of length n+5 0..5 arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249527, there is no canonical definition to state claims against.
-/

/-! ## A249527.P5054187159930055118

`A249530(∑[n+4]+n+7)`
-/

namespace A249527.P5054187159930055118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A249527.P5054187159930055118

/-! ## A249527.P14095449754926833463

`lcm(2, A249530(A046691(n+3)))`
-/

namespace A249527.P14095449754926833463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249530 (A046691 (n + 3)).toNat)

end

end A249527.P14095449754926833463

/-! ## A249527.P2982338459203239554

`A007318(C(2, 2*n))*A249530(A046691(n+3))`
-/

namespace A249527.P2982338459203239554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (2 * n)) * A249530 (A046691 (n + 3)).toNat

end

end A249527.P2982338459203239554

/-! ## A249527.P980704200551101727

`A014963(gcd(n, n+1))*A249530(A046691(n+3))`
-/

namespace A249527.P980704200551101727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A249530 (A046691 (n + 3)).toNat

end

end A249527.P980704200551101727

/-!
# A249528: Number of length n+5 0..6 arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249528, there is no canonical definition to state claims against.
-/

/-! ## A249528.P13208410017055045846

`A249530(A052905(n+3))`
-/

namespace A249528.P13208410017055045846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A052905 (n + 3)).toNat

end

end A249528.P13208410017055045846

/-! ## A249528.P5048926509463882350

`A249530(eq[3, A219347(n)])`
-/

namespace A249528.P5048926509463882350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249528.P5048926509463882350

/-! ## A249528.P6987927370703866379

`A249530(eq[5, A193592(n)])`
-/

namespace A249528.P6987927370703866379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249528.P6987927370703866379

/-! ## A249528.P4408081178196773982

`A249530(eq[8, A185782(n+1)])`
-/

namespace A249528.P4408081178196773982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249528.P4408081178196773982

/-! ## A249528.P8766742773434146812

`A249530(Δ[Δ[A006504(n+1)]])`
-/

namespace A249528.P8766742773434146812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (f1 (n + 1) - f1 n).toNat

end

end A249528.P8766742773434146812

/-!
# A249529: Number of length n+5 0..7 arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249529, there is no canonical definition to state claims against.
-/

/-! ## A249529.P7523016586344140644

`A249530(A055999(n+4))`
-/

namespace A249529.P7523016586344140644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A055999 (n + 4)).toNat

end

end A249529.P7523016586344140644

/-! ## A249529.P5824728479790283820

`A249530(eq[4, A219347(n)])`
-/

namespace A249529.P5824728479790283820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249529.P5824728479790283820

/-! ## A249529.P15878638343110656079

`A249530(eq[6, A193592(n)])`
-/

namespace A249529.P15878638343110656079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249529.P15878638343110656079

/-! ## A249529.P12836380109715595180

`A249530(eq[10, A185782(n+1)])`
-/

namespace A249529.P12836380109715595180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249529.P12836380109715595180

/-! ## A249529.P13380457896924122336

`A249530(eq[7, A200370(n+1)])`
-/

namespace A249529.P13380457896924122336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249529.P13380457896924122336

/-!
# A249531: Number of length 1+5 0..n arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249531, there is no canonical definition to state claims against.
-/

/-! ## A249531.P6569394906689517000

`(n+2)^6-A249498(n+1)`
-/

namespace A249531.P6569394906689517000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 6 : ℤ) - A249498 (n + 1)

end

end A249531.P6569394906689517000

/-! ## A249531.P15502327652040612971

`A249530(∑[n]+1)`
-/

namespace A249531.P15502327652040612971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249531.P15502327652040612971

/-! ## A249531.P7608814313175112788

`lcm(2, A249530(A000124(n)))`
-/

namespace A249531.P7608814313175112788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249530 (A000124 n).toNat)

end

end A249531.P7608814313175112788

/-! ## A249531.P3261235849272233071

`record[root(A249530(n+1), A013609(n))]`
-/

namespace A249531.P3261235849272233071
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A249530 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249531.P3261235849272233071

/-! ## A249531.P7907415525238366481

`record[gcd(A002262(n), A249530(n+1))]`
-/

namespace A249531.P7907415525238366481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A249530 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249531.P7907415525238366481

/-!
# A249532: Number of length 2+5 0..n arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249532, there is no canonical definition to state claims against.
-/

/-! ## A249532.P10197620817693534084

`A249530(∑[n+1]+2)`
-/

namespace A249532.P10197620817693534084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249532.P10197620817693534084

/-! ## A249532.P8366599245847455349

`A249530(A167487(n)-5)+A000007(n+1)`
-/

namespace A249532.P8366599245847455349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A167487 n - 5).toNat + A000007 (n + 1)

end

end A249532.P8366599245847455349

/-! ## A249532.P3963833395992147412

`A000010((or(2, n)-n)!)*A249530(A167487(n)-5)`
-/

namespace A249532.P3963833395992147412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial ((Nat.lor 2 n : ℤ) - (n : ℤ)).toNat) * A249530 (A167487 n - 5).toNat

end

end A249532.P3963833395992147412

/-! ## A249532.P16980890497669889600

`((-1)^A001221(n+1))²*A249530(A167487(n)-5)`
-/

namespace A249532.P16980890497669889600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A001221 (n + 1) : ℤ)) ^ 2 * (A249530 (A167487 n - 5).toNat : ℚ)

end

end A249532.P16980890497669889600

/-!
# A249533: Number of length 3+5 0..n arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249533, there is no canonical definition to state claims against.
-/

/-! ## A249533.P7950708394424128681

`A249530(∑[n+2]+4)`
-/

namespace A249533.P7950708394424128681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249533.P7950708394424128681

/-! ## A249533.P16449068363447849670

`lcm(2, A249530(A167614(n+1)))`
-/

namespace A249533.P16449068363447849670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249530 (A167614 (n + 1)).toNat)

end

end A249533.P16449068363447849670

/-! ## A249533.P17678523985555896308

`A249530(A167614(n+1))+A008683(4*(n+1))`
-/

namespace A249533.P17678523985555896308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A167614 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A249533.P17678523985555896308

/-! ## A249533.P98955188704415682

`A249530(A000096(n+1)+4)+A000035(2*n)`
-/

namespace A249533.P98955188704415682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A000096 (n + 1) + 4).toNat + A000035 (2 * n)

end

end A249533.P98955188704415682

/-! ## A249533.P14516470319798106391

`A000045(A020639(2*(n+1)))*A249530(A167614(n+1))`
-/

namespace A249533.P14516470319798106391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A249530 (A167614 (n + 1)).toNat

end

end A249533.P14516470319798106391

/-!
# A249534: Number of length 4+5 0..n arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249534, there is no canonical definition to state claims against.
-/

/-! ## A249534.P12984746019940719446

`A249530(A141214(n)+7)`
-/

namespace A249534.P12984746019940719446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A141214 n + 7).toNat

end

end A249534.P12984746019940719446

/-! ## A249534.P3654722290216723351

`A249530(A052905(n)+9)`
-/

namespace A249534.P3654722290216723351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A052905 n + 9).toNat

end

end A249534.P3654722290216723351

/-! ## A249534.P11497254492855810969

`A249530(A055999(n)+10)`
-/

namespace A249534.P11497254492855810969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A055999 n + 10).toNat

end

end A249534.P11497254492855810969

/-! ## A249534.P9838008689912487672

`A249530(A167614(n+2)+1)`
-/

namespace A249534.P9838008689912487672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A167614 (n + 2) + 1).toNat

end

end A249534.P9838008689912487672

/-! ## A249534.P1001687977615774991

`A249530(eq[2, A141169(n)]+1)`
-/

namespace A249534.P1001687977615774991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A249534.P1001687977615774991

/-!
# A249535: Number of length 5+5 0..n arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249535, there is no canonical definition to state claims against.
-/

/-! ## A249535.P13707581378342520790

`A249530(A167499(n+3))`
-/

namespace A249535.P13707581378342520790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A167499 (n + 3)).toNat

end

end A249535.P13707581378342520790

/-! ## A249535.P5801752446075477344

`A249530(A167614(n+3)+2)`
-/

namespace A249535.P5801752446075477344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A167614 (n + 3) + 2).toNat

end

end A249535.P5801752446075477344

/-! ## A249535.P18435299696981350841

`A249530(A000217(n+4)+5)`
-/

namespace A249535.P18435299696981350841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A000217 (n + 4) + 5).toNat

end

end A249535.P18435299696981350841

/-! ## A249535.P1613311484998253045

`A249530(A238531(n+6)-(n+2))`
-/

namespace A249535.P1613311484998253045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A238531 (n + 6) - (n + 2 : ℤ)).toNat

end

end A249535.P1613311484998253045

/-! ## A249535.P8443591010241708940

`A249530(A038722(Δ[A023545(n+1)]))`
-/

namespace A249535.P8443591010241708940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A249535.P8443591010241708940

/-!
# A249536: Number of length 6+5 0..n arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249536, there is no canonical definition to state claims against.
-/

/-! ## A249536.P11079700327647608722

`A249530(A167499(n+4)+1)`
-/

namespace A249536.P11079700327647608722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A167499 (n + 4) + 1).toNat

end

end A249536.P11079700327647608722

/-! ## A249536.P16106765974800147007

`A249530(A167614(n+4)+3)`
-/

namespace A249536.P16106765974800147007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A167614 (n + 4) + 3).toNat

end

end A249536.P16106765974800147007

/-! ## A249536.P10376691965170280656

`A249530(A000217(n+5)+6)`
-/

namespace A249536.P10376691965170280656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A000217 (n + 5) + 6).toNat

end

end A249536.P10376691965170280656

/-! ## A249536.P7781012272218325592

`A249530(A161680(n+6)+6)`
-/

namespace A249536.P7781012272218325592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A161680 (n + 6) + 6).toNat

end

end A249536.P7781012272218325592

/-! ## A249536.P9100486827293454930

`A249530(A046691(n+3)+10)`
-/

namespace A249536.P9100486827293454930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A046691 (n + 3) + 10).toNat

end

end A249536.P9100486827293454930

/-!
# A249537: Number of length 7+5 0..n arrays with no six consecutive terms having five times any element equal to the sum of the remaining five.

The programs for A249537, there is no canonical definition to state claims against.
-/

/-! ## A249537.P9833545042287680015

`A249530(A167487(n+5))`
-/

namespace A249537.P9833545042287680015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A167487 (n + 5)).toNat

end

end A249537.P9833545042287680015

/-! ## A249537.P10233088041409240187

`A249530(eq[11, A066657(n)])`
-/

namespace A249537.P10233088041409240187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249537.P10233088041409240187

/-! ## A249537.P582176032369357147

`A249530(A000096(n+5)+8)`
-/

namespace A249537.P582176032369357147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (A000096 (n + 5) + 8).toNat

end

end A249537.P582176032369357147

/-! ## A249537.P10892613702702784471

`A249530(eq[8, A131818(n+1)])`
-/

namespace A249537.P10892613702702784471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249537.P10892613702702784471

/-! ## A249537.P6351728500364835649

`A249530(eq[8, A141169(n)]+1)`
-/

namespace A249537.P6351728500364835649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A249537.P6351728500364835649

/-!
# A249541: Numbers m such that phi(m-2) divides m-1 where phi is Euler's totient function (A000010).

The programs for A249541, there is no canonical definition to state claims against.
-/

/-! ## A249541.P8105406210387862490

`A203966(n+1)+2`
-/

namespace A249541.P8105406210387862490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203966 (n + 1) + 2

end

end A249541.P8105406210387862490

/-! ## A249541.P7098954588914910297

`ceil(A202855(n+2)/4)+2`
-/

namespace A249541.P7098954588914910297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A202855 (n + 2) : ℚ) / 4⌉ + 2

end

end A249541.P7098954588914910297

/-! ## A249541.P4083819334602746767

`A050474(A028310(n))+char[1]+2`
-/

namespace A249541.P4083819334602746767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050474 (A028310 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2

end

end A249541.P4083819334602746767

/-!
# A249543: Square array T(m,n) of integer partitions with m addends n+1, read by antidiagonals.

The programs for A249543, there is no canonical definition to state claims against.
-/

/-! ## A249543.P11154972197844925931

`A286622(A249544(n+1))-1`
-/

namespace A249543.P11154972197844925931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A249544 (n + 1)).toNat - 1

end

end A249543.P11154972197844925931

/-!
# A249544: Array read by antidiagonals: T(m,n) read in binary is a palindrome with m runs of n ones separated by single zeros.

The programs for A249544, there is no canonical definition to state claims against.
-/

/-! ## A249544.P10816996747884674918

`A194602(A249543(n+1))`
-/

namespace A249544.P10816996747884674918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194602 (A249543 (n + 1)).toNat

end

end A249544.P10816996747884674918

/-! ## A249544.P10972408285934712725

`A156552(A079474(n+1)*A182944(n+1))`
-/

namespace A249544.P10972408285934712725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A079474 (n + 1) * A182944 (n + 1)).toNat

end

end A249544.P10972408285934712725

/-! ## A249544.P10472057018396494289

`A156552(lcm(A079474(n+1), A182944(n+1)))`
-/

namespace A249544.P10472057018396494289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.lcm (A079474 (n + 1)) (A182944 (n + 1)))

end

end A249544.P10472057018396494289

/-!
# A249545: a(n) = number of representations of A020670(n) as x^2 + 7*y^2.

The programs for A249545, there is no canonical definition to state claims against.
-/

/-! ## A249545.P17555454147258292575

`A325837(A023551(n+1)+1)`
-/

namespace A249545.P17555454147258292575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A023551 (n + 1) + 1).toNat

end

end A249545.P17555454147258292575

/-! ## A249545.P12088499165776920512

`A325469(A074771(n+3)+A008646(n))`
-/

namespace A249545.P12088499165776920512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325469 (A074771 (n + 3) + A008646 n).toNat

end

end A249545.P12088499165776920512

/-! ## A249545.P7808518831175213096

`A007318(A347917(2*n)%A268448(n+1))`
-/

namespace A249545.P7808518831175213096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (A347917 (2 * n)) (A268448 (n + 1))).toNat

end

end A249545.P7808518831175213096

/-! ## A249545.P12366111437851736401

`A061704(∑[A325702(n+3)+A029579(n)]+2)`
-/

namespace A249545.P12366111437851736401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325702 (n + 3) + A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A249545.P12366111437851736401

/-! ## A249545.P8276740524534727602

`A230440(gcd(A005099(n+4), A156268(n+4)))`
-/

namespace A249545.P8276740524534727602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230440 (Int.gcd (A005099 (n + 4)) (A156268 (n + 4)))

end

end A249545.P8276740524534727602

/-!
# A249547: a(n) = (10*n^2+8*n-1+(-1)^n)/8.

The programs for A249547, the canonical program `A249547.P16378207673906961832` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249547 has offset 0).

The definition of A249547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n²+8*n-1+(-1)^n)/8` (program `A249547.P16694625048812068099`, by `A249547.P16694625048812068099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249547.P16694625048812068099

`(10*n²+8*n-1+(-1)^n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249547.P16694625048812068099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * n ^ 2 + 8 * n : ℤ) - 1 + (-1) ^ n : ℚ) / 8

end

end A249547.P16694625048812068099

namespace A249547

/-- `(10*n²+8*n-1+(-1)^n)/8` -/
def P16694625048812068099.Spec : Prop :=
  ∀ n, P16694625048812068099.a n = (A249547 n : ℚ)

theorem P16694625048812068099.correct : P16694625048812068099.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A249547, Nat.add_sub_cancel, A249547.P16694625048812068099.a, A249547.P16378207673906961832.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A249547, Nat.add_sub_cancel, A249547.P16694625048812068099.a, A249547.P16378207673906961832.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A249547

/-! ## A249547.P16378207673906961832

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249547

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16378207673906961832.Spec : Prop :=
  ∀ n, P16378207673906961832.a n = A249547 n

theorem P16378207673906961832.correct : P16378207673906961832.Spec := by
  intro n
  simp only [A249547]

end A249547

/-! ## A249547.P11887391003545268453

`∑[∑[∑{d}[n, C(2, #)]]]`
-/

namespace A249547.P11887391003545268453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Nat.choose 2 d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249547.P11887391003545268453

namespace A249547

/-- `∑[∑[∑{d}[n, C(2, #)]]]` -/
def P11887391003545268453.Spec : Prop :=
  ∀ n, (P11887391003545268453.a n : ℤ) = A249547 n

end A249547

/-! ## A249547.P3056913359755631693

`∑[∑[∑{d}[n, floor(2/#)]]]`
-/

namespace A249547.P3056913359755631693
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌊2 / (d : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249547.P3056913359755631693

namespace A249547

/-- `∑[∑[∑{d}[n, floor(2/#)]]]` -/
def P3056913359755631693.Spec : Prop :=
  ∀ n, P3056913359755631693.a n = A249547 n

end A249547

/-! ## A249547.P18316915952258290791

`abs(∑[a(n-2)+5])` with `a(0)=0, a(1)=2`
-/

namespace A249547.P18316915952258290791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249547.P18316915952258290791

namespace A249547

/-- `abs(∑[a(n-2)+5])` -/
def P18316915952258290791.Spec : Prop :=
  ∀ n, (P18316915952258290791.a n : ℤ) = A249547 n

end A249547

/-! ## A249547.P5661595658759581944

`floor(∑[a(n-2)+5])` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A249547.P5661595658759581944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249547.P5661595658759581944

namespace A249547

/-- `floor(∑[a(n-2)+5])` -/
def P5661595658759581944.Spec : Prop :=
  ∀ n, (P5661595658759581944.a n : ℤ) = A249547 n

end A249547

/-! ## A249547.P2417368125451934179

`∑[∑[∑[ogf((2x+3x^2)/(1+x))]]]`
-/

namespace A249547.P2417368125451934179
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249547.P2417368125451934179

namespace A249547

/-- `∑[∑[∑[ogf((2x+3x^2)/(1+x))]]]` -/
def P2417368125451934179.Spec : Prop :=
  ∀ n, P2417368125451934179.a n = A249547 n

end A249547

/-! ## A249547.P18002481500587757494

`ogf((2x+3x^2)/(1-2x+2x^3-x^4))`
-/

namespace A249547.P18002481500587757494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3] [1, -2, 0, 2, -1] n

end

end A249547.P18002481500587757494

namespace A249547

/-- `ogf((2x+3x^2)/(1-2x+2x^3-x^4))` -/
def P18002481500587757494.Spec : Prop :=
  ∀ n, P18002481500587757494.a n = A249547 n

end A249547

/-! ## A249547.P13149896372063697163

`floor(∑[∑[5-a(n-1)]])` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A249547.P13149896372063697163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249547.P13149896372063697163

namespace A249547

/-- `floor(∑[∑[5-a(n-1)]])` -/
def P13149896372063697163.Spec : Prop :=
  ∀ n, P13149896372063697163.a n = A249547 n

end A249547

/-! ## A249547.P17376011093946055838

`floor((n/2)²)+lcm(n, n+1)`
-/

namespace A249547.P17376011093946055838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ + (Nat.lcm n (n + 1) : ℤ)

end

end A249547.P17376011093946055838

namespace A249547

/-- `floor((n/2)²)+lcm(n, n+1)` -/
def P17376011093946055838.Spec : Prop :=
  ∀ n, P17376011093946055838.a n = A249547 n

end A249547

/-! ## A249547.P7875464813202705429

`∑[a(n-2)+5]-1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A249547.P7875464813202705429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A249547.P7875464813202705429

namespace A249547

/-- `∑[a(n-2)+5]-1` -/
def P7875464813202705429.Spec : Prop :=
  ∀ n, P7875464813202705429.a n = A249547 n

end A249547

/-! ## A249547.P5670107955039653547

`5*n+a(n-2)-3` with `a(0)=0, a(1)=2`
-/

namespace A249547.P5670107955039653547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (5 * n : ℤ) + (a (n - 2) - 3)

end

end A249547.P5670107955039653547

namespace A249547

/-- `5*n+a(n-2)-3` -/
def P5670107955039653547.Spec : Prop :=
  ∀ n, P5670107955039653547.a n = A249547 n

end A249547

/-! ## A249547.P8761463595163540518

`5*n-(3-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A249547.P8761463595163540518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (5 * n : ℤ) - (3 - a (n - 2))

end

end A249547.P8761463595163540518

namespace A249547

/-- `5*n-(3-a(n-2))` -/
def P8761463595163540518.Spec : Prop :=
  ∀ n, P8761463595163540518.a n = A249547 n

end A249547

/-! ## A249547.P980714027312841663

`∑[∑[(n-1)%2]]+(n+1)²`
-/

namespace A249547.P980714027312841663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A249547.P980714027312841663

namespace A249547

/-- `∑[∑[(n-1)%2]]+(n+1)²` -/
def P980714027312841663.Spec : Prop :=
  ∀ n, P980714027312841663.a n = A249547 n

end A249547

/-! ## A249547.P13834444848036130633

`∑[n]-∑[a(n-2)-3]` with `a(0)=0, a(1)=-1`
-/

namespace A249547.P13834444848036130633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f2 =>
  f2 (n - 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A249547.P13834444848036130633

namespace A249547

/-- `∑[n]-∑[a(n-2)-3]` -/
def P13834444848036130633.Spec : Prop :=
  ∀ n, P13834444848036130633.a n = A249547 n

end A249547

/-! ## A249547.P4891870257533030009

`∑[∑[gcd(2, n)]+n-1]-(n+1)`
-/

namespace A249547.P4891870257533030009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A249547.P4891870257533030009

namespace A249547

/-- `∑[∑[gcd(2, n)]+n-1]-(n+1)` -/
def P4891870257533030009.Spec : Prop :=
  ∀ n, P4891870257533030009.a n = A249547 n

end A249547

/-! ## A249547.P8717685843566325114

`floor(a(n-1)+n/2+n+n)` with `a(0)=0`
-/

namespace A249547.P8717685843566325114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 2 + (n : ℚ) + (n : ℚ))⌋

end

end A249547.P8717685843566325114

namespace A249547

/-- `floor(a(n-1)+n/2+n+n)` -/
def P8717685843566325114.Spec : Prop :=
  ∀ n, P8717685843566325114.a n = A249547 n

end A249547

/-! ## A249547.P959329463929071305

`∑[∑[and(1, n+1)]]+(n+1)*(n-1)`
-/

namespace A249547.P959329463929071305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * ((n : ℤ) - 1)

end

end A249547.P959329463929071305

namespace A249547

/-- `∑[∑[and(1, n+1)]]+(n+1)*(n-1)` -/
def P959329463929071305.Spec : Prop :=
  ∀ n, P959329463929071305.a n = A249547 n

end A249547

/-! ## A249547.P18346670574661960364

`∑[A047215(n)]`
-/

namespace A249547.P18346670574661960364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249547.P18346670574661960364

namespace A249547

/-- `∑[A047215(n)]` -/
def P18346670574661960364.Spec : Prop :=
  ∀ n, P18346670574661960364.a n = A249547 n

end A249547

/-!
# A249548: Coefficients of reduced partition polynomials of A134264 for computing Lagrange compositional inversion.

The programs for A249548, there is no canonical definition to state claims against.
-/

/-! ## A249548.P5019769051967924374

`A287516(A283331(n+1))+abs(∑[n]%(n+1)-1)`
-/

namespace A249548.P5019769051967924374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287516 (A283331 (n + 1)).toNat + |(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) - 1|

end

end A249548.P5019769051967924374

/-! ## A249548.P18371183333589220910

`A359241(A219601(3*n))+A008966(3*n+5)`
-/

namespace A249548.P18371183333589220910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359241 (A219601 (3 * n)).toNat + A008966 (3 * n + 5)

end

end A249548.P18371183333589220910

/-!
# A249549: Conjectured largest number k not divisible by 10 such that k^k has exactly n distinct decimal digits.

The programs for A249549, there is no canonical definition to state claims against.
-/

/-! ## A249549.P13750600221807036419

`A246832(n)+A140298(n)`
-/

namespace A249549.P13750600221807036419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246832 n + A140298 n

end

end A249549.P13750600221807036419

/-! ## A249549.P444646376063315520

`A048673(n+1)+A007425(A236406(n))`
-/

namespace A249549.P444646376063315520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) + A007425 (A236406 n).toNat

end

end A249549.P444646376063315520

/-!
# A249551: Numbers m such that there are precisely 8 groups of order m.

The programs for A249551, there is no canonical definition to state claims against.
-/

/-! ## A249551.P12080791727540801913

`eq[8, A000001(n)]`
-/

namespace A249551.P12080791727540801913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249551.P12080791727540801913

/-!
# A249552: Numbers m such that there are precisely 9 groups of order m.

The programs for A249552, there is no canonical definition to state claims against.
-/

/-! ## A249552.P16960502594228340079

`eq[9, A000001(n)]`
-/

namespace A249552.P16960502594228340079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249552.P16960502594228340079

/-! ## A249552.P14209900957622109418

`eq[81, A297420(n)]`
-/

namespace A249552.P14209900957622109418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249552.P14209900957622109418

/-!
# A249553: Numbers m such that there are precisely 10 groups of order m.

The programs for A249553, there is no canonical definition to state claims against.
-/

/-! ## A249553.P697043407854368455

`eq[10, A000001(n)]`
-/

namespace A249553.P697043407854368455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249553.P697043407854368455

/-! ## A249553.P15439146433091482818

`eq[10, sqrt(A297420(n))]`
-/

namespace A249553.P15439146433091482818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A249553.P15439146433091482818

/-! ## A249553.P12733987255956791307

`eq[10, A201733(round(acot(n)+n))]`
-/

namespace A249553.P12733987255956791307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249553.P12733987255956791307

/-! ## A249553.P4922239033049667546

`eq[10, A201733(A028310(n))]`
-/

namespace A249553.P4922239033049667546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249553.P4922239033049667546

/-!
# A249554: Numbers m such that there are precisely 11 groups of order m.

The programs for A249554, there is no canonical definition to state claims against.
-/

/-! ## A249554.P7176625633761115956

`eq[11, A000001(n)]`
-/

namespace A249554.P7176625633761115956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249554.P7176625633761115956

/-! ## A249554.P988161733041989798

`eq[11, sqrt(A297420(n))]`
-/

namespace A249554.P988161733041989798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A249554.P988161733041989798

/-!
# A249555: Numbers m such that there are precisely 12 groups of order m.

The programs for A249555, there is no canonical definition to state claims against.
-/

/-! ## A249555.P13348539967399744358

`eq[12, A000001(n)]`
-/

namespace A249555.P13348539967399744358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249555.P13348539967399744358

/-! ## A249555.P5260980989388214912

`eq[12, sqrt(A297420(n))]`
-/

namespace A249555.P5260980989388214912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A249555.P5260980989388214912

/-! ## A249555.P7382337430306240382

`eq[A062330(n+1), A297420(n)]`
-/

namespace A249555.P7382337430306240382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249555.P7382337430306240382

/-! ## A249555.P12172198984061681966

`eq[A124512(A331959(n+2)), A297420(n)]`
-/

namespace A249555.P12172198984061681966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124512 (A331959 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249555.P12172198984061681966

/-!
# A249556: Odd numbers n such that 2n is a term in A247665.

The programs for A249556, there is no canonical definition to state claims against.
-/

/-! ## A249556.P5420027661116731290

`record[A000265(A248379(n+1)/2)]`
-/

namespace A249556.P5420027661116731290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A248379 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249556.P5420027661116731290

/-! ## A249556.P9708145785819614615

`record[A000265(A248379(n+1))]`
-/

namespace A249556.P9708145785819614615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A248379 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249556.P9708145785819614615

/-! ## A249556.P7182585437080194535

`record[A052125(A248379(n+2))]`
-/

namespace A249556.P7182585437080194535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A248379 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249556.P7182585437080194535

/-!
# A249557: Indices of even terms in A249064.

The programs for A249557, there is no canonical definition to state claims against.
-/

/-! ## A249557.P5041416370417661481

`a(n-1)+A249064(a(n-1))+1` with `a(0)=2`
-/

namespace A249557.P5041416370417661481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A249064 (a (n - 1)).toNat + 1)

end

end A249557.P5041416370417661481

/-! ## A249557.P9832024173725012578

`eq[2, A020639(A249064(n+1))]+1`
-/

namespace A249557.P9832024173725012578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A249064 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249557.P9832024173725012578

/-! ## A249557.P5811257529023208393

`A328603(A265069(n))+n+1`
-/

namespace A249557.P5811257529023208393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328603 (A265069 n).toNat + (n + 1 : ℤ)

end

end A249557.P5811257529023208393

/-! ## A249557.P12280333306574869955

`A257639(A082047(n)*A266000(n+1))`
-/

namespace A249557.P12280333306574869955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A082047 n * A266000 (n + 1)).toNat

end

end A249557.P12280333306574869955

/-!
# A249560: Number of length n permutations avoiding (231,{1},{}) and (132,{},{2}).

The programs for A249560, there is no canonical definition to state claims against.
-/

/-! ## A249560.P16885767408689251985

`A392987(A148700(n))`
-/

namespace A249560.P16885767408689251985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392987 (A148700 n).toNat

end

end A249560.P16885767408689251985

/-! ## A249560.P14678575694841231857

`A109072(A109487(n))+A059019(n)`
-/

namespace A249560.P14678575694841231857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 (A109487 n).toNat + A059019 n

end

end A249560.P14678575694841231857

/-! ## A249560.P10050369058809416619

`A235937(A136555(n))+A059019(n)`
-/

namespace A249560.P10050369058809416619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235937 (A136555 n).toNat + A059019 n

end

end A249560.P10050369058809416619

/-! ## A249560.P17118794423075430272

`A059019(n)+A018843(A016028(n+1))`
-/

namespace A249560.P17118794423075430272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059019 n + A018843 (A016028 (n + 1)).toNat

end

end A249560.P17118794423075430272

/-! ## A249560.P2775510812051678671

`A059019(n)+A018843(A076591(n+1))`
-/

namespace A249560.P2775510812051678671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059019 n + A018843 (A076591 (n + 1)).toNat

end

end A249560.P2775510812051678671

/-!
# A249561: Number of length n permutations avoiding (123,{1},{}) and (231,{},{2}).

The programs for A249561, there is no canonical definition to state claims against.
-/

/-! ## A249561.P13755143748340920638

`A333069(n)+A007035(A006722(n))`
-/

namespace A249561.P13755143748340920638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333069 n + A007035 (A006722 n).toNat

end

end A249561.P13755143748340920638

/-! ## A249561.P10552597137186014329

`A333069(n)+A025466(A000110(n))`
-/

namespace A249561.P10552597137186014329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333069 n + A025466 (A000110 n).toNat

end

end A249561.P10552597137186014329

/-! ## A249561.P8882326132125581609

`A333069(n)+A025466(A005190(n))`
-/

namespace A249561.P8882326132125581609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333069 n + A025466 (A005190 n).toNat

end

end A249561.P8882326132125581609

/-! ## A249561.P9844641426803263544

`A333069(n)+A025465(A017939(n))`
-/

namespace A249561.P9844641426803263544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333069 n + A025465 (A017939 n).toNat

end

end A249561.P9844641426803263544

/-! ## A249561.P8451439337351397461

`A333069(n)+A036871(A219324(n+1))`
-/

namespace A249561.P8451439337351397461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333069 n + A036871 (A219324 (n + 1)).toNat

end

end A249561.P8451439337351397461

/-!
# A249562: Number of length n permutations avoiding (123,{2},{}) and (123,{},{1}).

The programs for A249562, there is no canonical definition to state claims against.
-/

/-! ## A249562.P18176379891786608901

`A056594(A148941(n))+A006789(n)`
-/

namespace A249562.P18176379891786608901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A148941 n).toNat + A006789 n

end

end A249562.P18176379891786608901

/-! ## A249562.P528526960540192031

`A006789(n)-A007035(A006722(n))`
-/

namespace A249562.P528526960540192031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 n - A007035 (A006722 n).toNat

end

end A249562.P528526960540192031

/-! ## A249562.P5094091221432490671

`A006789(n)-A025466(A000110(n))`
-/

namespace A249562.P5094091221432490671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 n - A025466 (A000110 n).toNat

end

end A249562.P5094091221432490671

/-! ## A249562.P10756612634409329195

`A006789(n)-A025466(A005190(n))`
-/

namespace A249562.P10756612634409329195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 n - A025466 (A005190 n).toNat

end

end A249562.P10756612634409329195

/-! ## A249562.P11817856047123755496

`A006789(n)-A025465(A017939(n))`
-/

namespace A249562.P11817856047123755496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 n - A025465 (A017939 n).toNat

end

end A249562.P11817856047123755496

/-!
# A249563: Number of length n permutations avoiding (132,{2},{}) and (123,{},{1}).

The programs for A249563, there is no canonical definition to state claims against.
-/

/-! ## A249563.P7470362702008175482

`or(A079343(floor(n!/(n+1)²)), A337067(n))`
-/

namespace A249563.P7470362702008175482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079343 ⌊(Nat.factorial n : ℚ) / ((n + 1) ^ 2 : ℚ)⌋.toNat) (A337067 n)

end

end A249563.P7470362702008175482

/-! ## A249563.P4818535082363267924

`or(A079343(floor((n+1)^-2*n!)), A337067(n))`
-/

namespace A249563.P4818535082363267924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079343 ⌊(n + 1 : ℚ) ^ (-2 : ℤ) * (Nat.factorial n : ℚ)⌋.toNat) (A337067 n)

end

end A249563.P4818535082363267924

/-! ## A249563.P17004974253601686981

`A337067(n)+A025466(A006789(n))`
-/

namespace A249563.P17004974253601686981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337067 n + A025466 (A006789 n).toNat

end

end A249563.P17004974253601686981

/-! ## A249563.P10030870443611574496

`A337067(n)+A285006(A000383(n))`
-/

namespace A249563.P10030870443611574496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337067 n + A285006 (A000383 n).toNat

end

end A249563.P10030870443611574496

/-! ## A249563.P2223366844204174328

`or(A025466(A026097(n)), A337067(n))`
-/

namespace A249563.P2223366844204174328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 (A026097 n).toNat) (A337067 n)

end

end A249563.P2223366844204174328

/-!
# A249564: a(n) = Sum_{k = 0..n} (k*(k+1)/2)^n.

The programs for A249564, there is no canonical definition to state claims against.
-/

/-! ## A249564.P10911951621365201381

`A334781(A106232(n+1))`
-/

namespace A249564.P10911951621365201381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334781 (A106232 (n + 1)).toNat

end

end A249564.P10911951621365201381

/-! ## A249564.P5851537899761378935

`A334781(4*A179865(n+1))`
-/

namespace A249564.P5851537899761378935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334781 (4 * A179865 (n + 1)).toNat

end

end A249564.P5851537899761378935

/-! ## A249564.P9944562673660018890

`A334781(2*(n+1)*A028310(n))`
-/

namespace A249564.P9944562673660018890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334781 ((2 * (n + 1) : ℤ) * A028310 n).toNat

end

end A249564.P9944562673660018890

/-! ## A249564.P17537281427165761255

`A334781((A000038(n)+n)*2*(n+1))`
-/

namespace A249564.P17537281427165761255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334781 ((A000038 n + (n : ℤ)) * (2 * (n + 1) : ℤ)).toNat

end

end A249564.P17537281427165761255

/-! ## A249564.P7115955052598028536

`A334781(eq[A038722(n+1), A326178(n)])`
-/

namespace A249564.P7115955052598028536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334781 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A249564.P7115955052598028536

/-!
# A249565: Number of self-avoiding walks on the truncated square tiling with n steps.

The programs for A249565, there is no canonical definition to state claims against.
-/

/-! ## A249565.P5315221520376602598

`A082447(A071733(n))`
-/

namespace A249565.P5315221520376602598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A071733 n).toNat

end

end A249565.P5315221520376602598

/-! ## A249565.P18079929170244719107

`A216256(A047048(n))`
-/

namespace A249565.P18079929170244719107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A047048 n).toNat

end

end A249565.P18079929170244719107

/-! ## A249565.P3892354957976100129

`A202304(A071737(n))`
-/

namespace A249565.P3892354957976100129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A071737 n).toNat

end

end A249565.P3892354957976100129

/-! ## A249565.P5755193699277597028

`A276571(A071719(n))`
-/

namespace A249565.P5755193699277597028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A071719 n).toNat

end

end A249565.P5755193699277597028

/-!
# A249566: Numbers n such that A182134(n) = 4, i.e., there exist exactly four primes p with prime(n) < p < prime(n)^(1+1/n).

The programs for A249566, the canonical program `A249566.P7379888211326183224` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249566 has offset 1).

The definition of A249566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249566.P7379888211326183224

`eq[4, A182134(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A249566

/-- `eq[4, A182134(n+1)]+1` -/
def P7379888211326183224.Spec : Prop :=
  ∀ n, (P7379888211326183224.a n : ℤ) = A249566 (n + 1)

theorem P7379888211326183224.correct : P7379888211326183224.Spec := by
  intro n
  simp only [A249566, Nat.add_sub_cancel]

end A249566

/-! ## A249566.P7606281562297467716

`eq[4, A182134(A028310(n))]`
-/

namespace A249566.P7606281562297467716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249566.P7606281562297467716

namespace A249566

/-- `eq[4, A182134(A028310(n))]` -/
def P7606281562297467716.Spec : Prop :=
  ∀ n, (P7606281562297467716.a n : ℤ) = A249566 (n + 1)

end A249566

/-! ## A249566.P12978751211885586097

`A020725(eq[4, A182134(n+1)])`
-/

namespace A249566.P12978751211885586097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249566.P12978751211885586097

namespace A249566

/-- `A020725(eq[4, A182134(n+1)])` -/
def P12978751211885586097.Spec : Prop :=
  ∀ n, P12978751211885586097.a n = A249566 (n + 1)

end A249566

/-! ## A249566.P8866905711204988142

`A065475(eq[4, A182134(n+1)])`
-/

namespace A249566.P8866905711204988142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249566.P8866905711204988142

namespace A249566

/-- `A065475(eq[4, A182134(n+1)])` -/
def P8866905711204988142.Spec : Prop :=
  ∀ n, P8866905711204988142.a n = A249566 (n + 1)

end A249566

/-! ## A249566.P7322504212514994085

`eq[4, A182134(A065033(2*n))]`
-/

namespace A249566.P7322504212514994085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249566.P7322504212514994085

namespace A249566

/-- `eq[4, A182134(A065033(2*n))]` -/
def P7322504212514994085.Spec : Prop :=
  ∀ n, (P7322504212514994085.a n : ℤ) = A249566 (n + 1)

end A249566

/-! ## A249566.P43903163306088968

`eq[4, A182134(A233583(n+1))]`
-/

namespace A249566.P43903163306088968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249566.P43903163306088968

namespace A249566

/-- `eq[4, A182134(A233583(n+1))]` -/
def P43903163306088968.Spec : Prop :=
  ∀ n, (P43903163306088968.a n : ℤ) = A249566 (n + 1)

end A249566

/-!
# A249568: Primes arising from A249567.

The programs for A249568, there is no canonical definition to state claims against.
-/

/-! ## A249568.P3367235411578435337

`A249567(n+2)-∑[A249567(n+1)]`
-/

namespace A249568.P3367235411578435337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249567 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249568.P3367235411578435337

/-!
# A249569: a(1) = a(2) = 1; for n > 2, a(n) = a(n-a(n-1)) + a(n-a(a(n-2))).

The programs for A249569, the canonical program `A249569.P1245810561799006478` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249569 has offset 1).

The definition of A249569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(a(n-2)-1))` (program `A249569.P1245810561799006478`, by `A249569.P1245810561799006478.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249569.P1245810561799006478

`a(n-a(n-1))+a(n-a(a(n-2)-1))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249569

/-- `a(n-a(n-1))+a(n-a(a(n-2)-1))` -/
def P1245810561799006478.Spec : Prop :=
  ∀ n, (P1245810561799006478.a n : ℤ) = A249569 (n + 1)

theorem P1245810561799006478.correct : P1245810561799006478.Spec := by
  intro n
  simp only [A249569, Nat.add_sub_cancel]

end A249569

/-! ## A249569.P9998337612714004320

`A276797(lt[A113355(n), A265251(2*(n+1))])`
-/

namespace A249569.P9998337612714004320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249569.P9998337612714004320

namespace A249569

/-- `A276797(lt[A113355(n), A265251(2*(n+1))])` -/
def P9998337612714004320.Spec : Prop :=
  ∀ n, P9998337612714004320.a n = A249569 (n + 1)

end A249569

/-! ## A249569.P12337048886266451053

`A267520(A274174(n+1))+floor((2*n+1)/3)`
-/

namespace A249569.P12337048886266451053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267520 (A274174 (n + 1)).toNat + ⌊(2 * n + 1 : ℚ) / 3⌋

end

end A249569.P12337048886266451053

namespace A249569

/-- `A267520(A274174(n+1))+floor((2*n+1)/3)` -/
def P12337048886266451053.Spec : Prop :=
  ∀ n, P12337048886266451053.a n = A249569 (n + 1)

end A249569

/-! ## A249569.P3490331224930885051

`A348020(or(A048816(n+1), A316767(3*n+2)))`
-/

namespace A249569.P3490331224930885051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348020 (Int.lor (A048816 (n + 1)) (A316767 (3 * n + 2))).toNat

end

end A249569.P3490331224930885051

namespace A249569

/-- `A348020(or(A048816(n+1), A316767(3*n+2)))` -/
def P3490331224930885051.Spec : Prop :=
  ∀ n, P3490331224930885051.a n = A249569 (n + 1)

end A249569

/-! ## A249569.P10235794376309591182

`A130822(A212255(n+1))`
-/

namespace A249569.P10235794376309591182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130822 (A212255 (n + 1)).toNat

end

end A249569.P10235794376309591182

namespace A249569

/-- `A130822(A212255(n+1))` -/
def P10235794376309591182.Spec : Prop :=
  ∀ n, P10235794376309591182.a n = A249569 (n + 1)

end A249569

/-!
# A249572: Least positive integer whose decimal digits divide the plane into n+1 regions. Equivalently, least positive integer with n holes in its decimal digits.

The programs for A249572, the canonical program `A249572.P13286484054172677858` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249572 has offset 0).

The definition of A249572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249572.P13286484054172677858

`10*a(n-2)+8` with `a(0)=1, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249572

/-- `10*a(n-2)+8` -/
def P13286484054172677858.Spec : Prop :=
  ∀ n, (P13286484054172677858.a n : ℤ) = A249572 n

theorem P13286484054172677858.correct : P13286484054172677858.Spec := by
  intro n
  simp only [A249572]

end A249572

/-! ## A249572.P544457317557815702

`10*or(1, a(n-2))-2` with `a(0)=1, a(1)=4`
-/

namespace A249572.P544457317557815702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  10 * Int.lor 1 (a (n - 2)) - 2

end

end A249572.P544457317557815702

namespace A249572

/-- `10*or(1, a(n-2))-2` -/
def P544457317557815702.Spec : Prop :=
  ∀ n, P544457317557815702.a n = A249572 n

end A249572

/-! ## A249572.P15130405596305096218

`10*xor(1, a(n-2))-2` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A249572.P15130405596305096218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  10 * Int.xor 1 (a (n - 2)) - 2

end

end A249572.P15130405596305096218

namespace A249572

/-- `10*xor(1, a(n-2))-2` -/
def P15130405596305096218.Spec : Prop :=
  ∀ n, P15130405596305096218.a n = A249572 n

end A249572

/-! ## A249572.P10333913226640574964

`record[10*a(n-2)-1]-1` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A249572.P10333913226640574964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n f1 =>
  10 * f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A249572.P10333913226640574964

namespace A249572

/-- `record[10*a(n-2)-1]-1` -/
def P10333913226640574964.Spec : Prop :=
  ∀ n, P10333913226640574964.a n = A249572 n

end A249572

/-! ## A249572.P15046725878288690006

`C(2, n+2)+A328333(n)-1`
-/

namespace A249572.P15046725878288690006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A328333 n - 1)

end

end A249572.P15046725878288690006

namespace A249572

/-- `C(2, n+2)+A328333(n)-1` -/
def P15046725878288690006.Spec : Prop :=
  ∀ n, P15046725878288690006.a n = A249572 n

end A249572

/-! ## A249572.P7591904373791474516

`A328333(n)+A057428(n)`
-/

namespace A249572.P7591904373791474516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328333 n + A057428 n

end

end A249572.P7591904373791474516

namespace A249572

/-- `A328333(n)+A057428(n)` -/
def P7591904373791474516.Spec : Prop :=
  ∀ n, P7591904373791474516.a n = A249572 n

end A249572

/-! ## A249572.P12157539840667416157

`A328333(n)-A057427(n)`
-/

namespace A249572.P12157539840667416157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328333 n - A057427 n

end

end A249572.P12157539840667416157

namespace A249572

/-- `A328333(n)-A057427(n)` -/
def P12157539840667416157.Spec : Prop :=
  ∀ n, P12157539840667416157.a n = A249572 n

end A249572

/-! ## A249572.P8971848025568621920

`A000007(n)+4*A094626(n)`
-/

namespace A249572.P8971848025568621920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 4 * A094626 n

end

end A249572.P8971848025568621920

namespace A249572

/-- `A000007(n)+4*A094626(n)` -/
def P8971848025568621920.Spec : Prop :=
  ∀ n, P8971848025568621920.a n = A249572 n

end A249572

/-! ## A249572.P6446462555869236443

`and(A113679(n)-2, A328333(n))`
-/

namespace A249572.P6446462555869236443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113679 n - 2) (A328333 n)

end

end A249572.P6446462555869236443

namespace A249572

/-- `and(A113679(n)-2, A328333(n))` -/
def P6446462555869236443.Spec : Prop :=
  ∀ n, P6446462555869236443.a n = A249572 n

end A249572

/-! ## A249572.P16661864741964713773

`and(A113679(2*n), A328333(n))`
-/

namespace A249572.P16661864741964713773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113679 (2 * n)) (A328333 n)

end

end A249572.P16661864741964713773

namespace A249572

/-- `and(A113679(2*n), A328333(n))` -/
def P16661864741964713773.Spec : Prop :=
  ∀ n, P16661864741964713773.a n = A249572 n

end A249572

/-! ## A249572.P9064026677986262844

`∑[A093141(A110654(n))-char[1]]`
-/

namespace A249572.P9064026677986262844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093141 (A110654 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249572.P9064026677986262844

namespace A249572

/-- `∑[A093141(A110654(n))-char[1]]` -/
def P9064026677986262844.Spec : Prop :=
  ∀ n, P9064026677986262844.a n = A249572 n

end A249572

/-! ## A249572.P12996138496469227842

`(A328333(n)-1)^(record[A014963(n+2)]%2)`
-/

namespace A249572.P12996138496469227842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328333 n - 1 : ℚ) ^ (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 : ℤ)

end

end A249572.P12996138496469227842

namespace A249572

/-- `(A328333(n)-1)^(record[A014963(n+2)]%2)` -/
def P12996138496469227842.Spec : Prop :=
  ∀ n, P12996138496469227842.a n = (A249572 n : ℚ)

end A249572

/-! ## A249572.P5605582458952539534

`A328332(n)-A094626(n)`
-/

namespace A249572.P5605582458952539534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328332 n - A094626 n

end

end A249572.P5605582458952539534

namespace A249572

/-- `A328332(n)-A094626(n)` -/
def P5605582458952539534.Spec : Prop :=
  ∀ n, P5605582458952539534.a n = A249572 n

end A249572

/-! ## A249572.P8671945534712425424

`and(A058896(n)-2, A328333(n))`
-/

namespace A249572.P8671945534712425424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058896 n - 2) (A328333 n)

end

end A249572.P8671945534712425424

namespace A249572

/-- `and(A058896(n)-2, A328333(n))` -/
def P8671945534712425424.Spec : Prop :=
  ∀ n, P8671945534712425424.a n = A249572 n

end A249572

/-! ## A249572.P930271511046060782

`and(A267847(n), A328333(n))`
-/

namespace A249572.P930271511046060782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267847 n) (A328333 n)

end

end A249572.P930271511046060782

namespace A249572

/-- `and(A267847(n), A328333(n))` -/
def P930271511046060782.Spec : Prop :=
  ∀ n, P930271511046060782.a n = A249572 n

end A249572

/-!
# A249575: Indices of prime powers in A084937.

The programs for A249575, there is no canonical definition to state claims against.
-/

/-! ## A249575.P13981336630374471740

`lt[A297155(A084937(n+1)), 1]+1`
-/

namespace A249575.P13981336630374471740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A084937 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A249575.P13981336630374471740

/-! ## A249575.P11702454858802163337

`eq[A123565(2*(n+2)), A297155(A084937(n+1))]+1`
-/

namespace A249575.P11702454858802163337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123565 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A084937 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A249575.P11702454858802163337

/-! ## A249575.P7517801886372900880

`eq[A014021(2*n+3), A297155(A084937(n+1))]+1`
-/

namespace A249575.P7517801886372900880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A084937 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A249575.P7517801886372900880

/-! ## A249575.P16411720568737792892

`eq[A000122(3*n+2), A297155(A084937(n+1))]+1`
-/

namespace A249575.P16411720568737792892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A084937 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A249575.P16411720568737792892

/-! ## A249575.P17853375773571106294

`lt[A048158(A215904(n+1)), A325249(2*n+1)]`
-/

namespace A249575.P17853375773571106294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A215904 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325249 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249575.P17853375773571106294

/-!
# A249576: List of triples (r,s,t): the matrix M = [[1,4,4][1,3,2][1,2,1]] is raised to successive powers, then (r,s,t) are the square roots of M[3,1], M[1,1], M[1,3] respectively.

The programs for A249576, the canonical program `A249576.P1518874828092032459` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249576 has offset 0).

The definition of A249576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249576.P1518874828092032459

`2*a(n-3)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249576

/-- `2*a(n-3)+a(n-6)` -/
def P1518874828092032459.Spec : Prop :=
  ∀ n, (P1518874828092032459.a n : ℤ) = A249576 n

theorem P1518874828092032459.correct : P1518874828092032459.Spec := by
  intro n
  simp only [A249576]

end A249576

/-! ## A249576.P16800886255277617653

`a(n-2)+a(∑[n%3]-3)` with `a(0)=0, a(1)=1`
-/

namespace A249576.P16800886255277617653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A249576.P16800886255277617653

namespace A249576

/-- `a(n-2)+a(∑[n%3]-3)` -/
def P16800886255277617653.Spec : Prop :=
  ∀ n, (P16800886255277617653.a n : ℤ) = A249576 n

end A249576

/-! ## A249576.P14097642673191751382

`A101825(n)*A116560(A004280(n+1))`
-/

namespace A249576.P14097642673191751382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n * A116560 (A004280 (n + 1)).toNat

end

end A249576.P14097642673191751382

namespace A249576

/-- `A101825(n)*A116560(A004280(n+1))` -/
def P14097642673191751382.Spec : Prop :=
  ∀ n, P14097642673191751382.a n = A249576 n

end A249576

/-! ## A249576.P2327474328881474985

`Δ[A259361(A173278(n)+A018167(n))]`
-/

namespace A249576.P2327474328881474985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A173278 n + A018167 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249576.P2327474328881474985

namespace A249576

/-- `Δ[A259361(A173278(n)+A018167(n))]` -/
def P2327474328881474985.Spec : Prop :=
  ∀ n, P2327474328881474985.a n = A249576 n

end A249576

/-! ## A249576.P763277666222618206

`Δ[A121279(2*n+1)]%A133291(n+1)`
-/

namespace A249576.P763277666222618206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121279 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A133291 (n + 1))

end

end A249576.P763277666222618206

namespace A249576

/-- `Δ[A121279(2*n+1)]%A133291(n+1)` -/
def P763277666222618206.Spec : Prop :=
  ∀ n, P763277666222618206.a n = A249576 n

end A249576

/-!
# A249577: List of triples (r,s,t): the matrix M = [[1,4,4][1,3,2][1,2,1]] is raised to successive negative powers, then (r,s,t) are the square roots of M[3,1], M[1,1], M[1,3] respectively.

The programs for A249577, the canonical program `A249577.P2238030843788059114` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249577 has offset 0).

The definition of A249577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 783 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249577.P2238030843788059114

`∑[A033999(n)*A092550(n+4)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A249577

/-- `∑[A033999(n)*A092550(n+4)]` -/
def P2238030843788059114.Spec : Prop :=
  ∀ n, P2238030843788059114.a n = A249577 n

theorem P2238030843788059114.correct : P2238030843788059114.Spec := by
  intro n
  simp only [A249577]

end A249577

/-!
# A249578: List of triples (r,s,t): the matrix M = [[4,12,9][2,7,6][1,4,4]] is raised to successive powers, then (r,s,t) are the square roots of M[3,1], M[1,1], M[1,3] respectively.

The programs for A249578, the canonical program `A249578.P17689307767235872708` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249578 has offset 0).

The definition of A249578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249578.P17689307767235872708

`4*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249578

/-- `4*a(n-3)-a(n-6)` -/
def P17689307767235872708.Spec : Prop :=
  ∀ n, P17689307767235872708.a n = A249578 n

theorem P17689307767235872708.correct : P17689307767235872708.Spec := by
  intro n
  simp only [A249578]

end A249578

/-!
# A249579: List of quadruples (r,s,t,u): the matrix M = [[4,12,9][2,5,3][1,2,1]] is raised to successive powers, then (r,s,t,u) are the square roots of M[3,1], M[3,3], M[1,1], M[1,3] respectively.

The programs for A249579, the canonical program `A249579.P2943114171069243972` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249579 has offset 0).

The definition of A249579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249579.P2943114171069243972

`3*a(n-4)+a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=2, a(7)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249579

/-- `3*a(n-4)+a(n-8)` -/
def P2943114171069243972.Spec : Prop :=
  ∀ n, (P2943114171069243972.a n : ℤ) = A249579 n

theorem P2943114171069243972.correct : P2943114171069243972.Spec := by
  intro n
  simp only [A249579]

end A249579

/-! ## A249579.P2410549321476662166

`A343382(n)-A316441(A077168(n))`
-/

namespace A249579.P2410549321476662166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343382 n - A316441 (A077168 n).toNat

end

end A249579.P2410549321476662166

namespace A249579

/-- `A343382(n)-A316441(A077168(n))` -/
def P2410549321476662166.Spec : Prop :=
  ∀ n, P2410549321476662166.a n = A249579 n

end A249579

/-!
# A249581: List of quadruples (r,s,t,u): the matrix M = [[9,24,16][3,10,8][1,4,4]] is raised to successive powers, then (r,s,t,u) are the square roots of M[3,1], M[3,3], M[1,1], M[1,3] respectively.

The programs for A249581, the canonical program `A249581.P18017272305484022439` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249581 has offset 0).

The definition of A249581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249581.P18017272305484022439

`5*a(n-4)-2*a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=1, a(5)=2, a(6)=3, a(7)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249581

/-- `5*a(n-4)-2*a(n-8)` -/
def P18017272305484022439.Spec : Prop :=
  ∀ n, P18017272305484022439.a n = A249581 n

theorem P18017272305484022439.correct : P18017272305484022439.Spec := by
  intro n
  simp only [A249581]

end A249581

/-!
# A249582: Norm of the complex coefficients in 1/(1 - x + (1-2*I)*x^2).

The programs for A249582, there is no canonical definition to state claims against.
-/

/-! ## A249582.P6256067203015734053

`A343721(ceil(sqrt(A025035(n))))`
-/

namespace A249582.P6256067203015734053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343721 ⌈Real.sqrt (A025035 n : ℝ)⌉.toNat

end

end A249582.P6256067203015734053

/-! ## A249582.P14157958781369232180

`A324932(A325543(∑[2^n-1]))`
-/

namespace A249582.P14157958781369232180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (A325543 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A249582.P14157958781369232180

/-!
# A249583: Number of permutations p of [n] such that p(i) > p(i+1) iff i == 2 (mod 3).

The programs for A249583, there is no canonical definition to state claims against.
-/

/-! ## A249583.P1496865285988372982

`A060351(A033129(n))`
-/

namespace A249583.P1496865285988372982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A033129 n).toNat

end

end A249583.P1496865285988372982

/-! ## A249583.P14495932230260464071

`A060351(A033138(n+1)-A011782(n))`
-/

namespace A249583.P14495932230260464071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A033138 (n + 1) - A011782 n).toNat

end

end A249583.P14495932230260464071

/-! ## A249583.P4294538328955199960

`A247550(A073790(n))`
-/

namespace A249583.P4294538328955199960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247550 (A073790 n).toNat

end

end A249583.P4294538328955199960

/-! ## A249583.P6961415713948309108

`A247550(A004870(n+1))`
-/

namespace A249583.P6961415713948309108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247550 (A004870 (n + 1)).toNat

end

end A249583.P6961415713948309108

/-! ## A249583.P5918416138310187710

`A247550(A004881(n+1))`
-/

namespace A249583.P5918416138310187710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247550 (A004881 (n + 1)).toNat

end

end A249583.P5918416138310187710

/-!
# A249586: Sum of the first n^3 cubes.

The programs for A249586, the canonical program `A249586.P18263077682237297372` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249586 has offset 0).

The definition of A249586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249586.P10968782955199211049

`n^6*(n^3+1)²/4`
-/

namespace A249586.P10968782955199211049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 * (n ^ 3 + 1) ^ 2 : ℚ) / 4

end

end A249586.P10968782955199211049

namespace A249586

/-- `n^6*(n^3+1)²/4` -/
def P10968782955199211049.Spec : Prop :=
  ∀ n, P10968782955199211049.a n = (A249586 n : ℚ)

theorem P10968782955199211049.correct : P10968782955199211049.Spec := by
  intro n
  simp only [A249586, Nat.add_sub_cancel, A249586.P10968782955199211049.a, A249586.P18263077682237297372.a, A000537, A000537.P7887993002585723883.a, A000217, A000217.P10269402890581615239.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A249586

/-! ## A249586.P18263077682237297372

`A000537(n^3)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A249586

/-- `A000537(n^3)` -/
def P18263077682237297372.Spec : Prop :=
  ∀ n, P18263077682237297372.a n = A249586 n

theorem P18263077682237297372.correct : P18263077682237297372.Spec := by
  intro n
  simp only [A249586]

end A249586

/-! ## A249586.P16623708326301690148

`C(n^3+1, 2)²`
-/

namespace A249586.P16623708326301690148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 3 + 1) 2 ^ 2

end

end A249586.P16623708326301690148

namespace A249586

/-- `C(n^3+1, 2)²` -/
def P16623708326301690148.Spec : Prop :=
  ∀ n, (P16623708326301690148.a n : ℤ) = A249586 n

theorem P16623708326301690148.correct : P16623708326301690148.Spec := by
  intro n
  simp only [A249586, Nat.add_sub_cancel, A249586.P16623708326301690148.a, A249586.P18263077682237297372.a, A000537, A000537.P7887993002585723883.a, A000217, A000217.P10269402890581615239.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A249586

/-! ## A249586.P14232709513424794875

`A071232(n)²`
-/

namespace A249586.P14232709513424794875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n ^ 2

end

end A249586.P14232709513424794875

namespace A249586

/-- `A071232(n)²` -/
def P14232709513424794875.Spec : Prop :=
  ∀ n, P14232709513424794875.a n = A249586 n

theorem P14232709513424794875.correct : P14232709513424794875.Spec := by
  intro n
  simp only [A249586, Nat.add_sub_cancel, A249586.P14232709513424794875.a, A249586.P18263077682237297372.a, A000537, A000537.P7887993002585723883.a, A071232, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A249586

/-! ## A249586.P15267123599546660750

`(n*A101378(n))²`
-/

namespace A249586.P15267123599546660750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A101378 n) ^ 2

end

end A249586.P15267123599546660750

namespace A249586

/-- `(n*A101378(n))²` -/
def P15267123599546660750.Spec : Prop :=
  ∀ n, P15267123599546660750.a n = A249586 n

end A249586

/-! ## A249586.P13982579283176576917

`(n²*A027441(n))²`
-/

namespace A249586.P13982579283176576917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A027441 n) ^ 2

end

end A249586.P13982579283176576917

namespace A249586

/-- `(n²*A027441(n))²` -/
def P13982579283176576917.Spec : Prop :=
  ∀ n, P13982579283176576917.a n = A249586 n

end A249586

/-! ## A249586.P18015246639742199868

`(A085742(n)+∑[n])²`
-/

namespace A249586.P18015246639742199868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085742 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2

end

end A249586.P18015246639742199868

namespace A249586

/-- `(A085742(n)+∑[n])²` -/
def P18015246639742199868.Spec : Prop :=
  ∀ n, P18015246639742199868.a n = A249586 n

end A249586

/-! ## A249586.P2527626653273348819

`(∑[n]*A309372(n))²`
-/

namespace A249586.P2527626653273348819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A309372 n) ^ 2

end

end A249586.P2527626653273348819

namespace A249586

/-- `(∑[n]*A309372(n))²` -/
def P2527626653273348819.Spec : Prop :=
  ∀ n, P2527626653273348819.a n = A249586 n

end A249586

/-! ## A249586.P8745207383904226172

`A027441(n)*A168371(n)`
-/

namespace A249586.P8745207383904226172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n * A168371 n

end

end A249586.P8745207383904226172

namespace A249586

/-- `A027441(n)*A168371(n)` -/
def P8745207383904226172.Spec : Prop :=
  ∀ n, P8745207383904226172.a n = A249586 n

end A249586

/-! ## A249586.P4620510539611092270

`A101378(n)*A168194(n)`
-/

namespace A249586.P4620510539611092270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101378 n * A168194 n

end

end A249586.P4620510539611092270

namespace A249586

/-- `A101378(n)*A168194(n)` -/
def P4620510539611092270.Spec : Prop :=
  ∀ n, P4620510539611092270.a n = A249586 n

end A249586

/-! ## A249586.P5652126651763222301

`A071232(n)^A000005(A071189(n+1))`
-/

namespace A249586.P5652126651763222301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071232 n : ℚ) ^ (A000005 (A071189 (n + 1)).toNat : ℤ)

end

end A249586.P5652126651763222301

namespace A249586

/-- `A071232(n)^A000005(A071189(n+1))` -/
def P5652126651763222301.Spec : Prop :=
  ∀ n, P5652126651763222301.a n = (A249586 n : ℚ)

end A249586

/-! ## A249586.P13978828500292831866

`A071232(n)^A000005(A071190(n+1))`
-/

namespace A249586.P13978828500292831866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071232 n : ℚ) ^ (A000005 (A071190 (n + 1)).toNat : ℤ)

end

end A249586.P13978828500292831866

namespace A249586

/-- `A071232(n)^A000005(A071190(n+1))` -/
def P13978828500292831866.Spec : Prop :=
  ∀ n, P13978828500292831866.a n = (A249586 n : ℚ)

end A249586

/-! ## A249586.P6842663941072681505

`A071232(n)^A000005(A071216(n+1))`
-/

namespace A249586.P6842663941072681505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071232 n : ℚ) ^ (A000005 (A071216 (n + 1)).toNat : ℤ)

end

end A249586.P6842663941072681505

namespace A249586

/-- `A071232(n)^A000005(A071216(n+1))` -/
def P6842663941072681505.Spec : Prop :=
  ∀ n, P6842663941072681505.a n = (A249586 n : ℚ)

end A249586

/-! ## A249586.P4425758038658396972

`A071232(n)^A000005(A071195(n+1))`
-/

namespace A249586.P4425758038658396972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071232 n : ℚ) ^ (A000005 (A071195 (n + 1)).toNat : ℤ)

end

end A249586.P4425758038658396972

namespace A249586

/-- `A071232(n)^A000005(A071195(n+1))` -/
def P4425758038658396972.Spec : Prop :=
  ∀ n, P4425758038658396972.a n = (A249586 n : ℚ)

end A249586

/-! ## A249586.P4186583817289908841

`A071232(n)^A000005(A071196(n+1))`
-/

namespace A249586.P4186583817289908841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071232 n : ℚ) ^ (A000005 (A071196 (n + 1)).toNat : ℤ)

end

end A249586.P4186583817289908841

namespace A249586

/-- `A071232(n)^A000005(A071196(n+1))` -/
def P4186583817289908841.Spec : Prop :=
  ∀ n, P4186583817289908841.a n = (A249586 n : ℚ)

end A249586

/-!
# A249587: Numbers whose square remains square when the initial digit is removed.

The programs for A249587, there is no canonical definition to state claims against.
-/

/-! ## A249587.P2555932935752500367

`sqrt(A225885(n+1))`
-/

namespace A249587.P2555932935752500367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A225885 (n + 1) : ℝ)

end

end A249587.P2555932935752500367

/-! ## A249587.P1726290752786527518

`root(A225885(n+1), A036453(n+1))`
-/

namespace A249587.P1726290752786527518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A225885 (n + 1) : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A249587.P1726290752786527518

/-! ## A249587.P1388534082949917545

`root(A225885(n+1), gcd(2, A005843(n)))`
-/

namespace A249587.P1388534082949917545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A225885 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A249587.P1388534082949917545

/-! ## A249587.P8298972605255319209

`root(A225885(n+1), 2%A225873(n+1))`
-/

namespace A249587.P8298972605255319209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A225885 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A225873 (n + 1)) : ℝ))

end

end A249587.P8298972605255319209

/-! ## A249587.P17916968872099579873

`root(A225885(n+1), A034444(A034444(n+1)))`
-/

namespace A249587.P17916968872099579873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A225885 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A249587.P17916968872099579873

/-!
# A249588: G.f.: Product_{n>=1} 1/(1 - x^n/n^2) = Sum_{n>=0} a(n)*x^n/n!^2.

The programs for A249588, there is no canonical definition to state claims against.
-/

/-! ## A249588.P15848159683343213808

`A314133(round(n*a(n-1)*n/5))` with `a(0)=1`
-/

namespace A249588.P15848159683343213808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A314133 (SequenceMachineLib.roundAway (((n : ℤ) * a (n - 1) : ℚ) * ((n : ℚ) / 5))).toNat

end

end A249588.P15848159683343213808

/-!
# A249589: Numbers whose square with initial (= leftmost) digit removed is a prime.

The programs for A249589, there is no canonical definition to state claims against.
-/

/-! ## A249589.P7514867236780414420

`sqrt(A225873(n+1))`
-/

namespace A249589.P7514867236780414420
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A225873 (n + 1) : ℝ)

end

end A249589.P7514867236780414420

/-! ## A249589.P17321212673746376144

`root(A225873(n+1), 2)%A214493(n)`
-/

namespace A249589.P17321212673746376144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A225873 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A214493 n)

end

end A249589.P17321212673746376144

/-! ## A249589.P16809521198763672127

`root(A225873(n+1), gcd(2, A005843(n)))`
-/

namespace A249589.P16809521198763672127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A225873 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A249589.P16809521198763672127

/-! ## A249589.P9305712004078651439

`root(A225873(n+1), A020639(2*(n+1)))`
-/

namespace A249589.P9305712004078651439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A225873 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A249589.P9305712004078651439

/-! ## A249589.P13308953609768415370

`root(A225873(n+1), 2%A226090(n+1))`
-/

namespace A249589.P13308953609768415370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A225873 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A226090 (n + 1)) : ℝ))

end

end A249589.P13308953609768415370

/-! ## A249589.P15924744834454377148

`ceil(root(A225873(n+1), 2))%A079505(n+2)`
-/

namespace A249589.P15924744834454377148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A225873 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌉ (A079505 (n + 2))

end

end A249589.P15924744834454377148

/-! ## A249589.P135124662109275072

`A000265(root(A225873(n+1), 2))`
-/

namespace A249589.P135124662109275072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A225873 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A249589.P135124662109275072

/-! ## A249589.P13415472960617079770

`A014473(C(2*n+1, 2))+root(A225873(n+1), 2)`
-/

namespace A249589.P13415472960617079770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014473 (Nat.choose (2 * n + 1) 2) : ℝ) + (A225873 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A249589.P13415472960617079770

/-!
# A249590: E.g.f.: BesselI(0,2)*P(x) - Q(x), where P(x) = 1/Product_{n>=1} (1 - x^n/n^2) and Q(x) = Sum_{n>=1} 1/Product_{k=1..n} (k^2 - x^k).

The programs for A249590, there is no canonical definition to state claims against.
-/

/-! ## A249590.P4197519904352024662

`A131393(A349715(n))`
-/

namespace A249590.P4197519904352024662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A349715 n).toNat

end

end A249590.P4197519904352024662

/-!
# A249592: E.g.f.: exp(1)*P(x) - Q(x), where P(x) = 1/Product_{n>=1} (1 - x^n/n^2) and Q(x) = Sum_{n>=1} 1/Product_{k=1..n} (k - x^k/k).

The programs for A249592, there is no canonical definition to state claims against.
-/

/-! ## A249592.P5353474706132433909

`A338251(n^(n+1))-(n-1)`
-/

namespace A249592.P5353474706132433909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 (n ^ (n + 1)) - ((n : ℤ) - 1)

end

end A249592.P5353474706132433909

/-!
# A249594: Positions of primes in A249054.

The programs for A249594, there is no canonical definition to state claims against.
-/

/-! ## A249594.P5358079571128320430

`A249571(p?[comp[n²]])`
-/

namespace A249594.P5358079571128320430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A249594.P5358079571128320430

/-! ## A249594.P14100219052194053702

`A249571(A000040(n+1))`
-/

namespace A249594.P14100219052194053702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (A000040 (n + 1)).toNat

end

end A249594.P14100219052194053702

/-! ## A249594.P10402031300026340579

`A249571(A008578(n+2))`
-/

namespace A249594.P10402031300026340579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (A008578 (n + 2)).toNat

end

end A249594.P10402031300026340579

/-! ## A249594.P13686762840633080931

`A249571(A182986(n+2))`
-/

namespace A249594.P13686762840633080931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (A182986 (n + 2)).toNat

end

end A249594.P13686762840633080931

/-! ## A249594.P8007139466868274479

`A249571(record[A006530(n+2)])`
-/

namespace A249594.P8007139466868274479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249594.P8007139466868274479

/-! ## A249594.P13812552902971932060

`A249571(record[A014963(n+2)])`
-/

namespace A249594.P13812552902971932060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249594.P13812552902971932060

/-! ## A249594.P10048736209845912176

`A249571(record[A020639(n+2)])`
-/

namespace A249594.P10048736209845912176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249594.P10048736209845912176

/-! ## A249594.P4907084158847205423

`A249571(A006093(n+1)+1)`
-/

namespace A249594.P4907084158847205423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (A006093 (n + 1) + 1).toNat

end

end A249594.P4907084158847205423

/-! ## A249594.P18032294973926588263

`A249571(record[1-A033880(n+1)])`
-/

namespace A249594.P18032294973926588263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249594.P18032294973926588263

/-!
# A249595: Positions of nonprimes in A249054.

The programs for A249595, there is no canonical definition to state claims against.
-/

/-! ## A249595.P14559116909954656432

`A249571(A018252(n+1))`
-/

namespace A249595.P14559116909954656432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (A018252 (n + 1)).toNat

end

end A249595.P14559116909954656432

/-! ## A249595.P8964754960760565299

`A249571(A141468(n+2))`
-/

namespace A249595.P8964754960760565299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (A141468 (n + 2)).toNat

end

end A249595.P8964754960760565299

/-! ## A249595.P3199049811070779007

`record[A249571(n+1)%A164022(n+1)]`
-/

namespace A249595.P3199049811070779007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249571 (n + 1)) (A164022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249595.P3199049811070779007

/-! ## A249595.P12917673396305688502

`A249571(comp[p?[A294456(n+1)-1]-1]+1)`
-/

namespace A249595.P12917673396305688502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A249595.P12917673396305688502

/-! ## A249595.P13195553576664396023

`A249571(comp[p?[A014963(n+1)]-1]+1)`
-/

namespace A249595.P13195553576664396023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A249595.P13195553576664396023

/-! ## A249595.P471840458290571028

`record[(n+1)%(A239968(A249054(n+1))+n+1)]`
-/

namespace A249595.P471840458290571028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A239968 (A249054 (n + 1)).toNat + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249595.P471840458290571028

/-! ## A249595.P15208307186902888423

`A249571(record[A018252(A324345(n))])`
-/

namespace A249595.P15208307186902888423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A324345 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249595.P15208307186902888423

/-!
# A249596: Analog of A097717 in base 2.

The programs for A249596, there is no canonical definition to state claims against.
-/

/-! ## A249596.P14272047352690798425

`(n+1)*A165781(n)`
-/

namespace A249596.P14272047352690798425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165781 n

end

end A249596.P14272047352690798425

/-! ## A249596.P7230967913012125389

`(n+1)*A204984(Δ[n²])`
-/

namespace A249596.P7230967913012125389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204984 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A249596.P7230967913012125389

/-! ## A249596.P1841082041338549277

`A204983(2*n+1)/(4*n+2)*2*(n+1)`
-/

namespace A249596.P1841082041338549277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204983 (2 * n + 1) : ℚ) / (4 * n + 2 : ℚ) * (2 * (n + 1) : ℚ)

end

end A249596.P1841082041338549277

/-! ## A249596.P9419150928411211554

`A165781(n)*A328399(2*n)`
-/

namespace A249596.P9419150928411211554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 n * A328399 (2 * n)

end

end A249596.P9419150928411211554

/-! ## A249596.P8155405717692249956

`(A165781(n)+A000225(A002326(n)))/2`
-/

namespace A249596.P8155405717692249956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165781 n + A000225 (A002326 n).toNat : ℚ) / 2

end

end A249596.P8155405717692249956

/-! ## A249596.P3347452710581509094

`(n+1)*A204992(A016825(n))`
-/

namespace A249596.P3347452710581509094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204992 (A016825 n).toNat

end

end A249596.P3347452710581509094

/-!
# A249597: Analog of A097717 in base 3.

The programs for A249597, there is no canonical definition to state claims against.
-/

/-! ## A249597.P1928449278188045233

`(n+1)*A333238(A001644(3*(n+1)))-(n+1)`
-/

namespace A249597.P1928449278188045233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333238 (A001644 (3 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A249597.P1928449278188045233

/-!
# A249598: Analog of A097717 in base 4.

The programs for A249598, there is no canonical definition to state claims against.
-/

/-! ## A249598.P358385114627703066

`(n+1)*A093178(A191637(2*n+1))`
-/

namespace A249598.P358385114627703066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093178 (A191637 (2 * n + 1)).toNat

end

end A249598.P358385114627703066

