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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A125600: Continued fraction expansion of constant defined in A124091.

The programs for A125600, there is no canonical definition to state claims against.
-/

/-! ## A125600.P12188214048295250643

`floor(A181313(n)+acot(n))`
-/

namespace A125600.P12188214048295250643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181313 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A125600.P12188214048295250643

/-! ## A125600.P9450015078943861246

`A181313(A028310(n))`
-/

namespace A125600.P9450015078943861246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181313 (A028310 n).toNat

end

end A125600.P9450015078943861246

/-! ## A125600.P748513869160370871

`A181313(A233583(n+1))`
-/

namespace A125600.P748513869160370871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181313 (A233583 (n + 1)).toNat

end

end A125600.P748513869160370871

/-! ## A125600.P6206439541960211702

`A181313(A000007(n)+n)`
-/

namespace A125600.P6206439541960211702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181313 (A000007 n + (n : ℤ)).toNat

end

end A125600.P6206439541960211702

/-! ## A125600.P17724279654935388773

`A054977(n)*A181313(n)`
-/

namespace A125600.P17724279654935388773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A181313 n

end

end A125600.P17724279654935388773

/-! ## A125600.P10399987440305312102

`A181313(A254667(n+1)-1)`
-/

namespace A125600.P10399987440305312102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181313 (A254667 (n + 1) - 1).toNat

end

end A125600.P10399987440305312102

/-! ## A125600.P11175796826425017753

`A181313(A348776(n+1)-1)`
-/

namespace A125600.P11175796826425017753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181313 (A348776 (n + 1) - 1).toNat

end

end A125600.P11175796826425017753

/-! ## A125600.P9445277890915317010

`A124091(n)+A181313(n)-A084119(n)`
-/

namespace A125600.P9445277890915317010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124091 (n + 1) + (A181313 n - A084119 (n + 1))

end

end A125600.P9445277890915317010

/-! ## A125600.P11890907563311132057

`A181313(A151878(n)+n)`
-/

namespace A125600.P11890907563311132057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181313 (A151878 n + (n : ℤ)).toNat

end

end A125600.P11890907563311132057

/-! ## A125600.P5644397445409126058

`A181313(A151909(n)+n)`
-/

namespace A125600.P5644397445409126058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181313 (A151909 n + (n : ℤ)).toNat

end

end A125600.P5644397445409126058

/-!
# A125602: Centered triangular numbers that are prime.

The programs for A125602, there is no canonical definition to state claims against.
-/

/-! ## A125602.P16628188728806601661

`∩[A269414(n+1), A381647(n+1)]`
-/

namespace A125602.P16628188728806601661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125602.P16628188728806601661

/-! ## A125602.P13180546006212588245

`∩[A005448(n+1), A269414(n+1)]`
-/

namespace A125602.P13180546006212588245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125602.P13180546006212588245

/-! ## A125602.P6124362132704712820

`∩[A269414(n+1), A373584(n+1)]`
-/

namespace A125602.P6124362132704712820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125602.P6124362132704712820

/-! ## A125602.P7106881292448640905

`A005448(A125603(n+1))`
-/

namespace A125602.P7106881292448640905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (A125603 (n + 1)).toNat

end

end A125602.P7106881292448640905

/-! ## A125602.P5029315696335866368

`A242658(A125603(n+1))/A020639(2*(n+1))`
-/

namespace A125602.P5029315696335866368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242658 (A125603 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A125602.P5029315696335866368

/-! ## A125602.P4537582397930588298

`A242658(A125603(n+1))/A001316(A001316(n))`
-/

namespace A125602.P4537582397930588298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242658 (A125603 (n + 1)).toNat : ℚ) / (A001316 (A001316 n).toNat : ℚ)

end

end A125602.P4537582397930588298

/-! ## A125602.P5419171092272803734

`A143689(A125603(n+1))-A125603(A000027(n+1))`
-/

namespace A125602.P5419171092272803734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (A125603 (n + 1)).toNat - A125603 (A000027 (n + 1)).toNat

end

end A125602.P5419171092272803734

/-! ## A125602.P13105653832751197322

`A242658(A125603(n+1))/A000005(A002476(n+1))`
-/

namespace A125602.P13105653832751197322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242658 (A125603 (n + 1)).toNat : ℚ) / (A000005 (A002476 (n + 1)).toNat : ℚ)

end

end A125602.P13105653832751197322

/-! ## A125602.P6533930135006601217

`A242658(A125603(n+1))/A000005(A007500(n+1))`
-/

namespace A125602.P6533930135006601217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242658 (A125603 (n + 1)).toNat : ℚ) / (A000005 (A007500 (n + 1)).toNat : ℚ)

end

end A125602.P6533930135006601217

/-! ## A125602.P5838370361087413171

`A242658(A125603(n+1))/A001227(A000040(2*n+3))`
-/

namespace A125602.P5838370361087413171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242658 (A125603 (n + 1)).toNat : ℚ) / (A001227 (A000040 (2 * n + 3)).toNat : ℚ)

end

end A125602.P5838370361087413171

/-! ## A125602.P2850192567441030292

`A058212(3*A125603(n+1))`
-/

namespace A125602.P2850192567441030292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (3 * A125603 (n + 1)).toNat

end

end A125602.P2850192567441030292

/-! ## A125602.P16994796992101360973

`p?[∑[3*n]+1]`
-/

namespace A125602.P16994796992101360973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A125602.P16994796992101360973

/-! ## A125602.P7126397426364075135

`or(1, p?[∑[n+1]+n²])`
-/

namespace A125602.P7126397426364075135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A125602.P7126397426364075135

/-! ## A125602.P7022559651664400689

`xor(1, p?[3*A000217(n)+1]-1)`
-/

namespace A125602.P7022559651664400689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A125602.P7022559651664400689

/-! ## A125602.P3499197076543015951

`∩[A005448(n+1), A106861(n+1)]`
-/

namespace A125602.P3499197076543015951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125602.P3499197076543015951

/-! ## A125602.P4845640241291313826

`∩[A106861(n+1), A269414(n+1)]`
-/

namespace A125602.P4845640241291313826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125602.P4845640241291313826

/-! ## A125602.P9684275083818032244

`∩[A106861(n+1), A381647(n+1)]`
-/

namespace A125602.P9684275083818032244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125602.P9684275083818032244

/-!
# A125603: Numbers n such that 3n(n-1)/2 + 1 is prime.

The programs for A125603, there is no canonical definition to state claims against.
-/

/-! ## A125603.P275451774093465399

`A133363(n+1)+1`
-/

namespace A125603.P275451774093465399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133363 (n + 1) + 1

end

end A125603.P275451774093465399

/-! ## A125603.P11537146696169265078

`A020725(A133363(n+1))`
-/

namespace A125603.P11537146696169265078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A133363 (n + 1)).toNat

end

end A125603.P11537146696169265078

/-! ## A125603.P6047061410624584795

`lt[A245838(A000096(n)+1), 2]+2`
-/

namespace A125603.P6047061410624584795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A000096 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A125603.P6047061410624584795

/-! ## A125603.P10799795585390180240

`lt[A245838(A000217(n+1)), 2]+2`
-/

namespace A125603.P10799795585390180240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A000217 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A125603.P10799795585390180240

/-! ## A125603.P10633251602726697439

`lt[A245838(A034856(n+1)+2), 3]+3`
-/

namespace A125603.P10633251602726697439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A034856 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A125603.P10633251602726697439

/-! ## A125603.P17875989170337415073

`lt[A245838(C(A028310(n)+1, 2)), 3]+1`
-/

namespace A125603.P17875989170337415073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (Nat.choose (A028310 n + 1).toNat 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A125603.P17875989170337415073

/-! ## A125603.P7948461714059021198

`eq[1, A001222(3*C(n, 2)+1)]`
-/

namespace A125603.P7948461714059021198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * Nat.choose n 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125603.P7948461714059021198

/-! ## A125603.P3978751433756152966

`eq[2, A000005(3*C(n, 2)+1)]`
-/

namespace A125603.P3978751433756152966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * Nat.choose n 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125603.P3978751433756152966

/-! ## A125603.P7549094791819001466

`eq[1, A001222(∑[n]+(1-n)²)]`
-/

namespace A125603.P7549094791819001466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) + (1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125603.P7549094791819001466

/-! ## A125603.P8728612632081892602

`eq[2, A000005(∑[n]+(1-n)²)]`
-/

namespace A125603.P8728612632081892602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) + (1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125603.P8728612632081892602

/-!
# A125604: Minimum of the largest prime factors of a number and its two neighbors.

The programs for A125604, there is no canonical definition to state claims against.
-/

/-! ## A125604.P8501351242846774200

`A020639(A085392(n+2)*A245486(n+3))`
-/

namespace A125604.P8501351242846774200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A085392 (n + 2) * A245486 (n + 3)).toNat

end

end A125604.P8501351242846774200

/-! ## A125604.P4189564667309481089

`A020639(lcm(A085392(n+2), A245486(n+3)))`
-/

namespace A125604.P4189564667309481089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A085392 (n + 2)) (A245486 (n + 3)))

end

end A125604.P4189564667309481089

/-! ## A125604.P15957660656890531269

`A020639(A006530(n+2)*A245486(n+3))`
-/

namespace A125604.P15957660656890531269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006530 (n + 2) * A245486 (n + 3)).toNat

end

end A125604.P15957660656890531269

/-! ## A125604.P13890629256392568477

`A020639(A245486(n+3)*A345941(n+2))`
-/

namespace A125604.P13890629256392568477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A245486 (n + 3) * A345941 (n + 2)).toNat

end

end A125604.P13890629256392568477

/-! ## A125604.P1644798616597259786

`A020639(lcm(A245486(n+2), A345941(n+4)))`
-/

namespace A125604.P1644798616597259786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A245486 (n + 2)) (A345941 (n + 4)))

end

end A125604.P1644798616597259786

/-! ## A125604.P8757846937792930416

`A074828(A245486(n+3)*A345941(n+2))`
-/

namespace A125604.P8757846937792930416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A245486 (n + 3) * A345941 (n + 2)).toNat

end

end A125604.P8757846937792930416

/-!
# A125605: Triangle read by rows: T(n,k) = (T(n-1,k-1) + T(n-1,k)) / gcd(T(n-1,k-1), T(n-1,k)).

The programs for A125605, the canonical program `A125605.P3652983556328390279` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125605 has offset 0).

The definition of A125605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125605.P3652983556328390279

`(T(n-1,k-1)+T(n-1,k))/gcd(T(n-1,k-1), T(n-1,k))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125605

/-- `(T(n-1,k-1)+T(n-1,k))/gcd(T(n-1,k-1), T(n-1,k))` -/
def P3652983556328390279.Spec : Prop :=
  ∀ n, P3652983556328390279.a n = (A125605 n : ℚ)

end A125605

/-! ## A125605.P3681243887982520982

`A053829(A007318(n))%A367580(3*n+2)`
-/

namespace A125605.P3681243887982520982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053829 (A007318 n).toNat) (A367580 (3 * n + 2))

end

end A125605.P3681243887982520982

namespace A125605

/-- `A053829(A007318(n))%A367580(3*n+2)` -/
def P3681243887982520982.Spec : Prop :=
  ∀ n, P3681243887982520982.a n = A125605 n

end A125605

/-! ## A125605.P15652613087743201973

`A101211(A111636(n)+2)`
-/

namespace A125605.P15652613087743201973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A111636 n + 2).toNat

end

end A125605.P15652613087743201973

namespace A125605

/-- `A101211(A111636(n)+2)` -/
def P15652613087743201973.Spec : Prop :=
  ∀ n, P15652613087743201973.a n = A125605 n

end A125605

/-! ## A125605.P3609912288525471398

`A101211(or(2, A111636(n)))`
-/

namespace A125605.P3609912288525471398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (Int.lor 2 (A111636 n)).toNat

end

end A125605.P3609912288525471398

namespace A125605

/-- `A101211(or(2, A111636(n)))` -/
def P3609912288525471398.Spec : Prop :=
  ∀ n, P3609912288525471398.a n = A125605 n

end A125605

/-! ## A125605.P6567272501228700009

`A010350(A099597(n))%10`
-/

namespace A125605.P6567272501228700009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010350 (A099597 n).toNat) 10

end

end A125605.P6567272501228700009

namespace A125605

/-- `A010350(A099597(n))%10` -/
def P6567272501228700009.Spec : Prop :=
  ∀ n, P6567272501228700009.a n = A125605 n

end A125605

/-!
# A125606: Row sums of A125605.

The programs for A125606, there is no canonical definition to state claims against.
-/

/-! ## A125606.P9231364514396469708

`record[and(A004277(n), A043330(n+4))]`
-/

namespace A125606.P9231364514396469708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004277 n) (A043330 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125606.P9231364514396469708

/-! ## A125606.P1216505605433099558

`record[A000005(a(n-1)+n²*a(n-2))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=1`
-/

namespace A125606.P1216505605433099558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0, 1] fun n f1 =>
  A000005 (f1 (n - 1) + (n ^ 2 : ℤ) * f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125606.P1216505605433099558

/-! ## A125606.P11322970954768289826

`∑[A329378(A007582(n))]`
-/

namespace A125606.P11322970954768289826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A007582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125606.P11322970954768289826

/-! ## A125606.P7445067083505209921

`∑[A329378(A000217(2^n))]`
-/

namespace A125606.P7445067083505209921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A000217 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125606.P7445067083505209921

/-! ## A125606.P7046295604195624467

`record[A215366(A007953(C(n, 2)))]`
-/

namespace A125606.P7046295604195624467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (A007953 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125606.P7046295604195624467

/-!
# A125607: Lesser of the smallest pair of consecutive positive reduced quadratic residues modulo p = prime(n) > 5.

The programs for A125607, there is no canonical definition to state claims against.
-/

/-! ## A125607.P4970090631915883040

`A302800(A302808(n+1)^∏{d}[1-n, #%2])`
-/

namespace A125607.P4970090631915883040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302800 (A302808 (n + 1) ^ (∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2)).toNat

end

end A125607.P4970090631915883040

/-! ## A125607.P5875703083189132846

`A055401(A120085(n)%A048655(n+1))`
-/

namespace A125607.P5875703083189132846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (Int.tmod (A120085 n) (A048655 (n + 1))).toNat

end

end A125607.P5875703083189132846

/-! ## A125607.P4780062865278718104

`A211221(A206441(n+1)^A299321(n+1))`
-/

namespace A125607.P4780062865278718104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (SequenceMachineLib.roundAway ((A206441 (n + 1) : ℚ) ^ (A299321 (n + 1) : ℤ))).toNat

end

end A125607.P4780062865278718104

/-!
# A125608: Triangle read by rows: given the left border = the Lucas numbers, (1, 3, 4, 7, ...), T(n,k) = (n-1,k) + (n-1,k-1).

The programs for A125608, there is no canonical definition to state claims against.
-/

/-! ## A125608.P7087284305212744896

`A105809(n)+2*A136431(A061579(n))`
-/

namespace A125608.P7087284305212744896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 n + 2 * A136431 (A061579 n).toNat

end

end A125608.P7087284305212744896

/-! ## A125608.P11144008009161725519

`A027960(A061885(n))`
-/

namespace A125608.P11144008009161725519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A061885 n).toNat

end

end A125608.P11144008009161725519

/-! ## A125608.P13802342016642867122

`A027960(eq[1, A118175(n)])`
-/

namespace A125608.P13802342016642867122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125608.P13802342016642867122

/-! ## A125608.P14278327074279058411

`A027960(A057944(n)+n)`
-/

namespace A125608.P14278327074279058411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A057944 n + (n : ℤ)).toNat

end

end A125608.P14278327074279058411

/-! ## A125608.P1932435740532741491

`A027960(record[A037213(n)+n])`
-/

namespace A125608.P1932435740532741491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125608.P1932435740532741491

/-! ## A125608.P11904576159626662809

`A027960(record[n*A118175(n)])`
-/

namespace A125608.P11904576159626662809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125608.P11904576159626662809

/-! ## A125608.P14606151234905426473

`A027960(2*n-A002262(n))`
-/

namespace A125608.P14606151234905426473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((2 * n : ℤ) - A002262 n).toNat

end

end A125608.P14606151234905426473

/-! ## A125608.P9353327404351464812

`A027960(n-A002262(n)+n)`
-/

namespace A125608.P9353327404351464812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A125608.P9353327404351464812

/-! ## A125608.P17057562714907185398

`A027960(n-(A002262(n)-n))`
-/

namespace A125608.P17057562714907185398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((n : ℤ) - (A002262 n - (n : ℤ))).toNat

end

end A125608.P17057562714907185398

/-! ## A125608.P1432421251435410977

`A027960(2*n+1-A002260(n+1))`
-/

namespace A125608.P1432421251435410977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((2 * n + 1 : ℤ) - A002260 (n + 1)).toNat

end

end A125608.P1432421251435410977

/-! ## A125608.P8386962688537855775

`A027960(A000217(A003056(n))+n)`
-/

namespace A125608.P8386962688537855775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A000217 (A003056 n).toNat + (n : ℤ)).toNat

end

end A125608.P8386962688537855775

/-!
# A125609: Smallest prime p such that 3^n divides p^2 - 1.

The programs for A125609, there is no canonical definition to state claims against.
-/

/-! ## A125609.P6220488165156645564

`A208241(∑[3^n])`
-/

namespace A125609.P6220488165156645564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208241 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125609.P6220488165156645564

/-! ## A125609.P7547370928300810251

`A133410(3^n-1)`
-/

namespace A125609.P7547370928300810251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133410 (3 ^ n - 1)

end

end A125609.P7547370928300810251

/-! ## A125609.P16232194785889289565

`A151800(∑[3*a(n-1)])` with `a(0)=1, a(1)=12`
-/

namespace A125609.P16232194785889289565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125609.P16232194785889289565

/-! ## A125609.P6013285428246524334

`A151800(4*(3^n-1)+Δ[3^n]-1)`
-/

namespace A125609.P6013285428246524334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (4 * ((3 ^ n : ℤ) - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1)).toNat

end

end A125609.P6013285428246524334

/-!
# A125610: Smallest prime p such that 5^n divides p^4 - 1.

The programs for A125610, there is no canonical definition to state claims against.
-/

/-! ## A125610.P8931755969951499497

`A078332(5^(n+1))`
-/

namespace A125610.P8931755969951499497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078332 (5 ^ (n + 1))

end

end A125610.P8931755969951499497

/-!
# A125613: Sum of the squares of the quadratic residues of prime(n).

The programs for A125613, there is no canonical definition to state claims against.
-/

/-! ## A125613.P812903784119370413

`A098509(a(n-1))` with `a(0)=1, a(1)=1, a(2)=17`
-/

namespace A125613.P812903784119370413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 17] fun n a =>
  A098509 (a (n - 1)).toNat

end

end A125613.P812903784119370413

/-!
# A125614: (Sum of the squares of the quadratic residues of prime(n)) / prime(n).

The programs for A125614, there is no canonical definition to state claims against.
-/

/-! ## A125614.P7729379222989071394

`A125613(n+4)/A000040(n+4)`
-/

namespace A125614.P7729379222989071394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125613 (n + 4) : ℚ) / (A000040 (n + 4) : ℚ)

end

end A125614.P7729379222989071394

/-! ## A125614.P3409026362054394270

`A125613(n+4)/p?[A004273(n+4)]`
-/

namespace A125614.P3409026362054394270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125613 (n + 4) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A125614.P3409026362054394270

/-! ## A125614.P16113224654700836606

`A125613(n+4)/A006530(A076409(n+4))`
-/

namespace A125614.P16113224654700836606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125613 (n + 4) : ℚ) / (A006530 (A076409 (n + 4)).toNat : ℚ)

end

end A125614.P16113224654700836606

/-! ## A125614.P9109323843499678929

`A125613(n+4)/A006530(A125615(n+4))`
-/

namespace A125614.P9109323843499678929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125613 (n + 4) : ℚ) / (A006530 (A125615 (n + 4)).toNat : ℚ)

end

end A125614.P9109323843499678929

/-!
# A125615: Sum of the quadratic nonresidues of prime(n).

The programs for A125615, there is no canonical definition to state claims against.
-/

/-! ## A125615.P11201975433550603153

`A166405(A102781(n+1))`
-/

namespace A125615.P11201975433550603153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A102781 (n + 1)).toNat

end

end A125615.P11201975433550603153

/-! ## A125615.P5082349277707492985

`A166405(lt[A001055(2*n+1), 2])`
-/

namespace A125615.P5082349277707492985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A125615.P5082349277707492985

/-! ## A125615.P13053788866189240628

`A282038(n+1)+A076409(n+1)`
-/

namespace A125615.P13053788866189240628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 1) + A076409 (n + 1)

end

end A125615.P13053788866189240628

/-! ## A125615.P10847245535116773868

`A008837(n+1)-A076409(n+1)`
-/

namespace A125615.P10847245535116773868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - A076409 (n + 1)

end

end A125615.P10847245535116773868

/-! ## A125615.P10881141432705305547

`A166406(A102781(n+1))+A076409(n+1)`
-/

namespace A125615.P10881141432705305547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 (A102781 (n + 1)).toNat + A076409 (n + 1)

end

end A125615.P10881141432705305547

/-! ## A125615.P15820065978247994547

`A076409(n+1)-A228131(A000040(n+1))`
-/

namespace A125615.P15820065978247994547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076409 (n + 1) - A228131 (A000040 (n + 1)).toNat

end

end A125615.P15820065978247994547

/-! ## A125615.P13757617915431467644

`A166405(A008837(n+1)%A006093(n+1))`
-/

namespace A125615.P13757617915431467644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (Int.tmod (A008837 (n + 1)) (A006093 (n + 1))).toNat

end

end A125615.P13757617915431467644

/-! ## A125615.P7131411757037763109

`A165898(p?[comp[n²]])`
-/

namespace A125615.P7131411757037763109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A125615.P7131411757037763109

/-! ## A125615.P393470144365210793

`A165898(A000040(n+1))`
-/

namespace A125615.P393470144365210793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (A000040 (n + 1)).toNat

end

end A125615.P393470144365210793

/-! ## A125615.P18400018093947013940

`A165898(A006005(n+1))`
-/

namespace A125615.P18400018093947013940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (A006005 (n + 1)).toNat

end

end A125615.P18400018093947013940

/-! ## A125615.P3256292874055302400

`A165898(A008578(n+2))`
-/

namespace A125615.P3256292874055302400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (A008578 (n + 2)).toNat

end

end A125615.P3256292874055302400

/-! ## A125615.P217940092559884093

`A165898(A075643(n+2))`
-/

namespace A125615.P217940092559884093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (A075643 (n + 2)).toNat

end

end A125615.P217940092559884093

/-! ## A125615.P6923952711895932061

`A165898(A182986(n+2))`
-/

namespace A125615.P6923952711895932061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (A182986 (n + 2)).toNat

end

end A125615.P6923952711895932061

/-! ## A125615.P6388327825519768739

`A165898(record[A006530(n+2)])`
-/

namespace A125615.P6388327825519768739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125615.P6388327825519768739

/-! ## A125615.P5574262299760997567

`A165898(record[A014963(n+2)])`
-/

namespace A125615.P5574262299760997567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125615.P5574262299760997567

/-! ## A125615.P4882541426354598116

`A165898(record[A020639(n+2)])`
-/

namespace A125615.P4882541426354598116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125615.P4882541426354598116

/-! ## A125615.P967751962209223408

`A165898(record[A000010(n+1)+1])`
-/

namespace A125615.P967751962209223408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125615.P967751962209223408

/-!
# A125616: (Sum of the quadratic nonresidues of prime(n)) / prime(n).

The programs for A125616, there is no canonical definition to state claims against.
-/

/-! ## A125616.P8210195287801370895

`A125615(n+3)/A000040(n+3)`
-/

namespace A125616.P8210195287801370895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125615 (n + 3) : ℚ) / (A000040 (n + 3) : ℚ)

end

end A125616.P8210195287801370895

/-! ## A125616.P712605866733489332

`A165951(n+3)+A076410(n+3)`
-/

namespace A125616.P712605866733489332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165951 (n + 3) + A076410 (n + 3)

end

end A125616.P712605866733489332

/-! ## A125616.P9911410029426703019

`A125615(n+3)/A065091(n+2)`
-/

namespace A125616.P9911410029426703019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125615 (n + 3) : ℚ) / (A065091 (n + 2) : ℚ)

end

end A125616.P9911410029426703019

/-! ## A125616.P1030004348010805675

`A125615(n+3)%A005097(n+2)`
-/

namespace A125616.P1030004348010805675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125615 (n + 3)) (A005097 (n + 2))

end

end A125616.P1030004348010805675

/-! ## A125616.P4930993915139095113

`A125615(n+3)/p?[A064429(2*n)]`
-/

namespace A125616.P4930993915139095113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125615 (n + 3) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A125616.P4930993915139095113

/-! ## A125616.P3773550701529564726

`A125615(n+3)/p?[A091512(n+4)]`
-/

namespace A125616.P3773550701529564726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091512 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125615 (n + 3) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A125616.P3773550701529564726

/-! ## A125616.P8380569982651772700

`A006254(n+2)-(A076410(n+3)+1)`
-/

namespace A125616.P8380569982651772700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) - (A076410 (n + 3) + 1)

end

end A125616.P8380569982651772700

/-! ## A125616.P6109084838195468923

`A125615(n+3)/A006530(A076409(n+3))`
-/

namespace A125616.P6109084838195468923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125615 (n + 3) : ℚ) / (A006530 (A076409 (n + 3)).toNat : ℚ)

end

end A125616.P6109084838195468923

/-!
# A125617: Sum of the squares of the quadratic nonresidues of prime(n).

The programs for A125617, there is no canonical definition to state claims against.
-/

/-! ## A125617.P6647339268230001961

`A324588(A048654(n))-A343975(n)`
-/

namespace A125617.P6647339268230001961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (A048654 n).toNat - A343975 n

end

end A125617.P6647339268230001961

/-!
# A125618: (Sum of the squares of the quadratic nonresidues of prime(n)) / prime(n).

The programs for A125618, there is no canonical definition to state claims against.
-/

/-! ## A125618.P1592992628878582258

`A125617(n+4)/A000040(n+4)`
-/

namespace A125618.P1592992628878582258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125617 (n + 4) : ℚ) / (A000040 (n + 4) : ℚ)

end

end A125618.P1592992628878582258

/-! ## A125618.P7318895750968208438

`A125617(n+4)/A215848(n+2)`
-/

namespace A125618.P7318895750968208438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125617 (n + 4) : ℚ) / (A215848 (n + 2) : ℚ)

end

end A125618.P7318895750968208438

/-! ## A125618.P1457904316584351086

`A125617(n+4)/A140475(n+3)`
-/

namespace A125618.P1457904316584351086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125617 (n + 4) : ℚ) / (A140475 (n + 3) : ℚ)

end

end A125618.P1457904316584351086

/-! ## A125618.P6006517044079931481

`A125617(n+4)/A008578(n+5)`
-/

namespace A125618.P6006517044079931481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125617 (n + 4) : ℚ) / (A008578 (n + 5) : ℚ)

end

end A125618.P6006517044079931481

/-! ## A125618.P3538174268575759757

`A125617(n+4)/A267872(A005097(n+3))`
-/

namespace A125618.P3538174268575759757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125617 (n + 4) : ℚ) / (A267872 (A005097 (n + 3)).toNat : ℚ)

end

end A125618.P3538174268575759757

/-! ## A125618.P1580076339304646901

`A125617(n+4)/A267872(A102781(n+4))`
-/

namespace A125618.P1580076339304646901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125617 (n + 4) : ℚ) / (A267872 (A102781 (n + 4)).toNat : ℚ)

end

end A125618.P1580076339304646901

/-! ## A125618.P8622396489005822111

`A125617(n+4)/A006530(A076409(n+4))`
-/

namespace A125618.P8622396489005822111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125617 (n + 4) : ℚ) / (A006530 (A076409 (n + 4)).toNat : ℚ)

end

end A125618.P8622396489005822111

/-! ## A125618.P7354961981651431869

`A125617(n+4)/A006530(A125615(n+4))`
-/

namespace A125618.P7354961981651431869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125617 (n + 4) : ℚ) / (A006530 (A125615 (n + 4)).toNat : ℚ)

end

end A125618.P7354961981651431869

/-!
# A125624: Array read by antidiagonals: n-th row contains the positive integers with their largest prime factor equal to the n-th prime.

The programs for A125624, there is no canonical definition to state claims against.
-/

/-! ## A125624.P9738975921547682414

`A104887(n+1)*A253572(n+1)`
-/

namespace A125624.P9738975921547682414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1) * A253572 (n + 1)

end

end A125624.P9738975921547682414

/-! ## A125624.P12998707575122505129

`A000040(C(comp[∑[n]]-n, 2)-n)*A253572(n+1)`
-/

namespace A125624.P12998707575122505129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) * A253572 (n + 1)

end

end A125624.P12998707575122505129

/-! ## A125624.P12874763304205279074

`A019565(A130321(n))*A253572(n+1)`
-/

namespace A125624.P12874763304205279074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A130321 n).toNat * A253572 (n + 1)

end

end A125624.P12874763304205279074

/-! ## A125624.P5074603397957668050

`A067747(A099375(n))*A253572(n+1)`
-/

namespace A125624.P5074603397957668050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A099375 n).toNat * A253572 (n + 1)

end

end A125624.P5074603397957668050

/-! ## A125624.P17184791213766684520

`A037126(A278818(n))*A253572(n+1)`
-/

namespace A125624.P17184791213766684520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A278818 n).toNat * A253572 (n + 1)

end

end A125624.P17184791213766684520

/-! ## A125624.P4473601269899931828

`A000040(A004736(n+1))*A253572(n+1)`
-/

namespace A125624.P4473601269899931828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat * A253572 (n + 1)

end

end A125624.P4473601269899931828

/-! ## A125624.P15806026225712041389

`A000040(A025581(n)+1)*A253572(n+1)`
-/

namespace A125624.P15806026225712041389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A025581 n + 1).toNat * A253572 (n + 1)

end

end A125624.P15806026225712041389

/-! ## A125624.P2451494442475679216

`A006530(A257252(n+1))*A253572(n+1)`
-/

namespace A125624.P2451494442475679216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A257252 (n + 1)).toNat * A253572 (n + 1)

end

end A125624.P2451494442475679216

/-! ## A125624.P11475173179876530068

`A020639(A083140(n+2))*A253572(n+1)`
-/

namespace A125624.P11475173179876530068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A083140 (n + 2)).toNat * A253572 (n + 1)

end

end A125624.P11475173179876530068

/-!
# A125625: Number of elements in the semigroup of type K_n.

The programs for A125625, there is no canonical definition to state claims against.
-/

/-! ## A125625.P3194566438807175679

`A059897(or(A007289(n), A029837(2*n+1)))`
-/

namespace A125625.P3194566438807175679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (Int.lor (A007289 n) (A029837 (2 * n + 1))).toNat

end

end A125625.P3194566438807175679

/-!
# A125626: Numbers n whose reverse binary representation has the following property: let a 0 mean "halving" and a 1 mean "k -> 3k+1". The number describes an operation k -> f_n(k). If the equation f_n(k) = k has a positive solution, n is a term in the sequence.

The programs for A125626, there is no canonical definition to state claims against.
-/

/-! ## A125626.P1372040069531631354

`lt[A315574(n), A080100(n)²]`
-/

namespace A125626.P1372040069531631354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125626.P1372040069531631354

/-! ## A125626.P4805020187205523203

`lt[A130497(n), A023416(n)!]`
-/

namespace A125626.P4805020187205523203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125626.P4805020187205523203

/-! ## A125626.P13283508369464341411

`lt[A324467(n), 2*A080791(n)]`
-/

namespace A125626.P13283508369464341411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125626.P13283508369464341411

/-! ## A125626.P6157653501019156723

`lt[A324467(n), 2*A023416(2*n+1)]`
-/

namespace A125626.P6157653501019156723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023416 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125626.P6157653501019156723

/-! ## A125626.P5926811046627846610

`lt[A000032(A000120(n)), A023416(n)]`
-/

namespace A125626.P5926811046627846610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125626.P5926811046627846610

/-! ## A125626.P881468126102640367

`lt[A001316(n), A000032(A023416(n))]`
-/

namespace A125626.P881468126102640367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125626.P881468126102640367

/-! ## A125626.P3028823871392511814

`lt[A000032(A000120(n)), A080791(n)]`
-/

namespace A125626.P3028823871392511814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125626.P3028823871392511814

/-! ## A125626.P8630517323736659324

`lt[A006530(A151712(n)), A070939(n)]`
-/

namespace A125626.P8630517323736659324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A151712 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125626.P8630517323736659324

/-! ## A125626.P11606853058980184746

`lt[A000032(2*n-A005187(n)), A023416(n)]`
-/

namespace A125626.P11606853058980184746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((2 * n : ℤ) - A005187 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125626.P11606853058980184746

/-! ## A125626.P15936448557080798844

`lt[A000032(3*n-A004134(n)), A023416(n)]`
-/

namespace A125626.P15936448557080798844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((3 * n : ℤ) - A004134 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125626.P15936448557080798844

/-!
# A125627: Number of arithmetic progressions of primes < n-th prime.

The programs for A125627, there is no canonical definition to state claims against.
-/

/-! ## A125627.P10363122516359504704

`A317587(a(n-1)+n-1)` with `a(0)=0, a(1)=1`
-/

namespace A125627.P10363122516359504704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A317587 (a (n - 1) + (n : ℤ) - 1).toNat

end

end A125627.P10363122516359504704

/-! ## A125627.P7558022859359634576

`∑[A319571(A319645(n))+n]`
-/

namespace A125627.P7558022859359634576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A319645 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125627.P7558022859359634576

/-! ## A125627.P17390768896669988087

`∑[∑[A143792(A005316(n+2))]]`
-/

namespace A125627.P17390768896669988087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143792 (A005316 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125627.P17390768896669988087

/-! ## A125627.P12498909560544125109

`A272341(A065565(n))+A000217(n)`
-/

namespace A125627.P12498909560544125109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272341 (A065565 n).toNat + A000217 n

end

end A125627.P12498909560544125109

/-! ## A125627.P9386658227748854531

`∑[∑[A316523(A085281(n))]]`
-/

namespace A125627.P9386658227748854531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316523 (A085281 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125627.P9386658227748854531

/-!
# A125628: Version of sexagesimal expansion of 2*Pi given by the Persian mathematician Al-Kashi in the 15th Century.

The programs for A125628, there is no canonical definition to state claims against.
-/

/-! ## A125628.P3793645716943893963

`A091649(n+1)+char[9]`
-/

namespace A125628.P3793645716943893963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091649 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A125628.P3793645716943893963

/-! ## A125628.P18422733655905825062

`A102683(n)+A091649(n+1)`
-/

namespace A125628.P18422733655905825062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A091649 (n + 1)

end

end A125628.P18422733655905825062

/-! ## A125628.P13832418235207275573

`A102684(n)+A091649(n+1)`
-/

namespace A125628.P13832418235207275573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102684 n + A091649 (n + 1)

end

end A125628.P13832418235207275573

/-! ## A125628.P17192155186904867123

`A120002(n)+A091649(n+1)`
-/

namespace A125628.P17192155186904867123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n + A091649 (n + 1)

end

end A125628.P17192155186904867123

/-! ## A125628.P10927862119173527430

`A120041(n)+A091649(n+1)`
-/

namespace A125628.P10927862119173527430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120041 n + A091649 (n + 1)

end

end A125628.P10927862119173527430

/-!
# A125629: Expansion of -1/(1 - x + x^2 - x^3 + x^4 + x^6).

The programs for A125629, the canonical program `A125629.P8593440510223650032` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125629 has offset 0).

The definition of A125629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125629.P8593440510223650032

`a(n-1)-a(n-2)+a(n-3)-a(n-4)-a(n-6)` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125629

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)-a(n-6)` -/
def P8593440510223650032.Spec : Prop :=
  ∀ n, P8593440510223650032.a n = A125629 n

theorem P8593440510223650032.correct : P8593440510223650032.Spec := by
  intro n
  simp only [A125629]

end A125629

/-!
# A125630: a(n) is the number of integers k less than 10^n such that the decimal representation of k lacks the digit 1 and at least one of digits 2,3,4,5,6,7,8,9.

The programs for A125630, there is no canonical definition to state claims against.
-/

/-! ## A125630.P9861645155188976322

`A158198(eq[8, A002262(n)])`
-/

namespace A125630.P9861645155188976322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125630.P9861645155188976322

/-! ## A125630.P4066135517626057842

`A158198(A167614(n+7)+5)`
-/

namespace A125630.P4066135517626057842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A167614 (n + 7) + 5).toNat

end

end A125630.P4066135517626057842

/-! ## A125630.P475789070724815776

`A158198(A000217(n+8)+8)`
-/

namespace A125630.P475789070724815776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A000217 (n + 8) + 8).toNat

end

end A125630.P475789070724815776

/-! ## A125630.P14819658621785371556

`A158198(eq[9, A002260(n+1)])`
-/

namespace A125630.P14819658621785371556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125630.P14819658621785371556

/-!
# A125631: Numbers of the form 2*prime(i) - prime(i+1) + 2.

The programs for A125631, there is no canonical definition to state claims against.
-/

/-! ## A125631.P8446354157367464170

`eq[1, char[A124115(n+1)]]`
-/

namespace A125631.P8446354157367464170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125631.P8446354157367464170

/-! ## A125631.P17317280324399146981

`eq[1, char[A062234(n+1)+2]]`
-/

namespace A125631.P17317280324399146981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125631.P17317280324399146981

/-! ## A125631.P3895823659554670805

`eq[1, char[A033558(A000040(n+1))+2]]`
-/

namespace A125631.P3895823659554670805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (A000040 (n + 1)).toNat + 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125631.P3895823659554670805

/-! ## A125631.P6474176044958231886

`eq[1, char[A089241(n+1)-A000040(n+2)]]`
-/

namespace A125631.P6474176044958231886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - A000040 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125631.P6474176044958231886

/-! ## A125631.P16948896726868492923

`eq[1, char[2*(A000040(n+1)+1)-A000040(n+2)]]`
-/

namespace A125631.P16948896726868492923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) + 1) - A000040 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125631.P16948896726868492923

/-!
# A125636: Smallest odd prime base q such that p^2 divides q^(p-1) - 1, where p = prime(n).

The programs for A125636, there is no canonical definition to state claims against.
-/

/-! ## A125636.P4400681494837545696

`A355658(n+1)`
-/

namespace A125636.P4400681494837545696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355658 (n + 1)

end

end A125636.P4400681494837545696

/-! ## A125636.P17596413976748555669

`A249162(∑[n+2])`
-/

namespace A125636.P17596413976748555669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249162 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125636.P17596413976748555669

/-! ## A125636.P5806987983781693556

`p?[and(A167374(n), A249162(n+1))]`
-/

namespace A125636.P5806987983781693556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A249162 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125636.P5806987983781693556

/-! ## A125636.P741853932731723848

`p?[A167374(n+1)*A249162(n+1)]`
-/

namespace A125636.P741853932731723848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (n + 1) * A249162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125636.P741853932731723848

/-!
# A125639: Doubly abundant numbers - numbers k such that k and s(k) are abundant, where s() is A001065.

The programs for A125639, there is no canonical definition to state claims against.
-/

/-! ## A125639.P16033022448997563725

`∩[A239310(n+1), A371920(n+1)]`
-/

namespace A125639.P16033022448997563725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125639.P16033022448997563725

/-! ## A125639.P13685486028689189812

`∩[A293271(n+1), A371920(n+1)]`
-/

namespace A125639.P13685486028689189812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125639.P13685486028689189812

/-! ## A125639.P3630867590734085982

`∩[A328168(n+1), A371920(n+1)]`
-/

namespace A125639.P3630867590734085982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125639.P3630867590734085982

/-! ## A125639.P18226956769060237943

`∩[A371920(n+1), A130699(n+2)]`
-/

namespace A125639.P18226956769060237943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130699 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125639.P18226956769060237943

/-! ## A125639.P2374193766024404331

`∩[A125006(n+1), A371920(n+1)]`
-/

namespace A125639.P2374193766024404331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125639.P2374193766024404331

/-!
# A125640: Primitive doubly abundant numbers - doubly abundant numbers that are not the multiple of another doubly abundant number.

The programs for A125640, there is no canonical definition to state claims against.
-/

/-! ## A125640.P14941311277479222381

`eq[12, A277692(A008810(n)+1)]`
-/

namespace A125640.P14941311277479222381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A008810 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125640.P14941311277479222381

/-!
# A125641: Square of the (3,1)-entry of the 3 X 3 matrix M^n, where M = [1,0,0; 1,1,0; 1,i,1].

The programs for A125641, the canonical program `A125641.P15866424776337522073` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125641 has offset 1).

The definition of A125641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125641.P15866424776337522073

`C(n+1, 2)²+(n+1)²`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125641

/-- `C(n+1, 2)²+(n+1)²` -/
def P15866424776337522073.Spec : Prop :=
  ∀ n, (P15866424776337522073.a n : ℤ) = A125641 (n + 1)

theorem P15866424776337522073.correct : P15866424776337522073.Spec := by
  intro n
  simp only [A125641, Nat.add_sub_cancel]

end A125641

/-! ## A125641.P15461214507745783302

`(n+1)²*((n+1)²-2*(n+1)+5)/4`
-/

namespace A125641.P15461214507745783302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 5) : ℚ) / 4

end

end A125641.P15461214507745783302

namespace A125641

/-- `(n+1)²*((n+1)²-2*(n+1)+5)/4` -/
def P15461214507745783302.Spec : Prop :=
  ∀ n, P15461214507745783302.a n = (A125641 (n + 1) : ℚ)

theorem P15461214507745783302.correct : P15461214507745783302.Spec := by
  intro n
  simp only [A125641, Nat.add_sub_cancel, A125641.P15461214507745783302.a, A125641.P15866424776337522073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A125641

/-! ## A125641.P13623577989962814778

`∑[or(1, 2*n)+n^3]`
-/

namespace A125641.P13623577989962814778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P13623577989962814778

namespace A125641

/-- `∑[or(1, 2*n)+n^3]` -/
def P13623577989962814778.Spec : Prop :=
  ∀ n, (P13623577989962814778.a n : ℤ) = A125641 (n + 1)

end A125641

/-! ## A125641.P2374300836038350682

`∑[xor(1, 2*n)+n^3]`
-/

namespace A125641.P2374300836038350682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P2374300836038350682

namespace A125641

/-- `∑[xor(1, 2*n)+n^3]` -/
def P2374300836038350682.Spec : Prop :=
  ∀ n, (P2374300836038350682.a n : ℤ) = A125641 (n + 1)

end A125641

/-! ## A125641.P16747797027747050666

`((n+1)/cos(atan(n/2)))²`
-/

namespace A125641.P16747797027747050666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.cos (Real.arctan ((n : ℚ) / 2 : ℝ))) ^ 2

end

end A125641.P16747797027747050666

namespace A125641

/-- `((n+1)/cos(atan(n/2)))²` -/
def P16747797027747050666.Spec : Prop :=
  ∀ n, P16747797027747050666.a n = (A125641 (n + 1) : ℝ)

end A125641

/-! ## A125641.P13346749806178607821

`((n+1)/sin(acot(n/2)))²`
-/

namespace A125641.P13346749806178607821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ))) ^ 2

end

end A125641.P13346749806178607821

namespace A125641

/-- `((n+1)/sin(acot(n/2)))²` -/
def P13346749806178607821.Spec : Prop :=
  ∀ n, P13346749806178607821.a n = (A125641 (n + 1) : ℝ)

end A125641

/-! ## A125641.P17791985006960012731

`∑[∑[∑[a(n-1)+6]]]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A125641.P17791985006960012731
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P17791985006960012731

namespace A125641

/-- `∑[∑[∑[a(n-1)+6]]]` -/
def P17791985006960012731.Spec : Prop :=
  ∀ n, (P17791985006960012731.a n : ℤ) = A125641 (n + 1)

end A125641

/-! ## A125641.P5826814486629495359

`floor(∑[n]²-∑[a(n-1)-2])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A125641.P5826814486629495359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A125641.P5826814486629495359

namespace A125641

/-- `floor(∑[n]²-∑[a(n-1)-2])` -/
def P5826814486629495359.Spec : Prop :=
  ∀ n, P5826814486629495359.a n = A125641 (n + 1)

end A125641

/-! ## A125641.P15576691964019681901

`∑[(n%(n+1))^3+2*n+1]`
-/

namespace A125641.P15576691964019681901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % (n + 1)) ^ 3 + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P15576691964019681901

namespace A125641

/-- `∑[(n%(n+1))^3+2*n+1]` -/
def P15576691964019681901.Spec : Prop :=
  ∀ n, (P15576691964019681901.a n : ℤ) = A125641 (n + 1)

end A125641

/-! ## A125641.P3488341382701177741

`∑[gcd(n, 2*n)^3+2*n+1]`
-/

namespace A125641.P3488341382701177741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n) ^ 3 + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P3488341382701177741

namespace A125641

/-- `∑[gcd(n, 2*n)^3+2*n+1]` -/
def P3488341382701177741.Spec : Prop :=
  ∀ n, (P3488341382701177741.a n : ℤ) = A125641 (n + 1)

end A125641

/-! ## A125641.P6739908332708145768

`∑[C(2*n+1, 2*n)+n^3]`
-/

namespace A125641.P6739908332708145768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * n) + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P6739908332708145768

namespace A125641

/-- `∑[C(2*n+1, 2*n)+n^3]` -/
def P6739908332708145768.Spec : Prop :=
  ∀ n, (P6739908332708145768.a n : ℤ) = A125641 (n + 1)

end A125641

/-! ## A125641.P15544278623584372855

`floor(a(n-1)+n*(n²+2)+1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A125641.P15544278623584372855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n * (n ^ 2 + 2) + 1)

end

end A125641.P15544278623584372855

namespace A125641

/-- `floor(a(n-1)+n*(n²+2)+1)` -/
def P15544278623584372855.Spec : Prop :=
  ∀ n, (P15544278623584372855.a n : ℤ) = A125641 (n + 1)

end A125641

/-! ## A125641.P17557536675547783958

`∑[∑[2*n+1]+2*n*C(n, 2)]`
-/

namespace A125641.P17557536675547783958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P17557536675547783958

namespace A125641

/-- `∑[∑[2*n+1]+2*n*C(n, 2)]` -/
def P17557536675547783958.Spec : Prop :=
  ∀ n, (P17557536675547783958.a n : ℤ) = A125641 (n + 1)

end A125641

/-! ## A125641.P7518226820180568848

`∑[lcm(n, ∑[2*n]-(n-1))+n+1]`
-/

namespace A125641.P7518226820180568848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - 1)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P7518226820180568848

namespace A125641

/-- `∑[lcm(n, ∑[2*n]-(n-1))+n+1]` -/
def P7518226820180568848.Spec : Prop :=
  ∀ n, (P7518226820180568848.a n : ℤ) = A125641 (n + 1)

end A125641

/-! ## A125641.P16101540473282565063

`A334694(n)+1`
-/

namespace A125641.P16101540473282565063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334694 n + 1

end

end A125641.P16101540473282565063

namespace A125641

/-- `A334694(n)+1` -/
def P16101540473282565063.Spec : Prop :=
  ∀ n, P16101540473282565063.a n = A125641 (n + 1)

end A125641

/-! ## A125641.P9601873397184379457

`A086601(n)+n`
-/

namespace A125641.P9601873397184379457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086601 n + (n : ℤ)

end

end A125641.P9601873397184379457

namespace A125641

/-- `A086601(n)+n` -/
def P9601873397184379457.Spec : Prop :=
  ∀ n, P9601873397184379457.a n = A125641 (n + 1)

end A125641

/-! ## A125641.P12568499271911741432

`∑[A054602(n)+1]`
-/

namespace A125641.P12568499271911741432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P12568499271911741432

namespace A125641

/-- `∑[A054602(n)+1]` -/
def P12568499271911741432.Spec : Prop :=
  ∀ n, P12568499271911741432.a n = A125641 (n + 1)

end A125641

/-! ## A125641.P13567266399931692570

`∑[A135859(n+1)]`
-/

namespace A125641.P13567266399931692570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P13567266399931692570

namespace A125641

/-- `∑[A135859(n+1)]` -/
def P13567266399931692570.Spec : Prop :=
  ∀ n, P13567266399931692570.a n = A125641 (n + 1)

end A125641

/-! ## A125641.P14429546490641140563

`∑[A071568(n)+n]`
-/

namespace A125641.P14429546490641140563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P14429546490641140563

namespace A125641

/-- `∑[A071568(n)+n]` -/
def P14429546490641140563.Spec : Prop :=
  ∀ n, P14429546490641140563.a n = A125641 (n + 1)

end A125641

/-! ## A125641.P8198037824333612486

`∑[A005491(n)-n]`
-/

namespace A125641.P8198037824333612486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005491 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125641.P8198037824333612486

namespace A125641

/-- `∑[A005491(n)-n]` -/
def P8198037824333612486.Spec : Prop :=
  ∀ n, P8198037824333612486.a n = A125641 (n + 1)

end A125641

/-!
# A125644: Table with T(n,k) = the number of Dyck paths whose ascent lengths, in order, are the k-th composition of n, for the standard composition order.

The programs for A125644, there is no canonical definition to state claims against.
-/

/-! ## A125644.P4181630521066108995

`A347205(A030101(n))`
-/

namespace A125644.P4181630521066108995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A030101 n).toNat

end

end A125644.P4181630521066108995

/-! ## A125644.P8019135946651282086

`A347205(A035327(n))`
-/

namespace A125644.P8019135946651282086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A035327 n).toNat

end

end A125644.P8019135946651282086

/-! ## A125644.P3295169529023625297

`A347205(A261693(n))`
-/

namespace A125644.P3295169529023625297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A261693 n).toNat

end

end A125644.P3295169529023625297

/-! ## A125644.P5152289422500739525

`A347205(A003817(n)-n)`
-/

namespace A125644.P5152289422500739525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A003817 n - (n : ℤ)).toNat

end

end A125644.P5152289422500739525

/-! ## A125644.P3550303826673213841

`A347205(n-A006257(n))`
-/

namespace A125644.P3550303826673213841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 ((n : ℤ) - A006257 n).toNat

end

end A125644.P3550303826673213841

/-! ## A125644.P13336356023054658666

`A347205(n-A055945(n))`
-/

namespace A125644.P13336356023054658666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 ((n : ℤ) - A055945 n).toNat

end

end A125644.P13336356023054658666

/-! ## A125644.P14378401573275071150

`A347205(xor(n, A175919(n)))`
-/

namespace A125644.P14378401573275071150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (Int.xor (n : ℤ) (A175919 n)).toNat

end

end A125644.P14378401573275071150

/-! ## A125644.P4772093977800729939

`A347205(A010078(n+1)-n)`
-/

namespace A125644.P4772093977800729939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A010078 (n + 1) - (n : ℤ)).toNat

end

end A125644.P4772093977800729939

/-! ## A125644.P4560419073269818162

`A347205(A062383(n)-(n+1))`
-/

namespace A125644.P4560419073269818162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A062383 n - (n + 1 : ℤ)).toNat

end

end A125644.P4560419073269818162

/-! ## A125644.P13550531719871457188

`A347205(A062383(n)-1-n)`
-/

namespace A125644.P13550531719871457188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A062383 n - 1 - (n : ℤ)).toNat

end

end A125644.P13550531719871457188

/-! ## A125644.P3010949829509707913

`A347205(A062383(n)%A209662(n+1))`
-/

namespace A125644.P3010949829509707913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (Int.tmod (A062383 n) (A209662 (n + 1))).toNat

end

end A125644.P3010949829509707913

/-! ## A125644.P11152335548164571871

`A347205(n-A053645(2*n+1))`
-/

namespace A125644.P11152335548164571871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 ((n : ℤ) - A053645 (2 * n + 1)).toNat

end

end A125644.P11152335548164571871

/-!
# A125650: Numerator of n*(n+3)/(4*(n+1)*(n+2)) = Sum_{k=1..n} 1/(k*(k+1)*(k+2)).

The programs for A125650, the canonical program `A125650.P9186956251778564931` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125650 has offset 0).

The definition of A125650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125650.P9186956251778564931

`A106609(n)*A106609(n+3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A125650

/-- `A106609(n)*A106609(n+3)` -/
def P9186956251778564931.Spec : Prop :=
  ∀ n, P9186956251778564931.a n = A125650 n

theorem P9186956251778564931.correct : P9186956251778564931.Spec := by
  intro n
  simp only [A125650]

end A125650

/-! ## A125650.P7481830344288161324

`lcm(4, ∑[n]+n)/4`
-/

namespace A125650.P7481830344288161324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 4

end

end A125650.P7481830344288161324

namespace A125650

/-- `lcm(4, ∑[n]+n)/4` -/
def P7481830344288161324.Spec : Prop :=
  ∀ n, P7481830344288161324.a n = (A125650 n : ℚ)

end A125650

/-! ## A125650.P136707789205111084

`A000096(n)/gcd(4, A000096(n))`
-/

namespace A125650.P136707789205111084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n : ℚ) / (Int.gcd 4 (A000096 n) : ℚ)

end

end A125650.P136707789205111084

namespace A125650

/-- `A000096(n)/gcd(4, A000096(n))` -/
def P136707789205111084.Spec : Prop :=
  ∀ n, P136707789205111084.a n = (A125650 n : ℚ)

end A125650

/-! ## A125650.P5158624162282137266

`A160050(n+1)/gcd(2, A160050(n+1))`
-/

namespace A125650.P5158624162282137266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160050 (n + 1) : ℚ) / (Int.gcd 2 (A160050 (n + 1)) : ℚ)

end

end A125650.P5158624162282137266

namespace A125650

/-- `A160050(n+1)/gcd(2, A160050(n+1))` -/
def P5158624162282137266.Spec : Prop :=
  ∀ n, P5158624162282137266.a n = (A125650 n : ℚ)

end A125650

/-! ## A125650.P4405696296894875429

`A014682(lcm(2, A160050(n+1)))`
-/

namespace A125650.P4405696296894875429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A160050 (n + 1)))

end

end A125650.P4405696296894875429

namespace A125650

/-- `A014682(lcm(2, A160050(n+1)))` -/
def P4405696296894875429.Spec : Prop :=
  ∀ n, P4405696296894875429.a n = A125650 n

end A125650

/-! ## A125650.P6733716901366527457

`A026741(A160050(n+1))`
-/

namespace A125650.P6733716901366527457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A160050 (n + 1)).toNat

end

end A125650.P6733716901366527457

namespace A125650

/-- `A026741(A160050(n+1))` -/
def P6733716901366527457.Spec : Prop :=
  ∀ n, P6733716901366527457.a n = A125650 n

end A125650

/-! ## A125650.P15334346753618052320

`A160050(n+1)/A000034(A160050(n+1)+1)`
-/

namespace A125650.P15334346753618052320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160050 (n + 1) : ℚ) / (A000034 (A160050 (n + 1) + 1).toNat : ℚ)

end

end A125650.P15334346753618052320

namespace A125650

/-- `A160050(n+1)/A000034(A160050(n+1)+1)` -/
def P15334346753618052320.Spec : Prop :=
  ∀ n, P15334346753618052320.a n = (A125650 n : ℚ)

end A125650

/-! ## A125650.P3956734607751141573

`sqrt(A181318(∑[n]+n))`
-/

namespace A125650.P3956734607751141573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181318 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℝ)

end

end A125650.P3956734607751141573

namespace A125650

/-- `sqrt(A181318(∑[n]+n))` -/
def P3956734607751141573.Spec : Prop :=
  ∀ n, P3956734607751141573.a n = (A125650 n : ℝ)

end A125650

/-! ## A125650.P8634980945803850739

`A026741(A026741(∑[n]+n))`
-/

namespace A125650.P8634980945803850739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A125650.P8634980945803850739

namespace A125650

/-- `A026741(A026741(∑[n]+n))` -/
def P8634980945803850739.Spec : Prop :=
  ∀ n, P8634980945803850739.a n = A125650 n

end A125650

/-! ## A125650.P12100952300971587190

`A214392(A283971(A000096(n)))`
-/

namespace A125650.P12100952300971587190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (A283971 (A000096 n).toNat).toNat

end

end A125650.P12100952300971587190

namespace A125650

/-- `A214392(A283971(A000096(n)))` -/
def P12100952300971587190.Spec : Prop :=
  ∀ n, P12100952300971587190.a n = A125650 n

end A125650

/-!
# A125651: Numbers k such that A125650(k) is a perfect square.

The programs for A125651, the canonical program `A125651.P15251248302057897242` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125651 has offset 1).

The definition of A125651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125651.P15251248302057897242

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=24, a(3)=147`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125651

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P15251248302057897242.Spec : Prop :=
  ∀ n, P15251248302057897242.a n = A125651 (n + 1)

theorem P15251248302057897242.correct : P15251248302057897242.Spec := by
  intro n
  simp only [A125651, Nat.add_sub_cancel]

end A125651

/-! ## A125651.P2934616307624780084

`(record[a(n-2)-2*a(n-1)]-3)/2` with `a(0)=5, a(1)=3, a(2)=3`
-/

namespace A125651.P2934616307624780084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 3, 3] fun n f1 =>
  f1 (n - 2) - 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 3 : ℚ) / 2

end

end A125651.P2934616307624780084

namespace A125651

/-- `(record[a(n-2)-2*a(n-1)]-3)/2` -/
def P2934616307624780084.Spec : Prop :=
  ∀ n, P2934616307624780084.a n = (A125651 (n + 1) : ℚ)

end A125651

/-! ## A125651.P970908336600881168

`ceil(abs(π-A270889(n)))`
-/

namespace A125651.P970908336600881168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.pi - (A270889 n : ℝ)|⌉

end

end A125651.P970908336600881168

namespace A125651

/-- `ceil(abs(π-A270889(n)))` -/
def P970908336600881168.Spec : Prop :=
  ∀ n, P970908336600881168.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P1445911536444562472

`A072221(n)-ceil(sin(n)²)`
-/

namespace A125651.P1445911536444562472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A125651.P1445911536444562472

namespace A125651

/-- `A072221(n)-ceil(sin(n)²)` -/
def P1445911536444562472.Spec : Prop :=
  ∀ n, P1445911536444562472.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P8039520406153028991

`A072221(n)+A057428(n)`
-/

namespace A125651.P8039520406153028991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n + A057428 n

end

end A125651.P8039520406153028991

namespace A125651

/-- `A072221(n)+A057428(n)` -/
def P8039520406153028991.Spec : Prop :=
  ∀ n, P8039520406153028991.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P14014065937966741854

`A072221(n)-char[A054582(n)]`
-/

namespace A125651.P14014065937966741854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A125651.P14014065937966741854

namespace A125651

/-- `A072221(n)-char[A054582(n)]` -/
def P14014065937966741854.Spec : Prop :=
  ∀ n, P14014065937966741854.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P12922859624900053235

`A054977(n)+A072221(n)-2`
-/

namespace A125651.P12922859624900053235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A072221 n - 2)

end

end A125651.P12922859624900053235

namespace A125651

/-- `A054977(n)+A072221(n)-2` -/
def P12922859624900053235.Spec : Prop :=
  ∀ n, P12922859624900053235.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P5779508561454287788

`A072221(n)-A019425(2*n)`
-/

namespace A125651.P5779508561454287788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A019425 (2 * n)

end

end A125651.P5779508561454287788

namespace A125651

/-- `A072221(n)-A019425(2*n)` -/
def P5779508561454287788.Spec : Prop :=
  ∀ n, P5779508561454287788.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P13319818570321205259

`A072221(n)-A043545(2*n)`
-/

namespace A125651.P13319818570321205259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A043545 (2 * n)

end

end A125651.P13319818570321205259

namespace A125651

/-- `A072221(n)-A043545(2*n)` -/
def P13319818570321205259.Spec : Prop :=
  ∀ n, P13319818570321205259.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P12998012525297889414

`A072221(n)-char[A198388(n+1)]`
-/

namespace A125651.P12998012525297889414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198388 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A125651.P12998012525297889414

namespace A125651

/-- `A072221(n)-char[A198388(n+1)]` -/
def P12998012525297889414.Spec : Prop :=
  ∀ n, P12998012525297889414.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P15762469451336436448

`A111954(A004273(n))+A001652(n)`
-/

namespace A125651.P15762469451336436448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (A004273 n).toNat + A001652 n

end

end A125651.P15762469451336436448

namespace A125651

/-- `A111954(A004273(n))+A001652(n)` -/
def P15762469451336436448.Spec : Prop :=
  ∀ n, P15762469451336436448.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P15136608200841433804

`A072221(n)-A001221(A001316(n))`
-/

namespace A125651.P15136608200841433804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A001221 (A001316 n).toNat

end

end A125651.P15136608200841433804

namespace A125651

/-- `A072221(n)-A001221(A001316(n))` -/
def P15136608200841433804.Spec : Prop :=
  ∀ n, P15136608200841433804.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P5307761518972667456

`A072221(n)-A000035(A004273(n))`
-/

namespace A125651.P5307761518972667456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A000035 (A004273 n).toNat

end

end A125651.P5307761518972667456

namespace A125651

/-- `A072221(n)-A000035(A004273(n))` -/
def P5307761518972667456.Spec : Prop :=
  ∀ n, P5307761518972667456.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P3835206258568763101

`A072221(n)-A001221(A061345(n))`
-/

namespace A125651.P3835206258568763101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A001221 (A061345 n).toNat

end

end A125651.P3835206258568763101

namespace A125651

/-- `A072221(n)-A001221(A061345(n))` -/
def P3835206258568763101.Spec : Prop :=
  ∀ n, P3835206258568763101.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P11528243911491542639

`A072221(n)-A174541(A000124(n))`
-/

namespace A125651.P11528243911491542639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A174541 (A000124 n).toNat

end

end A125651.P11528243911491542639

namespace A125651

/-- `A072221(n)-A174541(A000124(n))` -/
def P11528243911491542639.Spec : Prop :=
  ∀ n, P11528243911491542639.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P15716597319034417869

`A072221(n)-A057979(A138811(n))`
-/

namespace A125651.P15716597319034417869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A057979 (A138811 n).toNat

end

end A125651.P15716597319034417869

namespace A125651

/-- `A072221(n)-A057979(A138811(n))` -/
def P15716597319034417869.Spec : Prop :=
  ∀ n, P15716597319034417869.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P1545696062897341545

`A072221(n)-A019425(A019425(n))²`
-/

namespace A125651.P1545696062897341545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A019425 (A019425 n).toNat ^ 2

end

end A125651.P1545696062897341545

namespace A125651

/-- `A072221(n)-A019425(A019425(n))²` -/
def P1545696062897341545.Spec : Prop :=
  ∀ n, P1545696062897341545.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P17182496734719800303

`A072221(n)-A001221(A000961(n+1))`
-/

namespace A125651.P17182496734719800303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A001221 (A000961 (n + 1)).toNat

end

end A125651.P17182496734719800303

namespace A125651

/-- `A072221(n)-A001221(A000961(n+1))` -/
def P17182496734719800303.Spec : Prop :=
  ∀ n, P17182496734719800303.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P1510338557438921489

`A072221(n)-A174541(A000217(n+1))`
-/

namespace A125651.P1510338557438921489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A174541 (A000217 (n + 1)).toNat

end

end A125651.P1510338557438921489

namespace A125651

/-- `A072221(n)-A174541(A000217(n+1))` -/
def P1510338557438921489.Spec : Prop :=
  ∀ n, P1510338557438921489.a n = A125651 (n + 1)

end A125651

/-! ## A125651.P11104822484488069863

`A072221(n)-A000035(A289357(n+1))`
-/

namespace A125651.P11104822484488069863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n - A000035 (A289357 (n + 1)).toNat

end

end A125651.P11104822484488069863

namespace A125651

/-- `A072221(n)-A000035(A289357(n+1))` -/
def P11104822484488069863.Spec : Prop :=
  ∀ n, P11104822484488069863.a n = A125651 (n + 1)

end A125651

/-!
# A125652: Numbers m such that m^2=A125650(k) for some k (belonging A125651).

The programs for A125652, the canonical program `A125652.P12154372188380910291` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125652 has offset 1).

The definition of A125652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125652.P12154372188380910291

`sqrt(A125650(A125651(n+1)))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A125652

/-- `sqrt(A125650(A125651(n+1)))` -/
def P12154372188380910291.Spec : Prop :=
  ∀ n, P12154372188380910291.a n = (A125652 (n + 1) : ℝ)

end A125652

/-! ## A125652.P15030229773365020901

`∑[2^n]%4*A041053(A004273(n))`
-/

namespace A125652.P15030229773365020901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 4 : ℕ) : ℤ) * A041053 (A004273 n).toNat

end

end A125652.P15030229773365020901

namespace A125652

/-- `∑[2^n]%4*A041053(A004273(n))` -/
def P15030229773365020901.Spec : Prop :=
  ∀ n, P15030229773365020901.a n = A125652 (n + 1)

end A125652

/-! ## A125652.P12080868832768575183

`A041053(A004273(n))*A122553(n)`
-/

namespace A125652.P12080868832768575183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041053 (A004273 n).toNat * A122553 n

end

end A125652.P12080868832768575183

namespace A125652

/-- `A041053(A004273(n))*A122553(n)` -/
def P12080868832768575183.Spec : Prop :=
  ∀ n, P12080868832768575183.a n = A125652 (n + 1)

end A125652

/-! ## A125652.P4104301952408193690

`A041053(A004273(n))*A323237(2*n+1)`
-/

namespace A125652.P4104301952408193690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041053 (A004273 n).toNat * A323237 (2 * n + 1)

end

end A125652.P4104301952408193690

namespace A125652

/-- `A041053(A004273(n))*A323237(2*n+1)` -/
def P4104301952408193690.Spec : Prop :=
  ∀ n, P4104301952408193690.a n = A125652 (n + 1)

end A125652

/-! ## A125652.P11722396591117056228

`3^A019433(2*n)*A041053(A004273(n))`
-/

namespace A125652.P11722396591117056228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A019433 (2 * n) : ℤ) * (A041053 (A004273 n).toNat : ℚ)

end

end A125652.P11722396591117056228

namespace A125652

/-- `3^A019433(2*n)*A041053(A004273(n))` -/
def P11722396591117056228.Spec : Prop :=
  ∀ n, P11722396591117056228.a n = (A125652 (n + 1) : ℚ)

end A125652

/-!
# A125653: Triangle T, read by rows, where column k equals the eigensequence of matrix power T^k.

The programs for A125653, there is no canonical definition to state claims against.
-/

/-! ## A125653.P13489854854825672683

`A156079(A097615(n)+1)`
-/

namespace A125653.P13489854854825672683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156079 (A097615 n + 1).toNat

end

end A125653.P13489854854825672683

/-! ## A125653.P5015549127210420112

`A359513(A321312(n+1))`
-/

namespace A125653.P5015549127210420112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359513 (A321312 (n + 1)).toNat

end

end A125653.P5015549127210420112

/-! ## A125653.P1962606474657963730

`A125781(A271439(n))%A344862(n+1)`
-/

namespace A125653.P1962606474657963730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125781 (A271439 n).toNat) (A344862 (n + 1))

end

end A125653.P1962606474657963730

/-!
# A125654: Column 1 of triangle A125653; also equals the eigensequence of triangle A125653.

The programs for A125654, there is no canonical definition to state claims against.
-/

/-! ## A125654.P8826813426907724102

`A125653(∑[n+1]+1)`
-/

namespace A125654.P8826813426907724102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A125654.P8826813426907724102

/-! ## A125654.P12633025891730613554

`A119963(n)*A125653(A134869(n+1))`
-/

namespace A125654.P12633025891730613554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A125653 (A134869 (n + 1)).toNat

end

end A125654.P12633025891730613554

/-! ## A125654.P3005954440840129391

`A125653(A134869(n+1))*A133687(n)`
-/

namespace A125654.P3005954440840129391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A134869 (n + 1)).toNat * A133687 n

end

end A125654.P3005954440840129391

/-! ## A125654.P11490604052369569725

`A119963(n)*A125653(A254835(n+1))`
-/

namespace A125654.P11490604052369569725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A125653 (A254835 (n + 1)).toNat

end

end A125654.P11490604052369569725

/-! ## A125654.P5261884799709329811

`A125653(A254835(n+1))*A133687(n)`
-/

namespace A125654.P5261884799709329811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A254835 (n + 1)).toNat * A133687 n

end

end A125654.P5261884799709329811

/-!
# A125655: Column 2 of triangle A125653; also equals the eigensequence of the matrix square of A125653.

The programs for A125655, there is no canonical definition to state claims against.
-/

/-! ## A125655.P956054398856818712

`A125653(∑[n+2]+3)`
-/

namespace A125655.P956054398856818712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A125655.P956054398856818712

/-! ## A125655.P17246859693598730734

`lcm((-1)^n, A125653(A340266(n+1)))`
-/

namespace A125655.P17246859693598730734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A125653 (A340266 (n + 1)).toNat)

end

end A125655.P17246859693598730734

/-! ## A125655.P1954420704474453800

`A119963(n)*A125653(A340266(n+1))`
-/

namespace A125655.P1954420704474453800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A125653 (A340266 (n + 1)).toNat

end

end A125655.P1954420704474453800

/-! ## A125655.P10492307003303995829

`A125653(A340266(n+1))*A133687(n)`
-/

namespace A125655.P10492307003303995829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A340266 (n + 1)).toNat * A133687 n

end

end A125655.P10492307003303995829

/-! ## A125655.P8132446451998081977

`gcd(A000038(n), A125653(A340266(n+1)))`
-/

namespace A125655.P8132446451998081977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A125653 (A340266 (n + 1)).toNat)

end

end A125655.P8132446451998081977

/-!
# A125656: Column 3 of triangle A125653; also equals the eigensequence of the matrix cube of A125653.

The programs for A125656, there is no canonical definition to state claims against.
-/

/-! ## A125656.P1500748887892394957

`A125653(A167614(n+2))`
-/

namespace A125656.P1500748887892394957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A167614 (n + 2)).toNat

end

end A125656.P1500748887892394957

/-! ## A125656.P3845701474611771988

`A125653(A141214(n)+6)`
-/

namespace A125656.P3845701474611771988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A141214 n + 6).toNat

end

end A125656.P3845701474611771988

/-! ## A125656.P14177433724737493947

`A125653(A052905(n)+8)`
-/

namespace A125656.P14177433724737493947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A052905 n + 8).toNat

end

end A125656.P14177433724737493947

/-! ## A125656.P8255018482455948555

`A125653(A055999(n)+9)`
-/

namespace A125656.P8255018482455948555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A055999 n + 9).toNat

end

end A125656.P8255018482455948555

/-! ## A125656.P17689537947477247095

`A125653(eq[3, A002262(n)])`
-/

namespace A125656.P17689537947477247095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125656.P17689537947477247095

/-!
# A125657: Column 4 of triangle A125653; also equals the eigensequence of the matrix 4th power of A125653.

The programs for A125657, there is no canonical definition to state claims against.
-/

/-! ## A125657.P12947054814706417386

`A125653(A155212(n)+12)`
-/

namespace A125657.P12947054814706417386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A155212 n + 12).toNat

end

end A125657.P12947054814706417386

/-! ## A125657.P5249460630143754243

`A125653(A056000(n)+14)`
-/

namespace A125657.P5249460630143754243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A056000 n + 14).toNat

end

end A125657.P5249460630143754243

/-! ## A125657.P3811229079253293916

`A125653(eq[4, A002262(n)])`
-/

namespace A125657.P3811229079253293916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125657.P3811229079253293916

/-! ## A125657.P1322431548116952350

`A125653(eq[4, A329221(n)])`
-/

namespace A125657.P1322431548116952350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125657.P1322431548116952350

/-!
# A125658: Row sums of triangle A125653, in which column k equals the eigensequence of the matrix power A125653^k.

The programs for A125658, there is no canonical definition to state claims against.
-/

/-! ## A125658.P4705008346474120496

`A226190((n-1)*a(n-1)+3)` with `a(0)=1`
-/

namespace A125658.P4705008346474120496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226190 (((n : ℤ) - 1) * a (n - 1) + 3).toNat

end

end A125658.P4705008346474120496

/-! ## A125658.P13959444722074910029

`record[A001200(n)%A053658(n+1)]`
-/

namespace A125658.P13959444722074910029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001200 n) (A053658 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125658.P13959444722074910029

/-! ## A125658.P16376038334115324418

`A121050(A062399(n+3))+n+1`
-/

namespace A125658.P16376038334115324418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121050 (A062399 (n + 3)).toNat + (n + 1 : ℤ)

end

end A125658.P16376038334115324418

/-! ## A125658.P5539300665534831334

`A366850(n+2)+A185715(A006319(n))`
-/

namespace A125658.P5539300665534831334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366850 (n + 2) + A185715 (A006319 n).toNat

end

end A125658.P5539300665534831334

/-!
# A125659: Central terms of triangle A125653, in which column k equals the eigensequence of the matrix power A125653^k: a(n) = A125653(2n,n) for n>=0.

The programs for A125659, there is no canonical definition to state claims against.
-/

/-! ## A125659.P15803062507797534843

`A125653(∑[4*n])`
-/

namespace A125659.P15803062507797534843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125659.P15803062507797534843

/-! ## A125659.P2990137374912440591

`A108659(a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A125659.P2990137374912440591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A108659 (a (n - 2) + 1).toNat

end

end A125659.P2990137374912440591

/-!
# A125660: Number of 3-noncrossing tangled-diagrams.

The programs for A125660, there is no canonical definition to state claims against.
-/

/-! ## A125660.P11223286546114536709

`A242031(A188266(n)+A001700(n))`
-/

namespace A125660.P11223286546114536709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (A188266 n + A001700 n).toNat

end

end A125660.P11223286546114536709

/-!
# A125662: A convolution triangle of numbers based on A001906 (even-indexed Fibonacci numbers).

The programs for A125662, the canonical program `A125662.P11629820368332138636` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125662 has offset 0).

The definition of A125662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125662.P11629820368332138636

`T(n-1,k-1)+3*T(n-1,k)-T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125662

/-- `T(n-1,k-1)+3*T(n-1,k)-T(n-2,k)` -/
def P11629820368332138636.Spec : Prop :=
  ∀ n, P11629820368332138636.a n = A125662 n

theorem P11629820368332138636.correct : P11629820368332138636.Spec := by
  intro n
  simp only [A125662]

end A125662

/-! ## A125662.P15398864674079164926

`abs(A123965(n))`
-/

namespace A125662.P15398864674079164926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123965 n|

end

end A125662.P15398864674079164926

namespace A125662

/-- `abs(A123965(n))` -/
def P15398864674079164926.Spec : Prop :=
  ∀ n, P15398864674079164926.a n = A125662 n

end A125662

/-! ## A125662.P9556293404146234161

`abs(A207815(n))`
-/

namespace A125662.P9556293404146234161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A207815 n|

end

end A125662.P9556293404146234161

namespace A125662

/-- `abs(A207815(n))` -/
def P9556293404146234161.Spec : Prop :=
  ∀ n, P9556293404146234161.a n = A125662 n

end A125662

/-! ## A125662.P1096016129305777854

`A097807(n)*A207815(n)`
-/

namespace A125662.P1096016129305777854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A207815 n

end

end A125662.P1096016129305777854

namespace A125662

/-- `A097807(n)*A207815(n)` -/
def P1096016129305777854.Spec : Prop :=
  ∀ n, P1096016129305777854.a n = A125662 n

end A125662

/-! ## A125662.P14750074958089257892

`gcd(A000038(n), A123965(n))`
-/

namespace A125662.P14750074958089257892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123965 n)

end

end A125662.P14750074958089257892

namespace A125662

/-- `gcd(A000038(n), A123965(n))` -/
def P14750074958089257892.Spec : Prop :=
  ∀ n, (P14750074958089257892.a n : ℤ) = A125662 n

end A125662

/-! ## A125662.P1484412442301054897

`gcd(A127648(n), A207815(n))`
-/

namespace A125662.P1484412442301054897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127648 n) (A207815 n)

end

end A125662.P1484412442301054897

namespace A125662

/-- `gcd(A127648(n), A207815(n))` -/
def P1484412442301054897.Spec : Prop :=
  ∀ n, (P1484412442301054897.a n : ℤ) = A125662 n

end A125662

/-! ## A125662.P18033857176881955695

`lcm(A020985(n), A123965(n))`
-/

namespace A125662.P18033857176881955695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A123965 n)

end

end A125662.P18033857176881955695

namespace A125662

/-- `lcm(A020985(n), A123965(n))` -/
def P18033857176881955695.Spec : Prop :=
  ∀ n, (P18033857176881955695.a n : ℤ) = A125662 n

end A125662

/-! ## A125662.P4423311404295269050

`lcm(A033999(n), A207815(n))`
-/

namespace A125662.P4423311404295269050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207815 n)

end

end A125662.P4423311404295269050

namespace A125662

/-- `lcm(A033999(n), A207815(n))` -/
def P4423311404295269050.Spec : Prop :=
  ∀ n, (P4423311404295269050.a n : ℤ) = A125662 n

end A125662

/-! ## A125662.P18275302782047815974

`A053122(n)/A078812(n)*A207815(n)`
-/

namespace A125662.P18275302782047815974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A207815 n : ℚ)

end

end A125662.P18275302782047815974

namespace A125662

/-- `A053122(n)/A078812(n)*A207815(n)` -/
def P18275302782047815974.Spec : Prop :=
  ∀ n, P18275302782047815974.a n = (A125662 n : ℚ)

end A125662

/-! ## A125662.P17096910235379302188

`A159764(n)/A207823(n)*A207815(n)`
-/

namespace A125662.P17096910235379302188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159764 n : ℚ) / (A207823 n : ℚ) * (A207815 n : ℚ)

end

end A125662.P17096910235379302188

namespace A125662

/-- `A159764(n)/A207823(n)*A207815(n)` -/
def P17096910235379302188.Spec : Prop :=
  ∀ n, P17096910235379302188.a n = (A125662 n : ℚ)

end A125662

/-! ## A125662.P17257967310371283051

`lcm(A065357(n)*A207815(n), A065357(n))`
-/

namespace A125662.P17257967310371283051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n * A207815 n) (A065357 n)

end

end A125662.P17257967310371283051

namespace A125662

/-- `lcm(A065357(n)*A207815(n), A065357(n))` -/
def P17257967310371283051.Spec : Prop :=
  ∀ n, (P17257967310371283051.a n : ℤ) = A125662 n

end A125662

/-! ## A125662.P10035995487561789920

`lcm(A207815(n)*A309873(n+1), A309873(n+1))`
-/

namespace A125662.P10035995487561789920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A207815 n * A309873 (n + 1)) (A309873 (n + 1))

end

end A125662.P10035995487561789920

namespace A125662

/-- `lcm(A207815(n)*A309873(n+1), A309873(n+1))` -/
def P10035995487561789920.Spec : Prop :=
  ∀ n, (P10035995487561789920.a n : ℤ) = A125662 n

end A125662

/-! ## A125662.P6278425889405791633

`A123967(n)/A207824(n)*A207815(n)`
-/

namespace A125662.P6278425889405791633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A207824 n : ℚ) * (A207815 n : ℚ)

end

end A125662.P6278425889405791633

namespace A125662

/-- `A123967(n)/A207824(n)*A207815(n)` -/
def P6278425889405791633.Spec : Prop :=
  ∀ n, P6278425889405791633.a n = (A125662 n : ℚ)

end A125662

/-! ## A125662.P15193641500818509767

`A008836(A059268(n))*A123965(n)`
-/

namespace A125662.P15193641500818509767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A123965 n

end

end A125662.P15193641500818509767

namespace A125662

/-- `A008836(A059268(n))*A123965(n)` -/
def P15193641500818509767.Spec : Prop :=
  ∀ n, P15193641500818509767.a n = A125662 n

end A125662

/-!
# A125663: Numbers such that the left half of the digits form a prime and the right half do not.

The programs for A125663, there is no canonical definition to state claims against.
-/

/-! ## A125663.P4769958961742124448

`eq[2, A193238(A056142(n))]`
-/

namespace A125663.P4769958961742124448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A056142 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125663.P4769958961742124448

/-! ## A125663.P3408009625362077865

`eq[2, A193238(A056143(n))]`
-/

namespace A125663.P3408009625362077865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A056143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125663.P3408009625362077865

/-! ## A125663.P17881266794794788025

`∩[A320584(n+1), A365589(n+1)]`
-/

namespace A125663.P17881266794794788025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125663.P17881266794794788025

/-! ## A125663.P12611878453923287894

`eq[12, A167677(n)]`
-/

namespace A125663.P12611878453923287894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125663.P12611878453923287894

/-! ## A125663.P5740513636443945404

`lt[6, A124794(A167678(n))]`
-/

namespace A125663.P5740513636443945404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A167678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125663.P5740513636443945404

/-!
# A125664: Numbers such that the right half of the digits form a prime and the left half do not.

The programs for A125664, there is no canonical definition to state claims against.
-/

/-! ## A125664.P17153512102634107073

`∩[A260181(n+1), A365589(n+1)]`
-/

namespace A125664.P17153512102634107073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125664.P17153512102634107073

/-! ## A125664.P12973413898569035908

`A118759(A385404(n+1))`
-/

namespace A125664.P12973413898569035908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A385404 (n + 1)).toNat

end

end A125664.P12973413898569035908

/-! ## A125664.P9562985289383828880

`eq[2, A276729(A056142(n))]`
-/

namespace A125664.P9562985289383828880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A056142 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125664.P9562985289383828880

/-! ## A125664.P7799705701467590198

`eq[2, A276729(A056143(n))]`
-/

namespace A125664.P7799705701467590198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A056143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125664.P7799705701467590198

/-!
# A125665: Numbers such that both the left half of the digits and right half of the digits form a prime.

The programs for A125665, there is no canonical definition to state claims against.
-/

/-! ## A125665.P5764368938693197037

`∩[A260181(n+1), A320584(n+1)]`
-/

namespace A125665.P5764368938693197037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125665.P5764368938693197037

/-! ## A125665.P8800417646190861950

`record[A046034(n+1)-A326678(n)]`
-/

namespace A125665.P8800417646190861950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1) - A326678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125665.P8800417646190861950

/-! ## A125665.P15118869531988692733

`A046034(n+1)-A326678(A151722(n)+n)`
-/

namespace A125665.P15118869531988692733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1) - A326678 (A151722 n + (n : ℤ)).toNat

end

end A125665.P15118869531988692733

/-!
# A125666: Table read by ascending antidiagonals: n-th row of table consists of the positive integers divisible by exactly n distinct primes.

The programs for A125666, there is no canonical definition to state claims against.
-/

/-! ## A125666.P17197478530109310688

`A384564(A285322(n+1))`
-/

namespace A125666.P17197478530109310688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384564 (A285322 (n + 1)).toNat

end

end A125666.P17197478530109310688

/-! ## A125666.P17961713143992717009

`A125703(A223569(n+1)-A000701(n))`
-/

namespace A125666.P17961713143992717009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125703 (A223569 (n + 1) - A000701 n).toNat

end

end A125666.P17961713143992717009

/-! ## A125666.P7986837090344653608

`A125703(A223569(n+1)-A001971(n))`
-/

namespace A125666.P7986837090344653608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125703 (A223569 (n + 1) - A001971 n).toNat

end

end A125666.P7986837090344653608

/-!
# A125667: Eta numbers (from the Japanese word for "pariah" or "outcast"). These are the positive odd integers which cannot be used to make a hypotenuse of a primitive Pythagorean triangle (PPT).

The programs for A125667, there is no canonical definition to state claims against.
-/

/-! ## A125667.P9513365889462588132

`lt[A024362(or(1, n)), n%2]`
-/

namespace A125667.P9513365889462588132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125667.P9513365889462588132

/-! ## A125667.P13399916204825359731

`or(1, comp[A289437(2*(n+2))])`
-/

namespace A125667.P13399916204825359731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125667.P13399916204825359731

/-! ## A125667.P1830446791690329272

`comp[∪[2*n, A008846(n+1)]]`
-/

namespace A125667.P1830446791690329272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A125667.P1830446791690329272

/-! ## A125667.P17583410784440061436

`comp[∪[2*n, A072437(n+3)]]`
-/

namespace A125667.P17583410784440061436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A125667.P17583410784440061436

/-! ## A125667.P11849874295969967692

`record[n^and(1, n)-A295819(n)]`
-/

namespace A125667.P11849874295969967692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 1 n : ℤ) - A295819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125667.P11849874295969967692

/-! ## A125667.P13003276775346460268

`∩[2*n+1, A137409(n+1)]`
-/

namespace A125667.P13003276775346460268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125667.P13003276775346460268

/-! ## A125667.P7357779637196148175

`2*lt[A024362(Δ[n²]), 1]+1`
-/

namespace A125667.P7357779637196148175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A125667.P7357779637196148175

/-! ## A125667.P12190450398236060994

`record[gcd(2*n+1, A000095(2*n+1))]`
-/

namespace A125667.P12190450398236060994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A000095 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125667.P12190450398236060994

/-! ## A125667.P6191744201839434690

`eq[A106458(n), A295819(n)]`
-/

namespace A125667.P6191744201839434690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125667.P6191744201839434690

/-! ## A125667.P6460682147528336465

`eq[A182122(n), A295819(n)]`
-/

namespace A125667.P6460682147528336465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125667.P6460682147528336465

/-!
# A125668: Numbers not expressible as the sum of a triangular number and an abundant number.

The programs for A125668, there is no canonical definition to state claims against.
-/

/-! ## A125668.P4012446233722743624

`∑[A003989(A095815(A045680(n)))]`
-/

namespace A125668.P4012446233722743624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A095815 (A045680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125668.P4012446233722743624

/-! ## A125668.P7167690566203864194

`∑[A110616(A087051(A017899(n)))]`
-/

namespace A125668.P7167690566203864194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (A087051 (A017899 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125668.P7167690566203864194

/-!
# A125669: Number of bicyclic skeletons with n carbon atoms and the parameter 'alpha' having the value of 0. See the paper by Hendrickson and Parks for details.

The programs for A125669, there is no canonical definition to state claims against.
-/

/-! ## A125669.P15775975217215707431

`A090499(∑[n²+1]+1)-1`
-/

namespace A125669.P15775975217215707431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A125669.P15775975217215707431

/-!
# A125670: The number of saturated spiro hydrocarbons C_nH_(2n-2) with two rings sharing one carbon atom (spiro[a.b]alkanes and their alkyl derivatives), not counting stereoisomers.

The programs for A125670, there is no canonical definition to state claims against.
-/

/-! ## A125670.P17076940740865697280

`A122651(A376694(n+2)-1)`
-/

namespace A125670.P17076940740865697280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A376694 (n + 2) - 1).toNat

end

end A125670.P17076940740865697280

/-! ## A125670.P15524220852608417470

`A116387(n)+A075167(A144272(n))`
-/

namespace A125670.P15524220852608417470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116387 n + A075167 (A144272 n).toNat

end

end A125670.P15524220852608417470

/-!
# A125671: Number of bicyclic skeletons with n carbon atoms and the parameter 'alpha' having the value of 2. See the paper by Hendrickson and Parks for details.

The programs for A125671, there is no canonical definition to state claims against.
-/

/-! ## A125671.P10761977885293366558

`A121327(n+4)+A121165(n+4)`
-/

namespace A125671.P10761977885293366558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121327 (n + 4) + A121165 (n + 4)

end

end A125671.P10761977885293366558

/-! ## A125671.P10869174244006000473

`A225086(∑[∑[A026003(n)]])`
-/

namespace A125671.P10869174244006000473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A125671.P10869174244006000473

/-!
# A125672: Classification of bicyclics with the parameter 'alpha' having the value of 3. See the paper by Hendrickson and Parks for details.

The programs for A125672, there is no canonical definition to state claims against.
-/

/-! ## A125672.P9811114372232275262

`A062300(A290588(n+1)-A000034(n))`
-/

namespace A125672.P9811114372232275262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A290588 (n + 1) - A000034 n).toNat

end

end A125672.P9811114372232275262

/-! ## A125672.P13783907166803275010

`A341024(A003945(n))+A109196(n+2)`
-/

namespace A125672.P13783907166803275010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 ((A003945 n).toNat + 84) + A109196 (n + 2)

end

end A125672.P13783907166803275010

/-! ## A125672.P17902500337388786960

`A062300(A290588(n+1)-A287104(n+1))`
-/

namespace A125672.P17902500337388786960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A290588 (n + 1) - A287104 (n + 1)).toNat

end

end A125672.P17902500337388786960

/-!
# A125673: Classification of bicyclics with the parameter 'alpha' having the value of 4. See the paper by Hendrickson and Parks for details.

The programs for A125673, there is no canonical definition to state claims against.
-/

/-! ## A125673.P17130726316584089981

`A047097(n)-A357622(A303304(n))`
-/

namespace A125673.P17130726316584089981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047097 n - A357622 (A303304 n).toNat

end

end A125673.P17130726316584089981

/-!
# A125677: a(0) = a(1) = 1; for n>1, a(n) = a(n-2) + a(n-1) (mod n).

The programs for A125677, the canonical program `A125677.P18129942908985836627` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125677 has offset 0).

The definition of A125677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125677.P18129942908985836627

`a(n-1)%n+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125677

/-- `a(n-1)%n+a(n-2)` -/
def P18129942908985836627.Spec : Prop :=
  ∀ n, (P18129942908985836627.a n : ℤ) = A125677 n

theorem P18129942908985836627.correct : P18129942908985836627.Spec := by
  intro n
  simp only [A125677]

end A125677

/-! ## A125677.P977923063476578358

`a(n-2)--a(n-1)%n` with `a(0)=1, a(1)=1`
-/

namespace A125677.P977923063476578358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - Int.tmod (-a (n - 1)) (n : ℤ)

end

end A125677.P977923063476578358

namespace A125677

/-- `a(n-2)--a(n-1)%n` -/
def P977923063476578358.Spec : Prop :=
  ∀ n, P977923063476578358.a n = A125677 n

end A125677

/-! ## A125677.P3024909989465345490

`a(n-2)-(n-a(n-1)-n²)%n` with `a(0)=1, a(1)=1`
-/

namespace A125677.P3024909989465345490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - Int.tmod ((n : ℤ) - a (n - 1) - (n ^ 2 : ℤ)) (n : ℤ)

end

end A125677.P3024909989465345490

namespace A125677

/-- `a(n-2)-(n-a(n-1)-n²)%n` -/
def P3024909989465345490.Spec : Prop :=
  ∀ n, P3024909989465345490.a n = A125677 n

end A125677

/-! ## A125677.P4370809657933305058

`a(n-2)-((1-a(n-1))%n-1)%n` with `a(0)=1, a(1)=1`
-/

namespace A125677.P4370809657933305058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - Int.tmod (Int.tmod (1 - a (n - 1)) (n : ℤ) - 1) (n : ℤ)

end

end A125677.P4370809657933305058

namespace A125677

/-- `a(n-2)-((1-a(n-1))%n-1)%n` -/
def P4370809657933305058.Spec : Prop :=
  ∀ n, P4370809657933305058.a n = A125677 n

end A125677

/-!
# A125678: a(0) = 1; for n>0, a(n) = (a(n-1)^2 reduced mod n) + 1.

The programs for A125678, the canonical program `A125678.P18063173958144546754` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125678 has offset 0).

The definition of A125678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125678.P18063173958144546754

`a(n-1)²%n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125678

/-- `a(n-1)²%n+1` -/
def P18063173958144546754.Spec : Prop :=
  ∀ n, (P18063173958144546754.a n : ℤ) = A125678 n

theorem P18063173958144546754.correct : P18063173958144546754.Spec := by
  intro n
  simp only [A125678]

end A125678

/-! ## A125678.P10565240162297816075

`1--a(n-1)²%n` with `a(0)=1`
-/

namespace A125678.P10565240162297816075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (-(a (n - 1) ^ 2)) (n : ℤ)

end

end A125678.P10565240162297816075

namespace A125678

/-- `1--a(n-1)²%n` -/
def P10565240162297816075.Spec : Prop :=
  ∀ n, P10565240162297816075.a n = A125678 n

end A125678

/-! ## A125678.P14390184019028146343

`ceil(1/n)+(a(n-1)*a(n-1))%n` with `a(0)=1`
-/

namespace A125678.P14390184019028146343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈1 / (n : ℚ)⌉ + Int.tmod (a (n - 1) * a (n - 1)) (n : ℤ)

end

end A125678.P14390184019028146343

namespace A125678

/-- `ceil(1/n)+(a(n-1)*a(n-1))%n` -/
def P14390184019028146343.Spec : Prop :=
  ∀ n, P14390184019028146343.a n = A125678 n

end A125678

/-! ## A125678.P12009807546617025367

`n-((n-a(n-1))*a(n-1)-1)%n` with `a(0)=1`
-/

namespace A125678.P12009807546617025367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.tmod (((n : ℤ) - a (n - 1)) * a (n - 1) - 1) (n : ℤ)

end

end A125678.P12009807546617025367

namespace A125678

/-- `n-((n-a(n-1))*a(n-1)-1)%n` -/
def P12009807546617025367.Spec : Prop :=
  ∀ n, P12009807546617025367.a n = A125678 n

end A125678

/-! ## A125678.P11325659108915846770

`1--A000290(a(n-1))%n` with `a(0)=1`
-/

namespace A125678.P11325659108915846770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (-A000290 (a (n - 1)).toNat) (n : ℤ)

end

end A125678.P11325659108915846770

namespace A125678

/-- `1--A000290(a(n-1))%n` -/
def P11325659108915846770.Spec : Prop :=
  ∀ n, P11325659108915846770.a n = A125678 n

end A125678

/-!
# A125680: Blue moon years > 2000 (new definition), listed with multiplicity, i.e., once for each month having two full moons.

The programs for A125680, there is no canonical definition to state claims against.
-/

/-! ## A125680.P3830466991353826265

`∩[A171406(2*n+1), A171885(n)]`
-/

namespace A125680.P3830466991353826265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171406 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125680.P3830466991353826265

/-!
# A125682: a(n) = 3*(6^n - 1)/5.

The programs for A125682, the canonical program `A125682.P13226643786375127572` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125682 has offset 1).

The definition of A125682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(6^(n+1)-1)/5` (program `A125682.P865326241099836139`, by `A125682.P865326241099836139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125682.P13226643786375127572

`7*a(n-1)-6*a(n-2)` with `a(0)=3, a(1)=21`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125682

/-- `7*a(n-1)-6*a(n-2)` -/
def P13226643786375127572.Spec : Prop :=
  ∀ n, P13226643786375127572.a n = A125682 (n + 1)

theorem P13226643786375127572.correct : P13226643786375127572.Spec := by
  intro n
  simp only [A125682, Nat.add_sub_cancel]

end A125682

/-! ## A125682.P556520088327483882

`3*A003464(n+1)`
-/

namespace A125682.P556520088327483882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003464 (n + 1)

end

end A125682.P556520088327483882

namespace A125682

/-- `3*A003464(n+1)` -/
def P556520088327483882.Spec : Prop :=
  ∀ n, P556520088327483882.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P865326241099836139

`3*(6^(n+1)-1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125682.P865326241099836139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((6 ^ (n + 1) : ℤ) - 1) : ℚ) / 5

end

end A125682.P865326241099836139

namespace A125682

/-- `3*(6^(n+1)-1)/5` -/
def P865326241099836139.Spec : Prop :=
  ∀ n, P865326241099836139.a n = (A125682 (n + 1) : ℚ)

theorem P865326241099836139.correct : P865326241099836139.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A125682, Nat.add_sub_cancel, A125682.P865326241099836139.a, A125682.P13226643786375127572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A125682, Nat.add_sub_cancel, A125682.P865326241099836139.a, A125682.P13226643786375127572.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A125682

/-! ## A125682.P17084165380459254254

`lcm(3, ∑[6^n])`
-/

namespace A125682.P17084165380459254254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125682.P17084165380459254254

namespace A125682

/-- `lcm(3, ∑[6^n])` -/
def P17084165380459254254.Spec : Prop :=
  ∀ n, (P17084165380459254254.a n : ℤ) = A125682 (n + 1)

end A125682

/-! ## A125682.P6542841673861786201

`ogf(3/(1-7x+6x^2))`
-/

namespace A125682.P6542841673861786201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -7, 6] n

end

end A125682.P6542841673861786201

namespace A125682

/-- `ogf(3/(1-7x+6x^2))` -/
def P6542841673861786201.Spec : Prop :=
  ∀ n, P6542841673861786201.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P12952623144821129728

`∑[6*a(n-1)]` with `a(0)=3`
-/

namespace A125682.P12952623144821129728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125682.P12952623144821129728

namespace A125682

/-- `∑[6*a(n-1)]` -/
def P12952623144821129728.Spec : Prop :=
  ∀ n, (P12952623144821129728.a n : ℤ) = A125682 (n + 1)

end A125682

/-! ## A125682.P1811688948756735422

`6*a(n-1)+3` with `a(0)=3`
-/

namespace A125682.P1811688948756735422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  6 * a (n - 1) + 3

end

end A125682.P1811688948756735422

namespace A125682

/-- `6*a(n-1)+3` -/
def P1811688948756735422.Spec : Prop :=
  ∀ n, (P1811688948756735422.a n : ℤ) = A125682 (n + 1)

end A125682

/-! ## A125682.P687671047665373794

`lcm(18, a(n-1))+3` with `a(0)=3`
-/

namespace A125682.P687671047665373794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm 18 (a (n - 1)) + 3

end

end A125682.P687671047665373794

namespace A125682

/-- `lcm(18, a(n-1))+3` -/
def P687671047665373794.Spec : Prop :=
  ∀ n, (P687671047665373794.a n : ℤ) = A125682 (n + 1)

end A125682

/-! ## A125682.P7596700863025863226

`9-6*(1-a(n-1))` with `a(0)=3`
-/

namespace A125682.P7596700863025863226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  9 - 6 * (1 - a (n - 1))

end

end A125682.P7596700863025863226

namespace A125682

/-- `9-6*(1-a(n-1))` -/
def P7596700863025863226.Spec : Prop :=
  ∀ n, P7596700863025863226.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P70602569877350264

`a(n-1)+6^(n+1)/2` with `a(0)=3`
-/

namespace A125682.P70602569877350264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (6 ^ (n + 1) : ℚ) / 2

end

end A125682.P70602569877350264

namespace A125682

/-- `a(n-1)+6^(n+1)/2` -/
def P70602569877350264.Spec : Prop :=
  ∀ n, P70602569877350264.a n = (A125682 (n + 1) : ℚ)

end A125682

/-! ## A125682.P12751696866596164282

`∑[A169604(n)]`
-/

namespace A125682.P12751696866596164282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125682.P12751696866596164282

namespace A125682

/-- `∑[A169604(n)]` -/
def P12751696866596164282.Spec : Prop :=
  ∀ n, P12751696866596164282.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P13375999053131794890

`A026551(2*n)`
-/

namespace A125682.P13375999053131794890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026551 (2 * n)

end

end A125682.P13375999053131794890

namespace A125682

/-- `A026551(2*n)` -/
def P13375999053131794890.Spec : Prop :=
  ∀ n, P13375999053131794890.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P9758694386646004828

`∑[A081341(n+1)]`
-/

namespace A125682.P9758694386646004828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125682.P9758694386646004828

namespace A125682

/-- `∑[A081341(n+1)]` -/
def P9758694386646004828.Spec : Prop :=
  ∀ n, P9758694386646004828.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P13700246606489132648

`A261399(n+2)-1`
-/

namespace A125682.P13700246606489132648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261399 (n + 2) - 1

end

end A125682.P13700246606489132648

namespace A125682

/-- `A261399(n+2)-1` -/
def P13700246606489132648.Spec : Prop :=
  ∀ n, P13700246606489132648.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P5916592085956153208

`3*(A105281(n)+1)`
-/

namespace A125682.P5916592085956153208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A105281 n + 1)

end

end A125682.P5916592085956153208

namespace A125682

/-- `3*(A105281(n)+1)` -/
def P5916592085956153208.Spec : Prop :=
  ∀ n, P5916592085956153208.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P14291434345965612588

`2*A199412(n)-1`
-/

namespace A125682.P14291434345965612588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199412 n - 1

end

end A125682.P14291434345965612588

namespace A125682

/-- `2*A199412(n)-1` -/
def P14291434345965612588.Spec : Prop :=
  ∀ n, P14291434345965612588.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P9066041269766817479

`A329114(2*(n+2))`
-/

namespace A125682.P9066041269766817479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329114 (2 * (n + 2))

end

end A125682.P9066041269766817479

namespace A125682

/-- `A329114(2*(n+2))` -/
def P9066041269766817479.Spec : Prop :=
  ∀ n, P9066041269766817479.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P11665624395299684365

`∑[A026565(2*n+1)]`
-/

namespace A125682.P11665624395299684365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026565 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125682.P11665624395299684365

namespace A125682

/-- `∑[A026565(2*n+1)]` -/
def P11665624395299684365.Spec : Prop :=
  ∀ n, P11665624395299684365.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P1998678214777573106

`∑[A101652(2*n+1)]`
-/

namespace A125682.P1998678214777573106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101652 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125682.P1998678214777573106

namespace A125682

/-- `∑[A101652(2*n+1)]` -/
def P1998678214777573106.Spec : Prop :=
  ∀ n, P1998678214777573106.a n = A125682 (n + 1)

end A125682

/-! ## A125682.P10327669026622164611

`A247840(n+1)/2+3`
-/

namespace A125682.P10327669026622164611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247840 (n + 1) : ℚ) / 2 + 3

end

end A125682.P10327669026622164611

namespace A125682

/-- `A247840(n+1)/2+3` -/
def P10327669026622164611.Spec : Prop :=
  ∀ n, P10327669026622164611.a n = (A125682 (n + 1) : ℚ)

end A125682

/-!
# A125683: Numerator of Sum_{k=1..n} (-1)^(k+1) * 1/(k*(k+1)).

The programs for A125683, there is no canonical definition to state claims against.
-/

/-! ## A125683.P6084551914297580265

`A000265(A025559(n+1))-A081134(A089239(n))`
-/

namespace A125683.P6084551914297580265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A025559 (n + 1)).toNat - A081134 (A089239 n).toNat

end

end A125683.P6084551914297580265

/-! ## A125683.P2716053717622560671

`A051724(A025559(n+1)/A000034(n))`
-/

namespace A125683.P2716053717622560671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((A025559 (n + 1) : ℚ) / (A000034 n : ℚ))).toNat

end

end A125683.P2716053717622560671

/-! ## A125683.P8051256329639173200

`A051724(A025559(n+1))`
-/

namespace A125683.P8051256329639173200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A025559 (n + 1)).toNat

end

end A125683.P8051256329639173200

/-!
# A125685: Primes in A125683(n) in order of their occurrence.

The programs for A125685, there is no canonical definition to state claims against.
-/

/-! ## A125685.P3354202319549861006

`A125683(A125684(n+1))`
-/

namespace A125685.P3354202319549861006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125683 (A125684 (n + 1)).toNat

end

end A125685.P3354202319549861006

/-! ## A125685.P9684255351877853606

`p?[A125683(n+1)]`
-/

namespace A125685.P9684255351877853606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125685.P9684255351877853606

/-! ## A125685.P7793204528499168572

`filter[A125683(n+1), A010051(#)]`
-/

namespace A125685.P7793204528499168572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A125685.P7793204528499168572

/-! ## A125685.P15187961008025644822

`filter[A125683(n+1), A069513(#)]`
-/

namespace A125685.P15187961008025644822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A125685.P15187961008025644822

/-! ## A125685.P6782247794566309739

`filter[A125683(n+1), A354817(#)]`
-/

namespace A125685.P6782247794566309739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A125685.P6782247794566309739

/-!
# A125686: Where records occur in A127885.

The programs for A125686, there is no canonical definition to state claims against.
-/

/-! ## A125686.P12429248497271647119

`eq[A119989(A119989(n+1)), A143223(2*n+1)]`
-/

namespace A125686.P12429248497271647119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119989 (A119989 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143223 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125686.P12429248497271647119

/-! ## A125686.P9308545523110090518

`∑[dr(A117506(A186021(n)))]`
-/

namespace A125686.P9308545523110090518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A117506 (A186021 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125686.P9308545523110090518

/-! ## A125686.P6812523415579991733

`∑[dr(A002819(A202506(n+1)))]`
-/

namespace A125686.P6812523415579991733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002819 (A202506 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125686.P6812523415579991733

/-! ## A125686.P11768697509827693579

`lt[n, A289357(A020196(n+1))]+1`
-/

namespace A125686.P11768697509827693579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (A020196 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A125686.P11768697509827693579

/-! ## A125686.P2943539904230069829

`A163804(A241892(n))+A030978(n)`
-/

namespace A125686.P2943539904230069829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A241892 n).toNat + A030978 n

end

end A125686.P2943539904230069829

/-!
# A125687: The base 6 numbers 4 44 444 4444 44444 ... converted to base 10.

The programs for A125687, the canonical program `A125687.P7919054525944205012` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125687 has offset 1).

The definition of A125687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125687.P7919054525944205012

`7*a(n-1)-6*a(n-2)` with `a(0)=4, a(1)=28`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125687

/-- `7*a(n-1)-6*a(n-2)` -/
def P7919054525944205012.Spec : Prop :=
  ∀ n, P7919054525944205012.a n = A125687 (n + 1)

theorem P7919054525944205012.correct : P7919054525944205012.Spec := by
  intro n
  simp only [A125687, Nat.add_sub_cancel]

end A125687

/-! ## A125687.P301779985208453651

`4*A003464(n+1)`
-/

namespace A125687.P301779985208453651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003464 (n + 1)

end

end A125687.P301779985208453651

namespace A125687

/-- `4*A003464(n+1)` -/
def P301779985208453651.Spec : Prop :=
  ∀ n, P301779985208453651.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P9931186625842847353

`4*(6^(n+1)-1)/5`
-/

namespace A125687.P9931186625842847353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * ((6 ^ (n + 1) : ℤ) - 1) : ℚ) / 5

end

end A125687.P9931186625842847353

namespace A125687

/-- `4*(6^(n+1)-1)/5` -/
def P9931186625842847353.Spec : Prop :=
  ∀ n, P9931186625842847353.a n = (A125687 (n + 1) : ℚ)

theorem P9931186625842847353.correct : P9931186625842847353.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A125687, Nat.add_sub_cancel, A125687.P9931186625842847353.a, A125687.P7919054525944205012.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A125687, Nat.add_sub_cancel, A125687.P9931186625842847353.a, A125687.P7919054525944205012.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A125687

/-! ## A125687.P7118436548063315769

`lcm(4, ∑[6^n])`
-/

namespace A125687.P7118436548063315769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125687.P7118436548063315769

namespace A125687

/-- `lcm(4, ∑[6^n])` -/
def P7118436548063315769.Spec : Prop :=
  ∀ n, (P7118436548063315769.a n : ℤ) = A125687 (n + 1)

end A125687

/-! ## A125687.P12885865325482695196

`ogf(4/(1-7x+6x^2))`
-/

namespace A125687.P12885865325482695196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -7, 6] n

end

end A125687.P12885865325482695196

namespace A125687

/-- `ogf(4/(1-7x+6x^2))` -/
def P12885865325482695196.Spec : Prop :=
  ∀ n, P12885865325482695196.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P1488405503312849165

`∑[6*a(n-1)]` with `a(0)=4`
-/

namespace A125687.P1488405503312849165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125687.P1488405503312849165

namespace A125687

/-- `∑[6*a(n-1)]` -/
def P1488405503312849165.Spec : Prop :=
  ∀ n, (P1488405503312849165.a n : ℤ) = A125687 (n + 1)

end A125687

/-! ## A125687.P7883610233072931017

`6*a(n-1)+4` with `a(0)=4`
-/

namespace A125687.P7883610233072931017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  6 * a (n - 1) + 4

end

end A125687.P7883610233072931017

namespace A125687

/-- `6*a(n-1)+4` -/
def P7883610233072931017.Spec : Prop :=
  ∀ n, (P7883610233072931017.a n : ℤ) = A125687 (n + 1)

end A125687

/-! ## A125687.P5130269283071911684

`or(4, 6*a(n-1))` with `a(0)=4`
-/

namespace A125687.P5130269283071911684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 4 (6 * a (n - 1))

end

end A125687.P5130269283071911684

namespace A125687

/-- `or(4, 6*a(n-1))` -/
def P5130269283071911684.Spec : Prop :=
  ∀ n, (P5130269283071911684.a n : ℤ) = A125687 (n + 1)

end A125687

/-! ## A125687.P361022455190181937

`xor(4, 6*a(n-1))` with `a(0)=4`
-/

namespace A125687.P361022455190181937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 4 (6 * a (n - 1))

end

end A125687.P361022455190181937

namespace A125687

/-- `xor(4, 6*a(n-1))` -/
def P361022455190181937.Spec : Prop :=
  ∀ n, (P361022455190181937.a n : ℤ) = A125687 (n + 1)

end A125687

/-! ## A125687.P12818488020447663289

`10-6*(1-a(n-1))` with `a(0)=4`
-/

namespace A125687.P12818488020447663289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  10 - 6 * (1 - a (n - 1))

end

end A125687.P12818488020447663289

namespace A125687

/-- `10-6*(1-a(n-1))` -/
def P12818488020447663289.Spec : Prop :=
  ∀ n, P12818488020447663289.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P6575701510200811278

`∑[A067411(n+1)]`
-/

namespace A125687.P6575701510200811278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125687.P6575701510200811278

namespace A125687

/-- `∑[A067411(n+1)]` -/
def P6575701510200811278.Spec : Prop :=
  ∀ n, P6575701510200811278.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P10912405274014138430

`A083066(n+1)-1`
-/

namespace A125687.P10912405274014138430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083066 (n + 1) - 1

end

end A125687.P10912405274014138430

namespace A125687

/-- `A083066(n+1)-1` -/
def P10912405274014138430.Spec : Prop :=
  ∀ n, P10912405274014138430.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P10870714618618984277

`A365273(n+1)-2`
-/

namespace A125687.P10870714618618984277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365273 (n + 1) - 2

end

end A125687.P10870714618618984277

namespace A125687

/-- `A365273(n+1)-2` -/
def P10870714618618984277.Spec : Prop :=
  ∀ n, P10870714618618984277.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P2543424383865227

`2*A005610(n+1)`
-/

namespace A125687.P2543424383865227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005610 (n + 1)

end

end A125687.P2543424383865227

namespace A125687

/-- `2*A005610(n+1)` -/
def P2543424383865227.Spec : Prop :=
  ∀ n, P2543424383865227.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P14035169498231037055

`A026534(2*(n+1))`
-/

namespace A125687.P14035169498231037055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026534 (2 * (n + 1))

end

end A125687.P14035169498231037055

namespace A125687

/-- `A026534(2*(n+1))` -/
def P14035169498231037055.Spec : Prop :=
  ∀ n, P14035169498231037055.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P4500885374460560021

`2*(A233325(n)+1)`
-/

namespace A125687.P4500885374460560021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A233325 n + 1)

end

end A125687.P4500885374460560021

namespace A125687

/-- `2*(A233325(n)+1)` -/
def P4500885374460560021.Spec : Prop :=
  ∀ n, P4500885374460560021.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P6313428211354268963

`2*(A005618(n)-2)`
-/

namespace A125687.P6313428211354268963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005618 n - 2)

end

end A125687.P6313428211354268963

namespace A125687

/-- `2*(A005618(n)-2)` -/
def P6313428211354268963.Spec : Prop :=
  ∀ n, P6313428211354268963.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P14362902964931303196

`4*(A105281(n)+1)`
-/

namespace A125687.P14362902964931303196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A105281 n + 1)

end

end A125687.P14362902964931303196

namespace A125687

/-- `4*(A105281(n)+1)` -/
def P14362902964931303196.Spec : Prop :=
  ∀ n, P14362902964931303196.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P8826094415906418886

`∑[A100851(∑[n+3])]`
-/

namespace A125687.P8826094415906418886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125687.P8826094415906418886

namespace A125687

/-- `∑[A100851(∑[n+3])]` -/
def P8826094415906418886.Spec : Prop :=
  ∀ n, P8826094415906418886.a n = A125687 (n + 1)

end A125687

/-! ## A125687.P1357088907097802134

`∑[record[A166027(n+1)]]`
-/

namespace A125687.P1357088907097802134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166027 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125687.P1357088907097802134

namespace A125687

/-- `∑[record[A166027(n+1)]]` -/
def P1357088907097802134.Spec : Prop :=
  ∀ n, P1357088907097802134.a n = A125687 (n + 1)

end A125687

/-!
# A125688: Number of partitions of n into three distinct primes.

The programs for A125688, there is no canonical definition to state claims against.
-/

/-! ## A125688.P5083559130727108775

`A068307(n+1)-A046926(n+1)`
-/

namespace A125688.P5083559130727108775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (n + 1) - A046926 (n + 1)

end

end A125688.P5083559130727108775

/-! ## A125688.P7551420557312506300

`A083338(xor(n, A060576(n)))-A046926(n+1)`
-/

namespace A125688.P7551420557312506300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (Int.xor (n : ℤ) (A060576 n)).toNat - A046926 (n + 1)

end

end A125688.P7551420557312506300

/-! ## A125688.P15146370119122320733

`A068307(n+1)+A046926(n+1)*A057428(n)`
-/

namespace A125688.P15146370119122320733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (n + 1) + A046926 (n + 1) * A057428 n

end

end A125688.P15146370119122320733

/-! ## A125688.P7540340817932195806

`A083338(A004442(A159075(n)+n))-A046926(n+1)`
-/

namespace A125688.P7540340817932195806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (A004442 (A159075 n + (n : ℤ)).toNat).toNat - A046926 (n + 1)

end

end A125688.P7540340817932195806

/-! ## A125688.P923676062162496231

`A071335(n+1)-(A061358(n+1)+A010051(n+1))-A046926(n+1)`
-/

namespace A125688.P923676062162496231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - (A061358 (n + 1) + A010051 (n + 1)) - A046926 (n + 1)

end

end A125688.P923676062162496231

/-! ## A125688.P12801510570597339430

`A083338(xor(1, A233583(n+1)))-A046926(n+1)`
-/

namespace A125688.P12801510570597339430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (Int.xor 1 (A233583 (n + 1))).toNat - A046926 (n + 1)

end

end A125688.P12801510570597339430

/-! ## A125688.P15211932871983075129

`A223893(n+1)-(A117929(n+1)+A010051(n+1))`
-/

namespace A125688.P15211932871983075129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (n + 1) - (A117929 (n + 1) + A010051 (n + 1))

end

end A125688.P15211932871983075129

/-! ## A125688.P4083940099818316183

`A223893(n+1)+A223893(n+2)-A218469(n+2)`
-/

namespace A125688.P4083940099818316183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (n + 1) + (A223893 (n + 2) - A218469 (n + 2))

end

end A125688.P4083940099818316183

/-! ## A125688.P6428932081024487797

`A223893(n+1)-A347550(n+1)`
-/

namespace A125688.P6428932081024487797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (n + 1) - A347550 (n + 1)

end

end A125688.P6428932081024487797

/-! ## A125688.P12900764338397475286

`A218469(n+1)-(A347550(n+1)+A347550(n))`
-/

namespace A125688.P12900764338397475286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (n + 1) - (A347550 (n + 1) + A347550 n)

end

end A125688.P12900764338397475286

/-!
# A125690: Riordan array (1/(1-x-2x^2), x(1-x)/(1-x-2x^2)).

The programs for A125690, the canonical program `A125690.P1868402454117588420` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125690 has offset 0).

The definition of A125690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125690.P1868402454117588420

`T(n-1,k)+T(n-1,k-1)+2*T(n-2,k)-T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125690

/-- `T(n-1,k)+T(n-1,k-1)+2*T(n-2,k)-T(n-2,k-1)` -/
def P1868402454117588420.Spec : Prop :=
  ∀ n, P1868402454117588420.a n = A125690 n

theorem P1868402454117588420.correct : P1868402454117588420.Spec := by
  intro n
  simp only [A125690]

end A125690

/-! ## A125690.P5463941992082574593

`A208328(A038722(n+1))`
-/

namespace A125690.P5463941992082574593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208328 (A038722 (n + 1)).toNat

end

end A125690.P5463941992082574593

namespace A125690

/-- `A208328(A038722(n+1))` -/
def P5463941992082574593.Spec : Prop :=
  ∀ n, P5463941992082574593.a n = A125690 n

end A125690

/-! ## A125690.P1079976744573443777

`A208328(A061579(n)+1)`
-/

namespace A125690.P1079976744573443777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208328 (A061579 n + 1).toNat

end

end A125690.P1079976744573443777

namespace A125690

/-- `A208328(A061579(n)+1)` -/
def P1079976744573443777.Spec : Prop :=
  ∀ n, P1079976744573443777.a n = A125690 n

end A125690

/-! ## A125690.P3650623407066043797

`A208328(∑[A198954(n)]-n)`
-/

namespace A125690.P3650623407066043797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208328 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A125690.P3650623407066043797

namespace A125690

/-- `A208328(∑[A198954(n)]-n)` -/
def P3650623407066043797.Spec : Prop :=
  ∀ n, P3650623407066043797.a n = A125690 n

end A125690

/-! ## A125690.P5901139410620676254

`A208328(A114327(n)+1+n)`
-/

namespace A125690.P5901139410620676254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208328 (A114327 n + 1 + (n : ℤ)).toNat

end

end A125690.P5901139410620676254

namespace A125690

/-- `A208328(A114327(n)+1+n)` -/
def P5901139410620676254.Spec : Prop :=
  ∀ n, P5901139410620676254.a n = A125690 n

end A125690

/-! ## A125690.P5500864062527062284

`A208328(A093995(n+1)-n)`
-/

namespace A125690.P5500864062527062284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208328 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A125690.P5500864062527062284

namespace A125690

/-- `A208328(A093995(n+1)-n)` -/
def P5500864062527062284.Spec : Prop :=
  ∀ n, P5500864062527062284.a n = A125690 n

end A125690

/-!
# A125691: Expansion of 1/(1 - x - 3x^2 + x^3).

The programs for A125691, the canonical program `A125691.P8948150391295901483` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125691 has offset 0).

The definition of A125691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-3x^2+x^3))` (program `A125691.P8948150391295901483`, by `A125691.P8948150391295901483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125691.P8948150391295901483

`ogf(1/(1-x-3x^2+x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125691

/-- `ogf(1/(1-x-3x^2+x^3))` -/
def P8948150391295901483.Spec : Prop :=
  ∀ n, P8948150391295901483.a n = A125691 n

theorem P8948150391295901483.correct : P8948150391295901483.Spec := by
  intro n
  simp only [A125691]

end A125691

/-! ## A125691.P2901484977155034751

`3*a(n-2)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A125691.P2901484977155034751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  3 * a (n - 2) + (a (n - 1) - a (n - 3))

end

end A125691.P2901484977155034751

namespace A125691

/-- `3*a(n-2)+a(n-1)-a(n-3)` -/
def P2901484977155034751.Spec : Prop :=
  ∀ n, P2901484977155034751.a n = A125691 n

end A125691

/-! ## A125691.P15737812676345635904

`a(n-1)-(a(n-3)-3*a(n-2))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A125691.P15737812676345635904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) - (a (n - 3) - 3 * a (n - 2))

end

end A125691.P15737812676345635904

namespace A125691

/-- `a(n-1)-(a(n-3)-3*a(n-2))` -/
def P15737812676345635904.Spec : Prop :=
  ∀ n, P15737812676345635904.a n = A125691 n

end A125691

/-! ## A125691.P755617778723350603

`∑[A052973(n)]`
-/

namespace A125691.P755617778723350603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125691.P755617778723350603

namespace A125691

/-- `∑[A052973(n)]` -/
def P755617778723350603.Spec : Prop :=
  ∀ n, P755617778723350603.a n = A125691 n

end A125691

/-! ## A125691.P4519706458339214752

`A087640(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A125691.P4519706458339214752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087640 (n + 1) - a (n - 1)

end

end A125691.P4519706458339214752

namespace A125691

/-- `A087640(n+1)-a(n-1)` -/
def P4519706458339214752.Spec : Prop :=
  ∀ n, P4519706458339214752.a n = A125691 n

end A125691

/-! ## A125691.P5358281202071984641

`A087956(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A125691.P5358281202071984641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A087956 (n - 1) + a (n - 1)

end

end A125691.P5358281202071984641

namespace A125691

/-- `A087956(n-1)+a(n-1)` -/
def P5358281202071984641.Spec : Prop :=
  ∀ n, P5358281202071984641.a n = A125691 n

end A125691

/-! ## A125691.P4389559183852495615

`A052973(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A125691.P4389559183852495615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052973 n + a (A023443 n).toNat

end

end A125691.P4389559183852495615

namespace A125691

/-- `A052973(n)+a(A023443(n))` -/
def P4389559183852495615.Spec : Prop :=
  ∀ n, P4389559183852495615.a n = A125691 n

end A125691

/-! ## A125691.P7725764888924430860

`A087955(n+1)/2`
-/

namespace A125691.P7725764888924430860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087955 (n + 1) : ℚ) / 2

end

end A125691.P7725764888924430860

namespace A125691

/-- `A087955(n+1)/2` -/
def P7725764888924430860.Spec : Prop :=
  ∀ n, P7725764888924430860.a n = (A125691 n : ℚ)

end A125691

/-! ## A125691.P2269009828437171167

`(A052973(n+2)-A052973(n))/2`
-/

namespace A125691.P2269009828437171167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052973 (n + 2) - A052973 n : ℚ) / 2

end

end A125691.P2269009828437171167

namespace A125691

/-- `(A052973(n+2)-A052973(n))/2` -/
def P2269009828437171167.Spec : Prop :=
  ∀ n, P2269009828437171167.a n = (A125691 n : ℚ)

end A125691

/-! ## A125691.P1370160625734604556

`A087956(n+1)-A087957(n+1)/2`
-/

namespace A125691.P1370160625734604556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087956 (n + 1) : ℚ) - (A087957 (n + 1) : ℚ) / 2

end

end A125691.P1370160625734604556

namespace A125691

/-- `A087956(n+1)-A087957(n+1)/2` -/
def P1370160625734604556.Spec : Prop :=
  ∀ n, P1370160625734604556.a n = (A125691 n : ℚ)

end A125691

/-! ## A125691.P7730215374375374181

`Δ[∑[A087955(n)]/2]`
-/

namespace A125691.P7730215374375374181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125691.P7730215374375374181

namespace A125691

/-- `Δ[∑[A087955(n)]/2]` -/
def P7730215374375374181.Spec : Prop :=
  ∀ n, P7730215374375374181.a n = (A125691 n : ℚ)

end A125691

/-! ## A125691.P18183841574666991850

`Δ[A382683(n+1)/2]`
-/

namespace A125691.P18183841574666991850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382683 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125691.P18183841574666991850

namespace A125691

/-- `Δ[A382683(n+1)/2]` -/
def P18183841574666991850.Spec : Prop :=
  ∀ n, P18183841574666991850.a n = (A125691 n : ℚ)

end A125691

/-! ## A125691.P2384164100094491676

`Δ[Δ[A087640(n+1)/2]]`
-/

namespace A125691.P2384164100094491676
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087640 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125691.P2384164100094491676

namespace A125691

/-- `Δ[Δ[A087640(n+1)/2]]` -/
def P2384164100094491676.Spec : Prop :=
  ∀ n, P2384164100094491676.a n = (A125691 n : ℚ)

end A125691

/-! ## A125691.P15725398951252947474

`A087640(n+3)-A307464(n+3)`
-/

namespace A125691.P15725398951252947474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 (n + 3) - A307464 (n + 3)

end

end A125691.P15725398951252947474

namespace A125691

/-- `A087640(n+3)-A307464(n+3)` -/
def P15725398951252947474.Spec : Prop :=
  ∀ n, P15725398951252947474.a n = A125691 n

end A125691

/-!
# A125692: Riordan array (1-x*c(-x^2),x(1-x*c(-x^2))) where c(x) is the g.f. of A000108.

The programs for A125692, there is no canonical definition to state claims against.
-/

/-! ## A125692.P5707844083957018553

`A065432(∑[2*n]%comp[∑[n]])`
-/

namespace A125692.P5707844083957018553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065432 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A125692.P5707844083957018553

/-! ## A125692.P15493708165161453430

`A065432(∑[char[∑[n]]]²-(n+1))`
-/

namespace A125692.P15493708165161453430
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065432 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A125692.P15493708165161453430

/-! ## A125692.P15700967068828100250

`or(A000007(n), A065432(A061579(n)))`
-/

namespace A125692.P15700967068828100250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A065432 (A061579 n).toNat)

end

end A125692.P15700967068828100250

/-! ## A125692.P18297577005837677859

`A065432(A061579(n))-A020639(2*(n+1))+2`
-/

namespace A125692.P18297577005837677859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065432 (A061579 n).toNat - A020639 (2 * (n + 1)) + 2

end

end A125692.P18297577005837677859

/-! ## A125692.P3225823572351715241

`A065432(A061579(n))/A033999(4*n)`
-/

namespace A125692.P3225823572351715241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065432 (A061579 n).toNat : ℚ) / (A033999 (4 * n) : ℚ)

end

end A125692.P3225823572351715241

/-! ## A125692.P4642651690322039824

`A188510(4*n)+A065432(A061579(n))`
-/

namespace A125692.P4642651690322039824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (4 * n) + A065432 (A061579 n).toNat

end

end A125692.P4642651690322039824

/-! ## A125692.P14017697666452739273

`A065432(A061579(n))/A057077(4*n)`
-/

namespace A125692.P14017697666452739273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065432 (A061579 n).toNat : ℚ) / (A057077 (4 * n) : ℚ)

end

end A125692.P14017697666452739273

/-! ## A125692.P812059745742140231

`A094184(A061579(n))*A097807(n)`
-/

namespace A125692.P812059745742140231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094184 (A061579 n).toNat * A097807 n

end

end A125692.P812059745742140231

/-! ## A125692.P10438178633215712934

`A094184(A061579(abs(1-n)+1))/A097807(n)`
-/

namespace A125692.P10438178633215712934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094184 (A061579 (|1 - (n : ℤ)| + 1).toNat).toNat : ℚ) / (A097807 n : ℚ)

end

end A125692.P10438178633215712934

/-!
# A125693: Riordan array ((1-x)/(1-3*x), x*(1-x)/(1-3*x)).

The programs for A125693, the canonical program `A125693.P18323344948051090026` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125693 has offset 0).

The definition of A125693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125693.P18323344948051090026

`3*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125693

/-- `3*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P18323344948051090026.Spec : Prop :=
  ∀ n, P18323344948051090026.a n = A125693 n

theorem P18323344948051090026.correct : P18323344948051090026.Spec := by
  intro n
  simp only [A125693]

end A125693

/-! ## A125693.P9717289485225229035

`gcd(A130706(n), A147720(A014132(n+1)))`
-/

namespace A125693.P9717289485225229035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A147720 (A014132 (n + 1)).toNat)

end

end A125693.P9717289485225229035

namespace A125693

/-- `gcd(A130706(n), A147720(A014132(n+1)))` -/
def P9717289485225229035.Spec : Prop :=
  ∀ n, (P9717289485225229035.a n : ℤ) = A125693 n

end A125693

/-! ## A125693.P3197868127178514467

`lcm(A020985(n), A147720(A014132(n+1)))`
-/

namespace A125693.P3197868127178514467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A147720 (A014132 (n + 1)).toNat)

end

end A125693.P3197868127178514467

namespace A125693

/-- `lcm(A020985(n), A147720(A014132(n+1)))` -/
def P3197868127178514467.Spec : Prop :=
  ∀ n, (P3197868127178514467.a n : ℤ) = A125693 n

end A125693

/-! ## A125693.P14216330972932001401

`A055975(2*n+1)²*A147720(A014132(n+1))`
-/

namespace A125693.P14216330972932001401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) ^ 2 * A147720 (A014132 (n + 1)).toNat

end

end A125693.P14216330972932001401

namespace A125693

/-- `A055975(2*n+1)²*A147720(A014132(n+1))` -/
def P14216330972932001401.Spec : Prop :=
  ∀ n, P14216330972932001401.a n = A125693 n

end A125693

/-! ## A125693.P12025867657855481007

`A147720(∑[A035214(n)])%A147675(n+1)`
-/

namespace A125693.P12025867657855481007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A147675 (n + 1))

end

end A125693.P12025867657855481007

namespace A125693

/-- `A147720(∑[A035214(n)])%A147675(n+1)` -/
def P12025867657855481007.Spec : Prop :=
  ∀ n, P12025867657855481007.a n = A125693 n

end A125693

/-! ## A125693.P335317400702505576

`A147720(A014132(n+1))%A018908(n)`
-/

namespace A125693.P335317400702505576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147720 (A014132 (n + 1)).toNat) (A018908 n)

end

end A125693.P335317400702505576

namespace A125693

/-- `A147720(A014132(n+1))%A018908(n)` -/
def P335317400702505576.Spec : Prop :=
  ∀ n, P335317400702505576.a n = A125693 n

end A125693

/-! ## A125693.P14563585722577763128

`and(A093069(n+1), A147720(A014132(n+1)))`
-/

namespace A125693.P14563585722577763128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093069 (n + 1)) (A147720 (A014132 (n + 1)).toNat)

end

end A125693.P14563585722577763128

namespace A125693

/-- `and(A093069(n+1), A147720(A014132(n+1)))` -/
def P14563585722577763128.Spec : Prop :=
  ∀ n, P14563585722577763128.a n = A125693 n

end A125693

/-! ## A125693.P6903579612610248090

`A147720(A014132(n+1))+A053186(n²)`
-/

namespace A125693.P6903579612610248090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147720 (A014132 (n + 1)).toNat + A053186 (n ^ 2)

end

end A125693.P6903579612610248090

namespace A125693

/-- `A147720(A014132(n+1))+A053186(n²)` -/
def P6903579612610248090.Spec : Prop :=
  ∀ n, P6903579612610248090.a n = A125693 n

end A125693

/-!
# A125695: Expansion of (sqrt(1+2x+9x^2)+x-1)/(2x).

The programs for A125695, there is no canonical definition to state claims against.
-/

/-! ## A125695.P17983663045718523544

`xor(1, 1-A152681(n))`
-/

namespace A125695.P17983663045718523544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A152681 n)

end

end A125695.P17983663045718523544

/-! ## A125695.P12748676922491507666

`A000038(n)-A152681(n)`
-/

namespace A125695.P12748676922491507666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A152681 n

end

end A125695.P12748676922491507666

/-! ## A125695.P10847942083837744580

`A154825(n)*A280560(n)`
-/

namespace A125695.P10847942083837744580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154825 n * A280560 n

end

end A125695.P10847942083837744580

/-! ## A125695.P15074685913127514106

`A152681(n)*A153881(n+1)`
-/

namespace A125695.P15074685913127514106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152681 n * A153881 (n + 1)

end

end A125695.P15074685913127514106

/-! ## A125695.P12173331111329277204

`(abs(A023443(n))-n)*A152681(n)`
-/

namespace A125695.P12173331111329277204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|A023443 n| - (n : ℤ)) * A152681 n

end

end A125695.P12173331111329277204

/-! ## A125695.P12135450603394922898

`A057300(C(2, n+2))-A152681(n)`
-/

namespace A125695.P12135450603394922898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (Nat.choose 2 (n + 2)) - A152681 n

end

end A125695.P12135450603394922898

/-! ## A125695.P9451665000700148883

`A008683(A138980(n))*A152681(n)`
-/

namespace A125695.P9451665000700148883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A138980 n).toNat * A152681 n

end

end A125695.P9451665000700148883

/-!
# A125696: Number of categories with n morphisms.

The programs for A125696, there is no canonical definition to state claims against.
-/

/-! ## A125696.P15212944500211356726

`A028310(A192372(n+1)-A152271(n))`
-/

namespace A125696.P15212944500211356726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A192372 (n + 1) - A152271 n).toNat

end

end A125696.P15212944500211356726

/-! ## A125696.P12321004686298551140

`A028310(A192372(n+1)-A059499(n+1))`
-/

namespace A125696.P12321004686298551140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A192372 (n + 1) - A059499 (n + 1)).toNat

end

end A125696.P12321004686298551140

/-! ## A125696.P16810419183461354225

`A028310(A192372(n+1)-A237266(n+1))`
-/

namespace A125696.P16810419183461354225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A192372 (n + 1) - A237266 (n + 1)).toNat

end

end A125696.P16810419183461354225

/-!
# A125698: Number of connected categories with n morphisms.

The programs for A125698, there is no canonical definition to state claims against.
-/

/-! ## A125698.P13927886292784539101

`A320928(A320809(n)²+n)`
-/

namespace A125698.P13927886292784539101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (A320809 n ^ 2 + (n : ℤ)).toNat

end

end A125698.P13927886292784539101

